lbl_8005ADFC:
/* 8005ADFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005AE00  7C 08 02 A6 */	mflr r0
/* 8005AE04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005AE08  38 00 00 00 */	li r0, 0
/* 8005AE0C  98 03 00 28 */	stb r0, 0x28(r3)
/* 8005AE10  98 03 00 29 */	stb r0, 0x29(r3)
/* 8005AE14  4B FF FF 85 */	bl pntwind_set__FP14WIND_INFLUENCE
/* 8005AE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005AE1C  7C 08 03 A6 */	mtlr r0
/* 8005AE20  38 21 00 10 */	addi r1, r1, 0x10
/* 8005AE24  4E 80 00 20 */	blr 
