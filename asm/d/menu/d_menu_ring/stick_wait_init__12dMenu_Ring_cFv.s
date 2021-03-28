lbl_801ED2BC:
/* 801ED2BC  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha
/* 801ED2C0  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l
/* 801ED2C4  80 04 00 30 */	lwz r0, 0x30(r4)
/* 801ED2C8  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 801ED2CC  41 82 00 30 */	beq lbl_801ED2FC
/* 801ED2D0  88 03 06 CE */	lbz r0, 0x6ce(r3)
/* 801ED2D4  28 00 00 00 */	cmplwi r0, 0
/* 801ED2D8  41 82 00 18 */	beq lbl_801ED2F0
/* 801ED2DC  3C 80 80 43 */	lis r4, g_ringHIO@ha
/* 801ED2E0  38 84 FA FC */	addi r4, r4, g_ringHIO@l
/* 801ED2E4  A8 04 01 4C */	lha r0, 0x14c(r4)
/* 801ED2E8  B0 03 06 72 */	sth r0, 0x672(r3)
/* 801ED2EC  48 00 00 20 */	b lbl_801ED30C
lbl_801ED2F0:
/* 801ED2F0  38 00 00 00 */	li r0, 0
/* 801ED2F4  B0 03 06 72 */	sth r0, 0x672(r3)
/* 801ED2F8  48 00 00 14 */	b lbl_801ED30C
lbl_801ED2FC:
/* 801ED2FC  3C 80 80 43 */	lis r4, g_ringHIO@ha
/* 801ED300  38 84 FA FC */	addi r4, r4, g_ringHIO@l
/* 801ED304  A8 04 01 4A */	lha r0, 0x14a(r4)
/* 801ED308  B0 03 06 72 */	sth r0, 0x672(r3)
lbl_801ED30C:
/* 801ED30C  38 00 00 00 */	li r0, 0
/* 801ED310  B0 03 06 3A */	sth r0, 0x63a(r3)
/* 801ED314  98 03 06 CE */	stb r0, 0x6ce(r3)
/* 801ED318  4E 80 00 20 */	blr 
