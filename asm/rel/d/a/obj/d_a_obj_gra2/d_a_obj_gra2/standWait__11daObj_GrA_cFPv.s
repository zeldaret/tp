lbl_80C053C4:
/* 80C053C4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C053C8  7C 08 02 A6 */	mflr r0
/* 80C053CC  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C053D0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80C053D4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80C053D8  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80C053DC  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80C053E0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80C053E4  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80C053E8  7C 7E 1B 78 */	mr r30, r3
/* 80C053EC  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha
/* 80C053F0  3B E3 FA 7C */	addi r31, r3, m__17daObj_GrA_Param_c@l
/* 80C053F4  A0 1E 0A 7C */	lhz r0, 0xa7c(r30)
/* 80C053F8  2C 00 00 01 */	cmpwi r0, 1
/* 80C053FC  41 82 00 30 */	beq lbl_80C0542C
/* 80C05400  40 80 04 F4 */	bge lbl_80C058F4
/* 80C05404  2C 00 00 00 */	cmpwi r0, 0
/* 80C05408  40 80 00 0C */	bge lbl_80C05414
/* 80C0540C  48 00 04 E8 */	b lbl_80C058F4
/* 80C05410  48 00 04 E4 */	b lbl_80C058F4
lbl_80C05414:
/* 80C05414  80 1E 0F 50 */	lwz r0, 0xf50(r30)
/* 80C05418  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C0541C  90 1E 0F 50 */	stw r0, 0xf50(r30)
/* 80C05420  38 00 00 00 */	li r0, 0
/* 80C05424  90 1E 15 18 */	stw r0, 0x1518(r30)
/* 80C05428  48 00 04 CC */	b lbl_80C058F4
lbl_80C0542C:
/* 80C0542C  38 7E 1F DC */	addi r3, r30, 0x1fdc
/* 80C05430  4B FF FB 0D */	bl func_80C04F3C
/* 80C05434  38 7E 1F 40 */	addi r3, r30, 0x1f40
/* 80C05438  4B FF FB 05 */	bl func_80C04F3C
/* 80C0543C  2C 03 00 00 */	cmpwi r3, 0
/* 80C05440  41 82 00 F0 */	beq lbl_80C05530
/* 80C05444  A0 1E 0A 90 */	lhz r0, 0xa90(r30)
/* 80C05448  28 00 00 08 */	cmplwi r0, 8
/* 80C0544C  41 82 04 A8 */	beq lbl_80C058F4
/* 80C05450  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C05454  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C05458  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C0545C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C05460  28 00 00 0B */	cmplwi r0, 0xb
/* 80C05464  40 82 00 28 */	bne lbl_80C0548C
/* 80C05468  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C0546C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80C05470  C0 1F 02 68 */	lfs f0, 0x268(r31)
/* 80C05474  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C05478  4C 41 13 82 */	cror 2, 1, 2
/* 80C0547C  40 82 00 3C */	bne lbl_80C054B8
/* 80C05480  C0 1F 02 6C */	lfs f0, 0x26c(r31)
/* 80C05484  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C05488  48 00 00 30 */	b lbl_80C054B8
lbl_80C0548C:
/* 80C0548C  28 00 00 0C */	cmplwi r0, 0xc
/* 80C05490  40 82 00 10 */	bne lbl_80C054A0
/* 80C05494  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 80C05498  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C0549C  48 00 00 1C */	b lbl_80C054B8
lbl_80C054A0:
/* 80C054A0  28 00 00 0D */	cmplwi r0, 0xd
/* 80C054A4  40 82 00 14 */	bne lbl_80C054B8
/* 80C054A8  C0 1F 02 74 */	lfs f0, 0x274(r31)
/* 80C054AC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C054B0  C0 1F 02 78 */	lfs f0, 0x278(r31)
/* 80C054B4  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_80C054B8:
/* 80C054B8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C054BC  7C 64 1B 78 */	mr r4, r3
/* 80C054C0  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C054C4  38 C1 00 4C */	addi r6, r1, 0x4c
/* 80C054C8  4B 66 B8 F8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C054CC  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C054D0  38 80 00 01 */	li r4, 1
/* 80C054D4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80C054D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C054DC  40 82 00 18 */	bne lbl_80C054F4
/* 80C054E0  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C054E4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80C054E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C054EC  41 82 00 08 */	beq lbl_80C054F4
/* 80C054F0  38 80 00 00 */	li r4, 0
lbl_80C054F4:
/* 80C054F4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C054F8  41 82 03 FC */	beq lbl_80C058F4
/* 80C054FC  7F C3 F3 78 */	mr r3, r30
/* 80C05500  38 80 00 08 */	li r4, 8
/* 80C05504  38 BF 00 00 */	addi r5, r31, 0
/* 80C05508  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C0550C  4B FF C2 81 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C05510  7F C3 F3 78 */	mr r3, r30
/* 80C05514  38 80 00 0D */	li r4, 0xd
/* 80C05518  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80C0551C  4B FF C2 91 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C05520  7F C3 F3 78 */	mr r3, r30
/* 80C05524  38 80 00 01 */	li r4, 1
/* 80C05528  4B FF D5 AD */	bl setLookMode__11daObj_GrA_cFi
/* 80C0552C  48 00 03 C8 */	b lbl_80C058F4
lbl_80C05530:
/* 80C05530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C05534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C05538  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C0553C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C05540  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C05544  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C05548  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C0554C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C05550  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80C05554  4B 55 9E A8 */	b getAttentionOffsetY__9daPy_py_cFv
/* 80C05558  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80C0555C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C05560  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C05564  38 61 00 40 */	addi r3, r1, 0x40
/* 80C05568  38 81 00 58 */	addi r4, r1, 0x58
/* 80C0556C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C05570  4B 66 15 C4 */	b __mi__4cXyzCFRC3Vec
/* 80C05574  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80C05578  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C0557C  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C05580  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C05584  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C05588  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C0558C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C05590  4B 74 1B A8 */	b PSVECSquareMag
/* 80C05594  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C05598  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0559C  40 81 00 58 */	ble lbl_80C055F4
/* 80C055A0  FC 00 08 34 */	frsqrte f0, f1
/* 80C055A4  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C055A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C055AC  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C055B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C055B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C055B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C055BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C055C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C055C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C055C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C055CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C055D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C055D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C055D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C055DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C055E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C055E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C055E8  FF E1 00 32 */	fmul f31, f1, f0
/* 80C055EC  FF E0 F8 18 */	frsp f31, f31
/* 80C055F0  48 00 00 90 */	b lbl_80C05680
lbl_80C055F4:
/* 80C055F4  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C055F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C055FC  40 80 00 10 */	bge lbl_80C0560C
/* 80C05600  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C05604  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C05608  48 00 00 78 */	b lbl_80C05680
lbl_80C0560C:
/* 80C0560C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C05610  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C05614  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C05618  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0561C  7C 03 00 00 */	cmpw r3, r0
/* 80C05620  41 82 00 14 */	beq lbl_80C05634
/* 80C05624  40 80 00 40 */	bge lbl_80C05664
/* 80C05628  2C 03 00 00 */	cmpwi r3, 0
/* 80C0562C  41 82 00 20 */	beq lbl_80C0564C
/* 80C05630  48 00 00 34 */	b lbl_80C05664
lbl_80C05634:
/* 80C05634  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C05638  41 82 00 0C */	beq lbl_80C05644
/* 80C0563C  38 00 00 01 */	li r0, 1
/* 80C05640  48 00 00 28 */	b lbl_80C05668
lbl_80C05644:
/* 80C05644  38 00 00 02 */	li r0, 2
/* 80C05648  48 00 00 20 */	b lbl_80C05668
lbl_80C0564C:
/* 80C0564C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C05650  41 82 00 0C */	beq lbl_80C0565C
/* 80C05654  38 00 00 05 */	li r0, 5
/* 80C05658  48 00 00 10 */	b lbl_80C05668
lbl_80C0565C:
/* 80C0565C  38 00 00 03 */	li r0, 3
/* 80C05660  48 00 00 08 */	b lbl_80C05668
lbl_80C05664:
/* 80C05664  38 00 00 04 */	li r0, 4
lbl_80C05668:
/* 80C05668  2C 00 00 01 */	cmpwi r0, 1
/* 80C0566C  40 82 00 10 */	bne lbl_80C0567C
/* 80C05670  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C05674  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C05678  48 00 00 08 */	b lbl_80C05680
lbl_80C0567C:
/* 80C0567C  FF E0 08 90 */	fmr f31, f1
lbl_80C05680:
/* 80C05680  38 7E 05 50 */	addi r3, r30, 0x550
/* 80C05684  38 81 00 58 */	addi r4, r1, 0x58
/* 80C05688  4B 66 B5 7C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0568C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C05690  38 9E 05 38 */	addi r4, r30, 0x538
/* 80C05694  4B 66 B5 70 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C05698  80 1E 1F DC */	lwz r0, 0x1fdc(r30)
/* 80C0569C  2C 00 00 00 */	cmpwi r0, 0
/* 80C056A0  40 82 01 8C */	bne lbl_80C0582C
/* 80C056A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C056A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C056AC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80C056B0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80C056B4  40 82 01 78 */	bne lbl_80C0582C
/* 80C056B8  38 61 00 34 */	addi r3, r1, 0x34
/* 80C056BC  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80C056C0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C056C4  4B 66 14 70 */	b __mi__4cXyzCFRC3Vec
/* 80C056C8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C056CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C056D0  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C056D4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C056D8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80C056DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C056E0  38 61 00 10 */	addi r3, r1, 0x10
/* 80C056E4  4B 74 1A 54 */	b PSVECSquareMag
/* 80C056E8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C056EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C056F0  40 81 00 58 */	ble lbl_80C05748
/* 80C056F4  FC 00 08 34 */	frsqrte f0, f1
/* 80C056F8  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C056FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C05700  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C05704  FC 00 00 32 */	fmul f0, f0, f0
/* 80C05708  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0570C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C05710  FC 02 00 32 */	fmul f0, f2, f0
/* 80C05714  FC 44 00 32 */	fmul f2, f4, f0
/* 80C05718  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0571C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C05720  FC 03 00 28 */	fsub f0, f3, f0
/* 80C05724  FC 02 00 32 */	fmul f0, f2, f0
/* 80C05728  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0572C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C05730  FC 01 00 32 */	fmul f0, f1, f0
/* 80C05734  FC 03 00 28 */	fsub f0, f3, f0
/* 80C05738  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0573C  FF C1 00 32 */	fmul f30, f1, f0
/* 80C05740  FF C0 F0 18 */	frsp f30, f30
/* 80C05744  48 00 00 90 */	b lbl_80C057D4
lbl_80C05748:
/* 80C05748  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0574C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C05750  40 80 00 10 */	bge lbl_80C05760
/* 80C05754  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C05758  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80C0575C  48 00 00 78 */	b lbl_80C057D4
lbl_80C05760:
/* 80C05760  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C05764  80 81 00 08 */	lwz r4, 8(r1)
/* 80C05768  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0576C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C05770  7C 03 00 00 */	cmpw r3, r0
/* 80C05774  41 82 00 14 */	beq lbl_80C05788
/* 80C05778  40 80 00 40 */	bge lbl_80C057B8
/* 80C0577C  2C 03 00 00 */	cmpwi r3, 0
/* 80C05780  41 82 00 20 */	beq lbl_80C057A0
/* 80C05784  48 00 00 34 */	b lbl_80C057B8
lbl_80C05788:
/* 80C05788  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0578C  41 82 00 0C */	beq lbl_80C05798
/* 80C05790  38 00 00 01 */	li r0, 1
/* 80C05794  48 00 00 28 */	b lbl_80C057BC
lbl_80C05798:
/* 80C05798  38 00 00 02 */	li r0, 2
/* 80C0579C  48 00 00 20 */	b lbl_80C057BC
lbl_80C057A0:
/* 80C057A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C057A4  41 82 00 0C */	beq lbl_80C057B0
/* 80C057A8  38 00 00 05 */	li r0, 5
/* 80C057AC  48 00 00 10 */	b lbl_80C057BC
lbl_80C057B0:
/* 80C057B0  38 00 00 03 */	li r0, 3
/* 80C057B4  48 00 00 08 */	b lbl_80C057BC
lbl_80C057B8:
/* 80C057B8  38 00 00 04 */	li r0, 4
lbl_80C057BC:
/* 80C057BC  2C 00 00 01 */	cmpwi r0, 1
/* 80C057C0  40 82 00 10 */	bne lbl_80C057D0
/* 80C057C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C057C8  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80C057CC  48 00 00 08 */	b lbl_80C057D4
lbl_80C057D0:
/* 80C057D0  FF C0 08 90 */	fmr f30, f1
lbl_80C057D4:
/* 80C057D4  7F C3 F3 78 */	mr r3, r30
/* 80C057D8  4B FF FB 95 */	bl getSrchCircleR__11daObj_GrA_cFv
/* 80C057DC  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 80C057E0  4C 40 13 82 */	cror 2, 0, 2
/* 80C057E4  7C 00 00 26 */	mfcr r0
/* 80C057E8  54 00 1F FF */	rlwinm. r0, r0, 3, 0x1f, 0x1f
/* 80C057EC  41 82 00 40 */	beq lbl_80C0582C
/* 80C057F0  7F C3 F3 78 */	mr r3, r30
/* 80C057F4  4B FF FB 79 */	bl getSrchCircleR__11daObj_GrA_cFv
/* 80C057F8  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C057FC  4C 40 13 82 */	cror 2, 0, 2
/* 80C05800  40 82 00 2C */	bne lbl_80C0582C
/* 80C05804  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80C05808  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C0580C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C05810  FC 00 02 10 */	fabs f0, f0
/* 80C05814  FC 20 00 18 */	frsp f1, f0
/* 80C05818  C0 1F 02 7C */	lfs f0, 0x27c(r31)
/* 80C0581C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C05820  40 80 00 0C */	bge lbl_80C0582C
/* 80C05824  38 00 00 01 */	li r0, 1
/* 80C05828  90 1E 15 0C */	stw r0, 0x150c(r30)
lbl_80C0582C:
/* 80C0582C  80 1E 15 0C */	lwz r0, 0x150c(r30)
/* 80C05830  2C 00 00 00 */	cmpwi r0, 0
/* 80C05834  41 82 00 58 */	beq lbl_80C0588C
/* 80C05838  3C 60 80 C1 */	lis r3, lit_6363@ha
/* 80C0583C  38 83 01 B4 */	addi r4, r3, lit_6363@l
/* 80C05840  80 64 00 00 */	lwz r3, 0(r4)
/* 80C05844  80 04 00 04 */	lwz r0, 4(r4)
/* 80C05848  90 61 00 28 */	stw r3, 0x28(r1)
/* 80C0584C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C05850  80 04 00 08 */	lwz r0, 8(r4)
/* 80C05854  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C05858  7F C3 F3 78 */	mr r3, r30
/* 80C0585C  38 81 00 28 */	addi r4, r1, 0x28
/* 80C05860  4B FF C0 95 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C05864  7F C3 F3 78 */	mr r3, r30
/* 80C05868  38 80 00 01 */	li r4, 1
/* 80C0586C  38 BF 00 00 */	addi r5, r31, 0
/* 80C05870  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C05874  4B FF BF 19 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C05878  7F C3 F3 78 */	mr r3, r30
/* 80C0587C  38 80 00 0D */	li r4, 0xd
/* 80C05880  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80C05884  4B FF BF 29 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C05888  48 00 00 6C */	b lbl_80C058F4
lbl_80C0588C:
/* 80C0588C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C05890  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80C05894  7C 00 20 00 */	cmpw r0, r4
/* 80C05898  41 82 00 5C */	beq lbl_80C058F4
/* 80C0589C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80C058A0  38 A0 00 01 */	li r5, 1
/* 80C058A4  38 DF 00 00 */	addi r6, r31, 0
/* 80C058A8  A8 C6 00 88 */	lha r6, 0x88(r6)
/* 80C058AC  4B 66 AD 5C */	b cLib_addCalcAngleS2__FPssss
/* 80C058B0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C058B4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C058B8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C058BC  B0 1E 09 1C */	sth r0, 0x91c(r30)
/* 80C058C0  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80C058C4  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80C058C8  7C 03 00 00 */	cmpw r3, r0
/* 80C058CC  40 82 00 28 */	bne lbl_80C058F4
/* 80C058D0  7F C3 F3 78 */	mr r3, r30
/* 80C058D4  38 80 00 00 */	li r4, 0
/* 80C058D8  38 BF 00 00 */	addi r5, r31, 0
/* 80C058DC  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C058E0  4B FF BE AD */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C058E4  7F C3 F3 78 */	mr r3, r30
/* 80C058E8  38 80 00 0D */	li r4, 0xd
/* 80C058EC  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80C058F0  4B FF BE BD */	bl setFaceMotion__11daObj_GrA_cFif
lbl_80C058F4:
/* 80C058F4  38 60 00 01 */	li r3, 1
/* 80C058F8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80C058FC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80C05900  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80C05904  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80C05908  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80C0590C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80C05910  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C05914  7C 08 03 A6 */	mtlr r0
/* 80C05918  38 21 00 90 */	addi r1, r1, 0x90
/* 80C0591C  4E 80 00 20 */	blr 
