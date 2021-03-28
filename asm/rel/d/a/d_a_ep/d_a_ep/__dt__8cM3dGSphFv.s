lbl_8046AE28:
/* 8046AE28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046AE2C  7C 08 02 A6 */	mflr r0
/* 8046AE30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046AE34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046AE38  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046AE3C  41 82 00 1C */	beq lbl_8046AE58
/* 8046AE40  3C A0 80 47 */	lis r5, __vt__8cM3dGSph@ha
/* 8046AE44  38 05 B2 B8 */	addi r0, r5, __vt__8cM3dGSph@l
/* 8046AE48  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8046AE4C  7C 80 07 35 */	extsh. r0, r4
/* 8046AE50  40 81 00 08 */	ble lbl_8046AE58
/* 8046AE54  4B E6 3E E8 */	b __dl__FPv
lbl_8046AE58:
/* 8046AE58  7F E3 FB 78 */	mr r3, r31
/* 8046AE5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046AE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046AE64  7C 08 03 A6 */	mtlr r0
/* 8046AE68  38 21 00 10 */	addi r1, r1, 0x10
/* 8046AE6C  4E 80 00 20 */	blr 
