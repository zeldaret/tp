lbl_80783A9C:
/* 80783A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80783AA0  7C 08 02 A6 */	mflr r0
/* 80783AA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80783AA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80783AAC  7C 7F 1B 78 */	mr r31, r3
/* 80783AB0  80 03 07 3C */	lwz r0, 0x73c(r3)
/* 80783AB4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80783AB8  41 82 00 80 */	beq lbl_80783B38
/* 80783ABC  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80783AC0  3C 60 80 78 */	lis r3, lit_3758@ha /* 0x80784DD8@ha */
/* 80783AC4  C0 03 4D D8 */	lfs f0, lit_3758@l(r3)  /* 0x80784DD8@l */
/* 80783AC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80783ACC  4C 40 13 82 */	cror 2, 0, 2
/* 80783AD0  40 82 00 68 */	bne lbl_80783B38
/* 80783AD4  80 1F 0A F8 */	lwz r0, 0xaf8(r31)
/* 80783AD8  60 00 00 01 */	ori r0, r0, 1
/* 80783ADC  90 1F 0A F8 */	stw r0, 0xaf8(r31)
/* 80783AE0  80 1F 0A 5C */	lwz r0, 0xa5c(r31)
/* 80783AE4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80783AE8  90 1F 0A 5C */	stw r0, 0xa5c(r31)
/* 80783AEC  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80783AF0  4B 90 0A 09 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80783AF4  7F E3 FB 78 */	mr r3, r31
/* 80783AF8  4B FF E0 01 */	bl MemberClear__8daE_SB_cFv
/* 80783AFC  7F E3 FB 78 */	mr r3, r31
/* 80783B00  38 80 00 07 */	li r4, 7
/* 80783B04  38 A0 00 00 */	li r5, 0
/* 80783B08  3C C0 80 78 */	lis r6, lit_3906@ha /* 0x80784DE8@ha */
/* 80783B0C  C0 26 4D E8 */	lfs f1, lit_3906@l(r6)  /* 0x80784DE8@l */
/* 80783B10  3C C0 80 78 */	lis r6, l_HIO@ha /* 0x80784F84@ha */
/* 80783B14  38 C6 4F 84 */	addi r6, r6, l_HIO@l /* 0x80784F84@l */
/* 80783B18  C0 46 00 28 */	lfs f2, 0x28(r6)
/* 80783B1C  4B FF DF 31 */	bl SetAnm__8daE_SB_cFiiff
/* 80783B20  7F E3 FB 78 */	mr r3, r31
/* 80783B24  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008478@ha */
/* 80783B28  38 84 84 78 */	addi r4, r4, 0x8478 /* 0x00008478@l */
/* 80783B2C  4B FF DE B1 */	bl Particle_Set__8daE_SB_cFUs
/* 80783B30  38 00 00 06 */	li r0, 6
/* 80783B34  90 1F 05 B0 */	stw r0, 0x5b0(r31)
lbl_80783B38:
/* 80783B38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80783B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80783B40  7C 08 03 A6 */	mtlr r0
/* 80783B44  38 21 00 10 */	addi r1, r1, 0x10
/* 80783B48  4E 80 00 20 */	blr 
