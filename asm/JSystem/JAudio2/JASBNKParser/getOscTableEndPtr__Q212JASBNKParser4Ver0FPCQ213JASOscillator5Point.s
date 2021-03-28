lbl_80299F8C:
/* 80299F8C  A8 03 00 00 */	lha r0, 0(r3)
/* 80299F90  2C 00 00 0A */	cmpwi r0, 0xa
/* 80299F94  38 63 00 06 */	addi r3, r3, 6
/* 80299F98  40 81 FF F4 */	ble getOscTableEndPtr__Q212JASBNKParser4Ver0FPCQ213JASOscillator5Point
/* 80299F9C  4E 80 00 20 */	blr 
