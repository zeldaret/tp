lbl_8025C29C:
/* 8025C29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C2A0  7C 08 02 A6 */	mflr r0
/* 8025C2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C2A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C2AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C2B0  41 82 00 1C */	beq lbl_8025C2CC
/* 8025C2B4  3C A0 80 3C */	lis r5, __vt__22dSvBit_childOtherHIO_c@ha
/* 8025C2B8  38 05 33 00 */	addi r0, r5, __vt__22dSvBit_childOtherHIO_c@l
/* 8025C2BC  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C2C0  7C 80 07 35 */	extsh. r0, r4
/* 8025C2C4  40 81 00 08 */	ble lbl_8025C2CC
/* 8025C2C8  48 07 2A 75 */	bl __dl__FPv
lbl_8025C2CC:
/* 8025C2CC  7F E3 FB 78 */	mr r3, r31
/* 8025C2D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C2D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C2D8  7C 08 03 A6 */	mtlr r0
/* 8025C2DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C2E0  4E 80 00 20 */	blr 
