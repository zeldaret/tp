lbl_80860AF0:
/* 80860AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80860AF4  7C 08 02 A6 */	mflr r0
/* 80860AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80860AFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80860B00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80860B04  41 82 00 1C */	beq lbl_80860B20
/* 80860B08  3C A0 80 86 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80860B0C  38 05 0B C8 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80860B10  90 1F 00 00 */	stw r0, 0(r31)
/* 80860B14  7C 80 07 35 */	extsh. r0, r4
/* 80860B18  40 81 00 08 */	ble lbl_80860B20
/* 80860B1C  4B A6 E2 20 */	b __dl__FPv
lbl_80860B20:
/* 80860B20  7F E3 FB 78 */	mr r3, r31
/* 80860B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80860B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80860B2C  7C 08 03 A6 */	mtlr r0
/* 80860B30  38 21 00 10 */	addi r1, r1, 0x10
/* 80860B34  4E 80 00 20 */	blr 
