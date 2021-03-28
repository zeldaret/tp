lbl_800E38EC:
/* 800E38EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E38F0  7C 08 02 A6 */	mflr r0
/* 800E38F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E38F8  80 A3 27 F4 */	lwz r5, 0x27f4(r3)
/* 800E38FC  C0 45 05 58 */	lfs f2, 0x558(r5)
/* 800E3900  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 800E3904  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 800E3908  EC 21 00 2A */	fadds f1, f1, f0
/* 800E390C  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 800E3910  D0 01 00 08 */	stfs f0, 8(r1)
/* 800E3914  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800E3918  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800E391C  38 81 00 08 */	addi r4, r1, 8
/* 800E3920  38 63 05 50 */	addi r3, r3, 0x550
/* 800E3924  4B F3 A3 45 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 800E3928  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E392C  41 82 00 54 */	beq lbl_800E3980
/* 800E3930  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800E3934  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800E3938  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E393C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E3940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E3944  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800E3948  3C 80 80 3F */	lis r4, mLineCheck__11fopAcM_lc_c@ha
/* 800E394C  38 84 1C 48 */	addi r4, r4, mLineCheck__11fopAcM_lc_c@l
/* 800E3950  38 84 00 14 */	addi r4, r4, 0x14
/* 800E3954  38 A1 00 14 */	addi r5, r1, 0x14
/* 800E3958  4B F9 0D ED */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800E395C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 800E3960  48 18 48 B1 */	bl cBgW_CheckBWall__Ff
/* 800E3964  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 800E3968  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 800E396C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E3970  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E3974  41 82 00 0C */	beq lbl_800E3980
/* 800E3978  38 60 00 01 */	li r3, 1
/* 800E397C  48 00 00 08 */	b lbl_800E3984
lbl_800E3980:
/* 800E3980  38 60 00 00 */	li r3, 0
lbl_800E3984:
/* 800E3984  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E3988  7C 08 03 A6 */	mtlr r0
/* 800E398C  38 21 00 30 */	addi r1, r1, 0x30
/* 800E3990  4E 80 00 20 */	blr 
