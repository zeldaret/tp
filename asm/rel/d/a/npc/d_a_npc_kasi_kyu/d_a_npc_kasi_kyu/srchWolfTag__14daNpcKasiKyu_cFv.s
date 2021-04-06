lbl_80A23C90:
/* 80A23C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A23C94  7C 08 02 A6 */	mflr r0
/* 80A23C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A23C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A23CA0  7C 7F 1B 78 */	mr r31, r3
/* 80A23CA4  38 00 00 00 */	li r0, 0
/* 80A23CA8  3C 80 80 A2 */	lis r4, mTargetTag__14daNpcKasiKyu_c@ha /* 0x80A26060@ha */
/* 80A23CAC  90 04 60 60 */	stw r0, mTargetTag__14daNpcKasiKyu_c@l(r4)  /* 0x80A26060@l */
/* 80A23CB0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A23CB4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A23CB8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A23CBC  4B 5F 6A 55 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A23CC0  3C 80 80 A2 */	lis r4, struct_80A26068+0x0@ha /* 0x80A26068@ha */
/* 80A23CC4  B0 64 60 68 */	sth r3, struct_80A26068+0x0@l(r4)  /* 0x80A26068@l */
/* 80A23CC8  3C 60 80 A2 */	lis r3, _srch_escape_tag__14daNpcKasiKyu_cFPvPv@ha /* 0x80A23CF8@ha */
/* 80A23CCC  38 63 3C F8 */	addi r3, r3, _srch_escape_tag__14daNpcKasiKyu_cFPvPv@l /* 0x80A23CF8@l */
/* 80A23CD0  7F E4 FB 78 */	mr r4, r31
/* 80A23CD4  4B 5F D6 65 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A23CD8  3C 60 80 A2 */	lis r3, mTargetTag__14daNpcKasiKyu_c@ha /* 0x80A26060@ha */
/* 80A23CDC  38 63 60 60 */	addi r3, r3, mTargetTag__14daNpcKasiKyu_c@l /* 0x80A26060@l */
/* 80A23CE0  80 63 00 00 */	lwz r3, 0(r3)
/* 80A23CE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A23CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A23CEC  7C 08 03 A6 */	mtlr r0
/* 80A23CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A23CF4  4E 80 00 20 */	blr 
