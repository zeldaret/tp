lbl_80A28490:
/* 80A28490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A28494  7C 08 02 A6 */	mflr r0
/* 80A28498  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2849C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A284A0  7C 7F 1B 78 */	mr r31, r3
/* 80A284A4  38 00 00 00 */	li r0, 0
/* 80A284A8  3C 80 80 A3 */	lis r4, mTargetTag__15daNpcKasiMich_c@ha /* 0x80A2A7F0@ha */
/* 80A284AC  90 04 A7 F0 */	stw r0, mTargetTag__15daNpcKasiMich_c@l(r4)  /* 0x80A2A7F0@l */
/* 80A284B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A284B4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A284B8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A284BC  4B 5F 22 55 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A284C0  3C 80 80 A3 */	lis r4, struct_80A2A7F8+0x0@ha /* 0x80A2A7F8@ha */
/* 80A284C4  B0 64 A7 F8 */	sth r3, struct_80A2A7F8+0x0@l(r4)  /* 0x80A2A7F8@l */
/* 80A284C8  3C 60 80 A3 */	lis r3, _srch_escape_tag__15daNpcKasiMich_cFPvPv@ha /* 0x80A284F8@ha */
/* 80A284CC  38 63 84 F8 */	addi r3, r3, _srch_escape_tag__15daNpcKasiMich_cFPvPv@l /* 0x80A284F8@l */
/* 80A284D0  7F E4 FB 78 */	mr r4, r31
/* 80A284D4  4B 5F 8E 65 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A284D8  3C 60 80 A3 */	lis r3, mTargetTag__15daNpcKasiMich_c@ha /* 0x80A2A7F0@ha */
/* 80A284DC  38 63 A7 F0 */	addi r3, r3, mTargetTag__15daNpcKasiMich_c@l /* 0x80A2A7F0@l */
/* 80A284E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80A284E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A284E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A284EC  7C 08 03 A6 */	mtlr r0
/* 80A284F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A284F4  4E 80 00 20 */	blr 
