lbl_806E951C:
/* 806E951C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806E9520  7C 08 02 A6 */	mflr r0
/* 806E9524  90 01 00 34 */	stw r0, 0x34(r1)
/* 806E9528  39 61 00 30 */	addi r11, r1, 0x30
/* 806E952C  4B C7 8C AD */	bl _savegpr_28
/* 806E9530  7C 7C 1B 78 */	mr r28, r3
/* 806E9534  3C 80 80 6F */	lis r4, cNullVec__6Z2Calc@ha /* 0x806EA2E8@ha */
/* 806E9538  3B C4 A2 E8 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x806EA2E8@l */
/* 806E953C  3C 80 80 6F */	lis r4, lit_3905@ha /* 0x806EA1F4@ha */
/* 806E9540  3B E4 A1 F4 */	addi r31, r4, lit_3905@l /* 0x806EA1F4@l */
/* 806E9544  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806E9548  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806E954C  40 82 00 1C */	bne lbl_806E9568
/* 806E9550  28 1C 00 00 */	cmplwi r28, 0
/* 806E9554  41 82 00 08 */	beq lbl_806E955C
/* 806E9558  48 00 03 A9 */	bl __ct__8daE_HP_cFv
lbl_806E955C:
/* 806E955C  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 806E9560  60 00 00 08 */	ori r0, r0, 8
/* 806E9564  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_806E9568:
/* 806E9568  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 806E956C  3C 80 80 6F */	lis r4, d_a_e_hp__stringBase0@ha /* 0x806EA2CC@ha */
/* 806E9570  38 84 A2 CC */	addi r4, r4, d_a_e_hp__stringBase0@l /* 0x806EA2CC@l */
/* 806E9574  4B 94 39 49 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806E9578  7C 7D 1B 78 */	mr r29, r3
/* 806E957C  2C 1D 00 04 */	cmpwi r29, 4
/* 806E9580  40 82 03 64 */	bne lbl_806E98E4
/* 806E9584  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 806E9588  98 1C 07 7A */	stb r0, 0x77a(r28)
/* 806E958C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 806E9590  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806E9594  98 1C 07 7B */	stb r0, 0x77b(r28)
/* 806E9598  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 806E959C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 806E95A0  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 806E95A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E95A8  3C 00 43 30 */	lis r0, 0x4330
/* 806E95AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E95B0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806E95B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E95B8  D0 1C 07 9C */	stfs f0, 0x79c(r28)
/* 806E95BC  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 806E95C0  54 00 46 3E */	srwi r0, r0, 0x18
/* 806E95C4  98 1C 07 7C */	stb r0, 0x77c(r28)
/* 806E95C8  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 806E95CC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 806E95D0  98 1C 07 8C */	stb r0, 0x78c(r28)
/* 806E95D4  88 9C 07 7B */	lbz r4, 0x77b(r28)
/* 806E95D8  28 04 00 FF */	cmplwi r4, 0xff
/* 806E95DC  41 82 00 28 */	beq lbl_806E9604
/* 806E95E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E95E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E95E8  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 806E95EC  7C 05 07 74 */	extsb r5, r0
/* 806E95F0  4B 94 BD 71 */	bl isSwitch__10dSv_info_cCFii
/* 806E95F4  2C 03 00 00 */	cmpwi r3, 0
/* 806E95F8  41 82 00 0C */	beq lbl_806E9604
/* 806E95FC  38 60 00 05 */	li r3, 5
/* 806E9600  48 00 02 E8 */	b lbl_806E98E8
lbl_806E9604:
/* 806E9604  38 00 00 00 */	li r0, 0
/* 806E9608  B0 1C 04 E0 */	sth r0, 0x4e0(r28)
/* 806E960C  7F 83 E3 78 */	mr r3, r28
/* 806E9610  3C 80 80 6F */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806E94FC@ha */
/* 806E9614  38 84 94 FC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806E94FC@l */
/* 806E9618  38 A0 3B 30 */	li r5, 0x3b30
/* 806E961C  4B 93 0E 95 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806E9620  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E9624  40 82 00 0C */	bne lbl_806E9630
/* 806E9628  38 60 00 05 */	li r3, 5
/* 806E962C  48 00 02 BC */	b lbl_806E98E8
lbl_806E9630:
/* 806E9630  3C 60 80 6F */	lis r3, data_806EA4E8@ha /* 0x806EA4E8@ha */
/* 806E9634  8C 03 A4 E8 */	lbzu r0, data_806EA4E8@l(r3)  /* 0x806EA4E8@l */
/* 806E9638  28 00 00 00 */	cmplwi r0, 0
/* 806E963C  40 82 00 20 */	bne lbl_806E965C
/* 806E9640  38 00 00 01 */	li r0, 1
/* 806E9644  98 03 00 00 */	stb r0, 0(r3)
/* 806E9648  98 1C 0D F9 */	stb r0, 0xdf9(r28)
/* 806E964C  38 00 FF FF */	li r0, -1
/* 806E9650  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806EA4F8@ha */
/* 806E9654  38 63 A4 F8 */	addi r3, r3, l_HIO@l /* 0x806EA4F8@l */
/* 806E9658  98 03 00 04 */	stb r0, 4(r3)
lbl_806E965C:
/* 806E965C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806E9660  C0 3C 07 9C */	lfs f1, 0x79c(r28)
/* 806E9664  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806E9668  41 82 00 10 */	beq lbl_806E9678
/* 806E966C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E9670  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806E9674  40 82 00 10 */	bne lbl_806E9684
lbl_806E9678:
/* 806E9678  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806E967C  D0 1C 07 9C */	stfs f0, 0x79c(r28)
/* 806E9680  48 00 00 10 */	b lbl_806E9690
lbl_806E9684:
/* 806E9684  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806E9688  EC 01 00 32 */	fmuls f0, f1, f0
/* 806E968C  D0 1C 07 9C */	stfs f0, 0x79c(r28)
lbl_806E9690:
/* 806E9690  38 00 00 04 */	li r0, 4
/* 806E9694  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 806E9698  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806E969C  80 63 00 04 */	lwz r3, 4(r3)
/* 806E96A0  38 03 00 24 */	addi r0, r3, 0x24
/* 806E96A4  90 1C 05 04 */	stw r0, 0x504(r28)
/* 806E96A8  7F 83 E3 78 */	mr r3, r28
/* 806E96AC  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 806E96B0  FC 40 08 90 */	fmr f2, f1
/* 806E96B4  FC 60 08 90 */	fmr f3, f1
/* 806E96B8  4B 93 0E 71 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806E96BC  7F 83 E3 78 */	mr r3, r28
/* 806E96C0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806E96C4  FC 40 08 90 */	fmr f2, f1
/* 806E96C8  FC 60 08 90 */	fmr f3, f1
/* 806E96CC  4B 93 0E 6D */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806E96D0  38 00 00 00 */	li r0, 0
/* 806E96D4  90 01 00 08 */	stw r0, 8(r1)
/* 806E96D8  38 7C 07 EC */	addi r3, r28, 0x7ec
/* 806E96DC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806E96E0  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 806E96E4  7F 86 E3 78 */	mr r6, r28
/* 806E96E8  38 E0 00 01 */	li r7, 1
/* 806E96EC  39 1C 07 AC */	addi r8, r28, 0x7ac
/* 806E96F0  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 806E96F4  39 40 00 00 */	li r10, 0
/* 806E96F8  4B 98 CB 51 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806E96FC  80 1C 08 18 */	lwz r0, 0x818(r28)
/* 806E9700  60 00 00 04 */	ori r0, r0, 4
/* 806E9704  90 1C 08 18 */	stw r0, 0x818(r28)
/* 806E9708  38 7C 07 AC */	addi r3, r28, 0x7ac
/* 806E970C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806E9710  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 806E9714  4B 98 C8 45 */	bl SetWall__12dBgS_AcchCirFff
/* 806E9718  38 7C 09 C4 */	addi r3, r28, 0x9c4
/* 806E971C  38 80 00 FA */	li r4, 0xfa
/* 806E9720  38 A0 00 00 */	li r5, 0
/* 806E9724  7F 86 E3 78 */	mr r6, r28
/* 806E9728  4B 99 A1 39 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806E972C  38 00 00 28 */	li r0, 0x28
/* 806E9730  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 806E9734  B0 1C 05 60 */	sth r0, 0x560(r28)
/* 806E9738  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 806E973C  D0 1C 07 A4 */	stfs f0, 0x7a4(r28)
/* 806E9740  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806E9744  D0 1C 07 2C */	stfs f0, 0x72c(r28)
/* 806E9748  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806E974C  D0 1C 07 30 */	stfs f0, 0x730(r28)
/* 806E9750  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806E9754  D0 1C 07 34 */	stfs f0, 0x734(r28)
/* 806E9758  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806E975C  D0 1C 07 5C */	stfs f0, 0x75c(r28)
/* 806E9760  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806E9764  D0 1C 07 60 */	stfs f0, 0x760(r28)
/* 806E9768  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806E976C  D0 1C 07 64 */	stfs f0, 0x764(r28)
/* 806E9770  38 7C 0C 78 */	addi r3, r28, 0xc78
/* 806E9774  38 9E 00 7C */	addi r4, r30, 0x7c
/* 806E9778  4B 99 B2 BD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806E977C  38 1C 09 C4 */	addi r0, r28, 0x9c4
/* 806E9780  90 1C 0C BC */	stw r0, 0xcbc(r28)
/* 806E9784  38 7C 0A 00 */	addi r3, r28, 0xa00
/* 806E9788  38 9E 00 38 */	addi r4, r30, 0x38
/* 806E978C  4B 99 B1 29 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 806E9790  38 1C 09 C4 */	addi r0, r28, 0x9c4
/* 806E9794  90 1C 0A 44 */	stw r0, 0xa44(r28)
/* 806E9798  38 7C 0B 3C */	addi r3, r28, 0xb3c
/* 806E979C  38 9E 00 BC */	addi r4, r30, 0xbc
/* 806E97A0  4B 99 B1 15 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 806E97A4  38 1C 09 C4 */	addi r0, r28, 0x9c4
/* 806E97A8  90 1C 0B 80 */	stw r0, 0xb80(r28)
/* 806E97AC  38 7C 05 C8 */	addi r3, r28, 0x5c8
/* 806E97B0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806E97B4  38 BC 05 38 */	addi r5, r28, 0x538
/* 806E97B8  38 C0 00 03 */	li r6, 3
/* 806E97BC  38 E0 00 01 */	li r7, 1
/* 806E97C0  4B BD 78 D5 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806E97C4  38 7C 06 6C */	addi r3, r28, 0x66c
/* 806E97C8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806E97CC  38 BC 05 38 */	addi r5, r28, 0x538
/* 806E97D0  38 C0 00 03 */	li r6, 3
/* 806E97D4  38 E0 00 01 */	li r7, 1
/* 806E97D8  4B BD 78 BD */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806E97DC  88 9C 07 7C */	lbz r4, 0x77c(r28)
/* 806E97E0  28 04 00 FF */	cmplwi r4, 0xff
/* 806E97E4  41 82 00 20 */	beq lbl_806E9804
/* 806E97E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E97EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E97F0  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 806E97F4  7C 05 07 74 */	extsb r5, r0
/* 806E97F8  4B 94 BB 69 */	bl isSwitch__10dSv_info_cCFii
/* 806E97FC  2C 03 00 00 */	cmpwi r3, 0
/* 806E9800  41 82 00 1C */	beq lbl_806E981C
lbl_806E9804:
/* 806E9804  88 1C 07 8C */	lbz r0, 0x78c(r28)
/* 806E9808  28 00 00 01 */	cmplwi r0, 1
/* 806E980C  40 82 00 28 */	bne lbl_806E9834
/* 806E9810  4B AB 62 A9 */	bl dKy_daynight_check__Fv
/* 806E9814  2C 03 00 00 */	cmpwi r3, 0
/* 806E9818  40 82 00 1C */	bne lbl_806E9834
lbl_806E981C:
/* 806E981C  38 00 00 01 */	li r0, 1
/* 806E9820  98 1C 07 8B */	stb r0, 0x78b(r28)
/* 806E9824  38 7C 05 C8 */	addi r3, r28, 0x5c8
/* 806E9828  38 80 00 00 */	li r4, 0
/* 806E982C  4B BD 83 65 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 806E9830  48 00 00 20 */	b lbl_806E9850
lbl_806E9834:
/* 806E9834  38 00 00 00 */	li r0, 0
/* 806E9838  98 1C 07 8B */	stb r0, 0x78b(r28)
/* 806E983C  38 7C 05 C8 */	addi r3, r28, 0x5c8
/* 806E9840  3C 80 80 6F */	lis r4, d_a_e_hp__stringBase0@ha /* 0x806EA2CC@ha */
/* 806E9844  38 84 A2 CC */	addi r4, r4, d_a_e_hp__stringBase0@l /* 0x806EA2CC@l */
/* 806E9848  38 84 00 15 */	addi r4, r4, 0x15
/* 806E984C  4B BD 83 45 */	bl setEnemyName__15Z2CreatureEnemyFPCc
lbl_806E9850:
/* 806E9850  38 1C 05 C8 */	addi r0, r28, 0x5c8
/* 806E9854  90 1C 0D B8 */	stw r0, 0xdb8(r28)
/* 806E9858  38 00 00 01 */	li r0, 1
/* 806E985C  98 1C 0D CE */	stb r0, 0xdce(r28)
/* 806E9860  7F 83 E3 78 */	mr r3, r28
/* 806E9864  38 80 00 00 */	li r4, 0
/* 806E9868  38 A0 00 00 */	li r5, 0
/* 806E986C  4B FF CD 55 */	bl setActionMode__8daE_HP_cFii
/* 806E9870  38 00 00 00 */	li r0, 0
/* 806E9874  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 806E9878  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 806E987C  88 1C 07 8C */	lbz r0, 0x78c(r28)
/* 806E9880  28 00 00 00 */	cmplwi r0, 0
/* 806E9884  41 82 00 10 */	beq lbl_806E9894
/* 806E9888  4B AB 62 31 */	bl dKy_daynight_check__Fv
/* 806E988C  2C 03 00 00 */	cmpwi r3, 0
/* 806E9890  41 82 00 28 */	beq lbl_806E98B8
lbl_806E9894:
/* 806E9894  38 00 00 04 */	li r0, 4
/* 806E9898  98 1C 05 46 */	stb r0, 0x546(r28)
/* 806E989C  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 806E98A0  54 00 00 3E */	slwi r0, r0, 0
/* 806E98A4  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 806E98A8  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 806E98AC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806E98B0  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 806E98B4  48 00 00 28 */	b lbl_806E98DC
lbl_806E98B8:
/* 806E98B8  38 00 00 00 */	li r0, 0
/* 806E98BC  98 1C 05 46 */	stb r0, 0x546(r28)
/* 806E98C0  98 1C 04 96 */	stb r0, 0x496(r28)
/* 806E98C4  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 806E98C8  54 00 00 3E */	slwi r0, r0, 0
/* 806E98CC  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 806E98D0  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 806E98D4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806E98D8  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_806E98DC:
/* 806E98DC  7F 83 E3 78 */	mr r3, r28
/* 806E98E0  4B FF F0 E1 */	bl mtx_set__8daE_HP_cFv
lbl_806E98E4:
/* 806E98E4  7F A3 EB 78 */	mr r3, r29
lbl_806E98E8:
/* 806E98E8  39 61 00 30 */	addi r11, r1, 0x30
/* 806E98EC  4B C7 89 39 */	bl _restgpr_28
/* 806E98F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E98F4  7C 08 03 A6 */	mtlr r0
/* 806E98F8  38 21 00 30 */	addi r1, r1, 0x30
/* 806E98FC  4E 80 00 20 */	blr 
