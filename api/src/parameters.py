import argparse

from decouple import config


def init_parameters():
    # Use decouple to get values from .env file
    port = config("PORT")
    endpoint = config("ENDPOINT")

    # Use argparse to get values from command line
    parser = argparse.ArgumentParser(description="Dog Breed API")

    parser.add_argument("--port", dest="port", default=port, help="port")
    parser.add_argument(
        "--end-point",
        dest="end_point",
        default=endpoint,
        help="Model-Endpoint",
    )

    args = parser.parse_args()

    return int(args.port), args.end_point
