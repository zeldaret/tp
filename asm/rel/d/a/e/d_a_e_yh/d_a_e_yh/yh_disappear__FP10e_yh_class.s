lbl_807FD514:
/* 807FD514  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807FD518  7C 08 02 A6 */	mflr r0
/* 807FD51C  90 01 00 54 */	stw r0, 0x54(r1)
/* 807FD520  39 61 00 50 */	addi r11, r1, 0x50
/* 807FD524  4B B6 4C B0 */	b _savegpr_27
/* 807FD528  7C 7D 1B 78 */	mr r29, r3
/* 807FD52C  3C 60 80 80 */	lis r3, lit_3902@ha
/* 807FD530  3B C3 42 7C */	addi r30, r3, lit_3902@l
/* 807FD534  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807FD538  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807FD53C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807FD540  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807FD544  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807FD548  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 807FD54C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807FD550  38 80 00 00 */	li r4, 0
/* 807FD554  90 81 00 08 */	stw r4, 8(r1)
/* 807FD558  38 00 FF FF */	li r0, -1
/* 807FD55C  90 01 00 0C */	stw r0, 0xc(r1)
/* 807FD560  90 81 00 10 */	stw r4, 0x10(r1)
/* 807FD564  90 81 00 14 */	stw r4, 0x14(r1)
/* 807FD568  90 81 00 18 */	stw r4, 0x18(r1)
/* 807FD56C  38 80 00 00 */	li r4, 0
/* 807FD570  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000826C@ha */
/* 807FD574  38 A5 82 6C */	addi r5, r5, 0x826C /* 0x0000826C@l */
/* 807FD578  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 807FD57C  38 E0 00 00 */	li r7, 0
/* 807FD580  39 00 00 00 */	li r8, 0
/* 807FD584  39 21 00 24 */	addi r9, r1, 0x24
/* 807FD588  39 40 00 FF */	li r10, 0xff
/* 807FD58C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807FD590  4B 84 F5 00 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807FD594  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807FD598  38 80 00 00 */	li r4, 0
/* 807FD59C  90 81 00 08 */	stw r4, 8(r1)
/* 807FD5A0  38 00 FF FF */	li r0, -1
/* 807FD5A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807FD5A8  90 81 00 10 */	stw r4, 0x10(r1)
/* 807FD5AC  90 81 00 14 */	stw r4, 0x14(r1)
/* 807FD5B0  90 81 00 18 */	stw r4, 0x18(r1)
/* 807FD5B4  38 80 00 00 */	li r4, 0
/* 807FD5B8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000826D@ha */
/* 807FD5BC  38 A5 82 6D */	addi r5, r5, 0x826D /* 0x0000826D@l */
/* 807FD5C0  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 807FD5C4  38 E0 00 00 */	li r7, 0
/* 807FD5C8  39 00 00 00 */	li r8, 0
/* 807FD5CC  39 21 00 24 */	addi r9, r1, 0x24
/* 807FD5D0  39 40 00 FF */	li r10, 0xff
/* 807FD5D4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807FD5D8  4B 84 F4 B8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807FD5DC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807FD5E0  7C 03 07 74 */	extsb r3, r0
/* 807FD5E4  4B 82 FA 88 */	b dComIfGp_getReverb__Fi
/* 807FD5E8  7C 67 1B 78 */	mr r7, r3
/* 807FD5EC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060028@ha */
/* 807FD5F0  38 03 00 28 */	addi r0, r3, 0x0028 /* 0x00060028@l */
/* 807FD5F4  90 01 00 20 */	stw r0, 0x20(r1)
/* 807FD5F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807FD5FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807FD600  80 63 00 00 */	lwz r3, 0(r3)
/* 807FD604  38 81 00 20 */	addi r4, r1, 0x20
/* 807FD608  38 BD 05 38 */	addi r5, r29, 0x538
/* 807FD60C  38 C0 00 00 */	li r6, 0
/* 807FD610  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807FD614  FC 40 08 90 */	fmr f2, f1
/* 807FD618  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 807FD61C  FC 80 18 90 */	fmr f4, f3
/* 807FD620  39 00 00 00 */	li r8, 0
/* 807FD624  4B AA E3 60 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 807FD628  38 60 00 2F */	li r3, 0x2f
/* 807FD62C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807FD630  38 A0 FF FF */	li r5, -1
/* 807FD634  38 C0 FF FF */	li r6, -1
/* 807FD638  38 E0 00 00 */	li r7, 0
/* 807FD63C  39 00 00 00 */	li r8, 0
/* 807FD640  39 20 00 00 */	li r9, 0
/* 807FD644  39 40 00 00 */	li r10, 0
/* 807FD648  4B 81 E7 CC */	b fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf
/* 807FD64C  7F A3 EB 78 */	mr r3, r29
/* 807FD650  4B 81 C6 2C */	b fopAcM_delete__FP10fopAc_ac_c
/* 807FD654  38 00 00 01 */	li r0, 1
/* 807FD658  98 1D 05 67 */	stb r0, 0x567(r29)
/* 807FD65C  3B 60 00 00 */	li r27, 0
/* 807FD660  3B C0 00 00 */	li r30, 0
lbl_807FD664:
/* 807FD664  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807FD668  38 63 02 10 */	addi r3, r3, 0x210
/* 807FD66C  3B 9E 12 40 */	addi r28, r30, 0x1240
/* 807FD670  7C 9D E0 2E */	lwzx r4, r29, r28
/* 807FD674  4B 84 E2 A4 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 807FD678  28 03 00 00 */	cmplwi r3, 0
/* 807FD67C  41 82 00 18 */	beq lbl_807FD694
/* 807FD680  4B A8 15 E0 */	b deleteAllParticle__14JPABaseEmitterFv
/* 807FD684  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807FD688  38 63 02 10 */	addi r3, r3, 0x210
/* 807FD68C  7C 9D E0 2E */	lwzx r4, r29, r28
/* 807FD690  4B 84 E2 24 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
lbl_807FD694:
/* 807FD694  3B 7B 00 01 */	addi r27, r27, 1
/* 807FD698  2C 1B 00 02 */	cmpwi r27, 2
/* 807FD69C  3B DE 00 04 */	addi r30, r30, 4
/* 807FD6A0  40 81 FF C4 */	ble lbl_807FD664
/* 807FD6A4  39 61 00 50 */	addi r11, r1, 0x50
/* 807FD6A8  4B B6 4B 78 */	b _restgpr_27
/* 807FD6AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807FD6B0  7C 08 03 A6 */	mtlr r0
/* 807FD6B4  38 21 00 50 */	addi r1, r1, 0x50
/* 807FD6B8  4E 80 00 20 */	blr 
