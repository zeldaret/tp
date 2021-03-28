lbl_80261100:
/* 80261100  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80261104  7C 08 02 A6 */	mflr r0
/* 80261108  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026110C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80261110  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80261114  7C 9E 23 78 */	mr r30, r4
/* 80261118  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8026111C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80261120  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80261124  7F E3 FB 78 */	mr r3, r31
/* 80261128  4B DC BA B5 */	bl getTimerPtr__14dComIfG_play_cFv
/* 8026112C  28 03 00 00 */	cmplwi r3, 0
/* 80261130  41 82 00 3C */	beq lbl_8026116C
/* 80261134  7F C3 F3 78 */	mr r3, r30
/* 80261138  38 81 00 14 */	addi r4, r1, 0x14
/* 8026113C  4B DB 41 D5 */	bl mDoLib_project__FP3VecP3Vec
/* 80261140  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80261144  D0 01 00 08 */	stfs f0, 8(r1)
/* 80261148  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8026114C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80261150  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80261154  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80261158  7F E3 FB 78 */	mr r3, r31
/* 8026115C  4B DC BA 81 */	bl getTimerPtr__14dComIfG_play_cFv
/* 80261160  38 81 00 08 */	addi r4, r1, 8
/* 80261164  48 00 02 79 */	bl createGetIn__8dTimer_cF4cXyz
/* 80261168  48 00 00 08 */	b lbl_80261170
lbl_8026116C:
/* 8026116C  38 60 00 00 */	li r3, 0
lbl_80261170:
/* 80261170  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80261174  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80261178  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026117C  7C 08 03 A6 */	mtlr r0
/* 80261180  38 21 00 30 */	addi r1, r1, 0x30
/* 80261184  4E 80 00 20 */	blr 
