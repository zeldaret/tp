lbl_80B35364:
/* 80B35364  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B35368  7C 08 02 A6 */	mflr r0
/* 80B3536C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B35370  39 61 00 60 */	addi r11, r1, 0x60
/* 80B35374  4B 82 CE 65 */	bl _savegpr_28
/* 80B35378  7C 7C 1B 78 */	mr r28, r3
/* 80B3537C  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B35380  3B E4 16 DC */	addi r31, r4, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B35384  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B35388  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3538C  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80B35390  88 03 0E 9B */	lbz r0, 0xe9b(r3)
/* 80B35394  7C 00 00 34 */	cntlzw r0, r0
/* 80B35398  54 04 D9 7E */	srwi r4, r0, 5
/* 80B3539C  3B A4 00 11 */	addi r29, r4, 0x11
/* 80B353A0  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B353A4  2C 00 00 02 */	cmpwi r0, 2
/* 80B353A8  41 82 01 14 */	beq lbl_80B354BC
/* 80B353AC  40 80 00 10 */	bge lbl_80B353BC
/* 80B353B0  2C 00 00 00 */	cmpwi r0, 0
/* 80B353B4  41 82 00 14 */	beq lbl_80B353C8
/* 80B353B8  48 00 03 AC */	b lbl_80B35764
lbl_80B353BC:
/* 80B353BC  2C 00 00 04 */	cmpwi r0, 4
/* 80B353C0  40 80 03 A4 */	bge lbl_80B35764
/* 80B353C4  48 00 03 80 */	b lbl_80B35744
lbl_80B353C8:
/* 80B353C8  38 80 00 08 */	li r4, 8
/* 80B353CC  38 A0 00 01 */	li r5, 1
/* 80B353D0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B353D4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B353D8  7D 89 03 A6 */	mtctr r12
/* 80B353DC  4E 80 04 21 */	bctrl 
/* 80B353E0  7F 83 E3 78 */	mr r3, r28
/* 80B353E4  38 80 00 10 */	li r4, 0x10
/* 80B353E8  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80B353EC  38 A0 00 00 */	li r5, 0
/* 80B353F0  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B353F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B353F8  7D 89 03 A6 */	mtctr r12
/* 80B353FC  4E 80 04 21 */	bctrl 
/* 80B35400  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B35404  80 63 00 04 */	lwz r3, 4(r3)
/* 80B35408  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B3540C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B35410  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 80B35414  7C 63 02 14 */	add r3, r3, r0
/* 80B35418  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3541C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B35420  4B 81 10 91 */	bl PSMTXCopy
/* 80B35424  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B35428  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3542C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B35430  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B35434  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B35438  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B3543C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B35440  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B35444  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B35448  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3544C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80B35450  38 80 00 00 */	li r4, 0
/* 80B35454  90 81 00 08 */	stw r4, 8(r1)
/* 80B35458  38 00 FF FF */	li r0, -1
/* 80B3545C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B35460  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B35464  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B35468  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B3546C  38 80 00 00 */	li r4, 0
/* 80B35470  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008537@ha */
/* 80B35474  38 A5 85 37 */	addi r5, r5, 0x8537 /* 0x00008537@l */
/* 80B35478  38 C1 00 44 */	addi r6, r1, 0x44
/* 80B3547C  38 E0 00 00 */	li r7, 0
/* 80B35480  39 1C 08 F0 */	addi r8, r28, 0x8f0
/* 80B35484  39 20 00 00 */	li r9, 0
/* 80B35488  39 40 00 FF */	li r10, 0xff
/* 80B3548C  C0 3F 01 B4 */	lfs f1, 0x1b4(r31)
/* 80B35490  4B 51 76 01 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B35494  90 7C 0D D8 */	stw r3, 0xdd8(r28)
/* 80B35498  80 7C 0D D8 */	lwz r3, 0xdd8(r28)
/* 80B3549C  28 03 00 00 */	cmplwi r3, 0
/* 80B354A0  41 82 00 10 */	beq lbl_80B354B0
/* 80B354A4  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B354A8  60 00 00 40 */	ori r0, r0, 0x40
/* 80B354AC  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B354B0:
/* 80B354B0  38 00 00 02 */	li r0, 2
/* 80B354B4  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B354B8  48 00 02 AC */	b lbl_80B35764
lbl_80B354BC:
/* 80B354BC  7F C4 F3 78 */	mr r4, r30
/* 80B354C0  4B 4E 52 51 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B354C4  7C 64 1B 78 */	mr r4, r3
/* 80B354C8  38 7C 08 F2 */	addi r3, r28, 0x8f2
/* 80B354CC  80 BC 0B D8 */	lwz r5, 0xbd8(r28)
/* 80B354D0  A8 A5 00 78 */	lha r5, 0x78(r5)
/* 80B354D4  38 C0 40 00 */	li r6, 0x4000
/* 80B354D8  38 E0 00 40 */	li r7, 0x40
/* 80B354DC  4B 73 B0 65 */	bl cLib_addCalcAngleS__FPsssss
/* 80B354E0  7F 83 E3 78 */	mr r3, r28
/* 80B354E4  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B354E8  4B 61 ED 69 */	bl setAngle__8daNpcF_cFs
/* 80B354EC  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B354F0  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B354F4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B354F8  7F C3 F3 78 */	mr r3, r30
/* 80B354FC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80B35500  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B35504  7D 89 03 A6 */	mtctr r12
/* 80B35508  4E 80 04 21 */	bctrl 
/* 80B3550C  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B35510  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80B35514  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B35518  4B 4D BC D5 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80B3551C  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B35520  80 63 00 04 */	lwz r3, 4(r3)
/* 80B35524  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B35528  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B3552C  1F BD 00 30 */	mulli r29, r29, 0x30
/* 80B35530  7C 60 EA 14 */	add r3, r0, r29
/* 80B35534  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B35538  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3553C  4B 81 0F 75 */	bl PSMTXCopy
/* 80B35540  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B35544  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B35548  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3554C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B35550  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B35554  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B35558  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3555C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B35560  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B35564  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B35568  C0 1F 05 C8 */	lfs f0, 0x5c8(r31)
/* 80B3556C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B35570  40 81 00 1C */	ble lbl_80B3558C
/* 80B35574  C0 1F 05 D0 */	lfs f0, 0x5d0(r31)
/* 80B35578  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B3557C  40 80 00 10 */	bge lbl_80B3558C
/* 80B35580  4B 64 C0 C1 */	bl dCam_getBody__Fv
/* 80B35584  38 80 00 06 */	li r4, 6
/* 80B35588  4B 62 E7 C9 */	bl ModeFix__9dCamera_cFl
lbl_80B3558C:
/* 80B3558C  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B35590  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B35594  C0 1F 05 D4 */	lfs f0, 0x5d4(r31)
/* 80B35598  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3559C  40 82 00 38 */	bne lbl_80B355D4
/* 80B355A0  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 80B355A4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B355A8  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 80B355AC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B355B0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80B355B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B355B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B355BC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B355C0  80 9C 0B D8 */	lwz r4, 0xbd8(r28)
/* 80B355C4  80 84 00 74 */	lwz r4, 0x74(r4)
/* 80B355C8  38 A0 00 0F */	li r5, 0xf
/* 80B355CC  38 C1 00 38 */	addi r6, r1, 0x38
/* 80B355D0  4B 53 A4 55 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80B355D4:
/* 80B355D4  80 BC 0D D8 */	lwz r5, 0xdd8(r28)
/* 80B355D8  28 05 00 00 */	cmplwi r5, 0
/* 80B355DC  41 82 00 24 */	beq lbl_80B35600
/* 80B355E0  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B355E4  80 63 00 04 */	lwz r3, 4(r3)
/* 80B355E8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B355EC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B355F0  7C 60 EA 14 */	add r3, r0, r29
/* 80B355F4  38 85 00 68 */	addi r4, r5, 0x68
/* 80B355F8  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80B355FC  4B 74 B1 E5 */	bl func_802807E0
lbl_80B35600:
/* 80B35600  7F 83 E3 78 */	mr r3, r28
/* 80B35604  48 00 01 7D */	bl checkOutOfArenaW__15daNpcWrestler_cFv
/* 80B35608  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B3560C  41 82 00 98 */	beq lbl_80B356A4
/* 80B35610  3C 60 80 B4 */	lis r3, lit_6833@ha /* 0x80B429D0@ha */
/* 80B35614  38 83 29 D0 */	addi r4, r3, lit_6833@l /* 0x80B429D0@l */
/* 80B35618  80 64 00 00 */	lwz r3, 0(r4)
/* 80B3561C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B35620  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B35624  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B35628  80 04 00 08 */	lwz r0, 8(r4)
/* 80B3562C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B35630  38 00 00 03 */	li r0, 3
/* 80B35634  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B35638  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B3563C  4B 82 C9 DD */	bl __ptmf_test
/* 80B35640  2C 03 00 00 */	cmpwi r3, 0
/* 80B35644  41 82 00 18 */	beq lbl_80B3565C
/* 80B35648  7F 83 E3 78 */	mr r3, r28
/* 80B3564C  38 80 00 00 */	li r4, 0
/* 80B35650  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B35654  4B 82 CA 31 */	bl __ptmf_scall
/* 80B35658  60 00 00 00 */	nop 
lbl_80B3565C:
/* 80B3565C  38 00 00 00 */	li r0, 0
/* 80B35660  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B35664  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B35668  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B3566C  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B35670  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B35674  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B35678  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B3567C  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B35680  4B 82 C9 99 */	bl __ptmf_test
/* 80B35684  2C 03 00 00 */	cmpwi r3, 0
/* 80B35688  41 82 00 DC */	beq lbl_80B35764
/* 80B3568C  7F 83 E3 78 */	mr r3, r28
/* 80B35690  38 80 00 00 */	li r4, 0
/* 80B35694  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B35698  4B 82 C9 ED */	bl __ptmf_scall
/* 80B3569C  60 00 00 00 */	nop 
/* 80B356A0  48 00 00 C4 */	b lbl_80B35764
lbl_80B356A4:
/* 80B356A4  88 1E 05 6A */	lbz r0, 0x56a(r30)
/* 80B356A8  28 00 00 07 */	cmplwi r0, 7
/* 80B356AC  40 82 00 B8 */	bne lbl_80B35764
/* 80B356B0  3C 60 80 B4 */	lis r3, lit_6838@ha /* 0x80B429DC@ha */
/* 80B356B4  38 83 29 DC */	addi r4, r3, lit_6838@l /* 0x80B429DC@l */
/* 80B356B8  80 64 00 00 */	lwz r3, 0(r4)
/* 80B356BC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B356C0  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B356C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B356C8  80 04 00 08 */	lwz r0, 8(r4)
/* 80B356CC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B356D0  38 00 00 03 */	li r0, 3
/* 80B356D4  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B356D8  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B356DC  4B 82 C9 3D */	bl __ptmf_test
/* 80B356E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B356E4  41 82 00 18 */	beq lbl_80B356FC
/* 80B356E8  7F 83 E3 78 */	mr r3, r28
/* 80B356EC  38 80 00 00 */	li r4, 0
/* 80B356F0  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B356F4  4B 82 C9 91 */	bl __ptmf_scall
/* 80B356F8  60 00 00 00 */	nop 
lbl_80B356FC:
/* 80B356FC  38 00 00 00 */	li r0, 0
/* 80B35700  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B35704  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B35708  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B3570C  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B35710  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B35714  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B35718  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B3571C  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B35720  4B 82 C8 F9 */	bl __ptmf_test
/* 80B35724  2C 03 00 00 */	cmpwi r3, 0
/* 80B35728  41 82 00 3C */	beq lbl_80B35764
/* 80B3572C  7F 83 E3 78 */	mr r3, r28
/* 80B35730  38 80 00 00 */	li r4, 0
/* 80B35734  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B35738  4B 82 C9 4D */	bl __ptmf_scall
/* 80B3573C  60 00 00 00 */	nop 
/* 80B35740  48 00 00 24 */	b lbl_80B35764
lbl_80B35744:
/* 80B35744  80 7C 0D D8 */	lwz r3, 0xdd8(r28)
/* 80B35748  28 03 00 00 */	cmplwi r3, 0
/* 80B3574C  41 82 00 18 */	beq lbl_80B35764
/* 80B35750  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B35754  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B35758  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B3575C  38 00 00 00 */	li r0, 0
/* 80B35760  90 1C 0D D8 */	stw r0, 0xdd8(r28)
lbl_80B35764:
/* 80B35764  38 60 00 01 */	li r3, 1
/* 80B35768  39 61 00 60 */	addi r11, r1, 0x60
/* 80B3576C  4B 82 CA B9 */	bl _restgpr_28
/* 80B35770  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B35774  7C 08 03 A6 */	mtlr r0
/* 80B35778  38 21 00 60 */	addi r1, r1, 0x60
/* 80B3577C  4E 80 00 20 */	blr 
