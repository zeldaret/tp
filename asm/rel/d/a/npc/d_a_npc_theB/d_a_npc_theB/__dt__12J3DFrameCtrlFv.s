lbl_80B00B78:
/* 80B00B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B00B7C  7C 08 02 A6 */	mflr r0
/* 80B00B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B00B84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B00B88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B00B8C  41 82 00 1C */	beq lbl_80B00BA8
/* 80B00B90  3C A0 80 B0 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80B01278@ha */
/* 80B00B94  38 05 12 78 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80B01278@l */
/* 80B00B98  90 1F 00 00 */	stw r0, 0(r31)
/* 80B00B9C  7C 80 07 35 */	extsh. r0, r4
/* 80B00BA0  40 81 00 08 */	ble lbl_80B00BA8
/* 80B00BA4  4B 7C E1 99 */	bl __dl__FPv
lbl_80B00BA8:
/* 80B00BA8  7F E3 FB 78 */	mr r3, r31
/* 80B00BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B00BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B00BB4  7C 08 03 A6 */	mtlr r0
/* 80B00BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B00BBC  4E 80 00 20 */	blr 
