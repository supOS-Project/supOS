_format_version: '3.0'
_transform: false
consumers:
- tags: []
  id: 59d1ef15-24a5-4373-b957-e8192c15ff6e
  custom_id: ~
  created_at: 1734329209
  updated_at: 1742432166
  username: open-api
parameters:
- key: cluster_id
  created_at: 1742432166
  value: ce8f9346-2b44-46af-af55-ab141518e1bb
services:
- enabled: true
  created_at: 1733117004
  updated_at: 1742432166
  id: 1f8b86e3-6352-47a3-ac19-01537a11bec9
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: wenhao
  port: 3000
  read_timeout: 60000
  write_timeout: 60000
  name: wenhao
  retries: 5
  protocol: http
- enabled: true
  created_at: 1729740320
  updated_at: 1742432166
  id: 228308d0-521c-45f8-a97d-fbe6966efa3c
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: grafana
  port: 3000
  read_timeout: 60000
  write_timeout: 60000
  name: grafana
  retries: 5
  protocol: http
- enabled: true
  created_at: 1729852876
  updated_at: 1742432166
  id: 24a5cd06-6728-48ff-a7c8-1847c836bd59
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: gitea
  port: 3000
  read_timeout: 60000
  write_timeout: 60000
  name: gitea
  retries: 5
  protocol: http
- enabled: true
  created_at: 1729740396
  updated_at: 1742432166
  id: 29bf0a09-9e84-449e-b660-d0c9bf24cab3
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: hasura
  port: 8080
  read_timeout: 60000
  write_timeout: 60000
  name: hasura
  retries: 5
  protocol: http
- enabled: true
  created_at: 1729740912
  updated_at: 1742432166
  id: 2cd97a86-3853-4001-9f0d-7769dc40d508
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: portainer
  port: 9443
  read_timeout: 60000
  write_timeout: 60000
  name: portainer
  retries: 5
  protocol: https
- enabled: true
  created_at: 1729736772
  updated_at: 1742432166
  id: 2df2f7c3-792a-4a30-b30c-6011e2f3f916
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: konga
  port: 1337
  read_timeout: 60000
  write_timeout: 60000
  name: konga
  retries: 5
  protocol: http
- enabled: true
  created_at: 1734330146
  updated_at: 1742432166
  id: 4007e6c1-6ccc-4747-9b96-7bb3f5f78b32
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /open-api/supos/
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: backend
  port: 8080
  read_timeout: 60000
  write_timeout: 60000
  name: backend-open-api
  retries: 5
  protocol: http
- enabled: true
  created_at: 1742976133
  updated_at: 1742976133
  id: 42684a67-ac8f-48d6-ae2b-62e1cd26f9d8
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /service-api/supos/proxy/event/flows
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: backend
  port: 8080
  read_timeout: 60000
  write_timeout: 60000
  name: event-flow-proxy
  retries: 5
  protocol: http
- enabled: true
  created_at: 1729740779
  updated_at: 1742432166
  id: 43a4afb4-cabf-4fd8-a3f4-d8b31408e6dc
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /elastic/home/
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: kibana
  port: 5601
  read_timeout: 60000
  write_timeout: 60000
  name: elastic
  retries: 5
  protocol: http
- enabled: true
  created_at: 1733290847
  updated_at: 1742432166
  id: 4d210886-a694-416d-847d-95fc597f5921
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /service-api/supos/
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: backend
  port: 8080
  read_timeout: 60000
  write_timeout: 60000
  name: backend-service-api
  retries: 5
  protocol: http
- enabled: true
  created_at: 1732610867
  updated_at: 1742432166
  id: 5e8458a8-7323-4a25-9efa-4d56dbf5fa5b
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: gateway
  port: 8070
  read_timeout: 60000
  write_timeout: 60000
  name: gateway
  retries: 5
  protocol: http
- enabled: true
  created_at: 1729740054
  updated_at: 1742432166
  id: 5f70fd49-e3d7-4ba8-b152-62eca6ec4455
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /inter-api/supos/
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: backend
  port: 8080
  read_timeout: 60000
  write_timeout: 60000
  name: backend
  retries: 5
  protocol: http
- enabled: true
  created_at: 1736404121
  updated_at: 1742432166
  id: 61c91a4e-3e0c-4253-abad-de0a0ff72369
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /swagger-ui/
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: backend
  port: 8080
  read_timeout: 60000
  write_timeout: 60000
  name: open-api-docs
  retries: 5
  protocol: http
- enabled: true
  created_at: 1731396402
  updated_at: 1742432166
  id: 647747b1-8efe-45b6-b37f-430f5e5139d6
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: minio
  port: 9001
  read_timeout: 60000
  write_timeout: 60000
  name: minio
  retries: 5
  protocol: http
- enabled: true
  created_at: 1742536198
  updated_at: 1742536432
  id: 6a3bcaba-7ba3-4c3b-b5c2-1a8ecbc571ac
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: eventflow
  port: 1889
  read_timeout: 60000
  write_timeout: 60000
  name: EventFlow
  retries: 5
  protocol: http
- enabled: true
  created_at: 1741670682
  updated_at: 1742178214
  id: 75a7373b-4dda-4a49-b1f8-de6ebee4d4c8
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /files
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: backend
  port: 8080
  read_timeout: 60000
  write_timeout: 60000
  name: backend-files
  retries: 5
  protocol: http
