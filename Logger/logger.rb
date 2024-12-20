require 'logger'
log = Logger.new("./application.log")

log.level = Logger::WARN

log.debug("This is a DEBUG message.")
log.info("This is a INFO message.")
log.warn("This is a WARN message.")
log.error("This is a ERROR message.")
log.fatal("This is a FATAL message.")

log.close


# log.level = Logger::INFO
# This sets the minimum severity level for messages that will be logged. 
# The level Logger::INFO means that only messages with severity INFO or higher (INFO, WARN, ERROR, FATAL) will be logged. 
# Messages with severity DEBUG will be ignored.

# Logging Messages
# Each of these lines logs a message with a specific severity:

# log.debug("This is a DEBUG message.")
# Severity Level: DEBUG
# Logged? No (Ignored because DEBUG is lower than the set level INFO).

# log.info("This is a INFO message.")
# Severity Level: INFO
# Logged? Yes (Equal to the set level).

# log.warn("This is a WARN message.")
# Severity Level: WARN
# Logged? Yes (Higher than INFO).

# log.error("This is a ERROR message.")
# Severity Level: ERROR
# Logged? Yes (Higher than INFO).

# log.fatal("This is a FATAL message.")
# Severity Level: FATAL
# Logged? Yes (Higher than INFO).