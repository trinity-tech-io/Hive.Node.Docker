#!/bin/sh
echo 'Start run init.sh to update bootstrap.'
set -ex
ipfs bootstrap rm all
#ipfs
ipfs bootstrap add "/dnsaddr/ipfs.trinity-tech.io/p2p/12D3KooWA2Z3oXbZFr4dKUz64p4xcMdTiXrnzWYYR7vrEkSuZ6WN"
ipfs bootstrap add "/ip4/3.113.253.182/tcp/4001/p2p/12D3KooWA2Z3oXbZFr4dKUz64p4xcMdTiXrnzWYYR7vrEkSuZ6WN"
#ipfs-testnet
ipfs bootstrap add "/dnsaddr/ipfs-testnet.trinity-tech.io/quic/p2p/12D3KooWLLZzXRd4GBBiWGFwqrNSWz1v9oueuo7Q1fFeVm9UAM53"
ipfs bootstrap add "/ip4/45.76.55.52/udp/4001/quic/p2p/12D3KooWLLZzXRd4GBBiWGFwqrNSWz1v9oueuo7Q1fFeVm9UAM53"
