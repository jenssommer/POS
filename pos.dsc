pos:
    type: command
    name: pos
    description: Positions abfrage.
    usage: /pos [player]
    permission: system.pos.command
    tab completions:
        1: <server.online_players.parse[name]>
    script:
    - if <player.has_permission[pos.abfragen]> && <context.args.first.exists> && <server.match_offline_player[<context.args.first>].exists>:
        - define context <context.args.first>
        - narrate "<&7><[context]>`s Standort ist: <&6><server.match_offline_player[<context.args.first>].location.simple>"
        - debug debug "<player.name> hat <[context]>`s Position abgefragt!"

mypos:
    type: command
    name: mypos
    description: Positions abfrage.
    usage: /mypos
    permission: system.mypos.command
    script:
    - narrate "<&7>Dein Standort ist: <&6><player.location.simple>"

cpos:
    type: command
    name: cpos
    description: Positions abfrage.
    usage: /cpos [player]
    permission: system.pos.command
    tab completions:
        1: <server.online_players.parse[name]>
    script:
    - if <player.has_permission[pos.abfragen]> && <context.args.first.exists> && <server.match_offline_player[<context.args.first>].exists>:
        - define context <context.args.first>
        - narrate "<&7><[context]>`s Standort ist: <&6><server.match_offline_player[<context.args.first>].location>"
        - debug debug "<player.name> hat <[context]>`s Position abgefragt!"
