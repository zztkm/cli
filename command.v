module cliv

interface Command {
mut:
	commands map[string]CommandFactory
	help() string
	run(args []string) int
}

type CommandFactory = fn () !Command
