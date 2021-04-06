lbl_80B81F70:
/* 80B81F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B81F74  7C 08 02 A6 */	mflr r0
/* 80B81F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B81F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B81F80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B81F84  41 82 00 1C */	beq lbl_80B81FA0
/* 80B81F88  3C A0 80 B9 */	lis r5, __vt__8cM3dGLin@ha /* 0x80B8D92C@ha */
/* 80B81F8C  38 05 D9 2C */	addi r0, r5, __vt__8cM3dGLin@l /* 0x80B8D92C@l */
/* 80B81F90  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B81F94  7C 80 07 35 */	extsh. r0, r4
/* 80B81F98  40 81 00 08 */	ble lbl_80B81FA0
/* 80B81F9C  4B 74 CD A1 */	bl __dl__FPv
lbl_80B81FA0:
/* 80B81FA0  7F E3 FB 78 */	mr r3, r31
/* 80B81FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B81FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B81FAC  7C 08 03 A6 */	mtlr r0
/* 80B81FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B81FB4  4E 80 00 20 */	blr 
