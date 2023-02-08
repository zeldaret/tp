lbl_806E9B4C:
/* 806E9B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E9B50  7C 08 02 A6 */	mflr r0
/* 806E9B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E9B58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E9B5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E9B60  41 82 00 1C */	beq lbl_806E9B7C
/* 806E9B64  3C A0 80 6F */	lis r5, __vt__8cM3dGAab@ha /* 0x806EA494@ha */
/* 806E9B68  38 05 A4 94 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x806EA494@l */
/* 806E9B6C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806E9B70  7C 80 07 35 */	extsh. r0, r4
/* 806E9B74  40 81 00 08 */	ble lbl_806E9B7C
/* 806E9B78  4B BE 51 C5 */	bl __dl__FPv
lbl_806E9B7C:
/* 806E9B7C  7F E3 FB 78 */	mr r3, r31
/* 806E9B80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E9B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9B88  7C 08 03 A6 */	mtlr r0
/* 806E9B8C  38 21 00 10 */	addi r1, r1, 0x10
/* 806E9B90  4E 80 00 20 */	blr 
