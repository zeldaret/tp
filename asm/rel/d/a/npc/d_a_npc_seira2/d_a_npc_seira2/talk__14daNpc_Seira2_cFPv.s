lbl_80AD3720:
/* 80AD3720  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD3724  7C 08 02 A6 */	mflr r0
/* 80AD3728  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD372C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD3730  4B 88 EA AD */	bl _savegpr_29
/* 80AD3734  7C 7F 1B 78 */	mr r31, r3
/* 80AD3738  3B A0 00 00 */	li r29, 0
/* 80AD373C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AD3740  2C 00 00 02 */	cmpwi r0, 2
/* 80AD3744  41 82 00 38 */	beq lbl_80AD377C
/* 80AD3748  40 80 01 2C */	bge lbl_80AD3874
/* 80AD374C  2C 00 00 00 */	cmpwi r0, 0
/* 80AD3750  40 80 00 0C */	bge lbl_80AD375C
/* 80AD3754  48 00 01 20 */	b lbl_80AD3874
/* 80AD3758  48 00 01 1C */	b lbl_80AD3874
lbl_80AD375C:
/* 80AD375C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AD3760  2C 00 00 00 */	cmpwi r0, 0
/* 80AD3764  40 82 01 10 */	bne lbl_80AD3874
/* 80AD3768  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80AD376C  38 A0 00 00 */	li r5, 0
/* 80AD3770  4B 67 84 81 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AD3774  38 00 00 02 */	li r0, 2
/* 80AD3778  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD377C:
/* 80AD377C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AD3780  28 00 00 00 */	cmplwi r0, 0
/* 80AD3784  41 82 00 0C */	beq lbl_80AD3790
/* 80AD3788  3B A0 00 01 */	li r29, 1
/* 80AD378C  48 00 00 94 */	b lbl_80AD3820
lbl_80AD3790:
/* 80AD3790  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AD3794  2C 00 00 01 */	cmpwi r0, 1
/* 80AD3798  41 82 00 2C */	beq lbl_80AD37C4
/* 80AD379C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD37A0  4B 67 1F 5D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AD37A4  38 00 00 00 */	li r0, 0
/* 80AD37A8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AD37AC  3C 60 80 AD */	lis r3, lit_4055@ha /* 0x80AD4B08@ha */
/* 80AD37B0  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)  /* 0x80AD4B08@l */
/* 80AD37B4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AD37B8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD37BC  38 00 00 01 */	li r0, 1
/* 80AD37C0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AD37C4:
/* 80AD37C4  38 00 00 00 */	li r0, 0
/* 80AD37C8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD37CC  7F E3 FB 78 */	mr r3, r31
/* 80AD37D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD37D4  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD37D8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80AD37DC  4B 54 6F 35 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AD37E0  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80AD37E4  7C 60 07 34 */	extsh r0, r3
/* 80AD37E8  7C 04 00 00 */	cmpw r4, r0
/* 80AD37EC  41 82 00 30 */	beq lbl_80AD381C
/* 80AD37F0  7F E3 FB 78 */	mr r3, r31
/* 80AD37F4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80AD37F8  4B 54 6F 19 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AD37FC  7C 64 1B 78 */	mr r4, r3
/* 80AD3800  7F E3 FB 78 */	mr r3, r31
/* 80AD3804  38 A0 FF FF */	li r5, -1
/* 80AD3808  38 C0 FF FF */	li r6, -1
/* 80AD380C  38 E0 00 0F */	li r7, 0xf
/* 80AD3810  39 00 00 00 */	li r8, 0
/* 80AD3814  4B 67 7E 35 */	bl step__8daNpcT_cFsiiii
/* 80AD3818  48 00 00 08 */	b lbl_80AD3820
lbl_80AD381C:
/* 80AD381C  3B A0 00 01 */	li r29, 1
lbl_80AD3820:
/* 80AD3820  2C 1D 00 00 */	cmpwi r29, 0
/* 80AD3824  41 82 00 50 */	beq lbl_80AD3874
/* 80AD3828  7F E3 FB 78 */	mr r3, r31
/* 80AD382C  38 80 00 00 */	li r4, 0
/* 80AD3830  38 A0 00 00 */	li r5, 0
/* 80AD3834  38 C0 00 00 */	li r6, 0
/* 80AD3838  38 E0 00 00 */	li r7, 0
/* 80AD383C  4B 67 84 3D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AD3840  2C 03 00 00 */	cmpwi r3, 0
/* 80AD3844  41 82 00 30 */	beq lbl_80AD3874
/* 80AD3848  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AD384C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD3850  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD3854  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AD3858  4B 67 1E 89 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80AD385C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD3860  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD3864  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AD3868  4B 56 EC 01 */	bl reset__14dEvt_control_cFv
/* 80AD386C  38 00 00 03 */	li r0, 3
/* 80AD3870  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD3874:
/* 80AD3874  38 60 00 00 */	li r3, 0
/* 80AD3878  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD387C  4B 88 E9 AD */	bl _restgpr_29
/* 80AD3880  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD3884  7C 08 03 A6 */	mtlr r0
/* 80AD3888  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD388C  4E 80 00 20 */	blr 