- enabled: true
  created_at: 1742538082
  updated_at: 1742538082
  id: 776a9d80-b936-4e00-b892-3861b19dd954
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: TDengineUI
  port: 3000
  read_timeout: 60000
  write_timeout: 60000
  name: TDengineUI
  retries: 5
  protocol: http
- enabled: true
  created_at: 1729740676
  updated_at: 1742432166
  id: 89c6a77c-e3e6-4149-a0e7-6ace7fd0413b
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: emqx
  port: 18083
  read_timeout: 60000
  write_timeout: 60000
  name: emqx
  retries: 5
  protocol: http
- enabled: true
  created_at: 1729738059
  updated_at: 1742538907
  id: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags:
  - root:frontend
  - Home:1
  - SourceFlow:2
  - Namespace:3
  - EventFlow:4
  - menu.tag.devtools:5
  - menu.tag.uns:1
  - menu.tag.appspace:6
  - menu.tag.system:7
  ca_certificates: ~
  host: frontend
  port: 3000
  read_timeout: 60000
  write_timeout: 60000
  name: frontend
  retries: 5
  protocol: http
- enabled: true
  created_at: 1733732987
  updated_at: 1742432166
  id: abdb1947-dbbf-4a85-ac55-50969ac0ed85
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: fuxa
  port: 1881
  read_timeout: 60000
  write_timeout: 60000
  name: fuxa
  retries: 5
  protocol: http
- enabled: true
  created_at: 1730685511
  updated_at: 1742432166
  id: b096bcf5-2984-4acc-9bd5-a570a7653fcd
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /service-api/supos/proxy/flows
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: backend
  port: 8080
  read_timeout: 60000
  write_timeout: 60000
  name: node-red-proxy
  retries: 5
  protocol: http
- enabled: true
  created_at: 1729740513
  updated_at: 1742432166
  id: b2a70de2-d5db-4755-b8ba-b205d8fbb680
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: keycloak
  port: 8080
  read_timeout: 60000
  write_timeout: 60000
  name: keycloak
  retries: 5
  protocol: http
- enabled: true
  created_at: 1729739239
  updated_at: 1742432166
  id: bba8a174-4679-49df-8bf9-ae9285f1e77e
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: nodered
  port: 1880
  read_timeout: 60000
  write_timeout: 60000
  name: nodered
  retries: 5
  protocol: http
- enabled: true
  created_at: 1741747300
  updated_at: 1741763222
  id: c53d8d7a-962e-4561-accc-ddf6447336df
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: chat2db
  port: 10824
  read_timeout: 60000
  write_timeout: 60000
  name: chat2db-backend
  retries: 5
  protocol: http
- enabled: true
  created_at: 1731460027
  updated_at: 1742432166
  id: cc3e8a53-82e1-4f6e-bde6-75207ca2f6d3
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: minio-inter
  port: 9000
  read_timeout: 60000
  write_timeout: 60000
  name: minio-inter
  retries: 5
  protocol: http
- enabled: true
  created_at: 1741747189
  updated_at: 1741754706
  id: d9ac42d8-9d41-41e3-a80f-4b64cc215bcf
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: platform
  port: 3001
  read_timeout: 60000
  write_timeout: 60000
  name: chat2db
  retries: 5
  protocol: http
- enabled: true
  created_at: 1732105495
  updated_at: 1742432166
  id: e3e88607-311a-4c23-a9c7-bb879efc463e
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: /realms/supos/protocol/openid-connect/auth
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: keycloak
  port: 8080
  read_timeout: 60000
  write_timeout: 60000
  name: login
  retries: 5
  protocol: http
- enabled: true
  created_at: 1730264819
  updated_at: 1742432166
  id: f145ba5c-e9aa-48a6-8a10-9ee476010f7f
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: apm
  port: 8080
  read_timeout: 60000
  write_timeout: 60000
  name: apm
  retries: 5
  protocol: http
- enabled: true
  created_at: 1729748350
  updated_at: 1742432166
  id: f8fd7fd2-d8f6-47d7-9c54-aa51a24a68ad
  tls_verify: ~
  connect_timeout: 600000
  tls_verify_depth: ~
  path: /copilotkit
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: copilotkit
  port: 4000
  read_timeout: 600000
  write_timeout: 600000
  name: GenerativeUI
  retries: 5
  protocol: http
- enabled: true
  created_at: 1742543141
  updated_at: 1742543141
  id: fbc56015-44d7-42ba-ac9f-abe725bc2478
  tls_verify: ~
  connect_timeout: 60000
  tls_verify_depth: ~
  path: ~
  client_certificate: ~
  tags: []
  ca_certificates: ~
  host: mcpclient
  port: 3000
  read_timeout: 60000
  write_timeout: 60000
  name: mcpclient
  retries: 5
  protocol: http
routes:
- sources: ~
  created_at: 1742976255
  updated_at: 1742976255
  service: 42684a67-ac8f-48d6-ae2b-62e1cd26f9d8
  destinations: ~
  id: e8e7fe7d-16ba-415a-8d19-e2c41b76b365
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: []
  protocols:
    - http
    - https
  paths:
    - /eventflow/home/flows
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: event-node-flows
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1730253324
  updated_at: 1742539723
  service: 43a4afb4-cabf-4fd8-a3f4-d8b31408e6dc
  destinations: ~
  id: 050c90d4-b22d-4d44-a159-0d35c949a111
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - ${ENABLE_ELK}
  - description:menu.desc.logs
  - sort:7
  - parentName:menu.tag.system
  protocols:
  - http
  - https
  paths:
  - /elastic/home/app/discover#/?_g=(filters:!(),refreshInterval:(pause:!t,value:60000),time:(from:now-15m,to:now))&_a=(columns:!(container.name,message),dataSource:(type:dataView),filters:!(),grid:(columns:(container.name:(width:301))),index:'31d5c920-8e8a-11ef-80e3-d78ebb901f76',interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',desc)))
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: Logs
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1742538180
  updated_at: 1742538180
  service: 776a9d80-b936-4e00-b892-3861b19dd954
  destinations: ~
  id: 0e566d44-48f2-442e-a7e9-b288926f3e88
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: TDengineUI
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1730270842
  updated_at: 1742432166
  service: 228308d0-521c-45f8-a97d-fbe6966efa3c
  destinations: ~
  id: 10c662d8-8304-439b-85a0-398ae09d09e8
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /grafana/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: grafana-inter
  request_buffering: true
  preserve_host: true
  response_buffering: true
