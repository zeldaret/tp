lbl_80A92274:
/* 80A92274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A92278  7C 08 02 A6 */	mflr r0
/* 80A9227C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A92280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A92284  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A92288  41 82 00 1C */	beq lbl_80A922A4
/* 80A9228C  3C A0 80 A9 */	lis r5, __vt__8cM3dGSph@ha
/* 80A92290  38 05 2A 20 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80A92294  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80A92298  7C 80 07 35 */	extsh. r0, r4
/* 80A9229C  40 81 00 08 */	ble lbl_80A922A4
/* 80A922A0  4B 83 CA 9C */	b __dl__FPv
lbl_80A922A4:
/* 80A922A4  7F E3 FB 78 */	mr r3, r31
/* 80A922A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A922AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A922B0  7C 08 03 A6 */	mtlr r0
/* 80A922B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A922B8  4E 80 00 20 */	blr 
