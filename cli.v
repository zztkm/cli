module cliv

import os
import io

struct CLI {
pub mut:
	args     []string
	commands map[string]CommandFactory
	name     string
	version  string
	stdout   io.Writer
	stderr   io.Writer
}

pub fn new_cli(name string, version string) CLI {
	return CLI{
		name: name
		version: version
		stdout: os.stdout()
		stderr: os.stderr()
	}
}

pub fn (mut c CLI) run() !int {
	c.init()
	c.parse_args()
	return 0
}

pub fn (mut c CLI) set_stderr(writer io.Writer) {
	c.stderr = writer
}

fn (mut c CLI) init() {
}

fn (mut c CLI) parse_args() {
}
