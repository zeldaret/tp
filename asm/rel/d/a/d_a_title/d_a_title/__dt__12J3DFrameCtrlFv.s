lbl_80D67B78:
/* 80D67B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D67B7C  7C 08 02 A6 */	mflr r0
/* 80D67B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D67B84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D67B88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D67B8C  41 82 00 1C */	beq lbl_80D67BA8
/* 80D67B90  3C A0 80 D6 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80D67B94  38 05 7D 5C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80D67B98  90 1F 00 00 */	stw r0, 0(r31)
/* 80D67B9C  7C 80 07 35 */	extsh. r0, r4
/* 80D67BA0  40 81 00 08 */	ble lbl_80D67BA8
/* 80D67BA4  4B 56 71 98 */	b __dl__FPv
lbl_80D67BA8:
/* 80D67BA8  7F E3 FB 78 */	mr r3, r31
/* 80D67BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D67BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D67BB4  7C 08 03 A6 */	mtlr r0
/* 80D67BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D67BBC  4E 80 00 20 */	blr 
