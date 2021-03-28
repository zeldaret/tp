lbl_8020FA88:
/* 8020FA88  38 60 00 00 */	li r3, 0
/* 8020FA8C  2C 04 00 81 */	cmpwi r4, 0x81
/* 8020FA90  41 80 00 0C */	blt lbl_8020FA9C
/* 8020FA94  2C 04 00 9F */	cmpwi r4, 0x9f
/* 8020FA98  40 81 00 14 */	ble lbl_8020FAAC
lbl_8020FA9C:
/* 8020FA9C  2C 04 00 E0 */	cmpwi r4, 0xe0
/* 8020FAA0  4D 80 00 20 */	bltlr 
/* 8020FAA4  2C 04 00 FC */	cmpwi r4, 0xfc
/* 8020FAA8  4D 81 00 20 */	bgtlr 
lbl_8020FAAC:
/* 8020FAAC  38 60 00 01 */	li r3, 1
/* 8020FAB0  4E 80 00 20 */	blr 
