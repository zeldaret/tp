lbl_80A1E78C:
/* 80A1E78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1E790  7C 08 02 A6 */	mflr r0
/* 80A1E794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1E798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1E79C  7C 7F 1B 78 */	mr r31, r3
/* 80A1E7A0  38 00 00 00 */	li r0, 0
/* 80A1E7A4  3C 80 80 A2 */	lis r4, mTargetTag__15daNpcKasiHana_c@ha
/* 80A1E7A8  90 04 18 58 */	stw r0, mTargetTag__15daNpcKasiHana_c@l(r4)
/* 80A1E7AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A1E7B0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A1E7B4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A1E7B8  4B 5F BF 58 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A1E7BC  3C 80 80 A2 */	lis r4, mWolfAngle__15daNpcKasiHana_c@ha
/* 80A1E7C0  B0 64 18 60 */	sth r3, mWolfAngle__15daNpcKasiHana_c@l(r4)
/* 80A1E7C4  3C 60 80 A2 */	lis r3, _srch_escape_tag__15daNpcKasiHana_cFPvPv@ha
/* 80A1E7C8  38 63 E7 F4 */	addi r3, r3, _srch_escape_tag__15daNpcKasiHana_cFPvPv@l
/* 80A1E7CC  7F E4 FB 78 */	mr r4, r31
/* 80A1E7D0  4B 60 2B 68 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A1E7D4  3C 60 80 A2 */	lis r3, mTargetTag__15daNpcKasiHana_c@ha
/* 80A1E7D8  38 63 18 58 */	addi r3, r3, mTargetTag__15daNpcKasiHana_c@l
/* 80A1E7DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80A1E7E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1E7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1E7E8  7C 08 03 A6 */	mtlr r0
/* 80A1E7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1E7F0  4E 80 00 20 */	blr 
