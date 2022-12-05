% data types

-type reason()          :: term().

% logs

-define(PRINT_MSG(Format, Args),
    io:format(Format, Args)).

-ifdef(USE_LAGER).

-define(DEBUG_MSG(Format, Args),
    lager:debug(Format, Args)).

-define(INFO_MSG(Format, Args),
    lager:info(Format, Args)).

-define(WARNING_MSG(Format, Args),
    lager:warning(Format, Args)).

-define(ERROR_MSG(Format, Args),
    lager:error(Format, Args)).

-define(CRITICAL_MSG(Format, Args),
    lager:critical(Format, Args)).

-else.

-define(DEBUG_MSG(Format, Args),
    logger:debug(Format, Args)).

-define(INFO_MSG(Format, Args),
    logger:info(Format, Args)).

-define(WARNING_MSG(Format, Args),
    logger:warning(Format, Args)).

-define(ERROR_MSG(Format, Args),
    logger:error(Format, Args)).

-define(CRITICAL_MSG(Format, Args),
    logger:critical(Format, Args)).

-endif.

% timeouts

-define(RESPONSE_TIMEOUT, 20000).
-define(CONNECT_TIMEOUT, 5000).
