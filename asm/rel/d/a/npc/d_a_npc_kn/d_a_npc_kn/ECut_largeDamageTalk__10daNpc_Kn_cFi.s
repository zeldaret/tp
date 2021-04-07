lbl_80A2E26C:
/* 80A2E26C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2E270  7C 08 02 A6 */	mflr r0
/* 80A2E274  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2E278  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2E27C  4B 93 3F 59 */	bl _savegpr_27
/* 80A2E280  7C 7E 1B 78 */	mr r30, r3
/* 80A2E284  7C 9B 23 78 */	mr r27, r4
/* 80A2E288  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2E28C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2E290  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A2E294  3B E0 00 00 */	li r31, 0
/* 80A2E298  3B A0 FF FF */	li r29, -1
/* 80A2E29C  7F 83 E3 78 */	mr r3, r28
/* 80A2E2A0  3C A0 80 A4 */	lis r5, d_a_npc_kn__stringBase0@ha /* 0x80A40AF8@ha */
/* 80A2E2A4  38 A5 0A F8 */	addi r5, r5, d_a_npc_kn__stringBase0@l /* 0x80A40AF8@l */
/* 80A2E2A8  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A2E2AC  38 C0 00 03 */	li r6, 3
/* 80A2E2B0  4B 61 9E 3D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A2E2B4  28 03 00 00 */	cmplwi r3, 0
/* 80A2E2B8  41 82 00 08 */	beq lbl_80A2E2C0
/* 80A2E2BC  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A2E2C0:
/* 80A2E2C0  7F 83 E3 78 */	mr r3, r28
/* 80A2E2C4  7F 64 DB 78 */	mr r4, r27
/* 80A2E2C8  4B 61 9A 85 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A2E2CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A2E2D0  41 82 00 98 */	beq lbl_80A2E368
/* 80A2E2D4  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A2E2D8  41 82 00 90 */	beq lbl_80A2E368
/* 80A2E2DC  40 80 00 10 */	bge lbl_80A2E2EC
/* 80A2E2E0  2C 1D 00 00 */	cmpwi r29, 0
/* 80A2E2E4  41 82 00 14 */	beq lbl_80A2E2F8
/* 80A2E2E8  48 00 00 80 */	b lbl_80A2E368
lbl_80A2E2EC:
/* 80A2E2EC  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80A2E2F0  41 82 00 60 */	beq lbl_80A2E350
/* 80A2E2F4  48 00 00 74 */	b lbl_80A2E368
lbl_80A2E2F8:
/* 80A2E2F8  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 80A2E2FC  2C 00 00 01 */	cmpwi r0, 1
/* 80A2E300  41 82 00 2C */	beq lbl_80A2E32C
/* 80A2E304  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A2E308  4B 71 73 F5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A2E30C  38 00 00 00 */	li r0, 0
/* 80A2E310  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80A2E314  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A2E318  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A2E31C  D0 1E 0D 28 */	stfs f0, 0xd28(r30)
/* 80A2E320  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A2E324  38 00 00 01 */	li r0, 1
/* 80A2E328  90 1E 0D 14 */	stw r0, 0xd14(r30)
lbl_80A2E32C:
/* 80A2E32C  38 00 00 00 */	li r0, 0
/* 80A2E330  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A2E334  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A2E338  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A2E33C  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A2E340  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A2E344  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A2E348  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A2E34C  48 00 00 1C */	b lbl_80A2E368
lbl_80A2E350:
/* 80A2E350  38 00 00 02 */	li r0, 2
/* 80A2E354  B0 1E 0D FE */	sth r0, 0xdfe(r30)
/* 80A2E358  7F C3 F3 78 */	mr r3, r30
/* 80A2E35C  80 9E 0A B0 */	lwz r4, 0xab0(r30)
/* 80A2E360  38 A0 00 00 */	li r5, 0
/* 80A2E364  48 00 D0 85 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
lbl_80A2E368:
/* 80A2E368  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A2E36C  41 82 00 5C */	beq lbl_80A2E3C8
/* 80A2E370  40 80 00 10 */	bge lbl_80A2E380
/* 80A2E374  2C 1D 00 00 */	cmpwi r29, 0
/* 80A2E378  41 82 00 14 */	beq lbl_80A2E38C
/* 80A2E37C  48 00 01 8C */	b lbl_80A2E508
lbl_80A2E380:
/* 80A2E380  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80A2E384  41 82 01 18 */	beq lbl_80A2E49C
/* 80A2E388  48 00 01 80 */	b lbl_80A2E508
lbl_80A2E38C:
/* 80A2E38C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2E390  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2E394  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80A2E398  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A2E39C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80A2E3A0  7D 89 03 A6 */	mtctr r12
/* 80A2E3A4  4E 80 04 21 */	bctrl 
/* 80A2E3A8  28 03 00 00 */	cmplwi r3, 0
/* 80A2E3AC  40 82 00 08 */	bne lbl_80A2E3B4
/* 80A2E3B0  3B E0 00 01 */	li r31, 1
lbl_80A2E3B4:
/* 80A2E3B4  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80A2E3B8  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80A2E3BC  64 00 08 00 */	oris r0, r0, 0x800
/* 80A2E3C0  90 03 05 8C */	stw r0, 0x58c(r3)
/* 80A2E3C4  48 00 01 48 */	b lbl_80A2E50C
lbl_80A2E3C8:
/* 80A2E3C8  7F C3 F3 78 */	mr r3, r30
/* 80A2E3CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2E3D0  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2E3D4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A2E3D8  4B 5E C3 39 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2E3DC  A8 9E 0D AE */	lha r4, 0xdae(r30)
/* 80A2E3E0  7C 60 07 34 */	extsh r0, r3
/* 80A2E3E4  7C 04 00 00 */	cmpw r4, r0
/* 80A2E3E8  41 82 00 9C */	beq lbl_80A2E484
/* 80A2E3EC  7F C3 F3 78 */	mr r3, r30
/* 80A2E3F0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A2E3F4  4B 5E C3 1D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2E3F8  7C 64 1B 78 */	mr r4, r3
/* 80A2E3FC  7F C3 F3 78 */	mr r3, r30
/* 80A2E400  38 A0 00 01 */	li r5, 1
/* 80A2E404  38 C0 00 20 */	li r6, 0x20
/* 80A2E408  38 E0 00 14 */	li r7, 0x14
/* 80A2E40C  39 00 00 00 */	li r8, 0
/* 80A2E410  48 00 CE 11 */	bl step__10daNpc_Kn_cFsiiii
/* 80A2E414  2C 03 00 00 */	cmpwi r3, 0
/* 80A2E418  41 82 00 70 */	beq lbl_80A2E488
/* 80A2E41C  3B E0 00 01 */	li r31, 1
/* 80A2E420  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A2E424  2C 00 00 01 */	cmpwi r0, 1
/* 80A2E428  41 82 00 28 */	beq lbl_80A2E450
/* 80A2E42C  83 9E 0B 90 */	lwz r28, 0xb90(r30)
/* 80A2E430  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A2E434  4B 71 74 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E438  93 9E 0B 90 */	stw r28, 0xb90(r30)
/* 80A2E43C  38 00 00 01 */	li r0, 1
/* 80A2E440  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A2E444  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A2E448  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A2E44C  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A2E450:
/* 80A2E450  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A2E454  2C 00 00 00 */	cmpwi r0, 0
/* 80A2E458  41 82 00 30 */	beq lbl_80A2E488
/* 80A2E45C  83 9E 0B B4 */	lwz r28, 0xbb4(r30)
/* 80A2E460  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A2E464  4B 71 74 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E468  93 9E 0B B4 */	stw r28, 0xbb4(r30)
/* 80A2E46C  38 00 00 00 */	li r0, 0
/* 80A2E470  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A2E474  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A2E478  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A2E47C  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A2E480  48 00 00 08 */	b lbl_80A2E488
lbl_80A2E484:
/* 80A2E484  3B E0 00 01 */	li r31, 1
lbl_80A2E488:
/* 80A2E488  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80A2E48C  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80A2E490  64 00 08 00 */	oris r0, r0, 0x800
/* 80A2E494  90 03 05 8C */	stw r0, 0x58c(r3)
/* 80A2E498  48 00 00 74 */	b lbl_80A2E50C
lbl_80A2E49C:
/* 80A2E49C  7F C3 F3 78 */	mr r3, r30
/* 80A2E4A0  38 80 00 00 */	li r4, 0
/* 80A2E4A4  38 A0 00 00 */	li r5, 0
/* 80A2E4A8  38 C0 00 00 */	li r6, 0
/* 80A2E4AC  38 E0 00 00 */	li r7, 0
/* 80A2E4B0  48 00 CF 99 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A2E4B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A2E4B8  41 82 00 08 */	beq lbl_80A2E4C0
/* 80A2E4BC  3B E0 00 01 */	li r31, 1
lbl_80A2E4C0:
/* 80A2E4C0  7F C3 F3 78 */	mr r3, r30
/* 80A2E4C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2E4C8  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2E4CC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A2E4D0  4B 5E C2 41 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2E4D4  7C 64 1B 78 */	mr r4, r3
/* 80A2E4D8  38 7E 0D AE */	addi r3, r30, 0xdae
/* 80A2E4DC  38 A0 00 02 */	li r5, 2
/* 80A2E4E0  38 C0 08 00 */	li r6, 0x800
/* 80A2E4E4  4B 84 21 25 */	bl cLib_addCalcAngleS2__FPssss
/* 80A2E4E8  7F C3 F3 78 */	mr r3, r30
/* 80A2E4EC  A8 9E 0D AE */	lha r4, 0xdae(r30)
/* 80A2E4F0  48 00 C6 01 */	bl setAngle__10daNpc_Kn_cFs
/* 80A2E4F4  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80A2E4F8  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80A2E4FC  64 00 08 00 */	oris r0, r0, 0x800
/* 80A2E500  90 03 05 8C */	stw r0, 0x58c(r3)
/* 80A2E504  48 00 00 08 */	b lbl_80A2E50C
lbl_80A2E508:
/* 80A2E508  3B E0 00 01 */	li r31, 1
lbl_80A2E50C:
/* 80A2E50C  7F E3 FB 78 */	mr r3, r31
/* 80A2E510  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2E514  4B 93 3D 0D */	bl _restgpr_27
/* 80A2E518  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2E51C  7C 08 03 A6 */	mtlr r0
/* 80A2E520  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2E524  4E 80 00 20 */	blr 
