lbl_80C634CC:
/* 80C634CC  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80C634D0  7C 08 02 A6 */	mflr r0
/* 80C634D4  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C634D8  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80C634DC  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80C634E0  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80C634E4  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80C634E8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80C634EC  4B 6F EC C5 */	bl _savegpr_18
/* 80C634F0  7C 97 23 78 */	mr r23, r4
/* 80C634F4  7C B8 2B 78 */	mr r24, r5
/* 80C634F8  7C D9 33 78 */	mr r25, r6
/* 80C634FC  3C 60 80 C6 */	lis r3, l_bmdidx@ha /* 0x80C66860@ha */
/* 80C63500  3B C3 68 60 */	addi r30, r3, l_bmdidx@l /* 0x80C66860@l */
/* 80C63504  3B 60 00 00 */	li r27, 0
/* 80C63508  3B 40 00 00 */	li r26, 0
/* 80C6350C  3A C0 00 00 */	li r22, 0
/* 80C63510  3A A0 00 00 */	li r21, 0
/* 80C63514  3C 60 80 43 */	lis r3, BaseZ__4cXyz@ha /* 0x80430D3C@ha */
/* 80C63518  3B E3 0D 3C */	addi r31, r3, BaseZ__4cXyz@l /* 0x80430D3C@l */
/* 80C6351C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80C63520  C3 E3 11 80 */	lfs f31, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80C63524  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C63528  3A 43 D4 70 */	addi r18, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6352C  7E 53 93 78 */	mr r19, r18
/* 80C63530  7E 54 93 78 */	mr r20, r18
/* 80C63534  48 00 01 50 */	b lbl_80C63684
lbl_80C63538:
/* 80C63538  38 61 00 20 */	addi r3, r1, 0x20
/* 80C6353C  38 1A 00 01 */	addi r0, r26, 1
/* 80C63540  1C 80 00 28 */	mulli r4, r0, 0x28
/* 80C63544  38 84 00 0C */	addi r4, r4, 0xc
/* 80C63548  7C 97 22 14 */	add r4, r23, r4
/* 80C6354C  7F B7 AA 14 */	add r29, r23, r21
/* 80C63550  3B 9D 00 0C */	addi r28, r29, 0xc
/* 80C63554  7F 85 E3 78 */	mr r5, r28
/* 80C63558  4B 60 35 DD */	bl __mi__4cXyzCFRC3Vec
/* 80C6355C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C63560  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C63564  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C63568  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C6356C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C63570  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C63574  7F E3 FB 78 */	mr r3, r31
/* 80C63578  38 81 00 38 */	addi r4, r1, 0x38
/* 80C6357C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80C63580  4B 6E 3C 35 */	bl PSVECCrossProduct
/* 80C63584  38 61 00 38 */	addi r3, r1, 0x38
/* 80C63588  4B 6E 3B B1 */	bl PSVECSquareMag
/* 80C6358C  FC 00 0A 10 */	fabs f0, f1
/* 80C63590  FC 00 00 18 */	frsp f0, f0
/* 80C63594  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80C63598  41 80 00 A4 */	blt lbl_80C6363C
/* 80C6359C  38 61 00 14 */	addi r3, r1, 0x14
/* 80C635A0  38 81 00 38 */	addi r4, r1, 0x38
/* 80C635A4  4B 60 39 51 */	bl normalize__4cXyzFv
/* 80C635A8  38 61 00 38 */	addi r3, r1, 0x38
/* 80C635AC  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha /* 0x80430D3C@ha */
/* 80C635B0  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l /* 0x80430D3C@l */
/* 80C635B4  4B 6E 3B E1 */	bl PSVECDotProduct
/* 80C635B8  FF C0 08 90 */	fmr f30, f1
/* 80C635BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C635C0  4B 6E 3B 79 */	bl PSVECSquareMag
/* 80C635C4  FC 00 0A 10 */	fabs f0, f1
/* 80C635C8  FC 20 00 18 */	frsp f1, f0
/* 80C635CC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80C635D0  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80C635D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C635D8  41 80 00 58 */	blt lbl_80C63630
/* 80C635DC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80C635E0  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80C635E4  4C 40 13 82 */	cror 2, 0, 2
/* 80C635E8  40 82 00 48 */	bne lbl_80C63630
/* 80C635EC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80C635F0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80C635F4  4C 40 13 82 */	cror 2, 0, 2
/* 80C635F8  40 82 00 38 */	bne lbl_80C63630
/* 80C635FC  38 61 00 08 */	addi r3, r1, 8
/* 80C63600  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C63604  4B 60 38 F1 */	bl normalize__4cXyzFv
/* 80C63608  FC 20 F0 90 */	fmr f1, f30
/* 80C6360C  4B 70 90 D5 */	bl acos
/* 80C63610  FC 20 08 18 */	frsp f1, f1
/* 80C63614  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80C63618  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C6361C  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80C63620  38 61 00 44 */	addi r3, r1, 0x44
/* 80C63624  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C63628  4B 6E 32 51 */	bl PSMTXRotAxisRad
/* 80C6362C  48 00 00 18 */	b lbl_80C63644
lbl_80C63630:
/* 80C63630  38 61 00 44 */	addi r3, r1, 0x44
/* 80C63634  4B 6E 2E 51 */	bl PSMTXIdentity
/* 80C63638  48 00 00 0C */	b lbl_80C63644
lbl_80C6363C:
/* 80C6363C  38 61 00 44 */	addi r3, r1, 0x44
/* 80C63640  4B 6E 2E 45 */	bl PSMTXIdentity
lbl_80C63644:
/* 80C63644  7F 83 E3 78 */	mr r3, r28
/* 80C63648  3B 7B 40 00 */	addi r27, r27, 0x4000
/* 80C6364C  4B 3A 97 19 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C63650  7E 43 93 78 */	mr r3, r18
/* 80C63654  38 81 00 44 */	addi r4, r1, 0x44
/* 80C63658  7E 45 93 78 */	mr r5, r18
/* 80C6365C  4B 6E 2E 89 */	bl PSMTXConcat
/* 80C63660  7E 63 9B 78 */	mr r3, r19
/* 80C63664  7F 64 DB 78 */	mr r4, r27
/* 80C63668  4B 3A 8E 65 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C6366C  7E 83 A3 78 */	mr r3, r20
/* 80C63670  7C 98 B2 14 */	add r4, r24, r22
/* 80C63674  4B 6E 2E 3D */	bl PSMTXCopy
/* 80C63678  3B 5A 00 01 */	addi r26, r26, 1
/* 80C6367C  3A D6 00 34 */	addi r22, r22, 0x34
/* 80C63680  3A B5 00 28 */	addi r21, r21, 0x28
lbl_80C63684:
/* 80C63684  7C 1A C8 00 */	cmpw r26, r25
/* 80C63688  41 80 FE B0 */	blt lbl_80C63538
/* 80C6368C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80C63690  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80C63694  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80C63698  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80C6369C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80C636A0  4B 6F EB 5D */	bl _restgpr_18
/* 80C636A4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C636A8  7C 08 03 A6 */	mtlr r0
/* 80C636AC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80C636B0  4E 80 00 20 */	blr 
