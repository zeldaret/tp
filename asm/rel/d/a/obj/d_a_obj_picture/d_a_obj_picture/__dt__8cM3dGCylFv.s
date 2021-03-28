lbl_80CAD498:
/* 80CAD498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD49C  7C 08 02 A6 */	mflr r0
/* 80CAD4A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD4A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAD4A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CAD4AC  41 82 00 1C */	beq lbl_80CAD4C8
/* 80CAD4B0  3C A0 80 CB */	lis r5, __vt__8cM3dGCyl@ha
/* 80CAD4B4  38 05 F2 28 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80CAD4B8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CAD4BC  7C 80 07 35 */	extsh. r0, r4
/* 80CAD4C0  40 81 00 08 */	ble lbl_80CAD4C8
/* 80CAD4C4  4B 62 18 78 */	b __dl__FPv
lbl_80CAD4C8:
/* 80CAD4C8  7F E3 FB 78 */	mr r3, r31
/* 80CAD4CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAD4D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD4D4  7C 08 03 A6 */	mtlr r0
/* 80CAD4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD4DC  4E 80 00 20 */	blr 
