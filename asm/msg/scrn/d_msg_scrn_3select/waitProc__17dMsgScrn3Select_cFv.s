lbl_8023AC14:
/* 8023AC14  A8 83 01 0A */	lha r4, 0x10a(r3)
/* 8023AC18  38 04 00 01 */	addi r0, r4, 1
/* 8023AC1C  B0 03 01 0A */	sth r0, 0x10a(r3)
/* 8023AC20  A8 A3 01 0A */	lha r5, 0x10a(r3)
/* 8023AC24  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 8023AC28  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l
/* 8023AC2C  A8 04 02 FA */	lha r0, 0x2fa(r4)
/* 8023AC30  7C 05 00 00 */	cmpw r5, r0
/* 8023AC34  4C 81 00 20 */	blelr 
/* 8023AC38  38 00 00 03 */	li r0, 3
/* 8023AC3C  98 03 01 13 */	stb r0, 0x113(r3)
/* 8023AC40  4E 80 00 20 */	blr 
