lbl_805EE678:
/* 805EE678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EE67C  7C 08 02 A6 */	mflr r0
/* 805EE680  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EE684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EE688  7C 7F 1B 78 */	mr r31, r3
/* 805EE68C  4B A2 A6 55 */	bl fopAc_IsActor__FPv
/* 805EE690  2C 03 00 00 */	cmpwi r3, 0
/* 805EE694  41 82 00 34 */	beq lbl_805EE6C8
/* 805EE698  A8 1F 00 08 */	lha r0, 8(r31)
/* 805EE69C  2C 00 01 BB */	cmpwi r0, 0x1bb
/* 805EE6A0  40 82 00 28 */	bne lbl_805EE6C8
/* 805EE6A4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805EE6A8  28 00 00 03 */	cmplwi r0, 3
/* 805EE6AC  40 82 00 1C */	bne lbl_805EE6C8
/* 805EE6B0  38 00 00 01 */	li r0, 1
/* 805EE6B4  98 1F 0A 71 */	stb r0, 0xa71(r31)
/* 805EE6B8  38 00 00 00 */	li r0, 0
/* 805EE6BC  B0 1F 0A 5E */	sth r0, 0xa5e(r31)
/* 805EE6C0  7F E3 FB 78 */	mr r3, r31
/* 805EE6C4  48 00 00 08 */	b lbl_805EE6CC
lbl_805EE6C8:
/* 805EE6C8  38 60 00 00 */	li r3, 0
lbl_805EE6CC:
/* 805EE6CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EE6D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EE6D4  7C 08 03 A6 */	mtlr r0
/* 805EE6D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805EE6DC  4E 80 00 20 */	blr 
