#include <stdio.h>
#include <stdint.h>

int main(int argc, char *argv[]) {

	typedef struct usbmux_packet {
	uint32_t size;
	uint32_t tag;
	char data[0];
	} usbmux_packet_t;
	
	typedef struct usb2mux_packet {
		char data[0];
	} usb2mux_packet_t;
	
	printf("%zd\n",sizeof(usbmux_packet_t));
	printf("%zd\n",sizeof(usb2mux_packet_t));
	
	char ch[20];
	printf("sizeof(ch[20]) = %zd\n",sizeof(ch));
	
	printf("sizeof(int16_t) = %zd\n",sizeof(int16_t));
	printf("sizeof(uint16_t) = %zd\n",sizeof(uint16_t));
			
	printf("sizeof(int32_t) = %zd\n",sizeof(int32_t));
	printf("sizeof(uint32_t) = %zd\n",sizeof(uint32_t));
	
	printf("sizeof(int64_t) = %zd\n",sizeof(int64_t));
	printf("sizeof(uint64_t) = %zd\n",sizeof(uint64_t));
	
}