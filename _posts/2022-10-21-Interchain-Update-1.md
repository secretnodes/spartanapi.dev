---
layout: post
custom_js: mouse_coords
---

### Addition of Osmosis & Cosmos endpoints

In line with ["research and deploy relay nodes to connect secret network to other networks via IBC." from proposal 47](https://secretnodes.com/proposals/47) we are launching Osmosis and Cosmos endpoints. Originally we had intended to ask for further funding to fund the relayer costs, but since we did not do that we are instead providing these endpoints to relayers and dapps. They are not as robust as the main secret cluster we maintain, but we will expand as we see need from the Secret dapp & relayer community to do so. These first endpoints were chosen at request of a builder on secret network. If you have a request for a specific endpoint that we do not currently support, please email me at API@secretnodes.org

## List of new endpoints

Cosmos
1. [Cosmos RPC](https://cosmos-rpc.spartanapi.dev)
2. [Cosmos LCD](https://cosmos-lcd.spartanapi.dev)
3. [Cosmos gRPC](https://cosmos-grpc.spartanapi.dev)
4. [Cosmos wGRPC](https://cosmos-wgrpc.spartanapi.dev)

Osmosis
1. [Osmosis RPC](https://osmo-rpc.spartanapi.dev)
2. [Osmosis LCD](https://osmo-lcd.spartanapi.dev)
3. [Osmosis gRPC](https://osmo-grpc.spartanapi.dev)
4. [Osmosis wGRPC](https://osmo-wgrpc.spartanapi.dev)

## API Rules

Note for developers. For quality control purposes, if your application uses inefficient code and or otherwise excessively spams the API, your server IP(s) may be blocked by our load balancer. This should only apply to applications that require rapid and lengthy consecutive queries. Since the majority of dapps have the query come from the end users IP address, this will only apply to a narrow subset of those wishing to use the API. If you are a developer and unsure of if your application will be impacted, we encourage you to reach out to us directly by emailing api@secretnodes.org.


