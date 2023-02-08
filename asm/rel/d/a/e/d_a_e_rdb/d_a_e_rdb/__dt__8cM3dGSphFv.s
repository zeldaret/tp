lbl_8076ABB8:
/* 8076ABB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076ABBC  7C 08 02 A6 */	mflr r0
/* 8076ABC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076ABC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076ABC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8076ABCC  41 82 00 1C */	beq lbl_8076ABE8
/* 8076ABD0  3C A0 80 77 */	lis r5, __vt__8cM3dGSph@ha /* 0x8076B968@ha */
/* 8076ABD4  38 05 B9 68 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x8076B968@l */
/* 8076ABD8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8076ABDC  7C 80 07 35 */	extsh. r0, r4
/* 8076ABE0  40 81 00 08 */	ble lbl_8076ABE8
/* 8076ABE4  4B B6 41 59 */	bl __dl__FPv
lbl_8076ABE8:
/* 8076ABE8  7F E3 FB 78 */	mr r3, r31
/* 8076ABEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8076ABF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076ABF4  7C 08 03 A6 */	mtlr r0
/* 8076ABF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8076ABFC  4E 80 00 20 */	blr 
