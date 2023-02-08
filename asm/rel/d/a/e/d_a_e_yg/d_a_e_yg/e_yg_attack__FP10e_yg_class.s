lbl_807F9154:
/* 807F9154  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807F9158  7C 08 02 A6 */	mflr r0
/* 807F915C  90 01 00 44 */	stw r0, 0x44(r1)
/* 807F9160  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807F9164  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807F9168  39 61 00 30 */	addi r11, r1, 0x30
/* 807F916C  4B B6 90 6D */	bl _savegpr_28
/* 807F9170  7C 7C 1B 78 */	mr r28, r3
/* 807F9174  3C 80 80 80 */	lis r4, lit_3801@ha /* 0x807FCCB4@ha */
/* 807F9178  3B E4 CC B4 */	addi r31, r4, lit_3801@l /* 0x807FCCB4@l */
/* 807F917C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807F9180  3B C0 00 01 */	li r30, 1
/* 807F9184  3B A0 00 00 */	li r29, 0
/* 807F9188  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807F918C  28 00 00 17 */	cmplwi r0, 0x17
/* 807F9190  41 81 02 AC */	bgt lbl_807F943C
/* 807F9194  3C 80 80 80 */	lis r4, lit_4282@ha /* 0x807FCE34@ha */
/* 807F9198  38 84 CE 34 */	addi r4, r4, lit_4282@l /* 0x807FCE34@l */
/* 807F919C  54 00 10 3A */	slwi r0, r0, 2
/* 807F91A0  7C 04 00 2E */	lwzx r0, r4, r0
/* 807F91A4  7C 09 03 A6 */	mtctr r0
/* 807F91A8  4E 80 04 20 */	bctr 
lbl_807F91AC:
/* 807F91AC  38 80 00 08 */	li r4, 8
/* 807F91B0  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807F91B4  38 A0 00 00 */	li r5, 0
/* 807F91B8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F91BC  4B FF F1 D9 */	bl anm_init__FP10e_yg_classifUcf
/* 807F91C0  38 00 00 01 */	li r0, 1
/* 807F91C4  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807F91C8  48 00 02 74 */	b lbl_807F943C
lbl_807F91CC:
/* 807F91CC  A8 1C 06 84 */	lha r0, 0x684(r28)
/* 807F91D0  B0 1C 05 C8 */	sth r0, 0x5c8(r28)
/* 807F91D4  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 807F91D8  38 80 00 01 */	li r4, 1
/* 807F91DC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F91E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F91E4  40 82 00 14 */	bne lbl_807F91F8
/* 807F91E8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F91EC  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 807F91F0  41 82 00 08 */	beq lbl_807F91F8
/* 807F91F4  38 80 00 00 */	li r4, 0
lbl_807F91F8:
/* 807F91F8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F91FC  41 82 02 40 */	beq lbl_807F943C
/* 807F9200  7F 83 E3 78 */	mr r3, r28
/* 807F9204  38 80 00 0D */	li r4, 0xd
/* 807F9208  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807F920C  38 A0 00 02 */	li r5, 2
/* 807F9210  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F9214  4B FF F1 81 */	bl anm_init__FP10e_yg_classifUcf
/* 807F9218  38 00 00 02 */	li r0, 2
/* 807F921C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807F9220  48 00 02 1C */	b lbl_807F943C
lbl_807F9224:
/* 807F9224  3C 60 80 80 */	lis r3, l_HIO@ha /* 0x807FD06C@ha */
/* 807F9228  38 63 D0 6C */	addi r3, r3, l_HIO@l /* 0x807FD06C@l */
/* 807F922C  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 807F9230  A8 1C 06 84 */	lha r0, 0x684(r28)
/* 807F9234  B0 1C 05 C8 */	sth r0, 0x5c8(r28)
/* 807F9238  C0 3C 06 80 */	lfs f1, 0x680(r28)
/* 807F923C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 807F9240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F9244  40 80 01 F8 */	bge lbl_807F943C
/* 807F9248  38 00 01 E4 */	li r0, 0x1e4
/* 807F924C  B0 01 00 08 */	sth r0, 8(r1)
/* 807F9250  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 807F9254  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 807F9258  38 81 00 08 */	addi r4, r1, 8
/* 807F925C  4B 82 05 9D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807F9260  28 03 00 00 */	cmplwi r3, 0
/* 807F9264  41 82 00 44 */	beq lbl_807F92A8
/* 807F9268  28 1C 00 00 */	cmplwi r28, 0
/* 807F926C  41 82 00 0C */	beq lbl_807F9278
/* 807F9270  80 1C 00 04 */	lwz r0, 4(r28)
/* 807F9274  48 00 00 08 */	b lbl_807F927C
lbl_807F9278:
/* 807F9278  38 00 FF FF */	li r0, -1
lbl_807F927C:
/* 807F927C  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 807F9280  B0 1C 06 86 */	sth r0, 0x686(r28)
/* 807F9284  38 00 00 17 */	li r0, 0x17
/* 807F9288  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807F928C  7F 83 E3 78 */	mr r3, r28
/* 807F9290  38 80 00 0F */	li r4, 0xf
/* 807F9294  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807F9298  38 A0 00 02 */	li r5, 2
/* 807F929C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F92A0  4B FF F0 F5 */	bl anm_init__FP10e_yg_classifUcf
/* 807F92A4  48 00 01 98 */	b lbl_807F943C
lbl_807F92A8:
/* 807F92A8  38 00 00 03 */	li r0, 3
/* 807F92AC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807F92B0  7F 83 E3 78 */	mr r3, r28
/* 807F92B4  38 80 00 0C */	li r4, 0xc
/* 807F92B8  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807F92BC  38 A0 00 00 */	li r5, 0
/* 807F92C0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F92C4  4B FF F0 D1 */	bl anm_init__FP10e_yg_classifUcf
/* 807F92C8  48 00 01 74 */	b lbl_807F943C
lbl_807F92CC:
/* 807F92CC  A8 1C 06 84 */	lha r0, 0x684(r28)
/* 807F92D0  B0 1C 05 C8 */	sth r0, 0x5c8(r28)
/* 807F92D4  A8 1C 06 86 */	lha r0, 0x686(r28)
/* 807F92D8  2C 00 00 00 */	cmpwi r0, 0
/* 807F92DC  40 82 01 60 */	bne lbl_807F943C
/* 807F92E0  38 00 00 03 */	li r0, 3
/* 807F92E4  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807F92E8  38 80 00 0C */	li r4, 0xc
/* 807F92EC  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807F92F0  38 A0 00 00 */	li r5, 0
/* 807F92F4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F92F8  4B FF F0 9D */	bl anm_init__FP10e_yg_classifUcf
/* 807F92FC  48 00 01 40 */	b lbl_807F943C
lbl_807F9300:
/* 807F9300  A8 1C 06 84 */	lha r0, 0x684(r28)
/* 807F9304  B0 1C 05 C8 */	sth r0, 0x5c8(r28)
/* 807F9308  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 807F930C  38 80 00 01 */	li r4, 1
/* 807F9310  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F9314  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F9318  40 82 00 14 */	bne lbl_807F932C
/* 807F931C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F9320  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 807F9324  41 82 00 08 */	beq lbl_807F932C
/* 807F9328  38 80 00 00 */	li r4, 0
lbl_807F932C:
/* 807F932C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F9330  41 82 01 0C */	beq lbl_807F943C
/* 807F9334  7F 83 E3 78 */	mr r3, r28
/* 807F9338  38 80 00 0B */	li r4, 0xb
/* 807F933C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F9340  38 A0 00 00 */	li r5, 0
/* 807F9344  FC 40 08 90 */	fmr f2, f1
/* 807F9348  4B FF F0 4D */	bl anm_init__FP10e_yg_classifUcf
/* 807F934C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807F9350  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 807F9354  3C 60 80 80 */	lis r3, l_HIO@ha /* 0x807FD06C@ha */
/* 807F9358  38 63 D0 6C */	addi r3, r3, l_HIO@l /* 0x807FD06C@l */
/* 807F935C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 807F9360  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 807F9364  38 00 00 04 */	li r0, 4
/* 807F9368  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807F936C  48 00 00 D0 */	b lbl_807F943C
lbl_807F9370:
/* 807F9370  3B C0 00 00 */	li r30, 0
/* 807F9374  38 00 00 01 */	li r0, 1
/* 807F9378  98 1C 0B 84 */	stb r0, 0xb84(r28)
/* 807F937C  80 1C 0A 84 */	lwz r0, 0xa84(r28)
/* 807F9380  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F9384  41 82 00 40 */	beq lbl_807F93C4
/* 807F9388  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 807F938C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807F9390  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807F9394  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 807F9398  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F939C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F93A0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807F93A4  38 80 00 04 */	li r4, 4
/* 807F93A8  38 A0 00 1F */	li r5, 0x1f
/* 807F93AC  38 C1 00 0C */	addi r6, r1, 0xc
/* 807F93B0  4B 87 66 75 */	bl StartShock__12dVibration_cFii4cXyz
/* 807F93B4  38 00 00 00 */	li r0, 0
/* 807F93B8  98 1C 0B 84 */	stb r0, 0xb84(r28)
/* 807F93BC  FC 00 F8 90 */	fmr f0, f31
/* 807F93C0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_807F93C4:
/* 807F93C4  88 1C 0B 84 */	lbz r0, 0xb84(r28)
/* 807F93C8  7C 00 07 75 */	extsb. r0, r0
/* 807F93CC  41 82 00 10 */	beq lbl_807F93DC
/* 807F93D0  80 1C 07 04 */	lwz r0, 0x704(r28)
/* 807F93D4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807F93D8  41 82 00 64 */	beq lbl_807F943C
lbl_807F93DC:
/* 807F93DC  7F 83 E3 78 */	mr r3, r28
/* 807F93E0  38 80 00 0A */	li r4, 0xa
/* 807F93E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F93E8  38 A0 00 00 */	li r5, 0
/* 807F93EC  FC 40 08 90 */	fmr f2, f1
/* 807F93F0  4B FF EF A5 */	bl anm_init__FP10e_yg_classifUcf
/* 807F93F4  38 00 00 05 */	li r0, 5
/* 807F93F8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807F93FC  48 00 00 40 */	b lbl_807F943C
lbl_807F9400:
/* 807F9400  3B C0 00 00 */	li r30, 0
/* 807F9404  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 807F9408  38 80 00 01 */	li r4, 1
/* 807F940C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F9410  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F9414  40 82 00 14 */	bne lbl_807F9428
/* 807F9418  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F941C  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 807F9420  41 82 00 08 */	beq lbl_807F9428
/* 807F9424  38 80 00 00 */	li r4, 0
lbl_807F9428:
/* 807F9428  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F942C  41 82 00 10 */	beq lbl_807F943C
/* 807F9430  3B A0 00 01 */	li r29, 1
/* 807F9434  38 00 00 00 */	li r0, 0
/* 807F9438  98 1C 0B A6 */	stb r0, 0xba6(r28)
lbl_807F943C:
/* 807F943C  38 7C 04 DE */	addi r3, r28, 0x4de
/* 807F9440  A8 9C 05 C8 */	lha r4, 0x5c8(r28)
/* 807F9444  38 A0 00 02 */	li r5, 2
/* 807F9448  38 C0 10 00 */	li r6, 0x1000
/* 807F944C  4B A7 71 BD */	bl cLib_addCalcAngleS2__FPssss
/* 807F9450  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 807F9454  2C 00 00 04 */	cmpwi r0, 4
/* 807F9458  40 82 00 1C */	bne lbl_807F9474
/* 807F945C  80 1C 07 04 */	lwz r0, 0x704(r28)
/* 807F9460  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807F9464  41 82 00 24 */	beq lbl_807F9488
/* 807F9468  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F946C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 807F9470  48 00 00 18 */	b lbl_807F9488
lbl_807F9474:
/* 807F9474  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807F9478  FC 20 F8 90 */	fmr f1, f31
/* 807F947C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F9480  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 807F9484  4B A7 65 B9 */	bl cLib_addCalc2__FPffff
lbl_807F9488:
/* 807F9488  88 1C 0B A6 */	lbz r0, 0xba6(r28)
/* 807F948C  7C 00 07 75 */	extsb. r0, r0
/* 807F9490  40 82 00 34 */	bne lbl_807F94C4
/* 807F9494  7F A0 07 75 */	extsb. r0, r29
/* 807F9498  40 82 00 20 */	bne lbl_807F94B8
/* 807F949C  7F 83 E3 78 */	mr r3, r28
/* 807F94A0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807F94A4  C0 1C 0B AC */	lfs f0, 0xbac(r28)
/* 807F94A8  EC 21 00 2A */	fadds f1, f1, f0
/* 807F94AC  4B FF EF 95 */	bl pl_check__FP10e_yg_classf
/* 807F94B0  2C 03 00 00 */	cmpwi r3, 0
/* 807F94B4  40 82 00 10 */	bne lbl_807F94C4
lbl_807F94B8:
/* 807F94B8  38 00 00 00 */	li r0, 0
/* 807F94BC  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 807F94C0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_807F94C4:
/* 807F94C4  7F C3 F3 78 */	mr r3, r30
/* 807F94C8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807F94CC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807F94D0  39 61 00 30 */	addi r11, r1, 0x30
/* 807F94D4  4B B6 8D 51 */	bl _restgpr_28
/* 807F94D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807F94DC  7C 08 03 A6 */	mtlr r0
/* 807F94E0  38 21 00 40 */	addi r1, r1, 0x40
/* 807F94E4  4E 80 00 20 */	blr 
