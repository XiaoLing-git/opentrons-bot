class OpentronsBotException(Exception):
    def __init__(self, msg: str) -> None:
        self._msg = msg

    def __str__(self) -> str:
        return self._msg

    def __repr__(self) -> str:
        return self._msg
