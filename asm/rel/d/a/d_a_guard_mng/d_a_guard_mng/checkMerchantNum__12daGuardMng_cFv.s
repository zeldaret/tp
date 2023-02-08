lbl_80837B9C:
/* 80837B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80837BA0  7C 08 02 A6 */	mflr r0
/* 80837BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80837BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80837BAC  7C 7F 1B 78 */	mr r31, r3
/* 80837BB0  3C 60 80 83 */	lis r3, lit_3663@ha /* 0x80837DEC@ha */
/* 80837BB4  C0 03 7D EC */	lfs f0, lit_3663@l(r3)  /* 0x80837DEC@l */
/* 80837BB8  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 80837BBC  38 00 00 00 */	li r0, 0
/* 80837BC0  98 1F 05 70 */	stb r0, 0x570(r31)
/* 80837BC4  3C 60 80 83 */	lis r3, s_sub__FPvPv@ha /* 0x80837B18@ha */
/* 80837BC8  38 63 7B 18 */	addi r3, r3, s_sub__FPvPv@l /* 0x80837B18@l */
/* 80837BCC  7F E4 FB 78 */	mr r4, r31
/* 80837BD0  4B 7E 97 69 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80837BD4  88 7F 05 70 */	lbz r3, 0x570(r31)
/* 80837BD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80837BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80837BE0  7C 08 03 A6 */	mtlr r0
/* 80837BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80837BE8  4E 80 00 20 */	blr 
