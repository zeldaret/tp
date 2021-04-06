lbl_801597C0:
/* 801597C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801597C4  7C 08 02 A6 */	mflr r0
/* 801597C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801597CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801597D0  7C 7F 1B 78 */	mr r31, r3
/* 801597D4  38 00 00 00 */	li r0, 0
/* 801597D8  90 0D 8A 84 */	stw r0, target(r13)
/* 801597DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801597E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801597E4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 801597E8  4B EC 0F 29 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 801597EC  B0 6D 8A 8C */	sth r3, wolfAngle(r13)
/* 801597F0  3C 60 80 16 */	lis r3, s_sub1__FPvPv@ha /* 0x80159708@ha */
/* 801597F4  38 63 97 08 */	addi r3, r3, s_sub1__FPvPv@l /* 0x80159708@l */
/* 801597F8  7F E4 FB 78 */	mr r4, r31
/* 801597FC  4B EC 7B 3D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80159800  80 6D 8A 84 */	lwz r3, target(r13)
/* 80159804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80159808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015980C  7C 08 03 A6 */	mtlr r0
/* 80159810  38 21 00 10 */	addi r1, r1, 0x10
/* 80159814  4E 80 00 20 */	blr 