- sources: ~
  created_at: 1730254514
  updated_at: 1742537603
  service: 24a5cd06-6728-48ff-a7c8-1847c836bd59
  destinations: ~
  id: 15023439-25a9-481d-90a5-894d4d87d3bf
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - description:menu.desc.cicd
  - sort:1
  - parentName:menu.tag.devtools
  - menu
  protocols:
  - http
  - https
  paths:
  - /gitea/home/user/login?redirect_to=/gitea/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: CICD
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1731311256
  updated_at: 1742538610
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: 1dfa8b71-07e8-41a5-a07d-536fa0e295a2
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menu
  - description:menu.desc.genApps
  - sort:2
  - parentName:menu.tag.appspace
  protocols:
  - http
  - https
  paths:
  - /app-display
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: GenApps
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1734328715
  updated_at: 1742432166
  service: 29bf0a09-9e84-449e-b660-d0c9bf24cab3
  destinations: ~
  id: 1fe717e7-804d-473b-b12b-7f5f68b5ec48
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /open-api/graphql/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: open-hasura-graphql
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1730265781
  updated_at: 1742432166
  service: f145ba5c-e9aa-48a6-8a10-9ee476010f7f
  destinations: ~
  id: 209f6169-707c-49f1-86cc-602bc4674b2e
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /apps/freezonex-aps/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: apm-backend-iner
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1729740717
  updated_at: 1742539142
  service: 89c6a77c-e3e6-4149-a0e7-6ace7fd0413b
  destinations: ~
  id: 215cdb87-6e13-4e2e-804f-9ea1ac2ff417
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - description:menu.desc.mqttBroker
  - menu
  - parentName:menu.tag.system
  - sort:3
  protocols:
  - http
  - https
  paths:
  - /emqx/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: MqttBroker
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1729748378
  updated_at: 1742432166
  service: f8fd7fd2-d8f6-47d7-9c54-aa51a24a68ad
  destinations: ~
  id: 29027b71-49ce-41d1-96fc-14bcb3a2da00
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /copilotkit
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: copilotkit
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1734346408
  updated_at: 1742540262
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: 33b0281c-dea4-4e2b-a523-4b335953fed9
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menu
  - parentName:menu.tag.devtools
  - description:menu.desc.alert
  - sort:2
  protocols:
  - http
  - https
  paths:
  - /alert
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: Alert
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1729740083
  updated_at: 1742432166
  service: 5f70fd49-e3d7-4ba8-b152-62eca6ec4455
  destinations: ~
  id: 3794799e-0c23-4065-a88d-7a08c46fbaf4
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /inter-api/supos/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: backend
  request_buffering: true
  preserve_host: true
  response_buffering: true
- sources: ~
  created_at: 1730685544
  updated_at: 1742432166
  service: b096bcf5-2984-4acc-9bd5-a570a7653fcd
  destinations: ~
  id: 3f8f8bf7-4d53-4a11-bc6d-d017beda8695
  methods:
  - GET
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: []
  protocols:
  - http
  - https
  paths:
  - /nodered/home/flows
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: node-red-flows
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1742536226
  updated_at: 1742536782
  service: 6a3bcaba-7ba3-4c3b-b5c2-1a8ecbc571ac
  destinations: ~
  id: 45a9fec1-6eaa-49c5-ae00-7aa180f1efde
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: []
  protocols:
  - http
  - https
  paths:
  - /eventflow/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: EventFlowBackend
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1742968905
  updated_at: 1742968905
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: b8262364-32bf-4422-9d6c-04b97bc8c3a7
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menu
  - homeParentName:menu.tag.uns
  - description:menu.desc.eventflow
  - homeIconUrl:homeEventFlow
  - sort:3
  protocols:
  - http
  - https
  paths:
  - /EventFlow
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: EventFlow
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1731311044
  updated_at: 1742536868
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: 4d89ed56-90bf-490d-ac8c-30def8be2e2c
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menu
  - description:menu.desc.dataModeling
  - homeParentName:menu.tag.uns
  - homeIconUrl:homeNamespace
  - sort:2
  protocols:
  - http
  - https
  paths:
  - /uns
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: Namespace
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1741747272
  updated_at: 1742537713
  service: d9ac42d8-9d41-41e3-a80f-4b64cc215bcf
  destinations: ~
  id: 4e5336db-053c-4c9f-a773-bb83a2557ffb
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menu
  - parentName:menu.tag.devtools
  - description:menu.desc.dbconnect
  - sort:2
  protocols:
  - http
  - https
  paths:
  - /chat2db/home/connections
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: DBConnect
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1729740461
  updated_at: 1742432166
  service: 29bf0a09-9e84-449e-b660-d0c9bf24cab3
  destinations: ~
  id: 4f4b9999-c921-4ca8-9eef-63db46e6b2b5
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - description:menu.desc.graphQL
  protocols:
  - http
  - https
  paths:
  - /hasura/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: graphQL
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1733290917
  updated_at: 1742432166
  service: 4d210886-a694-416d-847d-95fc597f5921
  destinations: ~
  id: 5a0cdda1-0ac2-4255-a4bc-a11a8b4a00d5
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /service-api/supos/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: backend-service-api
  request_buffering: true
  preserve_host: true
  response_buffering: true
