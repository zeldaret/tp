lbl_80D08570:
/* 80D08570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D08574  7C 08 02 A6 */	mflr r0
/* 80D08578  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0857C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D08580  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D08584  41 82 00 1C */	beq lbl_80D085A0
/* 80D08588  3C A0 80 D1 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D086BC@ha */
/* 80D0858C  38 05 86 BC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D086BC@l */
/* 80D08590  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D08594  7C 80 07 35 */	extsh. r0, r4
/* 80D08598  40 81 00 08 */	ble lbl_80D085A0
/* 80D0859C  4B 5C 67 A1 */	bl __dl__FPv
lbl_80D085A0:
/* 80D085A0  7F E3 FB 78 */	mr r3, r31
/* 80D085A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D085A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D085AC  7C 08 03 A6 */	mtlr r0
/* 80D085B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D085B4  4E 80 00 20 */	blr 
