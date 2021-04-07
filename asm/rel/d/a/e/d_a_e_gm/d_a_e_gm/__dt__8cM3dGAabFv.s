lbl_806D723C:
/* 806D723C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D7240  7C 08 02 A6 */	mflr r0
/* 806D7244  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D7248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D724C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806D7250  41 82 00 1C */	beq lbl_806D726C
/* 806D7254  3C A0 80 6D */	lis r5, __vt__8cM3dGAab@ha /* 0x806D7E34@ha */
/* 806D7258  38 05 7E 34 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x806D7E34@l */
/* 806D725C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806D7260  7C 80 07 35 */	extsh. r0, r4
/* 806D7264  40 81 00 08 */	ble lbl_806D726C
/* 806D7268  4B BF 7A D5 */	bl __dl__FPv
lbl_806D726C:
/* 806D726C  7F E3 FB 78 */	mr r3, r31
/* 806D7270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D7274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D7278  7C 08 03 A6 */	mtlr r0
/* 806D727C  38 21 00 10 */	addi r1, r1, 0x10
/* 806D7280  4E 80 00 20 */	blr 
