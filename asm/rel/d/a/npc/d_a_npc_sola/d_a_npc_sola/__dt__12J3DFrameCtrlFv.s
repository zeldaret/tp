lbl_80AEEA74:
/* 80AEEA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEEA78  7C 08 02 A6 */	mflr r0
/* 80AEEA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEEA80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEEA84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEEA88  41 82 00 1C */	beq lbl_80AEEAA4
/* 80AEEA8C  3C A0 80 AF */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80AEEA90  38 05 F3 18 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80AEEA94  90 1F 00 00 */	stw r0, 0(r31)
/* 80AEEA98  7C 80 07 35 */	extsh. r0, r4
/* 80AEEA9C  40 81 00 08 */	ble lbl_80AEEAA4
/* 80AEEAA0  4B 7E 02 9C */	b __dl__FPv
lbl_80AEEAA4:
/* 80AEEAA4  7F E3 FB 78 */	mr r3, r31
/* 80AEEAA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEEAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEEAB0  7C 08 03 A6 */	mtlr r0
/* 80AEEAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEEAB8  4E 80 00 20 */	blr 
