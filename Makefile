#COMPONENT = AppliationC
COMPONENT = tdma_clientC
CFLAGS += -DCC2420_DEF_RFPOWER=31
CFLAGS += -DCC2420_DEF_CHANNEL=18
CFLAGS += -I$(TINYOS_ROOT_DIR)/tos/lib/printf
CFLAGS += -DNEW_PRINTF_SEMANTICS

#CFLAGS += -DPACKET_LINK
#CFLAGS += -DLOW_POWER_LISTENING
CFLAGS += -DCC2420_HW_ACKNOWLEDGEMENTS 
CFLAGS += -DCC2420_HW_ADDRESS_RECOGNITION
CFLAGS += -DTOSH_DATA_LENGTH=30
# include the packet link (acknowledgements) component
CFLAGS += -DPACKET_LINK


include $(TINYOS_ROOT_DIR)/Makefile.include
