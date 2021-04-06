lbl_8049A76C:
/* 8049A76C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8049A770  7C 08 02 A6 */	mflr r0
/* 8049A774  90 01 00 94 */	stw r0, 0x94(r1)
/* 8049A778  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8049A77C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8049A780  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8049A784  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8049A788  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8049A78C  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8049A790  39 61 00 60 */	addi r11, r1, 0x60
/* 8049A794  4B EC 7A 49 */	bl _savegpr_29
/* 8049A798  7C 7D 1B 78 */	mr r29, r3
/* 8049A79C  FF A0 08 90 */	fmr f29, f1
/* 8049A7A0  3C 60 80 4A */	lis r3, lit_3768@ha /* 0x8049DC84@ha */
/* 8049A7A4  3B E3 DC 84 */	addi r31, r3, lit_3768@l /* 0x8049DC84@l */
/* 8049A7A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049A7AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049A7B0  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 8049A7B4  88 1D 09 3C */	lbz r0, 0x93c(r29)
/* 8049A7B8  28 00 00 04 */	cmplwi r0, 4
/* 8049A7BC  40 82 00 0C */	bne lbl_8049A7C8
/* 8049A7C0  C3 FF 00 E4 */	lfs f31, 0xe4(r31)
/* 8049A7C4  48 00 00 08 */	b lbl_8049A7CC
lbl_8049A7C8:
/* 8049A7C8  C3 FF 00 E8 */	lfs f31, 0xe8(r31)
lbl_8049A7CC:
/* 8049A7CC  7F C3 F3 78 */	mr r3, r30
/* 8049A7D0  4B C4 3F 91 */	bl getArrowIncAtMaxStart__9daAlink_cCFv
/* 8049A7D4  FF C0 08 90 */	fmr f30, f1
/* 8049A7D8  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 8049A7DC  40 81 00 54 */	ble lbl_8049A830
/* 8049A7E0  7F C3 F3 78 */	mr r3, r30
/* 8049A7E4  4B C4 3F 8D */	bl getArrowIncAtMax__9daAlink_cCFv
/* 8049A7E8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8049A7EC  4C 40 13 82 */	cror 2, 0, 2
/* 8049A7F0  40 82 00 14 */	bne lbl_8049A804
/* 8049A7F4  7F C3 F3 78 */	mr r3, r30
/* 8049A7F8  4B C4 3F 49 */	bl getArrowIncAtR__9daAlink_cCFv
/* 8049A7FC  EF FF 08 2A */	fadds f31, f31, f1
/* 8049A800  48 00 00 30 */	b lbl_8049A830
lbl_8049A804:
/* 8049A804  EC 5D F0 28 */	fsubs f2, f29, f30
/* 8049A808  EC 01 F0 28 */	fsubs f0, f1, f30
/* 8049A80C  EF C2 00 24 */	fdivs f30, f2, f0
/* 8049A810  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8049A814  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8049A818  40 81 00 08 */	ble lbl_8049A820
/* 8049A81C  FF C0 00 90 */	fmr f30, f0
lbl_8049A820:
/* 8049A820  7F C3 F3 78 */	mr r3, r30
/* 8049A824  4B C4 3F 1D */	bl getArrowIncAtR__9daAlink_cCFv
/* 8049A828  EC 1E 00 72 */	fmuls f0, f30, f1
/* 8049A82C  EF FF 00 2A */	fadds f31, f31, f0
lbl_8049A830:
/* 8049A830  38 61 00 2C */	addi r3, r1, 0x2c
/* 8049A834  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8049A838  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 8049A83C  C0 1D 09 A0 */	lfs f0, 0x9a0(r29)
/* 8049A840  EC 21 00 2A */	fadds f1, f1, f0
/* 8049A844  4B DC C3 41 */	bl __ml__4cXyzCFf
/* 8049A848  38 61 00 20 */	addi r3, r1, 0x20
/* 8049A84C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8049A850  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8049A854  4B DC C2 91 */	bl __pl__4cXyzCFRC3Vec
/* 8049A858  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8049A85C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8049A860  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8049A864  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8049A868  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8049A86C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8049A870  88 1D 09 45 */	lbz r0, 0x945(r29)
/* 8049A874  28 00 00 00 */	cmplwi r0, 0
/* 8049A878  40 82 00 18 */	bne lbl_8049A890
/* 8049A87C  7F A3 EB 78 */	mr r3, r29
/* 8049A880  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8049A884  38 A1 00 38 */	addi r5, r1, 0x38
/* 8049A888  4B FF FA E9 */	bl setArrowWaterNextPos__9daArrow_cFP4cXyzP4cXyz
/* 8049A88C  48 00 00 80 */	b lbl_8049A90C
lbl_8049A890:
/* 8049A890  C0 1D 0A 00 */	lfs f0, 0xa00(r29)
/* 8049A894  EC 62 00 28 */	fsubs f3, f2, f0
/* 8049A898  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 8049A89C  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8049A8A0  40 80 00 6C */	bge lbl_8049A90C
/* 8049A8A4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8049A8A8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8049A8AC  FC 00 02 10 */	fabs f0, f0
/* 8049A8B0  FC 40 00 18 */	frsp f2, f0
/* 8049A8B4  EC 61 18 28 */	fsubs f3, f1, f3
/* 8049A8B8  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8049A8BC  40 81 00 50 */	ble lbl_8049A90C
/* 8049A8C0  38 61 00 14 */	addi r3, r1, 0x14
/* 8049A8C4  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8049A8C8  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 8049A8CC  C0 1D 09 A0 */	lfs f0, 0x9a0(r29)
/* 8049A8D0  EC 21 00 2A */	fadds f1, f1, f0
/* 8049A8D4  EC 02 18 28 */	fsubs f0, f2, f3
/* 8049A8D8  EC 00 10 24 */	fdivs f0, f0, f2
/* 8049A8DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8049A8E0  4B DC C2 A5 */	bl __ml__4cXyzCFf
/* 8049A8E4  38 61 00 08 */	addi r3, r1, 8
/* 8049A8E8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8049A8EC  38 A1 00 14 */	addi r5, r1, 0x14
/* 8049A8F0  4B DC C1 F5 */	bl __pl__4cXyzCFRC3Vec
/* 8049A8F4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8049A8F8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8049A8FC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8049A900  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8049A904  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8049A908  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8049A90C:
/* 8049A90C  38 7D 05 6C */	addi r3, r29, 0x56c
/* 8049A910  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8049A914  38 A1 00 38 */	addi r5, r1, 0x38
/* 8049A918  7F A6 EB 78 */	mr r6, r29
/* 8049A91C  4B BD D4 49 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8049A920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049A924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049A928  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8049A92C  38 9D 05 6C */	addi r4, r29, 0x56c
/* 8049A930  4B BD 9A 85 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8049A934  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049A938  41 82 00 1C */	beq lbl_8049A954
/* 8049A93C  C0 1D 05 9C */	lfs f0, 0x59c(r29)
/* 8049A940  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8049A944  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 8049A948  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8049A94C  C0 1D 05 A4 */	lfs f0, 0x5a4(r29)
/* 8049A950  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8049A954:
/* 8049A954  38 7D 07 AC */	addi r3, r29, 0x7ac
/* 8049A958  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8049A95C  38 A1 00 38 */	addi r5, r1, 0x38
/* 8049A960  FC 20 F8 90 */	fmr f1, f31
/* 8049A964  4B DD 46 9D */	bl Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 8049A968  38 7D 06 88 */	addi r3, r29, 0x688
/* 8049A96C  4B BE 9E B9 */	bl CalcAtVec__8dCcD_CpsFv
/* 8049A970  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049A974  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049A978  38 63 23 3C */	addi r3, r3, 0x233c
/* 8049A97C  38 9D 06 88 */	addi r4, r29, 0x688
/* 8049A980  4B DC A2 29 */	bl Set__4cCcSFP8cCcD_Obj
/* 8049A984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049A988  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049A98C  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 8049A990  38 9D 06 88 */	addi r4, r29, 0x688
/* 8049A994  38 A0 00 01 */	li r5, 1
/* 8049A998  4B BE B4 01 */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 8049A99C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8049A9A0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8049A9A4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8049A9A8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8049A9AC  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8049A9B0  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8049A9B4  39 61 00 60 */	addi r11, r1, 0x60
/* 8049A9B8  4B EC 78 71 */	bl _restgpr_29
/* 8049A9BC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8049A9C0  7C 08 03 A6 */	mtlr r0
/* 8049A9C4  38 21 00 90 */	addi r1, r1, 0x90
/* 8049A9C8  4E 80 00 20 */	blr 
