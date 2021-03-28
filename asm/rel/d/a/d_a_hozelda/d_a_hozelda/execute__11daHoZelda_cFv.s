lbl_808489CC:
/* 808489CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808489D0  7C 08 02 A6 */	mflr r0
/* 808489D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808489D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808489DC  93 C1 00 08 */	stw r30, 8(r1)
/* 808489E0  7C 7E 1B 78 */	mr r30, r3
/* 808489E4  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 808489E8  7C 03 07 74 */	extsb r3, r0
/* 808489EC  4B 7E 46 80 */	b dComIfGp_getReverb__Fi
/* 808489F0  98 7E 06 E0 */	stb r3, 0x6e0(r30)
/* 808489F4  38 7E 06 C4 */	addi r3, r30, 0x6c4
/* 808489F8  4B 91 62 50 */	b setActor__16daPy_actorKeep_cFv
/* 808489FC  38 7E 06 CC */	addi r3, r30, 0x6cc
/* 80848A00  4B 91 62 48 */	b setActor__16daPy_actorKeep_cFv
/* 80848A04  80 1E 06 D0 */	lwz r0, 0x6d0(r30)
/* 80848A08  28 00 00 00 */	cmplwi r0, 0
/* 80848A0C  40 82 00 20 */	bne lbl_80848A2C
/* 80848A10  3C 60 80 84 */	lis r3, daHoZelda_searchGanon__FP10fopAc_ac_cPv@ha
/* 80848A14  38 63 5E 98 */	addi r3, r3, daHoZelda_searchGanon__FP10fopAc_ac_cPv@l
/* 80848A18  38 80 00 00 */	li r4, 0
/* 80848A1C  4B 7D 0D DC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80848A20  7C 64 1B 78 */	mr r4, r3
/* 80848A24  38 7E 06 CC */	addi r3, r30, 0x6cc
/* 80848A28  4B 91 62 90 */	b setData__16daPy_actorKeep_cFP10fopAc_ac_c
lbl_80848A2C:
/* 80848A2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80848A30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80848A34  83 E3 5D B8 */	lwz r31, 0x5db8(r3)
/* 80848A38  28 1F 00 00 */	cmplwi r31, 0
/* 80848A3C  41 82 00 10 */	beq lbl_80848A4C
/* 80848A40  38 7F 12 54 */	addi r3, r31, 0x1254
/* 80848A44  7F C4 F3 78 */	mr r4, r30
/* 80848A48  4B 91 62 70 */	b setData__16daPy_actorKeep_cFP10fopAc_ac_c
lbl_80848A4C:
/* 80848A4C  3C 60 80 85 */	lis r3, struct_80849010+0x1@ha
/* 80848A50  38 63 90 11 */	addi r3, r3, struct_80849010+0x1@l
/* 80848A54  48 00 02 E5 */	bl func_80848D38
/* 80848A58  7F C3 F3 78 */	mr r3, r30
/* 80848A5C  4B FF F7 41 */	bl setRideOffset__11daHoZelda_cFv
/* 80848A60  88 7E 06 D9 */	lbz r3, 0x6d9(r30)
/* 80848A64  28 03 00 00 */	cmplwi r3, 0
/* 80848A68  41 82 00 0C */	beq lbl_80848A74
/* 80848A6C  38 03 FF FF */	addi r0, r3, -1
/* 80848A70  98 1E 06 D9 */	stb r0, 0x6d9(r30)
lbl_80848A74:
/* 80848A74  7F C3 F3 78 */	mr r3, r30
/* 80848A78  4B FF E9 B9 */	bl animePlay__11daHoZelda_cFv
/* 80848A7C  7F C3 F3 78 */	mr r3, r30
/* 80848A80  4B FF EC 31 */	bl setAnm__11daHoZelda_cFv
/* 80848A84  7F C3 F3 78 */	mr r3, r30
/* 80848A88  4B FF FC ED */	bl searchBodyAngle__11daHoZelda_cFv
/* 80848A8C  7F C3 F3 78 */	mr r3, r30
/* 80848A90  4B FF F4 C5 */	bl setMatrix__11daHoZelda_cFv
/* 80848A94  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80848A98  81 83 00 00 */	lwz r12, 0(r3)
/* 80848A9C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80848AA0  7D 89 03 A6 */	mtctr r12
/* 80848AA4  4E 80 04 21 */	bctrl 
/* 80848AA8  7F C3 F3 78 */	mr r3, r30
/* 80848AAC  4B FF F3 99 */	bl setBowModel__11daHoZelda_cFv
/* 80848AB0  7F C3 F3 78 */	mr r3, r30
/* 80848AB4  4B FF FA 05 */	bl setNeckAngle__11daHoZelda_cFv
/* 80848AB8  38 00 00 00 */	li r0, 0
/* 80848ABC  98 1E 06 DB */	stb r0, 0x6db(r30)
/* 80848AC0  28 1F 00 00 */	cmplwi r31, 0
/* 80848AC4  41 82 00 48 */	beq lbl_80848B0C
/* 80848AC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80848ACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80848AD0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80848AD4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80848AD8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80848ADC  7D 89 03 A6 */	mtctr r12
/* 80848AE0  4E 80 04 21 */	bctrl 
/* 80848AE4  28 03 00 00 */	cmplwi r3, 0
/* 80848AE8  40 82 00 24 */	bne lbl_80848B0C
/* 80848AEC  88 1E 06 DF */	lbz r0, 0x6df(r30)
/* 80848AF0  28 00 00 00 */	cmplwi r0, 0
/* 80848AF4  41 82 00 18 */	beq lbl_80848B0C
/* 80848AF8  7F E3 FB 78 */	mr r3, r31
/* 80848AFC  38 80 00 06 */	li r4, 6
/* 80848B00  39 9F 18 BC */	addi r12, r31, 0x18bc
/* 80848B04  4B B1 95 80 */	b __ptmf_scall
/* 80848B08  60 00 00 00 */	nop 
lbl_80848B0C:
/* 80848B0C  38 7E 06 18 */	addi r3, r30, 0x618
/* 80848B10  38 80 00 00 */	li r4, 0
/* 80848B14  88 BE 06 E0 */	lbz r5, 0x6e0(r30)
/* 80848B18  81 9E 06 18 */	lwz r12, 0x618(r30)
/* 80848B1C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80848B20  7D 89 03 A6 */	mtctr r12
/* 80848B24  4E 80 04 21 */	bctrl 
/* 80848B28  38 60 00 01 */	li r3, 1
/* 80848B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80848B30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80848B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80848B38  7C 08 03 A6 */	mtlr r0
/* 80848B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80848B40  4E 80 00 20 */	blr 
