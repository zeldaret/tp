lbl_8099CAEC:
/* 8099CAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099CAF0  7C 08 02 A6 */	mflr r0
/* 8099CAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099CAF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099CAFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8099CB00  41 82 00 1C */	beq lbl_8099CB1C
/* 8099CB04  3C A0 80 9A */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8099D4DC@ha */
/* 8099CB08  38 05 D4 DC */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8099D4DC@l */
/* 8099CB0C  90 1F 00 00 */	stw r0, 0(r31)
/* 8099CB10  7C 80 07 35 */	extsh. r0, r4
/* 8099CB14  40 81 00 08 */	ble lbl_8099CB1C
/* 8099CB18  4B 93 22 25 */	bl __dl__FPv
lbl_8099CB1C:
/* 8099CB1C  7F E3 FB 78 */	mr r3, r31
/* 8099CB20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099CB24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099CB28  7C 08 03 A6 */	mtlr r0
/* 8099CB2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8099CB30  4E 80 00 20 */	blr 
