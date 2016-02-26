import aiohttp
from aiohttp import web
import aiohttp_jinja2
import jinja2

JOBS_URL = "https://jobs.github.com/positions.json"

@aiohttp_jinja2.template('tmpl.jinja2')
async def handle(request):
    with aiohttp.ClientSession() as session:
        async with session.get(JOBS_URL) as response:
            return {
                'jobs': await response.json()
            }

app = web.Application()
app.router.add_route('GET', '/', handle)
aiohttp_jinja2.setup(app, loader=jinja2.FileSystemLoader('.'))

web.run_app(app, port='8081')
