lbl_801D4AFC:
/* 801D4AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D4B00  7C 08 02 A6 */	mflr r0
/* 801D4B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D4B08  80 63 0C A8 */	lwz r3, 0xca8(r3)
/* 801D4B0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D4B10  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801D4B14  7D 89 03 A6 */	mtctr r12
/* 801D4B18  4E 80 04 21 */	bctrl 
/* 801D4B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D4B20  7C 08 03 A6 */	mtlr r0
/* 801D4B24  38 21 00 10 */	addi r1, r1, 0x10
/* 801D4B28  4E 80 00 20 */	blr 
