lbl_806A9930:
/* 806A9930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A9934  7C 08 02 A6 */	mflr r0
/* 806A9938  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A993C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A9940  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A9944  41 82 00 1C */	beq lbl_806A9960
/* 806A9948  3C A0 80 6B */	lis r5, __vt__8cM3dGCyl@ha /* 0x806AA0A4@ha */
/* 806A994C  38 05 A0 A4 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x806AA0A4@l */
/* 806A9950  90 1F 00 14 */	stw r0, 0x14(r31)
/* 806A9954  7C 80 07 35 */	extsh. r0, r4
/* 806A9958  40 81 00 08 */	ble lbl_806A9960
/* 806A995C  4B C2 53 E1 */	bl __dl__FPv
lbl_806A9960:
/* 806A9960  7F E3 FB 78 */	mr r3, r31
/* 806A9964  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A9968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A996C  7C 08 03 A6 */	mtlr r0
/* 806A9970  38 21 00 10 */	addi r1, r1, 0x10
/* 806A9974  4E 80 00 20 */	blr 
