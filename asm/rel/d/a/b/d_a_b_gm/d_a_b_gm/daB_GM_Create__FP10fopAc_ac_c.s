lbl_805F35A8:
/* 805F35A8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805F35AC  7C 08 02 A6 */	mflr r0
/* 805F35B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805F35B4  39 61 00 50 */	addi r11, r1, 0x50
/* 805F35B8  4B D6 EC 10 */	b _savegpr_24
/* 805F35BC  7C 7D 1B 78 */	mr r29, r3
/* 805F35C0  3C 80 80 5F */	lis r4, cNullVec__6Z2Calc@ha
/* 805F35C4  3B C4 43 90 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 805F35C8  3C 80 80 5F */	lis r4, lit_3774@ha
/* 805F35CC  3B E4 41 88 */	addi r31, r4, lit_3774@l
/* 805F35D0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805F35D4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805F35D8  40 82 00 1C */	bne lbl_805F35F4
/* 805F35DC  28 1D 00 00 */	cmplwi r29, 0
/* 805F35E0  41 82 00 08 */	beq lbl_805F35E8
/* 805F35E4  48 00 03 01 */	bl __ct__10b_gm_classFv
lbl_805F35E8:
/* 805F35E8  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 805F35EC  60 00 00 08 */	ori r0, r0, 8
/* 805F35F0  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_805F35F4:
/* 805F35F4  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 805F35F8  3C 80 80 5F */	lis r4, stringBase0@ha
/* 805F35FC  38 84 43 88 */	addi r4, r4, stringBase0@l
/* 805F3600  4B A3 98 BC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805F3604  7C 7C 1B 78 */	mr r28, r3
/* 805F3608  2C 1C 00 04 */	cmpwi r28, 4
/* 805F360C  40 82 02 BC */	bne lbl_805F38C8
/* 805F3610  7F A3 EB 78 */	mr r3, r29
/* 805F3614  3C 80 80 5F */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 805F3618  38 84 31 18 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 805F361C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C00@ha */
/* 805F3620  38 A5 8C 00 */	addi r5, r5, 0x8C00 /* 0x00008C00@l */
/* 805F3624  4B A2 6E 8C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805F3628  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805F362C  40 82 00 0C */	bne lbl_805F3638
/* 805F3630  38 60 00 05 */	li r3, 5
/* 805F3634  48 00 02 98 */	b lbl_805F38CC
lbl_805F3638:
/* 805F3638  3C 60 80 5F */	lis r3, struct_805F47CC+0x1@ha
/* 805F363C  8C 03 47 CD */	lbzu r0, struct_805F47CC+0x1@l(r3)
/* 805F3640  28 00 00 00 */	cmplwi r0, 0
/* 805F3644  40 82 00 20 */	bne lbl_805F3664
/* 805F3648  38 00 00 01 */	li r0, 1
/* 805F364C  98 1D 1D 04 */	stb r0, 0x1d04(r29)
/* 805F3650  98 03 00 00 */	stb r0, 0(r3)
/* 805F3654  38 00 FF FF */	li r0, -1
/* 805F3658  3C 60 80 5F */	lis r3, l_HIO@ha
/* 805F365C  38 63 47 DC */	addi r3, r3, l_HIO@l
/* 805F3660  98 03 00 04 */	stb r0, 4(r3)
lbl_805F3664:
/* 805F3664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F3668  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805F366C  3B 43 09 58 */	addi r26, r3, 0x958
/* 805F3670  7F 43 D3 78 */	mr r3, r26
/* 805F3674  38 80 00 03 */	li r4, 3
/* 805F3678  4B A4 12 BC */	b isDungeonItem__12dSv_memBit_cCFi
/* 805F367C  2C 03 00 00 */	cmpwi r3, 0
/* 805F3680  41 82 00 B4 */	beq lbl_805F3734
/* 805F3684  38 00 00 01 */	li r0, 1
/* 805F3688  98 1D 06 B4 */	stb r0, 0x6b4(r29)
/* 805F368C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805F3690  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805F3694  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805F3698  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805F369C  38 61 00 10 */	addi r3, r1, 0x10
/* 805F36A0  38 80 00 00 */	li r4, 0
/* 805F36A4  38 A0 00 00 */	li r5, 0
/* 805F36A8  38 C0 00 00 */	li r6, 0
/* 805F36AC  4B C7 3D 48 */	b __ct__5csXyzFsss
/* 805F36B0  38 61 00 24 */	addi r3, r1, 0x24
/* 805F36B4  38 81 00 10 */	addi r4, r1, 0x10
/* 805F36B8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805F36BC  7C 05 07 74 */	extsb r5, r0
/* 805F36C0  38 C0 00 00 */	li r6, 0
/* 805F36C4  38 E0 00 00 */	li r7, 0
/* 805F36C8  39 00 00 FF */	li r8, 0xff
/* 805F36CC  4B A2 92 90 */	b fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc
/* 805F36D0  7F 43 D3 78 */	mr r3, r26
/* 805F36D4  38 80 00 04 */	li r4, 4
/* 805F36D8  4B A4 12 5C */	b isDungeonItem__12dSv_memBit_cCFi
/* 805F36DC  2C 03 00 00 */	cmpwi r3, 0
/* 805F36E0  40 82 00 4C */	bne lbl_805F372C
/* 805F36E4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805F36E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805F36EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805F36F0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805F36F4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 805F36F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805F36FC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805F3700  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 805F3704  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805F3708  38 61 00 24 */	addi r3, r1, 0x24
/* 805F370C  38 80 00 22 */	li r4, 0x22
/* 805F3710  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805F3714  7C 05 07 74 */	extsb r5, r0
/* 805F3718  38 DD 04 E4 */	addi r6, r29, 0x4e4
/* 805F371C  38 E1 00 18 */	addi r7, r1, 0x18
/* 805F3720  FC 40 08 90 */	fmr f2, f1
/* 805F3724  39 00 FF FF */	li r8, -1
/* 805F3728  4B A2 89 AC */	b fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
lbl_805F372C:
/* 805F372C  7F 83 E3 78 */	mr r3, r28
/* 805F3730  48 00 01 9C */	b lbl_805F38CC
lbl_805F3734:
/* 805F3734  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F3738  80 63 00 04 */	lwz r3, 4(r3)
/* 805F373C  38 03 00 24 */	addi r0, r3, 0x24
/* 805F3740  90 1D 05 04 */	stw r0, 0x504(r29)
/* 805F3744  38 7D 09 60 */	addi r3, r29, 0x960
/* 805F3748  38 80 00 FF */	li r4, 0xff
/* 805F374C  38 A0 00 00 */	li r5, 0
/* 805F3750  7F A6 EB 78 */	mr r6, r29
/* 805F3754  4B A9 01 0C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805F3758  3B 00 00 00 */	li r24, 0
/* 805F375C  3B 60 00 00 */	li r27, 0
/* 805F3760  3B 5D 09 60 */	addi r26, r29, 0x960
lbl_805F3764:
/* 805F3764  2C 18 00 02 */	cmpwi r24, 2
/* 805F3768  40 80 00 28 */	bge lbl_805F3790
/* 805F376C  7F 3D DA 14 */	add r25, r29, r27
/* 805F3770  38 79 0A D4 */	addi r3, r25, 0xad4
/* 805F3774  38 9E 01 E4 */	addi r4, r30, 0x1e4
/* 805F3778  4B A9 12 BC */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805F377C  93 59 0B 18 */	stw r26, 0xb18(r25)
/* 805F3780  38 79 0D 44 */	addi r3, r25, 0xd44
/* 805F3784  38 9E 02 64 */	addi r4, r30, 0x264
/* 805F3788  4B A9 12 AC */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805F378C  93 59 0D 88 */	stw r26, 0xd88(r25)
lbl_805F3790:
/* 805F3790  7F 3D DA 14 */	add r25, r29, r27
/* 805F3794  38 79 0F B4 */	addi r3, r25, 0xfb4
/* 805F3798  38 9E 02 A4 */	addi r4, r30, 0x2a4
/* 805F379C  4B A9 12 98 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805F37A0  93 59 0F F8 */	stw r26, 0xff8(r25)
/* 805F37A4  3B 18 00 01 */	addi r24, r24, 1
/* 805F37A8  2C 18 00 08 */	cmpwi r24, 8
/* 805F37AC  3B 7B 01 38 */	addi r27, r27, 0x138
/* 805F37B0  41 80 FF B4 */	blt lbl_805F3764
/* 805F37B4  38 7D 09 9C */	addi r3, r29, 0x99c
/* 805F37B8  38 9E 02 24 */	addi r4, r30, 0x224
/* 805F37BC  4B A9 12 78 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805F37C0  38 1D 09 60 */	addi r0, r29, 0x960
/* 805F37C4  90 1D 09 E0 */	stw r0, 0x9e0(r29)
/* 805F37C8  38 7D 19 74 */	addi r3, r29, 0x1974
/* 805F37CC  38 9E 02 E4 */	addi r4, r30, 0x2e4
/* 805F37D0  4B A9 12 64 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805F37D4  38 1D 09 60 */	addi r0, r29, 0x960
/* 805F37D8  90 1D 19 B8 */	stw r0, 0x19b8(r29)
/* 805F37DC  38 00 00 01 */	li r0, 1
/* 805F37E0  98 1D 19 E9 */	stb r0, 0x19e9(r29)
/* 805F37E4  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805F37E8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805F37EC  38 BD 05 38 */	addi r5, r29, 0x538
/* 805F37F0  38 C0 00 03 */	li r6, 3
/* 805F37F4  38 E0 00 01 */	li r7, 1
/* 805F37F8  4B CC D8 9C */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 805F37FC  38 1D 05 E0 */	addi r0, r29, 0x5e0
/* 805F3800  90 1D 1A B8 */	stw r0, 0x1ab8(r29)
/* 805F3804  38 7D 06 84 */	addi r3, r29, 0x684
/* 805F3808  38 9D 06 D8 */	addi r4, r29, 0x6d8
/* 805F380C  38 A0 00 01 */	li r5, 1
/* 805F3810  81 9D 06 94 */	lwz r12, 0x694(r29)
/* 805F3814  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805F3818  7D 89 03 A6 */	mtctr r12
/* 805F381C  4E 80 04 21 */	bctrl 
/* 805F3820  38 00 01 F4 */	li r0, 0x1f4
/* 805F3824  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 805F3828  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 805F382C  38 00 00 00 */	li r0, 0
/* 805F3830  90 01 00 08 */	stw r0, 8(r1)
/* 805F3834  38 7D 07 88 */	addi r3, r29, 0x788
/* 805F3838  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805F383C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 805F3840  7F A6 EB 78 */	mr r6, r29
/* 805F3844  38 E0 00 01 */	li r7, 1
/* 805F3848  39 1D 07 48 */	addi r8, r29, 0x748
/* 805F384C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 805F3850  39 40 00 00 */	li r10, 0
/* 805F3854  4B A8 29 F4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805F3858  38 7D 07 48 */	addi r3, r29, 0x748
/* 805F385C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 805F3860  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 805F3864  4B A8 26 F4 */	b SetWall__12dBgS_AcchCirFff
/* 805F3868  38 60 00 01 */	li r3, 1
/* 805F386C  B0 7D 07 1E */	sth r3, 0x71e(r29)
/* 805F3870  38 00 00 0A */	li r0, 0xa
/* 805F3874  B0 1D 07 20 */	sth r0, 0x720(r29)
/* 805F3878  B0 7D 1C 8C */	sth r3, 0x1c8c(r29)
/* 805F387C  C0 1F 01 E8 */	lfs f0, 0x1e8(r31)
/* 805F3880  D0 1D 1A E0 */	stfs f0, 0x1ae0(r29)
/* 805F3884  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 805F3888  D0 1D 05 D8 */	stfs f0, 0x5d8(r29)
/* 805F388C  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 805F3890  38 00 80 00 */	li r0, -32768
/* 805F3894  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 805F3898  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 805F389C  C0 1F 01 EC */	lfs f0, 0x1ec(r31)
/* 805F38A0  D0 1D 07 40 */	stfs f0, 0x740(r29)
/* 805F38A4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805F38A8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805F38AC  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 805F38B0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805F38B4  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805F38B8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805F38BC  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805F38C0  7F A3 EB 78 */	mr r3, r29
/* 805F38C4  4B FF E6 95 */	bl daB_GM_Execute__FP10b_gm_class
lbl_805F38C8:
/* 805F38C8  7F 83 E3 78 */	mr r3, r28
lbl_805F38CC:
/* 805F38CC  39 61 00 50 */	addi r11, r1, 0x50
/* 805F38D0  4B D6 E9 44 */	b _restgpr_24
/* 805F38D4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805F38D8  7C 08 03 A6 */	mtlr r0
/* 805F38DC  38 21 00 50 */	addi r1, r1, 0x50
/* 805F38E0  4E 80 00 20 */	blr 
