SNTO_PATH=$(subst $(prefix),,$(shell pwd))
KDK_PATH=$(SNTO_PATH)/KDK
TDK_PATH=$(SNTO_PATH)/TDK
FEE_PATH=$(SNTO_PATH)/FEE
.PHONY:ALL
ALL:
	cd $(KDK_PATH) && make && cp $(KDK_PATH)/inc/* $(SNTO_PATH)/inc/ && cp $(KDK_PATH)/lib/* $(SNTO_PATH)/lib/
	cd $(FEE_PATH) && make && cp $(FEE_PATH)/inc/* $(SNTO_PATH)/inc/ && cp $(FEE_PATH)/lib/* $(SNTO_PATH)/lib/