- sources: ~
  created_at: 1742543248
  updated_at: 1742543248
  service: fbc56015-44d7-42ba-ac9f-abe725bc2478
  destinations: ~
  id: 6239b86d-4ef1-48d9-b512-7b05306ab705
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - ${ENABLE_MCP}
  - parentName:menu.tag.appspace
  - description:menu.desc.mcpclient
  - sort:3
  protocols:
  - http
  - https
  paths:
  - /mcpclient/home
  https_redirect_status_code: 426
  hosts: ~
  strip_path: false
  name: McpClient
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1741671187
  updated_at: 1741671187
  service: 75a7373b-4dda-4a49-b1f8-de6ebee4d4c8
  destinations: ~
  id: 670008e2-5811-4d9d-b925-5429d16caa8f
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /files
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: backend-files
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1734328933
  updated_at: 1742432166
  service: 29bf0a09-9e84-449e-b660-d0c9bf24cab3
  destinations: ~
  id: 6856a277-bcae-43a3-992c-81fc5c605baf
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /open-api/restapi/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: open-hasura-restapi
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1732611195
  updated_at: 1742432166
  service: 5e8458a8-7323-4a25-9efa-4d56dbf5fa5b
  destinations: ~
  id: 6ce6b319-0e38-4bf4-ba1d-4d043a926ba7
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /gateway
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: gateway
  request_buffering: true
  preserve_host: true
  response_buffering: true
- sources: ~
  created_at: 1730264872
  updated_at: 1742432166
  service: f145ba5c-e9aa-48a6-8a10-9ee476010f7f
  destinations: ~
  id: 6f2a8d9e-d76f-46b9-b2d4-27286651433d
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /apps/freezonex-aps/apsfrontend/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: false
  name: apm-frontend-inter
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1741747323
  updated_at: 1741763254
  service: c53d8d7a-962e-4561-accc-ddf6447336df
  destinations: ~
  id: 78e5de54-af01-4eff-bb5d-bfbde4f35835
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /chat2db/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: chat2dbapi
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1729736896
  updated_at: 1742538958
  service: 2df2f7c3-792a-4a30-b30c-6011e2f3f916
  destinations: ~
  id: 79d5e57d-340c-4d18-93ee-a6a8f4a0f212
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - description:menu.desc.konga
  - sort:1
  - parentName:menu.tag.system
  - menu
  protocols:
  - http
  - https
  paths:
  - /konga/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: RoutingManagement
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1729740838
  updated_at: 1742432166
  service: 43a4afb4-cabf-4fd8-a3f4-d8b31408e6dc
  destinations: ~
  id: 8154564f-57c9-4de4-a605-a204c46bf15a
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: []
  protocols:
  - http
  - https
  paths:
  - /elastic/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: elastic-inter
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1730265586
  updated_at: 1742432166
  service: f145ba5c-e9aa-48a6-8a10-9ee476010f7f
  destinations: ~
  id: 833d37e3-05bb-4a1d-992c-0a0e5c19b0dd
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - description:menu.desc.apm
  protocols:
  - http
  - https
  paths:
  - /apsfrontend/dashboard
  https_redirect_status_code: 426
  hosts: ~
  strip_path: false
  name: apm
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1733209593
  updated_at: 1742432166
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: 8613d94b-0fd7-4b81-8f9d-ac5df267b7e3
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - parentName:menu.tag.connections
  protocols:
  - http
  - https
  paths:
  - /streams
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: StreamProcessing
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1733733028
  updated_at: 1742432166
  service: abdb1947-dbbf-4a85-ac55-50969ac0ed85
  destinations: ~
  id: 86fbf4ad-d446-47e3-a9ba-00ead9113c17
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - parentName:menu.tag.connections
  protocols:
  - http
  - https
  paths:
  - /fuxa/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: LowCodeTool
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1733117175
  updated_at: 1742432166
  service: 1f8b86e3-6352-47a3-ac19-01537a11bec9
  destinations: ~
  id: 95100aa4-a76b-481c-8485-56eb1f71a529
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menuPort:13020
  - menuProtocol:http
  - menuHost:${ENTRANCE_DOMAIN}
  - description:The llm webUI which is  easy to use
  protocols:
  - http
  - https
  paths:
  - /
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: Ollama
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1734330177
  updated_at: 1742432166
  service: 4007e6c1-6ccc-4747-9b96-7bb3f5f78b32
  destinations: ~
  id: 9df937e7-2ffb-49f4-b60b-4bb5b551419a
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /open-api/supos/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: open-backend-api
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1731311377
  updated_at: 1742536681
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: a13bb597-9740-4dde-929e-d140c286d869
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menu
  - description:menu.desc.nodered.flow
  - sort:1
  - homeParentName:menu.tag.uns
  - homeIconUrl:homeSourceFlow
  protocols:
  - http
  - https
  paths:
  - /collection-flow
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: SourceFlow
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1736404187
  updated_at: 1742432166
  service: 61c91a4e-3e0c-4253-abad-de0a0ff72369
  destinations: ~
  id: a1f72e00-26fa-47a6-997c-a3c6c6aef9e7
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: []
  protocols:
  - http
  - https
  paths:
  - /swagger-ui
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: open-api-docs
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1731311359
  updated_at: 1742543321
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: a2060aa0-88e5-4247-9635-f93438bbdd84
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menu
  - description:menu.desc.generativeUI
  - parentName:menu.tag.appspace
  - sort:2
  protocols:
  - http
  - https
  paths:
  - /app-space
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: GenerativeUI
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1741573643
  updated_at: 1742277098
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: a5040934-75dd-40c6-94ea-9497ab2b0579
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - parentName:menu.tag.settings
  protocols:
  - http
  - https
  paths:
  - /workflow
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: workflow
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1731396438
  updated_at: 1742432166
  service: 647747b1-8efe-45b6-b37f-430f5e5139d6
  destinations: ~
  id: a6d04fe9-a464-493c-8f3a-4750fdd93a32
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - description:menu.desc.objectStorageServer
  - sort:200
  protocols:
  - http
  - https
  paths:
  - /minio/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: objectStorageServer
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1730270517
  updated_at: 1742432166
  service: 228308d0-521c-45f8-a97d-fbe6966efa3c
  destinations: ~
  id: aa02bbb9-6459-43bd-9b65-91d89c8854dd
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - description:menu.desc.grafana
  protocols:
  - http
  - https
  paths:
  - /grafana/home/dashboards/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: grafana
  request_buffering: true
  preserve_host: true
  response_buffering: true
