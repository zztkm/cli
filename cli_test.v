module cliv

struct TestNewCli {
mut:
	name    string
	version string
}

fn test_new_cli() {
	tests := [
		TestNewCli{'main', '0.0.1'},
	]
	for _, test in tests {
		c := new_cli(test.name, test.version)
		assert c.name == test.name
		assert c.version == test.version
	}
}

fn test_add_subcommand() {
	mut cli := new_cli('main', '0.0.1')
	cli.commands = {
		'mock': fn () !Command {
			return MockCommand{}
		}
	}
	assert cli.commands.len == 1
}

fn test_nested_subcommand() {
	mut cli := new_cli('main', '0.0.1')
	cli.commands = {
		'mock': fn () !Command {
			return MockCommand{
				commands: {
					'nested': fn () !Command {
						return MockCommand{}
					}
				}
			}
		}
	}
	assert cli.commands.len == 1
}
