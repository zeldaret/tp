lbl_806C6E5C:
/* 806C6E5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C6E60  7C 08 02 A6 */	mflr r0
/* 806C6E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C6E68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C6E6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806C6E70  41 82 00 1C */	beq lbl_806C6E8C
/* 806C6E74  3C A0 80 6C */	lis r5, __vt__8cM3dGSph@ha
/* 806C6E78  38 05 78 F0 */	addi r0, r5, __vt__8cM3dGSph@l
/* 806C6E7C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806C6E80  7C 80 07 35 */	extsh. r0, r4
/* 806C6E84  40 81 00 08 */	ble lbl_806C6E8C
/* 806C6E88  4B C0 7E B4 */	b __dl__FPv
lbl_806C6E8C:
/* 806C6E8C  7F E3 FB 78 */	mr r3, r31
/* 806C6E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C6E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C6E98  7C 08 03 A6 */	mtlr r0
/* 806C6E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 806C6EA0  4E 80 00 20 */	blr 
