lbl_8015B3D8:
/* 8015B3D8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8015B3DC  7C 08 02 A6 */	mflr r0
/* 8015B3E0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8015B3E4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8015B3E8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8015B3EC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8015B3F0  7C 7F 1B 78 */	mr r31, r3
/* 8015B3F4  38 7F 07 64 */	addi r3, r31, 0x764
/* 8015B3F8  C0 22 9B 74 */	lfs f1, lit_4067(r2)
/* 8015B3FC  FC 40 08 90 */	fmr f2, f1
/* 8015B400  4B F1 AB 59 */	bl SetWall__12dBgS_AcchCirFff
/* 8015B404  38 00 00 00 */	li r0, 0
/* 8015B408  90 01 00 08 */	stw r0, 8(r1)
/* 8015B40C  38 7F 05 8C */	addi r3, r31, 0x58c
/* 8015B410  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8015B414  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 8015B418  7F E6 FB 78 */	mr r6, r31
/* 8015B41C  38 E0 00 01 */	li r7, 1
/* 8015B420  39 1F 07 64 */	addi r8, r31, 0x764
/* 8015B424  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 8015B428  39 40 00 00 */	li r10, 0
/* 8015B42C  4B F1 AE 1D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8015B430  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015B434  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 8015B438  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8015B43C  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015B440  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8015B444  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8015B448  38 00 00 02 */	li r0, 2
/* 8015B44C  98 1F 07 60 */	stb r0, 0x760(r31)
/* 8015B450  C0 02 9B 78 */	lfs f0, lit_4068(r2)
/* 8015B454  D0 1F 06 5C */	stfs f0, 0x65c(r31)
/* 8015B458  38 7F 07 A4 */	addi r3, r31, 0x7a4
/* 8015B45C  38 80 00 00 */	li r4, 0
/* 8015B460  38 A0 00 FF */	li r5, 0xff
/* 8015B464  7F E6 FB 78 */	mr r6, r31
/* 8015B468  4B F2 83 F9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8015B46C  38 7F 07 E0 */	addi r3, r31, 0x7e0
/* 8015B470  3C 80 80 3C */	lis r4, m_cyl_src__8daItem_c@ha /* 0x803B9F10@ha */
/* 8015B474  38 84 9F 10 */	addi r4, r4, m_cyl_src__8daItem_c@l /* 0x803B9F10@l */
/* 8015B478  4B F2 94 3D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8015B47C  38 1F 07 A4 */	addi r0, r31, 0x7a4
/* 8015B480  90 1F 08 24 */	stw r0, 0x824(r31)
/* 8015B484  3C 60 80 16 */	lis r3, itemGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x8015B254@ha */
/* 8015B488  38 03 B2 54 */	addi r0, r3, itemGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x8015B254@l */
/* 8015B48C  90 1F 08 D0 */	stw r0, 0x8d0(r31)
/* 8015B490  3C 60 80 16 */	lis r3, itemGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x8015B320@ha */
/* 8015B494  38 03 B3 20 */	addi r0, r3, itemGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x8015B320@l */
/* 8015B498  90 1F 08 84 */	stw r0, 0x884(r31)
/* 8015B49C  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha /* 0x803AED78@ha */
/* 8015B4A0  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l /* 0x803AED78@l */
/* 8015B4A4  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015B4A8  54 00 10 3A */	slwi r0, r0, 2
/* 8015B4AC  7C 83 02 14 */	add r4, r3, r0
/* 8015B4B0  88 04 00 01 */	lbz r0, 1(r4)
/* 8015B4B4  C8 22 9B 88 */	lfd f1, lit_4072(r2)
/* 8015B4B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015B4BC  3C 60 43 30 */	lis r3, 0x4330
/* 8015B4C0  90 61 00 30 */	stw r3, 0x30(r1)
/* 8015B4C4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8015B4C8  EF E0 08 28 */	fsubs f31, f0, f1
/* 8015B4CC  88 04 00 02 */	lbz r0, 2(r4)
/* 8015B4D0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8015B4D4  90 61 00 38 */	stw r3, 0x38(r1)
/* 8015B4D8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8015B4DC  EC 20 08 28 */	fsubs f1, f0, f1
/* 8015B4E0  C0 5F 04 EC */	lfs f2, 0x4ec(r31)
/* 8015B4E4  C0 02 9B 7C */	lfs f0, lit_4069(r2)
/* 8015B4E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015B4EC  40 81 00 0C */	ble lbl_8015B4F8
/* 8015B4F0  EF FF 00 B2 */	fmuls f31, f31, f2
/* 8015B4F4  EC 21 00 B2 */	fmuls f1, f1, f2
lbl_8015B4F8:
/* 8015B4F8  38 7F 09 04 */	addi r3, r31, 0x904
/* 8015B4FC  48 11 3D 05 */	bl SetR__8cM3dGCylFf
/* 8015B500  38 7F 09 04 */	addi r3, r31, 0x904
/* 8015B504  FC 20 F8 90 */	fmr f1, f31
/* 8015B508  48 11 3C F1 */	bl SetH__8cM3dGCylFf
/* 8015B50C  7F E3 FB 78 */	mr r3, r31
/* 8015B510  48 00 02 AD */	bl setCullInfo__8daItem_cFv
/* 8015B514  7F E3 FB 78 */	mr r3, r31
/* 8015B518  4B FF FB A1 */	bl getData__12daItemBase_cFv
/* 8015B51C  A8 03 00 16 */	lha r0, 0x16(r3)
/* 8015B520  B0 1F 09 42 */	sth r0, 0x942(r31)
/* 8015B524  7F E3 FB 78 */	mr r3, r31
/* 8015B528  4B FF FB 91 */	bl getData__12daItemBase_cFv
/* 8015B52C  A8 03 00 18 */	lha r0, 0x18(r3)
/* 8015B530  B0 1F 09 44 */	sth r0, 0x944(r31)
/* 8015B534  7F E3 FB 78 */	mr r3, r31
/* 8015B538  48 00 09 29 */	bl procInitNormal__8daItem_cFv
/* 8015B53C  7F E3 FB 78 */	mr r3, r31
/* 8015B540  4B ED C5 35 */	bl show__12daItemBase_cFv
/* 8015B544  C0 02 9B 7C */	lfs f0, lit_4069(r2)
/* 8015B548  D0 1F 09 30 */	stfs f0, 0x930(r31)
/* 8015B54C  D0 1F 09 34 */	stfs f0, 0x934(r31)
/* 8015B550  D0 1F 09 38 */	stfs f0, 0x938(r31)
/* 8015B554  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 8015B558  54 60 47 3E */	rlwinm r0, r3, 8, 0x1c, 0x1f
/* 8015B55C  2C 00 00 06 */	cmpwi r0, 6
/* 8015B560  41 82 00 58 */	beq lbl_8015B5B8
/* 8015B564  40 80 00 14 */	bge lbl_8015B578
/* 8015B568  2C 00 00 04 */	cmpwi r0, 4
/* 8015B56C  41 82 00 38 */	beq lbl_8015B5A4
/* 8015B570  40 80 00 14 */	bge lbl_8015B584
/* 8015B574  48 00 00 44 */	b lbl_8015B5B8
lbl_8015B578:
/* 8015B578  2C 00 00 08 */	cmpwi r0, 8
/* 8015B57C  40 80 00 3C */	bge lbl_8015B5B8
/* 8015B580  48 00 00 18 */	b lbl_8015B598
lbl_8015B584:
/* 8015B584  7F E3 FB 78 */	mr r3, r31
/* 8015B588  4B ED C4 DD */	bl hide__12daItemBase_cFv
/* 8015B58C  7F E3 FB 78 */	mr r3, r31
/* 8015B590  48 00 11 79 */	bl procInitBoomHitWait__8daItem_cFv
/* 8015B594  48 00 00 70 */	b lbl_8015B604
lbl_8015B598:
/* 8015B598  7F E3 FB 78 */	mr r3, r31
/* 8015B59C  48 00 0A 51 */	bl procInitForceGet__8daItem_cFv
/* 8015B5A0  48 00 00 64 */	b lbl_8015B604
lbl_8015B5A4:
/* 8015B5A4  7F E3 FB 78 */	mr r3, r31
/* 8015B5A8  48 00 0A B1 */	bl procInitSimpleGetDemo__8daItem_cFv
/* 8015B5AC  7F E3 FB 78 */	mr r3, r31
/* 8015B5B0  48 00 0B 85 */	bl procMainSimpleGetDemo__8daItem_cFv
/* 8015B5B4  48 00 00 50 */	b lbl_8015B604
lbl_8015B5B8:
/* 8015B5B8  54 60 86 3E */	rlwinm r0, r3, 0x10, 0x18, 0x1f
/* 8015B5BC  90 1F 09 3C */	stw r0, 0x93c(r31)
/* 8015B5C0  80 9F 09 3C */	lwz r4, 0x93c(r31)
/* 8015B5C4  2C 04 00 FF */	cmpwi r4, 0xff
/* 8015B5C8  41 82 00 3C */	beq lbl_8015B604
/* 8015B5CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015B5D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015B5D4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8015B5D8  7C 05 07 74 */	extsb r5, r0
/* 8015B5DC  4B ED 9D 85 */	bl isSwitch__10dSv_info_cCFii
/* 8015B5E0  2C 03 00 00 */	cmpwi r3, 0
/* 8015B5E4  40 82 00 20 */	bne lbl_8015B604
/* 8015B5E8  7F E3 FB 78 */	mr r3, r31
/* 8015B5EC  4B ED C4 79 */	bl hide__12daItemBase_cFv
/* 8015B5F0  88 1F 09 48 */	lbz r0, 0x948(r31)
/* 8015B5F4  60 00 00 08 */	ori r0, r0, 8
/* 8015B5F8  98 1F 09 48 */	stb r0, 0x948(r31)
/* 8015B5FC  7F E3 FB 78 */	mr r3, r31
/* 8015B600  48 00 0F F5 */	bl procInitSwOnWait__8daItem_cFv
lbl_8015B604:
/* 8015B604  7F E3 FB 78 */	mr r3, r31
/* 8015B608  48 00 23 E9 */	bl initAction__8daItem_cFv
/* 8015B60C  7F E3 FB 78 */	mr r3, r31
/* 8015B610  4B FF FA B5 */	bl initBaseMtx__8daItem_cFv
/* 8015B614  7F E3 FB 78 */	mr r3, r31
/* 8015B618  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015B61C  FC 40 08 90 */	fmr f2, f1
/* 8015B620  FC 60 08 90 */	fmr f3, f1
/* 8015B624  FC 80 08 90 */	fmr f4, f1
/* 8015B628  FC A0 08 90 */	fmr f5, f1
/* 8015B62C  FC C0 08 90 */	fmr f6, f1
/* 8015B630  4B FE 9A 0D */	bl animPlay__12daItemBase_cFffffff
/* 8015B634  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015B638  28 00 00 40 */	cmplwi r0, 0x40
/* 8015B63C  40 82 00 10 */	bne lbl_8015B64C
/* 8015B640  7F E3 FB 78 */	mr r3, r31
/* 8015B644  48 00 18 A9 */	bl itemGetNextExecute__8daItem_cFv
/* 8015B648  48 00 00 70 */	b lbl_8015B6B8
lbl_8015B64C:
/* 8015B64C  28 00 00 06 */	cmplwi r0, 6
/* 8015B650  41 82 00 0C */	beq lbl_8015B65C
/* 8015B654  28 00 00 07 */	cmplwi r0, 7
/* 8015B658  40 82 00 60 */	bne lbl_8015B6B8
lbl_8015B65C:
/* 8015B65C  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 8015B660  28 00 00 00 */	cmplwi r0, 0
/* 8015B664  40 82 00 54 */	bne lbl_8015B6B8
/* 8015B668  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015B66C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015B670  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8015B674  38 1F 09 98 */	addi r0, r31, 0x998
/* 8015B678  90 01 00 08 */	stw r0, 8(r1)
/* 8015B67C  38 00 FF FF */	li r0, -1
/* 8015B680  90 01 00 0C */	stw r0, 0xc(r1)
/* 8015B684  38 00 00 00 */	li r0, 0
/* 8015B688  90 01 00 10 */	stw r0, 0x10(r1)
/* 8015B68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015B690  90 01 00 18 */	stw r0, 0x18(r1)
/* 8015B694  38 80 00 00 */	li r4, 0
/* 8015B698  38 A0 0C 14 */	li r5, 0xc14
/* 8015B69C  38 DF 09 AC */	addi r6, r31, 0x9ac
/* 8015B6A0  38 E0 00 00 */	li r7, 0
/* 8015B6A4  39 00 00 00 */	li r8, 0
/* 8015B6A8  39 20 00 00 */	li r9, 0
/* 8015B6AC  39 40 00 FF */	li r10, 0xff
/* 8015B6B0  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015B6B4  4B EF 13 DD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_8015B6B8:
/* 8015B6B8  38 7F 09 78 */	addi r3, r31, 0x978
/* 8015B6BC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8015B6C0  38 A0 00 01 */	li r5, 1
/* 8015B6C4  81 9F 09 88 */	lwz r12, 0x988(r31)
/* 8015B6C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8015B6CC  7D 89 03 A6 */	mtctr r12
/* 8015B6D0  4E 80 04 21 */	bctrl 
/* 8015B6D4  C3 FF 05 2C */	lfs f31, 0x52c(r31)
/* 8015B6D8  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 8015B6DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8015B6E0  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 8015B6E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8015B6E8  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 8015B6EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8015B6F0  38 7F 05 8C */	addi r3, r31, 0x58c
/* 8015B6F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015B6F8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015B6FC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8015B700  4B F1 B3 AD */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8015B704  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015B708  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 8015B70C  41 82 00 24 */	beq lbl_8015B730
/* 8015B710  C0 5F 07 58 */	lfs f2, 0x758(r31)
/* 8015B714  C0 22 9B 80 */	lfs f1, lit_4070(r2)
/* 8015B718  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 8015B71C  EC 01 00 2A */	fadds f0, f1, f0
/* 8015B720  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015B724  40 81 00 0C */	ble lbl_8015B730
/* 8015B728  38 00 00 01 */	li r0, 1
/* 8015B72C  98 1F 09 C0 */	stb r0, 0x9c0(r31)
lbl_8015B730:
/* 8015B730  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8015B734  54 00 27 3E */	srwi r0, r0, 0x1c
/* 8015B738  28 00 00 01 */	cmplwi r0, 1
/* 8015B73C  40 82 00 0C */	bne lbl_8015B748
/* 8015B740  38 00 00 01 */	li r0, 1
/* 8015B744  98 1F 09 C0 */	stb r0, 0x9c0(r31)
lbl_8015B748:
/* 8015B748  D3 FF 05 2C */	stfs f31, 0x52c(r31)
/* 8015B74C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8015B750  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8015B754  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8015B758  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8015B75C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8015B760  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 8015B764  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015B768  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8015B76C  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8015B770  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015B774  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8015B778  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8015B77C  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015B780  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 8015B784  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8015B788  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015B78C  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 8015B790  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8015B794  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015B798  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8015B79C  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8015B7A0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8015B7A4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8015B7A8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8015B7AC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8015B7B0  7C 08 03 A6 */	mtlr r0
/* 8015B7B4  38 21 00 60 */	addi r1, r1, 0x60
/* 8015B7B8  4E 80 00 20 */	blr 
