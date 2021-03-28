lbl_807BE438:
/* 807BE438  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 807BE43C  7C 08 02 A6 */	mflr r0
/* 807BE440  90 01 01 04 */	stw r0, 0x104(r1)
/* 807BE444  39 61 01 00 */	addi r11, r1, 0x100
/* 807BE448  4B BA 3D 5C */	b _savegpr_15
/* 807BE44C  7C 7F 1B 78 */	mr r31, r3
/* 807BE450  3C 60 80 7C */	lis r3, lit_1109@ha
/* 807BE454  3A A3 23 A0 */	addi r21, r3, lit_1109@l
/* 807BE458  3C 60 80 7C */	lis r3, lit_3908@ha
/* 807BE45C  3A C3 1F B8 */	addi r22, r3, lit_3908@l
/* 807BE460  88 15 00 AC */	lbz r0, 0xac(r21)
/* 807BE464  7C 00 07 75 */	extsb. r0, r0
/* 807BE468  40 82 00 30 */	bne lbl_807BE498
/* 807BE46C  C0 16 00 54 */	lfs f0, 0x54(r22)
/* 807BE470  D0 15 00 B0 */	stfs f0, 0xb0(r21)
/* 807BE474  38 75 00 B0 */	addi r3, r21, 0xb0
/* 807BE478  D0 03 00 04 */	stfs f0, 4(r3)
/* 807BE47C  D0 03 00 08 */	stfs f0, 8(r3)
/* 807BE480  3C 80 80 7C */	lis r4, __dt__4cXyzFv@ha
/* 807BE484  38 84 1F 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 807BE488  38 B5 00 A0 */	addi r5, r21, 0xa0
/* 807BE48C  4B FF F2 AD */	bl __register_global_object
/* 807BE490  38 00 00 01 */	li r0, 1
/* 807BE494  98 15 00 AC */	stb r0, 0xac(r21)
lbl_807BE498:
/* 807BE498  38 61 00 44 */	addi r3, r1, 0x44
/* 807BE49C  4B 8B 99 DC */	b __ct__21dBgS_CamLinChk_NorWtrFv
/* 807BE4A0  3A 40 00 00 */	li r18, 0
/* 807BE4A4  3B C0 00 00 */	li r30, 0
/* 807BE4A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807BE4AC  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l
/* 807BE4B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807BE4B4  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 807BE4B8  3A 98 0F 38 */	addi r20, r24, 0xf38
/* 807BE4BC  3A 61 00 58 */	addi r19, r1, 0x58
/* 807BE4C0  3C 60 80 7C */	lis r3, foot_jnt_no_4306@ha
/* 807BE4C4  3B 23 21 D8 */	addi r25, r3, foot_jnt_no_4306@l
lbl_807BE4C8:
/* 807BE4C8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 807BE4CC  80 63 00 04 */	lwz r3, 4(r3)
/* 807BE4D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807BE4D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807BE4D8  7C 19 F0 2E */	lwzx r0, r25, r30
/* 807BE4DC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807BE4E0  7C 63 02 14 */	add r3, r3, r0
/* 807BE4E4  7E E4 BB 78 */	mr r4, r23
/* 807BE4E8  4B B8 7F C8 */	b PSMTXCopy
/* 807BE4EC  C0 36 00 58 */	lfs f1, 0x58(r22)
/* 807BE4F0  C0 56 00 04 */	lfs f2, 4(r22)
/* 807BE4F4  FC 60 10 90 */	fmr f3, f2
/* 807BE4F8  4B 84 E8 A4 */	b transM__14mDoMtx_stack_cFfff
/* 807BE4FC  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 807BE500  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807BE504  C0 17 00 1C */	lfs f0, 0x1c(r23)
/* 807BE508  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807BE50C  C0 17 00 2C */	lfs f0, 0x2c(r23)
/* 807BE510  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807BE514  C0 36 00 74 */	lfs f1, 0x74(r22)
/* 807BE518  C0 56 00 04 */	lfs f2, 4(r22)
/* 807BE51C  FC 60 10 90 */	fmr f3, f2
/* 807BE520  4B 84 E8 7C */	b transM__14mDoMtx_stack_cFfff
/* 807BE524  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 807BE528  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807BE52C  C0 17 00 1C */	lfs f0, 0x1c(r23)
/* 807BE530  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807BE534  C0 17 00 2C */	lfs f0, 0x2c(r23)
/* 807BE538  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807BE53C  38 61 00 44 */	addi r3, r1, 0x44
/* 807BE540  38 81 00 38 */	addi r4, r1, 0x38
/* 807BE544  38 A1 00 2C */	addi r5, r1, 0x2c
/* 807BE548  7F E6 FB 78 */	mr r6, r31
/* 807BE54C  4B 8B 98 18 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807BE550  7E 83 A3 78 */	mr r3, r20
/* 807BE554  38 81 00 44 */	addi r4, r1, 0x44
/* 807BE558  4B 8B 5E 5C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807BE55C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807BE560  41 82 00 B8 */	beq lbl_807BE618
/* 807BE564  7E 83 A3 78 */	mr r3, r20
/* 807BE568  7E 64 9B 78 */	mr r4, r19
/* 807BE56C  4B 8B 68 E4 */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 807BE570  2C 03 00 07 */	cmpwi r3, 7
/* 807BE574  40 82 00 A4 */	bne lbl_807BE618
/* 807BE578  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807BE57C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807BE580  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 807BE584  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807BE588  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807BE58C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807BE590  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807BE594  EC 00 08 28 */	fsubs f0, f0, f1
/* 807BE598  FC 00 02 10 */	fabs f0, f0
/* 807BE59C  FC 20 00 18 */	frsp f1, f0
/* 807BE5A0  C0 16 00 78 */	lfs f0, 0x78(r22)
/* 807BE5A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BE5A8  40 80 00 70 */	bge lbl_807BE618
/* 807BE5AC  3A 20 00 00 */	li r17, 0
/* 807BE5B0  3B A0 00 00 */	li r29, 0
/* 807BE5B4  3C 60 80 7C */	lis r3, w_eff_id_4305@ha
/* 807BE5B8  3B 83 21 D0 */	addi r28, r3, w_eff_id_4305@l
/* 807BE5BC  39 E0 00 01 */	li r15, 1
/* 807BE5C0  7F BA EB 78 */	mr r26, r29
/* 807BE5C4  3A 00 FF FF */	li r16, -1
/* 807BE5C8  7F BB EB 78 */	mr r27, r29
lbl_807BE5CC:
/* 807BE5CC  93 41 00 08 */	stw r26, 8(r1)
/* 807BE5D0  92 01 00 0C */	stw r16, 0xc(r1)
/* 807BE5D4  93 61 00 10 */	stw r27, 0x10(r1)
/* 807BE5D8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807BE5DC  7C 9C EA 2E */	lhzx r4, r28, r29
/* 807BE5E0  7E 65 9B 78 */	mr r5, r19
/* 807BE5E4  38 C1 00 20 */	addi r6, r1, 0x20
/* 807BE5E8  38 FF 01 0C */	addi r7, r31, 0x10c
/* 807BE5EC  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 807BE5F0  39 35 00 B0 */	addi r9, r21, 0xb0
/* 807BE5F4  39 40 00 00 */	li r10, 0
/* 807BE5F8  4B 88 EA 70 */	b setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 807BE5FC  28 03 00 00 */	cmplwi r3, 0
/* 807BE600  41 82 00 08 */	beq lbl_807BE608
/* 807BE604  91 E3 00 24 */	stw r15, 0x24(r3)
lbl_807BE608:
/* 807BE608  3A 31 00 01 */	addi r17, r17, 1
/* 807BE60C  2C 11 00 03 */	cmpwi r17, 3
/* 807BE610  3B BD 00 02 */	addi r29, r29, 2
/* 807BE614  41 80 FF B8 */	blt lbl_807BE5CC
lbl_807BE618:
/* 807BE618  3A 52 00 01 */	addi r18, r18, 1
/* 807BE61C  2C 12 00 04 */	cmpwi r18, 4
/* 807BE620  3B DE 00 04 */	addi r30, r30, 4
/* 807BE624  41 80 FE A4 */	blt lbl_807BE4C8
/* 807BE628  80 1F 07 68 */	lwz r0, 0x768(r31)
/* 807BE62C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807BE630  41 82 00 B4 */	beq lbl_807BE6E4
/* 807BE634  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 807BE638  28 00 00 00 */	cmplwi r0, 0
/* 807BE63C  40 82 00 7C */	bne lbl_807BE6B8
/* 807BE640  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070250@ha */
/* 807BE644  38 03 02 50 */	addi r0, r3, 0x0250 /* 0x00070250@l */
/* 807BE648  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807BE64C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 807BE650  38 81 00 1C */	addi r4, r1, 0x1c
/* 807BE654  38 A0 00 00 */	li r5, 0
/* 807BE658  38 C0 FF FF */	li r6, -1
/* 807BE65C  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 807BE660  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BE664  7D 89 03 A6 */	mtctr r12
/* 807BE668  4E 80 04 21 */	bctrl 
/* 807BE66C  C0 16 00 70 */	lfs f0, 0x70(r22)
/* 807BE670  D0 15 00 B0 */	stfs f0, 0xb0(r21)
/* 807BE674  39 35 00 B0 */	addi r9, r21, 0xb0
/* 807BE678  D0 09 00 04 */	stfs f0, 4(r9)
/* 807BE67C  D0 09 00 08 */	stfs f0, 8(r9)
/* 807BE680  38 60 00 00 */	li r3, 0
/* 807BE684  90 61 00 08 */	stw r3, 8(r1)
/* 807BE688  38 00 FF FF */	li r0, -1
/* 807BE68C  90 01 00 0C */	stw r0, 0xc(r1)
/* 807BE690  90 61 00 10 */	stw r3, 0x10(r1)
/* 807BE694  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807BE698  38 80 00 E7 */	li r4, 0xe7
/* 807BE69C  38 BF 08 2C */	addi r5, r31, 0x82c
/* 807BE6A0  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 807BE6A4  38 FF 01 0C */	addi r7, r31, 0x10c
/* 807BE6A8  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 807BE6AC  39 40 00 00 */	li r10, 0
/* 807BE6B0  4B 88 E9 B8 */	b setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 807BE6B4  48 00 00 30 */	b lbl_807BE6E4
lbl_807BE6B8:
/* 807BE6B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070251@ha */
/* 807BE6BC  38 03 02 51 */	addi r0, r3, 0x0251 /* 0x00070251@l */
/* 807BE6C0  90 01 00 18 */	stw r0, 0x18(r1)
/* 807BE6C4  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 807BE6C8  38 81 00 18 */	addi r4, r1, 0x18
/* 807BE6CC  38 A0 00 00 */	li r5, 0
/* 807BE6D0  38 C0 FF FF */	li r6, -1
/* 807BE6D4  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 807BE6D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BE6DC  7D 89 03 A6 */	mtctr r12
/* 807BE6E0  4E 80 04 21 */	bctrl 
lbl_807BE6E4:
/* 807BE6E4  38 61 00 44 */	addi r3, r1, 0x44
/* 807BE6E8  38 80 FF FF */	li r4, -1
/* 807BE6EC  4B 8B 97 F8 */	b __dt__21dBgS_CamLinChk_NorWtrFv
/* 807BE6F0  39 61 01 00 */	addi r11, r1, 0x100
/* 807BE6F4  4B BA 3A FC */	b _restgpr_15
/* 807BE6F8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 807BE6FC  7C 08 03 A6 */	mtlr r0
/* 807BE700  38 21 01 00 */	addi r1, r1, 0x100
/* 807BE704  4E 80 00 20 */	blr 
