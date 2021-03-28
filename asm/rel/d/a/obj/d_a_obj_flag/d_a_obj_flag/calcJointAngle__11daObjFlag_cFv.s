lbl_80BEB9AC:
/* 80BEB9AC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80BEB9B0  7C 08 02 A6 */	mflr r0
/* 80BEB9B4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BEB9B8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80BEB9BC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80BEB9C0  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80BEB9C4  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80BEB9C8  39 61 00 70 */	addi r11, r1, 0x70
/* 80BEB9CC  4B 77 68 04 */	b _savegpr_26
/* 80BEB9D0  7C 7B 1B 78 */	mr r27, r3
/* 80BEB9D4  3C 60 80 BF */	lis r3, M_attr__11daObjFlag_c@ha
/* 80BEB9D8  3B E3 C4 EC */	addi r31, r3, M_attr__11daObjFlag_c@l
/* 80BEB9DC  38 7B 05 D0 */	addi r3, r27, 0x5d0
/* 80BEB9E0  38 81 00 28 */	addi r4, r1, 0x28
/* 80BEB9E4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80BEB9E8  4B 46 F9 10 */	b dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf
/* 80BEB9EC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80BEB9F0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80BEB9F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BEB9F8  40 81 00 50 */	ble lbl_80BEBA48
/* 80BEB9FC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800BE@ha */
/* 80BEBA00  38 03 00 BE */	addi r0, r3, 0x00BE /* 0x000800BE@l */
/* 80BEBA04  90 01 00 08 */	stw r0, 8(r1)
/* 80BEBA08  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BEBA0C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BEBA10  4B 77 66 9C */	b __cvt_fp2unsigned
/* 80BEBA14  7C 66 1B 78 */	mr r6, r3
/* 80BEBA18  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BEBA1C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BEBA20  80 63 00 00 */	lwz r3, 0(r3)
/* 80BEBA24  38 81 00 08 */	addi r4, r1, 8
/* 80BEBA28  38 BB 05 D0 */	addi r5, r27, 0x5d0
/* 80BEBA2C  38 E0 00 00 */	li r7, 0
/* 80BEBA30  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80BEBA34  FC 40 08 90 */	fmr f2, f1
/* 80BEBA38  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80BEBA3C  FC 80 18 90 */	fmr f4, f3
/* 80BEBA40  39 00 00 00 */	li r8, 0
/* 80BEBA44  4B 6C 0A C8 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BEBA48:
/* 80BEBA48  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80BEBA4C  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80BEBA50  4B 67 BC 24 */	b cM_atan2s__Fff
/* 80BEBA54  7C 64 1B 78 */	mr r4, r3
/* 80BEBA58  38 7B 05 E0 */	addi r3, r27, 0x5e0
/* 80BEBA5C  38 A0 00 04 */	li r5, 4
/* 80BEBA60  38 C0 7F FF */	li r6, 0x7fff
/* 80BEBA64  38 E0 00 00 */	li r7, 0
/* 80BEBA68  4B 68 4A D8 */	b cLib_addCalcAngleS__FPsssss
/* 80BEBA6C  3B BB 05 80 */	addi r29, r27, 0x580
/* 80BEBA70  3B 80 00 00 */	li r28, 0
/* 80BEBA74  3B DF 00 00 */	addi r30, r31, 0
/* 80BEBA78  C3 FF 00 40 */	lfs f31, 0x40(r31)
/* 80BEBA7C  8B 5E 00 25 */	lbz r26, 0x25(r30)
lbl_80BEBA80:
/* 80BEBA80  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80BEBA84  FC 01 F8 00 */	fcmpu cr0, f1, f31
/* 80BEBA88  41 82 00 18 */	beq lbl_80BEBAA0
/* 80BEBA8C  2C 1C 00 00 */	cmpwi r28, 0
/* 80BEBA90  41 82 00 10 */	beq lbl_80BEBAA0
/* 80BEBA94  7F 63 DB 78 */	mr r3, r27
/* 80BEBA98  7F A4 EB 78 */	mr r4, r29
/* 80BEBA9C  48 00 01 BD */	bl calcAngleSwingZ__11daObjFlag_cFP11FlagJoint_cf
lbl_80BEBAA0:
/* 80BEBAA0  2C 1C 00 00 */	cmpwi r28, 0
/* 80BEBAA4  40 82 00 C4 */	bne lbl_80BEBB68
/* 80BEBAA8  A8 1D 00 00 */	lha r0, 0(r29)
/* 80BEBAAC  B0 1D 00 06 */	sth r0, 6(r29)
/* 80BEBAB0  A8 1D 00 02 */	lha r0, 2(r29)
/* 80BEBAB4  B0 1D 00 08 */	sth r0, 8(r29)
/* 80BEBAB8  A8 1D 00 04 */	lha r0, 4(r29)
/* 80BEBABC  B0 1D 00 0A */	sth r0, 0xa(r29)
/* 80BEBAC0  A8 1D 00 12 */	lha r0, 0x12(r29)
/* 80BEBAC4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BEBAC8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BEBACC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BEBAD0  7F C3 04 2E */	lfsx f30, r3, r0
/* 80BEBAD4  7F 63 DB 78 */	mr r3, r27
/* 80BEBAD8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80BEBADC  48 00 03 89 */	bl getSwingY__11daObjFlag_cFf
/* 80BEBAE0  EC 41 07 B2 */	fmuls f2, f1, f30
/* 80BEBAE4  A8 1B 05 E0 */	lha r0, 0x5e0(r27)
/* 80BEBAE8  C8 3F 00 50 */	lfd f1, 0x50(r31)
/* 80BEBAEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BEBAF0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80BEBAF4  3C 00 43 30 */	lis r0, 0x4330
/* 80BEBAF8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80BEBAFC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80BEBB00  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BEBB04  EC 00 10 2A */	fadds f0, f0, f2
/* 80BEBB08  FC 00 00 1E */	fctiwz f0, f0
/* 80BEBB0C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80BEBB10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BEBB14  B0 1D 00 02 */	sth r0, 2(r29)
/* 80BEBB18  A8 7D 00 12 */	lha r3, 0x12(r29)
/* 80BEBB1C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80BEBB20  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80BEBB24  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BEBB28  FC 00 00 1E */	fctiwz f0, f0
/* 80BEBB2C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80BEBB30  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80BEBB34  7C 03 02 14 */	add r0, r3, r0
/* 80BEBB38  B0 1D 00 12 */	sth r0, 0x12(r29)
/* 80BEBB3C  38 61 00 20 */	addi r3, r1, 0x20
/* 80BEBB40  38 9D 00 06 */	addi r4, r29, 6
/* 80BEBB44  7F A5 EB 78 */	mr r5, r29
/* 80BEBB48  4B 67 B9 48 */	b __mi__5csXyzFR5csXyz
/* 80BEBB4C  A8 01 00 20 */	lha r0, 0x20(r1)
/* 80BEBB50  B0 1D 00 0C */	sth r0, 0xc(r29)
/* 80BEBB54  A8 01 00 22 */	lha r0, 0x22(r1)
/* 80BEBB58  B0 1D 00 0E */	sth r0, 0xe(r29)
/* 80BEBB5C  A8 01 00 24 */	lha r0, 0x24(r1)
/* 80BEBB60  B0 1D 00 10 */	sth r0, 0x10(r29)
/* 80BEBB64  48 00 00 90 */	b lbl_80BEBBF4
lbl_80BEBB68:
/* 80BEBB68  A8 1D 00 00 */	lha r0, 0(r29)
/* 80BEBB6C  B0 1D 00 06 */	sth r0, 6(r29)
/* 80BEBB70  A8 1D 00 02 */	lha r0, 2(r29)
/* 80BEBB74  B0 1D 00 08 */	sth r0, 8(r29)
/* 80BEBB78  A8 1D 00 04 */	lha r0, 4(r29)
/* 80BEBB7C  B0 1D 00 0A */	sth r0, 0xa(r29)
/* 80BEBB80  38 61 00 18 */	addi r3, r1, 0x18
/* 80BEBB84  38 9D FF F8 */	addi r4, r29, -8
/* 80BEBB88  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80BEBB8C  4B 67 B9 5C */	b __ml__5csXyzFf
/* 80BEBB90  A8 01 00 18 */	lha r0, 0x18(r1)
/* 80BEBB94  B0 1D 00 0C */	sth r0, 0xc(r29)
/* 80BEBB98  A8 01 00 1A */	lha r0, 0x1a(r1)
/* 80BEBB9C  B0 1D 00 0E */	sth r0, 0xe(r29)
/* 80BEBBA0  A8 01 00 1C */	lha r0, 0x1c(r1)
/* 80BEBBA4  B0 1D 00 10 */	sth r0, 0x10(r29)
/* 80BEBBA8  7F A3 EB 78 */	mr r3, r29
/* 80BEBBAC  38 9D 00 0C */	addi r4, r29, 0xc
/* 80BEBBB0  4B 67 B8 AC */	b __apl__5csXyzFR5csXyz
/* 80BEBBB4  38 7D 00 02 */	addi r3, r29, 2
/* 80BEBBB8  38 80 00 00 */	li r4, 0
/* 80BEBBBC  A8 BE 00 0C */	lha r5, 0xc(r30)
/* 80BEBBC0  38 C0 7F FF */	li r6, 0x7fff
/* 80BEBBC4  38 E0 00 00 */	li r7, 0
/* 80BEBBC8  4B 68 49 78 */	b cLib_addCalcAngleS__FPsssss
/* 80BEBBCC  38 61 00 10 */	addi r3, r1, 0x10
/* 80BEBBD0  7F A4 EB 78 */	mr r4, r29
/* 80BEBBD4  38 BD 00 06 */	addi r5, r29, 6
/* 80BEBBD8  4B 67 B8 B8 */	b __mi__5csXyzFR5csXyz
/* 80BEBBDC  A8 01 00 10 */	lha r0, 0x10(r1)
/* 80BEBBE0  B0 1D 00 0C */	sth r0, 0xc(r29)
/* 80BEBBE4  A8 01 00 12 */	lha r0, 0x12(r1)
/* 80BEBBE8  B0 1D 00 0E */	sth r0, 0xe(r29)
/* 80BEBBEC  A8 01 00 14 */	lha r0, 0x14(r1)
/* 80BEBBF0  B0 1D 00 10 */	sth r0, 0x10(r29)
lbl_80BEBBF4:
/* 80BEBBF4  28 1A 00 00 */	cmplwi r26, 0
/* 80BEBBF8  41 82 00 20 */	beq lbl_80BEBC18
/* 80BEBBFC  2C 1C 00 01 */	cmpwi r28, 1
/* 80BEBC00  40 82 00 20 */	bne lbl_80BEBC20
/* 80BEBC04  7F 63 DB 78 */	mr r3, r27
/* 80BEBC08  7F A4 EB 78 */	mr r4, r29
/* 80BEBC0C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80BEBC10  48 00 01 9D */	bl calcAngleSwingX__11daObjFlag_cFP11FlagJoint_cf
/* 80BEBC14  48 00 00 0C */	b lbl_80BEBC20
lbl_80BEBC18:
/* 80BEBC18  38 00 00 00 */	li r0, 0
/* 80BEBC1C  B0 1D 00 00 */	sth r0, 0(r29)
lbl_80BEBC20:
/* 80BEBC20  3B 9C 00 01 */	addi r28, r28, 1
/* 80BEBC24  2C 1C 00 04 */	cmpwi r28, 4
/* 80BEBC28  3B BD 00 14 */	addi r29, r29, 0x14
/* 80BEBC2C  41 80 FE 54 */	blt lbl_80BEBA80
/* 80BEBC30  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80BEBC34  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80BEBC38  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80BEBC3C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80BEBC40  39 61 00 70 */	addi r11, r1, 0x70
/* 80BEBC44  4B 77 65 D8 */	b _restgpr_26
/* 80BEBC48  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80BEBC4C  7C 08 03 A6 */	mtlr r0
/* 80BEBC50  38 21 00 90 */	addi r1, r1, 0x90
/* 80BEBC54  4E 80 00 20 */	blr 
