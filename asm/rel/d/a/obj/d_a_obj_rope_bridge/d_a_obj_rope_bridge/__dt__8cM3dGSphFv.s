lbl_80597A90:
/* 80597A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80597A94  7C 08 02 A6 */	mflr r0
/* 80597A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80597A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80597AA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80597AA4  41 82 00 1C */	beq lbl_80597AC0
/* 80597AA8  3C A0 80 5A */	lis r5, __vt__8cM3dGSph@ha
/* 80597AAC  38 05 80 A4 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80597AB0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80597AB4  7C 80 07 35 */	extsh. r0, r4
/* 80597AB8  40 81 00 08 */	ble lbl_80597AC0
/* 80597ABC  4B D3 72 80 */	b __dl__FPv
lbl_80597AC0:
/* 80597AC0  7F E3 FB 78 */	mr r3, r31
/* 80597AC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80597AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597ACC  7C 08 03 A6 */	mtlr r0
/* 80597AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80597AD4  4E 80 00 20 */	blr 
