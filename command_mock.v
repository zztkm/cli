module cliv

struct MockCommand {
mut:
	commands map[string]CommandFactory
}

fn (c MockCommand) help() string {
	return 'mock help'
}

fn (c MockCommand) run(args []string) int {
	return 0
}
