class sshd {
	package {'openssh-server':
		ensure=>"installed",
		allowcdrom=>true,
	}
	file {'/etc/ssh/sshd_config':
		content=>template("sshd/sshd_config"),
		
	}
	service {'ssh':
		ensure=>'running',
		enable=>'true',
	}
}
