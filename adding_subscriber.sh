UE1_IMEI=356938035643803
UE1_IMEISV=4370816125816151
UE1_IMSI=001011234567895
UE1_KI=8baf473f2f8fd09487cccbd7097c6862
UE1_OP=11111111111111111111111111111111
UE1_AMF=8000
docker exec -it webui misc/db/open5gs-dbctl add_ue_with_apn $UE1_IMSI $UE1_KI $UE1_OP internet
docker exec -it webui misc/db/open5gs-dbctl update_apn $UE1_IMSI ims 0