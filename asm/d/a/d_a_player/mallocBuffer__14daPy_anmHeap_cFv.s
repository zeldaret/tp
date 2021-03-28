lbl_8015EDC4:
/* 8015EDC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015EDC8  7C 08 02 A6 */	mflr r0
/* 8015EDCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015EDD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015EDD4  7C 7F 1B 78 */	mr r31, r3
/* 8015EDD8  80 63 00 08 */	lwz r3, 8(r3)
/* 8015EDDC  38 80 00 20 */	li r4, 0x20
/* 8015EDE0  48 16 FF 0D */	bl __nwa__FUli
/* 8015EDE4  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8015EDE8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8015EDEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015EDF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015EDF4  7C 08 03 A6 */	mtlr r0
/* 8015EDF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8015EDFC  4E 80 00 20 */	blr 
