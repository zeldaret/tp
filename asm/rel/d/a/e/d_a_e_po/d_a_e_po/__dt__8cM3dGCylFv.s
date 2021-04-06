lbl_80756BC0:
/* 80756BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80756BC4  7C 08 02 A6 */	mflr r0
/* 80756BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80756BCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80756BD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80756BD4  41 82 00 1C */	beq lbl_80756BF0
/* 80756BD8  3C A0 80 75 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80757DC0@ha */
/* 80756BDC  38 05 7D C0 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80757DC0@l */
/* 80756BE0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80756BE4  7C 80 07 35 */	extsh. r0, r4
/* 80756BE8  40 81 00 08 */	ble lbl_80756BF0
/* 80756BEC  4B B7 81 51 */	bl __dl__FPv
lbl_80756BF0:
/* 80756BF0  7F E3 FB 78 */	mr r3, r31
/* 80756BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80756BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80756BFC  7C 08 03 A6 */	mtlr r0
/* 80756C00  38 21 00 10 */	addi r1, r1, 0x10
/* 80756C04  4E 80 00 20 */	blr 
