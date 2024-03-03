function vpngoenet --description 'Connects to vpn.gwdg.de'

  set vpn_server vpn.gwdg.de
  set vpn_username simonalvar.blaue@stud.uni-goettingen.de

  if pgrep openconnect
    sudo sudo kill openconnect
  else
    sudo echo Type Password at server $vpn_server for user $vpn_username
    sudo openconnect -u $vpn_username --passwd-on-stdin $vpn_server -b
  end
end


