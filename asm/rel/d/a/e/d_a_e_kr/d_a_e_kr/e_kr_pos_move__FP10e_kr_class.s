lbl_8070034C:
/* 8070034C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80700350  7C 08 02 A6 */	mflr r0
/* 80700354  90 01 00 74 */	stw r0, 0x74(r1)
/* 80700358  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8070035C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80700360  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80700364  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80700368  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8070036C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80700370  39 61 00 40 */	addi r11, r1, 0x40
/* 80700374  4B C6 1E 60 */	b _savegpr_27
/* 80700378  7C 7F 1B 78 */	mr r31, r3
/* 8070037C  3C 60 80 70 */	lis r3, lit_3903@ha
/* 80700380  3B C3 5A F8 */	addi r30, r3, lit_3903@l
/* 80700384  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 80700388  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8070038C  EF E1 00 28 */	fsubs f31, f1, f0
/* 80700390  C0 3F 06 7C */	lfs f1, 0x67c(r31)
/* 80700394  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80700398  EF C1 00 28 */	fsubs f30, f1, f0
/* 8070039C  C0 3F 06 80 */	lfs f1, 0x680(r31)
/* 807003A0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807003A4  EF A1 00 28 */	fsubs f29, f1, f0
/* 807003A8  FC 20 F8 90 */	fmr f1, f31
/* 807003AC  FC 40 E8 90 */	fmr f2, f29
/* 807003B0  4B B6 72 C4 */	b cM_atan2s__Fff
/* 807003B4  7C 7D 1B 78 */	mr r29, r3
/* 807003B8  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 807003BC  EC 1D 07 72 */	fmuls f0, f29, f29
/* 807003C0  EC 41 00 2A */	fadds f2, f1, f0
/* 807003C4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807003C8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807003CC  40 81 00 0C */	ble lbl_807003D8
/* 807003D0  FC 00 10 34 */	frsqrte f0, f2
/* 807003D4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807003D8:
/* 807003D8  FC 20 F0 90 */	fmr f1, f30
/* 807003DC  4B B6 72 98 */	b cM_atan2s__Fff
/* 807003E0  7C 03 00 D0 */	neg r0, r3
/* 807003E4  7C 1C 07 34 */	extsh r28, r0
/* 807003E8  AB 7F 04 DE */	lha r27, 0x4de(r31)
/* 807003EC  38 7F 04 DE */	addi r3, r31, 0x4de
/* 807003F0  7F A4 EB 78 */	mr r4, r29
/* 807003F4  38 A0 00 0A */	li r5, 0xa
/* 807003F8  C0 3F 06 94 */	lfs f1, 0x694(r31)
/* 807003FC  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 80700400  EC 01 00 32 */	fmuls f0, f1, f0
/* 80700404  FC 00 00 1E */	fctiwz f0, f0
/* 80700408  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8070040C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80700410  4B B7 01 F8 */	b cLib_addCalcAngleS2__FPssss
/* 80700414  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80700418  7C 00 D8 50 */	subf r0, r0, r27
/* 8070041C  54 00 28 34 */	slwi r0, r0, 5
/* 80700420  7C 04 07 34 */	extsh r4, r0
/* 80700424  2C 04 15 7C */	cmpwi r4, 0x157c
/* 80700428  40 81 00 0C */	ble lbl_80700434
/* 8070042C  38 80 15 7C */	li r4, 0x157c
/* 80700430  48 00 00 10 */	b lbl_80700440
lbl_80700434:
/* 80700434  2C 04 EA 84 */	cmpwi r4, -5500
/* 80700438  40 80 00 08 */	bge lbl_80700440
/* 8070043C  38 80 EA 84 */	li r4, -5500
lbl_80700440:
/* 80700440  38 7F 04 E0 */	addi r3, r31, 0x4e0
/* 80700444  38 A0 00 0A */	li r5, 0xa
/* 80700448  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 8070044C  C0 3F 06 94 */	lfs f1, 0x694(r31)
/* 80700450  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 80700454  EC 01 00 32 */	fmuls f0, f1, f0
/* 80700458  EC 02 00 32 */	fmuls f0, f2, f0
/* 8070045C  FC 00 00 1E */	fctiwz f0, f0
/* 80700460  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80700464  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80700468  4B B7 01 A0 */	b cLib_addCalcAngleS2__FPssss
/* 8070046C  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 80700470  7F 84 E3 78 */	mr r4, r28
/* 80700474  38 A0 00 0A */	li r5, 0xa
/* 80700478  C0 3F 06 94 */	lfs f1, 0x694(r31)
/* 8070047C  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 80700480  EC 01 00 32 */	fmuls f0, f1, f0
/* 80700484  FC 00 00 1E */	fctiwz f0, f0
/* 80700488  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8070048C  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80700490  4B B7 01 78 */	b cLib_addCalcAngleS2__FPssss
/* 80700494  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80700498  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8070049C  FC 40 08 90 */	fmr f2, f1
/* 807004A0  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 807004A4  4B B6 F5 98 */	b cLib_addCalc2__FPffff
/* 807004A8  38 7F 05 2C */	addi r3, r31, 0x52c
/* 807004AC  C0 3F 06 84 */	lfs f1, 0x684(r31)
/* 807004B0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807004B4  C0 7F 06 88 */	lfs f3, 0x688(r31)
/* 807004B8  4B B6 F5 84 */	b cLib_addCalc2__FPffff
/* 807004BC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807004C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 807004C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807004C8  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 807004CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807004D0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807004D4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807004D8  80 63 00 00 */	lwz r3, 0(r3)
/* 807004DC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 807004E0  4B 90 BE FC */	b mDoMtx_YrotS__FPA4_fs
/* 807004E4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807004E8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807004EC  80 63 00 00 */	lwz r3, 0(r3)
/* 807004F0  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 807004F4  4B 90 BE A8 */	b mDoMtx_XrotM__FPA4_fs
/* 807004F8  38 61 00 08 */	addi r3, r1, 8
/* 807004FC  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80700500  4B B7 09 EC */	b MtxPosition__FP4cXyzP4cXyz
/* 80700504  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80700508  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 8070050C  EC 01 00 2A */	fadds f0, f1, f0
/* 80700510  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80700514  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80700518  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 8070051C  EC 01 00 2A */	fadds f0, f1, f0
/* 80700520  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80700524  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80700528  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 8070052C  EC 01 00 2A */	fadds f0, f1, f0
/* 80700530  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80700534  A8 7F 06 A8 */	lha r3, 0x6a8(r31)
/* 80700538  2C 03 00 00 */	cmpwi r3, 0
/* 8070053C  41 82 00 1C */	beq lbl_80700558
/* 80700540  38 03 FF FF */	addi r0, r3, -1
/* 80700544  B0 1F 06 A8 */	sth r0, 0x6a8(r31)
/* 80700548  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8070054C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80700550  EC 01 00 2A */	fadds f0, f1, f0
/* 80700554  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_80700558:
/* 80700558  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8070055C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80700560  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80700564  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80700568  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8070056C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80700570  39 61 00 40 */	addi r11, r1, 0x40
/* 80700574  4B C6 1C AC */	b _restgpr_27
/* 80700578  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8070057C  7C 08 03 A6 */	mtlr r0
/* 80700580  38 21 00 70 */	addi r1, r1, 0x70
/* 80700584  4E 80 00 20 */	blr 