- sources: ~
  created_at: 1731473911
  updated_at: 1742432166
  service: b2a70de2-d5db-4755-b8ba-b205d8fbb680
  destinations: ~
  id: b610973a-764e-4cef-910e-0794f334e4bd
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /keycloak/home/auth/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: keycloak-auth
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1732108769
  updated_at: 1742432166
  service: e3e88607-311a-4c23-a9c7-bb879efc463e
  destinations: ~
  id: ba7b2df9-b0d8-4b6b-844d-43f935f3181f
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /supos-login
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: login
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1729738250
  updated_at: 1742432166
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: c2dececa-99f4-45e1-9859-01e88352bd58
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: frontend
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1731635333
  updated_at: 1742432166
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: c90b4b7a-8a51-4f40-b4e2-6c0a40be1b15
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menu
  - description:menu.desc.home
  - sort:1
  protocols:
  - http
  - https
  paths:
  - /home
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: Home
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1729740574
  updated_at: 1742539058
  service: b2a70de2-d5db-4755-b8ba-b205d8fbb680
  destinations: ~
  id: d0cea78f-1e0d-4b90-98ea-980a455bf5f5
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - description:menu.desc.keycloak
  - menu
  - sort:2
  - parentName:menu.tag.system
  protocols:
  - http
  - https
  paths:
  - /keycloak/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: Authentication
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1730770040
  updated_at: 1742539316
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: d2a81d6f-8b2a-4b28-8929-3c51ccd16021
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menu
  - description:menu.desc.dashboards
  - parentName:menu.tag.system
  - sort:5
  protocols:
  - http
  - https
  paths:
  - /dashboards
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: Dashboards
  request_buffering: true
  preserve_host: true
  response_buffering: true
- sources: ~
  created_at: 1731460050
  updated_at: 1742432166
  service: cc3e8a53-82e1-4f6e-bde6-75207ca2f6d3
  destinations: ~
  id: dbb92267-e886-4ee8-b758-a9f9e9af1998
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /minio/inter/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: minio-inter
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1729852903
  updated_at: 1742432166
  service: 24a5cd06-6728-48ff-a7c8-1847c836bd59
  destinations: ~
  id: e3459f2d-fcb2-412e-87fc-b098d8906b7e
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: []
  protocols:
  - http
  - https
  paths:
  - /gitea/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: gitea-inter
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1741747250
  updated_at: 1741750892
  service: d9ac42d8-9d41-41e3-a80f-4b64cc215bcf
  destinations: ~
  id: e3ff5178-c156-47e6-90f4-ec2a45b05953
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /chat2db/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: chat2db-inter
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1733118225
  updated_at: 1742432166
  service: 5e8458a8-7323-4a25-9efa-4d56dbf5fa5b
  destinations: ~
  id: ea381a8a-a76a-4043-9e05-d5e5c9bf3492
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: ~
  protocols:
  - http
  - https
  paths:
  - /test
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: 测试中文
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1741747220
  updated_at: 1742538020
  service: d9ac42d8-9d41-41e3-a80f-4b64cc215bcf
  destinations: ~
  id: ed108474-cc43-4b66-b92a-5de38f061c6d
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menu
  - parentName:menu.tag.devtools
  - description:menu.desc.sqledit
  - sort:4
  protocols:
  - http
  - https
  paths:
  - /chat2db/home/workspace
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: SQLEditor
  request_buffering: true
  preserve_host: true
  response_buffering: true
