lbl_80C8B298:
/* 80C8B298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B29C  7C 08 02 A6 */	mflr r0
/* 80C8B2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B2A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8B2A8  7C 7F 1B 78 */	mr r31, r3
/* 80C8B2AC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C8B2B0  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80C8B2B4  2C 00 00 0F */	cmpwi r0, 0xf
/* 80C8B2B8  41 82 00 0C */	beq lbl_80C8B2C4
/* 80C8B2BC  38 00 00 01 */	li r0, 1
/* 80C8B2C0  98 1F 06 16 */	stb r0, 0x616(r31)
lbl_80C8B2C4:
/* 80C8B2C4  88 1F 06 14 */	lbz r0, 0x614(r31)
/* 80C8B2C8  28 00 00 00 */	cmplwi r0, 0
/* 80C8B2CC  41 82 00 14 */	beq lbl_80C8B2E0
/* 80C8B2D0  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 80C8B2D4  4B 51 C6 59 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
/* 80C8B2D8  38 00 00 00 */	li r0, 0
/* 80C8B2DC  98 1F 06 14 */	stb r0, 0x614(r31)
lbl_80C8B2E0:
/* 80C8B2E0  3C 60 80 C9 */	lis r3, l_HIO@ha /* 0x80C8BBEC@ha */
/* 80C8B2E4  38 63 BB EC */	addi r3, r3, l_HIO@l /* 0x80C8BBEC@l */
/* 80C8B2E8  88 03 00 04 */	lbz r0, 4(r3)
/* 80C8B2EC  98 1F 05 EA */	stb r0, 0x5ea(r31)
/* 80C8B2F0  3C 60 80 C9 */	lis r3, lit_3902@ha /* 0x80C8BA00@ha */
/* 80C8B2F4  C0 03 BA 00 */	lfs f0, lit_3902@l(r3)  /* 0x80C8BA00@l */
/* 80C8B2F8  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80C8B2FC  38 00 00 06 */	li r0, 6
/* 80C8B300  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80C8B304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8B308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B30C  7C 08 03 A6 */	mtlr r0
/* 80C8B310  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B314  4E 80 00 20 */	blr 
