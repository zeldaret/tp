lbl_809B04E0:
/* 809B04E0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 809B04E4  7C 08 02 A6 */	mflr r0
/* 809B04E8  90 01 00 54 */	stw r0, 0x54(r1)
/* 809B04EC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 809B04F0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 809B04F4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 809B04F8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 809B04FC  7C 7E 1B 78 */	mr r30, r3
/* 809B0500  3C 80 80 9B */	lis r4, lit_3762@ha /* 0x809B1848@ha */
/* 809B0504  3B E4 18 48 */	addi r31, r4, lit_3762@l /* 0x809B1848@l */
/* 809B0508  C3 FF 00 04 */	lfs f31, 4(r31)
/* 809B050C  38 C0 01 00 */	li r6, 0x100
/* 809B0510  A8 03 05 D0 */	lha r0, 0x5d0(r3)
/* 809B0514  2C 00 00 01 */	cmpwi r0, 1
/* 809B0518  41 82 00 40 */	beq lbl_809B0558
/* 809B051C  40 80 00 10 */	bge lbl_809B052C
/* 809B0520  2C 00 00 00 */	cmpwi r0, 0
/* 809B0524  40 80 00 14 */	bge lbl_809B0538
/* 809B0528  48 00 01 EC */	b lbl_809B0714
lbl_809B052C:
/* 809B052C  2C 00 00 03 */	cmpwi r0, 3
/* 809B0530  40 80 01 E4 */	bge lbl_809B0714
/* 809B0534  48 00 01 64 */	b lbl_809B0698
lbl_809B0538:
/* 809B0538  38 80 00 05 */	li r4, 5
/* 809B053C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 809B0540  38 A0 00 02 */	li r5, 2
/* 809B0544  C0 5F 00 00 */	lfs f2, 0(r31)
/* 809B0548  4B FF F8 29 */	bl anm_init__FP12npc_du_classifUcf
/* 809B054C  A8 7E 05 D0 */	lha r3, 0x5d0(r30)
/* 809B0550  38 03 00 01 */	addi r0, r3, 1
/* 809B0554  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
lbl_809B0558:
/* 809B0558  7F C3 F3 78 */	mr r3, r30
/* 809B055C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 809B0560  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 809B0564  4B 66 C9 6D */	bl fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 809B0568  2C 03 00 00 */	cmpwi r3, 0
/* 809B056C  41 82 00 3C */	beq lbl_809B05A8
/* 809B0570  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 809B0574  4B 8B 74 19 */	bl cM_rndFX__Ff
/* 809B0578  FC 00 08 1E */	fctiwz f0, f1
/* 809B057C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809B0580  80 81 00 24 */	lwz r4, 0x24(r1)
/* 809B0584  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 809B0588  3C 03 00 01 */	addis r0, r3, 1
/* 809B058C  7C 60 22 14 */	add r3, r0, r4
/* 809B0590  38 03 80 00 */	addi r0, r3, -32768
/* 809B0594  B0 1E 09 7A */	sth r0, 0x97a(r30)
/* 809B0598  38 00 00 80 */	li r0, 0x80
/* 809B059C  B0 1E 05 DA */	sth r0, 0x5da(r30)
/* 809B05A0  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
/* 809B05A4  48 00 00 E4 */	b lbl_809B0688
lbl_809B05A8:
/* 809B05A8  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 809B05AC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 809B05B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809B05B4  40 80 00 58 */	bge lbl_809B060C
/* 809B05B8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 809B05BC  4B 8B 73 D1 */	bl cM_rndFX__Ff
/* 809B05C0  FC 00 08 1E */	fctiwz f0, f1
/* 809B05C4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809B05C8  80 81 00 24 */	lwz r4, 0x24(r1)
/* 809B05CC  A8 7E 05 BC */	lha r3, 0x5bc(r30)
/* 809B05D0  3C 03 00 01 */	addis r0, r3, 1
/* 809B05D4  7C 60 22 14 */	add r3, r0, r4
/* 809B05D8  38 03 80 00 */	addi r0, r3, -32768
/* 809B05DC  B0 1E 09 7A */	sth r0, 0x97a(r30)
/* 809B05E0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 809B05E4  4B 8B 73 71 */	bl cM_rndF__Ff
/* 809B05E8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 809B05EC  EC 00 08 2A */	fadds f0, f0, f1
/* 809B05F0  FC 00 00 1E */	fctiwz f0, f0
/* 809B05F4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 809B05F8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 809B05FC  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
/* 809B0600  A8 1E 05 D8 */	lha r0, 0x5d8(r30)
/* 809B0604  B0 1E 05 DA */	sth r0, 0x5da(r30)
/* 809B0608  48 00 00 80 */	b lbl_809B0688
lbl_809B060C:
/* 809B060C  38 61 00 08 */	addi r3, r1, 8
/* 809B0610  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 809B0614  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 809B0618  4B 8B 65 1D */	bl __mi__4cXyzCFRC3Vec
/* 809B061C  C0 01 00 08 */	lfs f0, 8(r1)
/* 809B0620  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809B0624  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809B0628  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809B062C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 809B0630  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809B0634  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 809B0638  4B 8B 73 55 */	bl cM_rndFX__Ff
/* 809B063C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 809B0640  EC 00 08 2A */	fadds f0, f0, f1
/* 809B0644  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809B0648  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 809B064C  4B 8B 73 41 */	bl cM_rndFX__Ff
/* 809B0650  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809B0654  EC 40 08 2A */	fadds f2, f0, f1
/* 809B0658  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 809B065C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 809B0660  4B 8B 70 15 */	bl cM_atan2s__Fff
/* 809B0664  B0 7E 09 7A */	sth r3, 0x97a(r30)
/* 809B0668  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 809B066C  4B 8B 72 E9 */	bl cM_rndF__Ff
/* 809B0670  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 809B0674  EC 00 08 2A */	fadds f0, f0, f1
/* 809B0678  FC 00 00 1E */	fctiwz f0, f0
/* 809B067C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 809B0680  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 809B0684  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
lbl_809B0688:
/* 809B0688  A8 7E 05 D0 */	lha r3, 0x5d0(r30)
/* 809B068C  38 03 00 01 */	addi r0, r3, 1
/* 809B0690  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 809B0694  48 00 00 80 */	b lbl_809B0714
lbl_809B0698:
/* 809B0698  A8 1E 05 DA */	lha r0, 0x5da(r30)
/* 809B069C  2C 00 00 00 */	cmpwi r0, 0
/* 809B06A0  41 82 00 1C */	beq lbl_809B06BC
/* 809B06A4  C3 FF 00 54 */	lfs f31, 0x54(r31)
/* 809B06A8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 809B06AC  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 809B06B0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809B06B4  38 C0 02 00 */	li r6, 0x200
/* 809B06B8  48 00 00 14 */	b lbl_809B06CC
lbl_809B06BC:
/* 809B06BC  C3 FF 00 34 */	lfs f31, 0x34(r31)
/* 809B06C0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809B06C4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 809B06C8  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_809B06CC:
/* 809B06CC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 809B06D0  A8 9E 09 7A */	lha r4, 0x97a(r30)
/* 809B06D4  38 A0 00 04 */	li r5, 4
/* 809B06D8  4B 8B FF 31 */	bl cLib_addCalcAngleS2__FPssss
/* 809B06DC  A8 1E 05 D8 */	lha r0, 0x5d8(r30)
/* 809B06E0  2C 00 00 00 */	cmpwi r0, 0
/* 809B06E4  41 82 00 28 */	beq lbl_809B070C
/* 809B06E8  7F C3 F3 78 */	mr r3, r30
/* 809B06EC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 809B06F0  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 809B06F4  4B 66 C7 DD */	bl fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 809B06F8  2C 03 00 00 */	cmpwi r3, 0
/* 809B06FC  41 82 00 18 */	beq lbl_809B0714
/* 809B0700  A8 1E 05 DA */	lha r0, 0x5da(r30)
/* 809B0704  2C 00 00 00 */	cmpwi r0, 0
/* 809B0708  40 82 00 0C */	bne lbl_809B0714
lbl_809B070C:
/* 809B070C  38 00 00 01 */	li r0, 1
/* 809B0710  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
lbl_809B0714:
/* 809B0714  38 7E 05 2C */	addi r3, r30, 0x52c
/* 809B0718  FC 20 F8 90 */	fmr f1, f31
/* 809B071C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 809B0720  FC 60 10 90 */	fmr f3, f2
/* 809B0724  4B 8B F3 19 */	bl cLib_addCalc2__FPffff
/* 809B0728  88 1E 09 78 */	lbz r0, 0x978(r30)
/* 809B072C  7C 00 07 75 */	extsb. r0, r0
/* 809B0730  40 82 00 24 */	bne lbl_809B0754
/* 809B0734  88 1E 08 00 */	lbz r0, 0x800(r30)
/* 809B0738  7C 00 07 75 */	extsb. r0, r0
/* 809B073C  40 82 00 18 */	bne lbl_809B0754
/* 809B0740  38 00 00 00 */	li r0, 0
/* 809B0744  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 809B0748  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 809B074C  38 00 00 1E */	li r0, 0x1e
/* 809B0750  98 1E 09 78 */	stb r0, 0x978(r30)
lbl_809B0754:
/* 809B0754  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 809B0758  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 809B075C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 809B0760  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 809B0764  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809B0768  7C 08 03 A6 */	mtlr r0
/* 809B076C  38 21 00 50 */	addi r1, r1, 0x50
/* 809B0770  4E 80 00 20 */	blr 