- sources: ~
  created_at: 1734056913
  updated_at: 1742539809
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: f0a59836-7eea-45b3-b188-51c45c68f305
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menu
  - description:menu.desc.advanceUse
  - sort:9
  - parentName:menu.tag.system
  protocols:
  - http
  - https
  paths:
  - /advanced-use
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: AdvancedUse
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1732696995
  updated_at: 1742539254
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: f610002e-8e5c-424a-9fdc-e86d754b3142
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menu
  - description:menu.desc.account
  - parentName:menu.tag.system
  - sort:4
  protocols:
  - http
  - https
  paths:
  - /account-management
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: UserManagement
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1729739343
  updated_at: 1742432166
  service: bba8a174-4679-49df-8bf9-ae9285f1e77e
  destinations: ~
  id: f8bccdbf-46fd-4dd7-aafe-d1a8e13c3450
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags: []
  protocols:
  - http
  - https
  paths:
  - /nodered/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: NodeRed
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1729740933
  updated_at: 1742539665
  service: 2cd97a86-3853-4001-9f0d-7769dc40d508
  destinations: ~
  id: fb690c3a-e09e-4fcf-aad1-5d357c1938ec
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - description:menu.desc.dockerMgmt
  - ${ENABLE_PORTAINER}
  - sort:6
  - parentName:menu.tag.system
  protocols:
  - http
  - https
  paths:
  - /portainer/home/
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: ContainerManagement
  request_buffering: true
  preserve_host: false
  response_buffering: true
- sources: ~
  created_at: 1733822464
  updated_at: 1742539770
  service: 8e081976-8223-4494-9b4c-0aa5a441bdd5
  destinations: ~
  id: fb8efe62-0030-4540-a521-a3b4215b4f59
  methods: ~
  headers: ~
  snis: ~
  path_handling: v1
  regex_priority: 0
  tags:
  - menu
  - description:menu.desc.aboutus
  - parentName:menu.tag.system
  - sort:8
  protocols:
  - http
  - https
  paths:
  - /aboutus
  https_redirect_status_code: 426
  hosts: ~
  strip_path: true
  name: AboutUs
  request_buffering: true
  preserve_host: false
  response_buffering: true
plugins:
- enabled: false
  instance_name: ~
  route: ~
  created_at: 1733799127
  protocols:
  - grpc
  - grpcs
  - http
  - https
  service: ~
  id: 1845ee75-d704-40e1-a8b0-aa2baaf9d71b
  config:
    whitelist_paths:
    - ^/inter-api/supos/auth.*$
    - ^/inter-api/supos/systemConfig.*$
    - ^/$
    - ^/assets.*$
    - ^/locale.*$
    - ^/logo.*$
    - ^/gitea.*git.*$
    - ^/supos-login.*$
    - ^/403$
    - ^/open-api/.*$
    - ^/keycloak.*$
    - ^/files.*$
    - ^/test/.*$
    enable_resource_check: true
    enable_deny_check: true
    login_url: /supos-login
    forbidden_url: /403
  name: supos-auth-checker
  updated_at: 1742432166
  tags: ~
  consumer: ~
- enabled: true
  instance_name: ~
  route: 9df937e7-2ffb-49f4-b60b-4bb5b551419a
  created_at: 1734330234
  protocols:
  - grpc
  - grpcs
  - http
  - https
  service: ~
  id: 2285421f-56e3-4510-be12-69fa1040d810
  config:
    hide_credentials: false
    realm: ~
    key_in_header: true
    key_in_query: true
    key_names:
    - apikey
    key_in_body: false
    anonymous: ~
    run_on_preflight: true
  name: key-auth
  updated_at: 1742432166
  tags: ~
  consumer: ~
- enabled: true
  instance_name: ~
  route: ~
  created_at: 1734073535
  protocols:
  - grpc
  - grpcs
  - http
  - https
  service: e3e88607-311a-4c23-a9c7-bb879efc463e
  id: 46bda5cf-63ea-401f-9f06-b9e024aa5597
  config:
    add:
      headers: []
      querystring: []
      body: []
    remove:
      headers: []
      querystring: []
      body: []
    replace:
      headers: []
      querystring: []
      body: []
      uri: ~
    append:
      headers: []
      querystring:
      - client_id:supos
      - response_type:code
      - scope:openid
      - redirect_uri:${BASE_URL}/inter-api/supos/auth/token
      body: []
    http_method: ~
    rename:
      headers: []
      querystring: []
      body: []
  name: request-transformer
  updated_at: 1742432166
  tags: ~
  consumer: ~
- enabled: true
  instance_name: ~
  route: 1fe717e7-804d-473b-b12b-7f5f68b5ec48
  created_at: 1734329742
  protocols:
  - grpc
  - grpcs
  - http
  - https
  service: ~
  id: 4e339a48-e193-4bc7-99ba-94f2e1e18a8f
  config:
    hide_credentials: false
    realm: ~
    key_in_header: true
    key_in_query: true
    key_names:
    - apikey
    key_in_body: false
    anonymous: ~
    run_on_preflight: true
  name: key-auth
  updated_at: 1742432166
  tags: ~
  consumer: ~
- enabled: true
  instance_name: ~
  route: ~
  created_at: 1734073759
  protocols:
  - grpc
  - grpcs
  - http
  - https
  service: e3e88607-311a-4c23-a9c7-bb879efc463e
  id: 73285cac-cf4e-4368-bf8f-d3285f9686d4
  config:
    add:
      headers: []
      json_types: []
      json: []
    remove:
      headers:
      - x-frame-options
      - Content-Security-Policy
      json: []
    replace:
      headers: []
      json_types: []
      json: []
    append:
      headers:
      - X-Frame-Options:DENY
      - Content-Security-Policy:frame-ancestors 'none'
      json_types: []
      json: []
    rename:
      headers: []
      json: []
  name: response-transformer
  updated_at: 1742432166
  tags: ~
  consumer: ~
