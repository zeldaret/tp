lbl_80CBC1A4:
/* 80CBC1A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC1A8  7C 08 02 A6 */	mflr r0
/* 80CBC1AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC1B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBC1B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBC1B8  41 82 00 1C */	beq lbl_80CBC1D4
/* 80CBC1BC  3C A0 80 CC */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CBC590@ha */
/* 80CBC1C0  38 05 C5 90 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CBC590@l */
/* 80CBC1C4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CBC1C8  7C 80 07 35 */	extsh. r0, r4
/* 80CBC1CC  40 81 00 08 */	ble lbl_80CBC1D4
/* 80CBC1D0  4B 61 2B 6D */	bl __dl__FPv
lbl_80CBC1D4:
/* 80CBC1D4  7F E3 FB 78 */	mr r3, r31
/* 80CBC1D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBC1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC1E0  7C 08 03 A6 */	mtlr r0
/* 80CBC1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC1E8  4E 80 00 20 */	blr 
