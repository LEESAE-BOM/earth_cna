"""
@auther Hyunwoong
@since 7/1/2020
@see https://github.com/gusdnd852
"""

from kocrawl.dust import DustCrawler
from kocrawl.weather import WeatherCrawler
from kochat.app import Scenario
from kocrawl.map import MapCrawler
from kocrawl.rent import RentCrawler
from kocrawl.eco_activity import EcoCrawler
from kocrawl.term import TermCrawler

weather = Scenario(
    intent='weather',
    api=WeatherCrawler().request,
    scenario={
        'LOCATION': [],
        'DATE': ['오늘']
    }
)

dust = Scenario(
    intent='dust',
    api=DustCrawler().request,
    scenario={
        'LOCATION': [],
        'DATE': ['오늘']
    }
)

restaurant = Scenario(
    intent='restaurant',
    api=MapCrawler().request,
    scenario={
        'LOCATION': [],
        'PLACE': ['맛집']
    }
)

travel = Scenario(
    intent='travel',
    api=MapCrawler().request,
    scenario={
        'LOCATION': [],
        'PLACE': ['관광지']
    }
)

term = Scenario(
    intent='term',
    api=TermCrawler().request,
    scenario={
        'ECO': ['ESG']
    }
)

rent = Scenario(
    intent='rent',
    api=RentCrawler().request,
    scenario={
        'LOCATION': [],
        'CATEGORY': ['자전거']
    }
)

eco_activity = Scenario(
    intent='eco_activity',
    api=EcoCrawler().request,
    scenario={
        'CATEGORY': ['가정']
    }
)