- enabled: true
  instance_name: ~
  route: 6856a277-bcae-43a3-992c-81fc5c605baf
  created_at: 1734329166
  protocols:
  - grpc
  - grpcs
  - http
  - https
  service: ~
  id: 9e4c8423-76d1-498d-8883-b9b18bdbf161
  config:
    hide_credentials: false
    realm: ~
    key_in_header: true
    key_in_query: true
    key_names:
    - apikey
    key_in_body: false
    anonymous: ~
    run_on_preflight: true
  name: key-auth
  updated_at: 1742432166
  tags: ~
  consumer: ~
- enabled: true
  instance_name: ~
  route: a6d04fe9-a464-493c-8f3a-4750fdd93a32
  created_at: 1731400906
  protocols:
  - grpc
  - grpcs
  - http
  - https
  service: ~
  id: b5722a76-60b9-483d-90ac-e5de173264e2
  config:
    add:
      headers:
      - X-Frame-Options:SAMEORIGIN
      json_types: []
      json: []
    remove:
      headers:
      - X-Frame-Options
      json: []
    replace:
      headers: []
      json_types: []
      json: []
    append:
      headers: []
      json_types: []
      json: []
    rename:
      headers: []
      json: []
  name: response-transformer
  updated_at: 1742432166
  tags: ~
  consumer: ~
- enabled: true
  instance_name: ~
  route: ba7b2df9-b0d8-4b6b-844d-43f935f3181f
  created_at: 1734014838
  protocols:
  - grpc
  - grpcs
  - http
  - https
  service: ~
  id: f45e7fd0-74e5-4b36-b265-5df962eb1b58
  config:
    home_url: /home
  name: supos-url-transformer
  updated_at: 1742432166
  tags: ~
  consumer: ~
upstreams:
- created_at: 1730264799
  updated_at: 1742432166
  slots: 1000
  id: 00f62da1-73b3-4308-8ae5-856268388aa9
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: apm
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1731459961
  updated_at: 1742432166
  slots: 1000
  id: 09fa87e7-1cf1-4fc3-9ad6-6861572a8ef4
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: minio-inter
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1741754738
  updated_at: 1741754870
  slots: 1000
  id: 14bdf793-231d-439e-8d67-3e47a3e7da05
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: platform
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1729739799
  updated_at: 1742432166
  slots: 1000
  id: 14ee49e7-f9bf-4234-a48f-7b7df7dda0ea
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: keycloak
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1729739256
  updated_at: 1742432166
  slots: 1000
  id: 220c1252-a48b-4e7e-af42-b134f316ed16
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: nodered
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1729737217
  updated_at: 1742432166
  slots: 1000
  id: 2a0fa8a9-98a4-4456-9d2c-faba35b54882
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: konga
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1729739617
  updated_at: 1742432166
  slots: 1000
  id: 2e9455f1-241d-4a1e-840e-fea66dd9aa09
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: grafana
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1729739903
  updated_at: 1742432166
  slots: 1000
  id: 3f51d2ee-7609-4f71-b6ec-8ded27b417a2
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: portainer
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1729739883
  updated_at: 1742432166
  slots: 1000
  id: 420478e2-bdc8-49ec-ba0e-cc4cfd41afc8
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: kibana
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1729852910
  updated_at: 1742432166
  slots: 1000
  id: 47b5a73e-51c6-4ace-b507-40458125c0a6
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: gitea
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1729739930
  updated_at: 1742432166
  slots: 1000
  id: 747a43cc-42c4-457a-abac-518c2fe537b3
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: copilotkit
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1729739734
  updated_at: 1742432166
  slots: 1000
  id: ab6fb6a2-97b9-45e7-b508-46df2df5203e
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: hasura
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1729737694
  updated_at: 1742432166
  slots: 1000
  id: c0645f32-b63d-49ba-a723-5cbef9014c99
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: frontend
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1731396351
  updated_at: 1742432166
  slots: 1000
  id: c6844f11-b711-4f5f-a2d4-4516995790c5
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: minio
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1729739594
  updated_at: 1742432166
  slots: 1000
  id: e6729ab9-c894-4963-bbdc-dfae17c88096
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: backend
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1729739828
  updated_at: 1742432166
  slots: 1000
  id: fa9fc31a-7d71-43bd-a453-c21704b71ac6
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: emqx
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
- created_at: 1733536118
  updated_at: 1742432166
  slots: 1000
  id: fc85cfef-6e90-4592-a022-730f5d84ed99
  host_header: ~
  hash_fallback: none
  algorithm: round-robin
  tags: ~
  hash_on_cookie: ~
  use_srv_name: false
  hash_on_cookie_path: /
  healthchecks:
    passive:
      healthy:
        http_statuses:
        - 200
        - 201
        - 202
        - 203
        - 204
        - 205
        - 206
        - 207
        - 208
        - 226
        - 300
        - 301
        - 302
        - 303
        - 304
        - 305
        - 306
        - 307
        - 308
        successes: 0
      unhealthy:
        http_statuses:
        - 429
        - 500
        - 503
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      type: http
    threshold: 0
    active:
      headers: ~
      unhealthy:
        http_statuses:
        - 429
        - 404
        - 500
        - 501
        - 502
        - 503
        - 504
        - 505
        interval: 0
        tcp_failures: 0
        timeouts: 0
        http_failures: 0
      http_path: /
      type: http
      concurrency: 10
      timeout: 1
      https_verify_certificate: true
      healthy:
        interval: 0
        successes: 0
        http_statuses:
        - 200
        - 302
      https_sni: ~
  hash_on: none
  hash_fallback_query_arg: ~
  name: fuxa
  hash_on_header: ~
  client_certificate: ~
  hash_on_query_arg: ~
  hash_fallback_header: ~
  hash_on_uri_capture: ~
  hash_fallback_uri_capture: ~
