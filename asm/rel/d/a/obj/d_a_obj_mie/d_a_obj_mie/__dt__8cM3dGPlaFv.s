lbl_80C95290:
/* 80C95290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95294  7C 08 02 A6 */	mflr r0
/* 80C95298  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9529C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C952A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C952A4  41 82 00 1C */	beq lbl_80C952C0
/* 80C952A8  3C A0 80 C9 */	lis r5, __vt__8cM3dGPla@ha
/* 80C952AC  38 05 5C 34 */	addi r0, r5, __vt__8cM3dGPla@l
/* 80C952B0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C952B4  7C 80 07 35 */	extsh. r0, r4
/* 80C952B8  40 81 00 08 */	ble lbl_80C952C0
/* 80C952BC  4B 63 9A 80 */	b __dl__FPv
lbl_80C952C0:
/* 80C952C0  7F E3 FB 78 */	mr r3, r31
/* 80C952C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C952C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C952CC  7C 08 03 A6 */	mtlr r0
/* 80C952D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C952D4  4E 80 00 20 */	blr 
