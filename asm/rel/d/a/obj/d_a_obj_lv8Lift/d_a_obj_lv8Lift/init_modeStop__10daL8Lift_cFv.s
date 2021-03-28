lbl_80C89874:
/* 80C89874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C89878  7C 08 02 A6 */	mflr r0
/* 80C8987C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C89880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C89884  7C 7F 1B 78 */	mr r31, r3
/* 80C89888  88 03 08 0D */	lbz r0, 0x80d(r3)
/* 80C8988C  28 00 00 00 */	cmplwi r0, 0
/* 80C89890  41 82 00 14 */	beq lbl_80C898A4
/* 80C89894  38 00 00 00 */	li r0, 0
/* 80C89898  98 1F 08 0D */	stb r0, 0x80d(r31)
/* 80C8989C  38 7F 08 10 */	addi r3, r31, 0x810
/* 80C898A0  4B 51 E0 8C */	b dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80C898A4:
/* 80C898A4  3C 60 80 C9 */	lis r3, l_HIO@ha
/* 80C898A8  38 63 A1 F4 */	addi r3, r3, l_HIO@l
/* 80C898AC  88 03 00 04 */	lbz r0, 4(r3)
/* 80C898B0  98 1F 08 09 */	stb r0, 0x809(r31)
/* 80C898B4  3C 60 80 C9 */	lis r3, lit_3896@ha
/* 80C898B8  C0 03 9F C8 */	lfs f0, lit_3896@l(r3)
/* 80C898BC  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80C898C0  38 00 00 07 */	li r0, 7
/* 80C898C4  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80C898C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C898CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C898D0  7C 08 03 A6 */	mtlr r0
/* 80C898D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C898D8  4E 80 00 20 */	blr 