targets:
- tags: ~
  weight: 100
  upstream: 00f62da1-73b3-4308-8ae5-856268388aa9
  id: 0be879dd-7ba3-42e3-96a8-5be0c8dcadfe
  target: apm:8080
  updated_at: 1740658918.066
  created_at: 1730264807.829
- tags: ~
  weight: 100
  upstream: 2e9455f1-241d-4a1e-840e-fea66dd9aa09
  id: 0c66a055-3e1d-4e77-aedd-6de30939a5a2
  target: grafana:3000
  updated_at: 1740658918.07
  created_at: 1729739629.259
- tags: ~
  weight: 100
  upstream: 47b5a73e-51c6-4ace-b507-40458125c0a6
  id: 29a2c68c-7501-49b1-aef1-56e1be3c2d74
  target: gitea:3000
  updated_at: 1740658918.074
  created_at: 1729852918.487
- tags: ~
  weight: 100
  upstream: fc85cfef-6e90-4592-a022-730f5d84ed99
  id: 2cc80d27-504d-4c1a-afaf-646f6e432fd6
  target: fuxa:1881
  updated_at: 1740658918.079
  created_at: 1733536131.451
- tags: ~
  weight: 100
  upstream: c6844f11-b711-4f5f-a2d4-4516995790c5
  id: 2f312fcf-baa6-4de0-84aa-0779713ae279
  target: minio:9001
  updated_at: 1740658918.083
  created_at: 1731397614.344
- tags: ~
  weight: 100
  upstream: 2a0fa8a9-98a4-4456-9d2c-faba35b54882
  id: 38ae0eeb-fa36-40a1-8c72-aaa43e7b9ceb
  target: konga:1337
  updated_at: 1740658918.064
  created_at: 1729737239.883
- tags: ~
  weight: 100
  upstream: fa9fc31a-7d71-43bd-a453-c21704b71ac6
  id: 3ec4626c-673a-4cc1-86fa-10f3b1bdc537
  target: emqx:18083
  updated_at: 1740658918.068
  created_at: 1729739844.316
- tags: ~
  weight: 100
  upstream: 220c1252-a48b-4e7e-af42-b134f316ed16
  id: 5a923a6d-0661-43ad-a668-e89f4980e5a6
  target: nodered:1880
  updated_at: 1740658918.073
  created_at: 1729739274.174
- tags: ~
  weight: 100
  upstream: 3f51d2ee-7609-4f71-b6ec-8ded27b417a2
  id: 78410225-c503-4d2c-885d-c38a72244aa0
  target: portainer:9443
  updated_at: 1740658918.078
  created_at: 1729739915.095
- tags: ~
  weight: 100
  upstream: 14bdf793-231d-439e-8d67-3e47a3e7da05
  id: 7c5e8a1d-6022-42b6-83b7-b1f39739b9df
  target: frontend:3001
  updated_at: 1741754798.218
  created_at: 1741754798.218
- tags: ~
  weight: 100
  upstream: ab6fb6a2-97b9-45e7-b508-46df2df5203e
  id: 8d09a927-4def-479d-8ed9-0473be2a281a
  target: hasura:8080
  updated_at: 1740658918.082
  created_at: 1729739753.711
- tags: ~
  weight: 100
  upstream: 14ee49e7-f9bf-4234-a48f-7b7df7dda0ea
  id: a4cdac00-4421-4a49-b2ba-b2f720f4998d
  target: keycloak:8080
  updated_at: 1740658918.063
  created_at: 1729832116.752
- tags: ~
  weight: 100
  upstream: 420478e2-bdc8-49ec-ba0e-cc4cfd41afc8
  id: afe138dc-2d5e-4329-80ff-a0154b634f42
  target: kibana:5601
  updated_at: 1740658918.067
  created_at: 1729739894.022
- tags: ~
  weight: 100
  upstream: e6729ab9-c894-4963-bbdc-dfae17c88096
  id: e401fd6b-6a87-41be-a501-6456afeb14d3
  target: backend:8080
  updated_at: 1740658918.071
  created_at: 1729739606.748
- tags: ~
  weight: 100
  upstream: 09fa87e7-1cf1-4fc3-9ad6-6861572a8ef4
  id: e5f0e5f7-8b6a-476b-ac72-2e4a32bab571
  target: minio:9000
  updated_at: 1740658918.076
  created_at: 1731459990.339
- tags: ~
  weight: 100
  upstream: c0645f32-b63d-49ba-a723-5cbef9014c99
  id: ef3e3b44-a490-40e8-afac-2b9e2d202643
  target: frontend:3000
  updated_at: 1740658918.081
  created_at: 1729914708.061
- tags: ~
  weight: 100
  upstream: 747a43cc-42c4-457a-abac-518c2fe537b3
  id: f4e24691-4181-42a6-b32c-6c7e8cd92077
  target: frontend:4000
  updated_at: 1740658918.085
  created_at: 1729914781.603
keyauth_credentials:
- key: 4174348a-9222-4e81-b33e-5d72d2fd7f1e
  id: 6b9443ae-73f0-4db6-af00-4f1e3a415dbb
  ttl: ~
  tags: ~
  created_at: 1734329245
  consumer: 59d1ef15-24a5-4373-b957-e8192c15ff6e
