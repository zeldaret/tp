lbl_80C9189C:
/* 80C9189C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C918A0  7C 08 02 A6 */	mflr r0
/* 80C918A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C918A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C918AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C918B0  41 82 00 1C */	beq lbl_80C918CC
/* 80C918B4  3C A0 80 C9 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C91A64@ha */
/* 80C918B8  38 05 1A 64 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C91A64@l */
/* 80C918BC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C918C0  7C 80 07 35 */	extsh. r0, r4
/* 80C918C4  40 81 00 08 */	ble lbl_80C918CC
/* 80C918C8  4B 63 D4 75 */	bl __dl__FPv
lbl_80C918CC:
/* 80C918CC  7F E3 FB 78 */	mr r3, r31
/* 80C918D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C918D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C918D8  7C 08 03 A6 */	mtlr r0
/* 80C918DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C918E0  4E 80 00 20 */	blr 
