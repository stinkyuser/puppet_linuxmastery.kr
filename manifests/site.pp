node 'vm01.linuxmastery.kr' {
  include base
  include webapp
}
node 'vm02.linuxmastery.kr' {
  include base
  include webapp
}
node 'vm03.linuxmastery.kr' {
  include webapp
  notify { '===== vm03 =====\n': }
}
node default {
  notify { 'default_message':
    message => "===== default =====\n",
  }
}
