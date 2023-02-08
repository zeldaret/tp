lbl_806835FC:
/* 806835FC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80683600  7C 08 02 A6 */	mflr r0
/* 80683604  90 01 00 74 */	stw r0, 0x74(r1)
/* 80683608  39 61 00 70 */	addi r11, r1, 0x70
/* 8068360C  4B CD EB C5 */	bl _savegpr_26
/* 80683610  7C 7C 1B 78 */	mr r28, r3
/* 80683614  7C 9D 23 78 */	mr r29, r4
/* 80683618  7C BE 2B 78 */	mr r30, r5
/* 8068361C  3C 60 80 68 */	lis r3, lit_3770@ha /* 0x80685434@ha */
/* 80683620  3B E3 54 34 */	addi r31, r3, lit_3770@l /* 0x80685434@l */
/* 80683624  38 00 00 00 */	li r0, 0
/* 80683628  98 04 00 4E */	stb r0, 0x4e(r4)
/* 8068362C  38 61 00 20 */	addi r3, r1, 0x20
/* 80683630  38 9D 00 1C */	addi r4, r29, 0x1c
/* 80683634  38 BD 00 10 */	addi r5, r29, 0x10
/* 80683638  4B BE 34 FD */	bl __mi__4cXyzCFRC3Vec
/* 8068363C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80683640  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80683644  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80683648  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8068364C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80683650  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80683654  88 7D 00 4D */	lbz r3, 0x4d(r29)
/* 80683658  7C 60 07 75 */	extsb. r0, r3
/* 8068365C  40 82 00 AC */	bne lbl_80683708
/* 80683660  88 1D 00 4F */	lbz r0, 0x4f(r29)
/* 80683664  28 00 00 00 */	cmplwi r0, 0
/* 80683668  40 82 00 94 */	bne lbl_806836FC
/* 8068366C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80683670  4B BE 42 E5 */	bl cM_rndF__Ff
/* 80683674  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80683678  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068367C  40 80 00 30 */	bge lbl_806836AC
/* 80683680  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80683684  4B BE 42 D1 */	bl cM_rndF__Ff
/* 80683688  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068368C  EC 00 08 2A */	fadds f0, f0, f1
/* 80683690  FC 00 00 1E */	fctiwz f0, f0
/* 80683694  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80683698  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8068369C  98 1D 00 4F */	stb r0, 0x4f(r29)
/* 806836A0  38 00 00 02 */	li r0, 2
/* 806836A4  98 1D 00 4D */	stb r0, 0x4d(r29)
/* 806836A8  48 00 00 54 */	b lbl_806836FC
lbl_806836AC:
/* 806836AC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806836B0  4B BE 42 A5 */	bl cM_rndF__Ff
/* 806836B4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806836B8  EC 00 08 2A */	fadds f0, f0, f1
/* 806836BC  FC 00 00 1E */	fctiwz f0, f0
/* 806836C0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806836C4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806836C8  98 1D 00 4F */	stb r0, 0x4f(r29)
/* 806836CC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806836D0  4B BE 42 BD */	bl cM_rndFX__Ff
/* 806836D4  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 806836D8  EC 00 08 2A */	fadds f0, f0, f1
/* 806836DC  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 806836E0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806836E4  4B BE 42 A9 */	bl cM_rndFX__Ff
/* 806836E8  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 806836EC  EC 00 08 2A */	fadds f0, f0, f1
/* 806836F0  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 806836F4  38 00 00 01 */	li r0, 1
/* 806836F8  98 1D 00 4D */	stb r0, 0x4d(r29)
lbl_806836FC:
/* 806836FC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80683700  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 80683704  48 00 02 50 */	b lbl_80683954
lbl_80683708:
/* 80683708  7C 60 07 74 */	extsb r0, r3
/* 8068370C  2C 00 00 01 */	cmpwi r0, 1
/* 80683710  40 82 01 68 */	bne lbl_80683878
/* 80683714  A8 7D 00 48 */	lha r3, 0x48(r29)
/* 80683718  38 03 00 01 */	addi r0, r3, 1
/* 8068371C  B0 1D 00 48 */	sth r0, 0x48(r29)
/* 80683720  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80683724  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80683728  4B BE 3F 4D */	bl cM_atan2s__Fff
/* 8068372C  7C 64 1B 78 */	mr r4, r3
/* 80683730  38 7D 00 36 */	addi r3, r29, 0x36
/* 80683734  38 A0 00 02 */	li r5, 2
/* 80683738  38 C0 04 00 */	li r6, 0x400
/* 8068373C  4B BE CE CD */	bl cLib_addCalcAngleS2__FPssss
/* 80683740  88 1D 00 4F */	lbz r0, 0x4f(r29)
/* 80683744  28 00 00 00 */	cmplwi r0, 0
/* 80683748  41 82 00 FC */	beq lbl_80683844
/* 8068374C  38 61 00 38 */	addi r3, r1, 0x38
/* 80683750  4B CC 39 E9 */	bl PSVECSquareMag
/* 80683754  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80683758  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068375C  40 81 00 58 */	ble lbl_806837B4
/* 80683760  FC 00 08 34 */	frsqrte f0, f1
/* 80683764  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80683768  FC 44 00 32 */	fmul f2, f4, f0
/* 8068376C  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80683770  FC 00 00 32 */	fmul f0, f0, f0
/* 80683774  FC 01 00 32 */	fmul f0, f1, f0
/* 80683778  FC 03 00 28 */	fsub f0, f3, f0
/* 8068377C  FC 02 00 32 */	fmul f0, f2, f0
/* 80683780  FC 44 00 32 */	fmul f2, f4, f0
/* 80683784  FC 00 00 32 */	fmul f0, f0, f0
/* 80683788  FC 01 00 32 */	fmul f0, f1, f0
/* 8068378C  FC 03 00 28 */	fsub f0, f3, f0
/* 80683790  FC 02 00 32 */	fmul f0, f2, f0
/* 80683794  FC 44 00 32 */	fmul f2, f4, f0
/* 80683798  FC 00 00 32 */	fmul f0, f0, f0
/* 8068379C  FC 01 00 32 */	fmul f0, f1, f0
/* 806837A0  FC 03 00 28 */	fsub f0, f3, f0
/* 806837A4  FC 02 00 32 */	fmul f0, f2, f0
/* 806837A8  FC 21 00 32 */	fmul f1, f1, f0
/* 806837AC  FC 20 08 18 */	frsp f1, f1
/* 806837B0  48 00 00 88 */	b lbl_80683838
lbl_806837B4:
/* 806837B4  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 806837B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806837BC  40 80 00 10 */	bge lbl_806837CC
/* 806837C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806837C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806837C8  48 00 00 70 */	b lbl_80683838
lbl_806837CC:
/* 806837CC  D0 21 00 08 */	stfs f1, 8(r1)
/* 806837D0  80 81 00 08 */	lwz r4, 8(r1)
/* 806837D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806837D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 806837DC  7C 03 00 00 */	cmpw r3, r0
/* 806837E0  41 82 00 14 */	beq lbl_806837F4
/* 806837E4  40 80 00 40 */	bge lbl_80683824
/* 806837E8  2C 03 00 00 */	cmpwi r3, 0
/* 806837EC  41 82 00 20 */	beq lbl_8068380C
/* 806837F0  48 00 00 34 */	b lbl_80683824
lbl_806837F4:
/* 806837F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806837F8  41 82 00 0C */	beq lbl_80683804
/* 806837FC  38 00 00 01 */	li r0, 1
/* 80683800  48 00 00 28 */	b lbl_80683828
lbl_80683804:
/* 80683804  38 00 00 02 */	li r0, 2
/* 80683808  48 00 00 20 */	b lbl_80683828
lbl_8068380C:
/* 8068380C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80683810  41 82 00 0C */	beq lbl_8068381C
/* 80683814  38 00 00 05 */	li r0, 5
/* 80683818  48 00 00 10 */	b lbl_80683828
lbl_8068381C:
/* 8068381C  38 00 00 03 */	li r0, 3
/* 80683820  48 00 00 08 */	b lbl_80683828
lbl_80683824:
/* 80683824  38 00 00 04 */	li r0, 4
lbl_80683828:
/* 80683828  2C 00 00 01 */	cmpwi r0, 1
/* 8068382C  40 82 00 0C */	bne lbl_80683838
/* 80683830  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80683834  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80683838:
/* 80683838  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8068383C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80683840  40 80 00 2C */	bge lbl_8068386C
lbl_80683844:
/* 80683844  38 00 00 00 */	li r0, 0
/* 80683848  98 1D 00 4D */	stb r0, 0x4d(r29)
/* 8068384C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80683850  4B BE 41 05 */	bl cM_rndF__Ff
/* 80683854  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80683858  EC 00 08 2A */	fadds f0, f0, f1
/* 8068385C  FC 00 00 1E */	fctiwz f0, f0
/* 80683860  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80683864  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80683868  98 1D 00 4F */	stb r0, 0x4f(r29)
lbl_8068386C:
/* 8068386C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80683870  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 80683874  48 00 00 E0 */	b lbl_80683954
lbl_80683878:
/* 80683878  2C 00 00 02 */	cmpwi r0, 2
/* 8068387C  40 82 00 94 */	bne lbl_80683910
/* 80683880  38 00 00 01 */	li r0, 1
/* 80683884  98 1D 00 4E */	stb r0, 0x4e(r29)
/* 80683888  38 7D 00 44 */	addi r3, r29, 0x44
/* 8068388C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80683890  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80683894  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80683898  4B BE C1 A5 */	bl cLib_addCalc2__FPffff
/* 8068389C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 806838A0  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 806838A4  4B BE 3D D1 */	bl cM_atan2s__Fff
/* 806838A8  7C 64 1B 78 */	mr r4, r3
/* 806838AC  38 7D 00 36 */	addi r3, r29, 0x36
/* 806838B0  38 A0 00 02 */	li r5, 2
/* 806838B4  38 C0 08 00 */	li r6, 0x800
/* 806838B8  4B BE CD 51 */	bl cLib_addCalcAngleS2__FPssss
/* 806838BC  88 1D 00 4F */	lbz r0, 0x4f(r29)
/* 806838C0  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 806838C4  40 82 00 2C */	bne lbl_806838F0
/* 806838C8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806838CC  4B BE 40 C1 */	bl cM_rndFX__Ff
/* 806838D0  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 806838D4  EC 00 08 2A */	fadds f0, f0, f1
/* 806838D8  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 806838DC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806838E0  4B BE 40 AD */	bl cM_rndFX__Ff
/* 806838E4  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 806838E8  EC 00 08 2A */	fadds f0, f0, f1
/* 806838EC  D0 1D 00 24 */	stfs f0, 0x24(r29)
lbl_806838F0:
/* 806838F0  88 1D 00 4F */	lbz r0, 0x4f(r29)
/* 806838F4  28 00 00 00 */	cmplwi r0, 0
/* 806838F8  40 82 00 0C */	bne lbl_80683904
/* 806838FC  38 00 00 03 */	li r0, 3
/* 80683900  98 1D 00 4D */	stb r0, 0x4d(r29)
lbl_80683904:
/* 80683904  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80683908  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 8068390C  48 00 00 48 */	b lbl_80683954
lbl_80683910:
/* 80683910  2C 00 00 03 */	cmpwi r0, 3
/* 80683914  40 82 00 40 */	bne lbl_80683954
/* 80683918  38 00 00 01 */	li r0, 1
/* 8068391C  98 1D 00 4E */	stb r0, 0x4e(r29)
/* 80683920  38 7D 00 44 */	addi r3, r29, 0x44
/* 80683924  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80683928  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068392C  4B BE C1 55 */	bl cLib_addCalc0__FPfff
/* 80683930  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 80683934  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80683938  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068393C  4C 40 13 82 */	cror 2, 0, 2
/* 80683940  40 82 00 0C */	bne lbl_8068394C
/* 80683944  38 00 00 00 */	li r0, 0
/* 80683948  98 1D 00 4D */	stb r0, 0x4d(r29)
lbl_8068394C:
/* 8068394C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80683950  D0 1D 00 3C */	stfs f0, 0x3c(r29)
lbl_80683954:
/* 80683954  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80683958  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8068395C  80 63 00 00 */	lwz r3, 0(r3)
/* 80683960  A8 9D 00 36 */	lha r4, 0x36(r29)
/* 80683964  4B 98 8A 79 */	bl mDoMtx_YrotS__FPA4_fs
/* 80683968  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8068396C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80683970  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80683974  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80683978  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8068397C  38 61 00 38 */	addi r3, r1, 0x38
/* 80683980  38 9D 00 28 */	addi r4, r29, 0x28
/* 80683984  4B BE D5 69 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80683988  38 7D 00 10 */	addi r3, r29, 0x10
/* 8068398C  38 9D 00 28 */	addi r4, r29, 0x28
/* 80683990  7C 65 1B 78 */	mr r5, r3
/* 80683994  4B CC 36 FD */	bl PSVECAdd
/* 80683998  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 8068399C  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 806839A0  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 806839A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 806839A8  FC 00 00 50 */	fneg f0, f0
/* 806839AC  EC 03 00 32 */	fmuls f0, f3, f0
/* 806839B0  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 806839B4  EC 00 10 24 */	fdivs f0, f0, f2
/* 806839B8  FC 00 00 1E */	fctiwz f0, f0
/* 806839BC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806839C0  83 61 00 4C */	lwz r27, 0x4c(r1)
/* 806839C4  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 806839C8  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 806839CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 806839D0  EC 03 00 32 */	fmuls f0, f3, f0
/* 806839D4  EC 00 10 24 */	fdivs f0, f0, f2
/* 806839D8  FC 00 00 1E */	fctiwz f0, f0
/* 806839DC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806839E0  83 41 00 54 */	lwz r26, 0x54(r1)
/* 806839E4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806839E8  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 806839EC  EC 21 00 32 */	fmuls f1, f1, f0
/* 806839F0  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 806839F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 806839F8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806839FC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80683A00  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80683A04  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80683A08  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80683A0C  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 80683A10  FC 60 08 90 */	fmr f3, f1
/* 80683A14  38 60 00 00 */	li r3, 0
/* 80683A18  4B BE D4 8D */	bl MtxScale__FfffUc
/* 80683A1C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80683A20  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80683A24  80 63 00 00 */	lwz r3, 0(r3)
/* 80683A28  7F 64 DB 78 */	mr r4, r27
/* 80683A2C  4B 98 8A A1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80683A30  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80683A34  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80683A38  80 63 00 00 */	lwz r3, 0(r3)
/* 80683A3C  7F 44 D3 78 */	mr r4, r26
/* 80683A40  4B 98 89 5D */	bl mDoMtx_XrotM__FPA4_fs
/* 80683A44  38 61 00 38 */	addi r3, r1, 0x38
/* 80683A48  38 81 00 2C */	addi r4, r1, 0x2c
/* 80683A4C  4B BE D4 A1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80683A50  38 61 00 2C */	addi r3, r1, 0x2c
/* 80683A54  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80683A58  7C 65 1B 78 */	mr r5, r3
/* 80683A5C  4B CC 36 35 */	bl PSVECAdd
/* 80683A60  88 1D 00 4E */	lbz r0, 0x4e(r29)
/* 80683A64  7C 00 07 75 */	extsb. r0, r0
/* 80683A68  40 82 00 30 */	bne lbl_80683A98
/* 80683A6C  38 7D 00 34 */	addi r3, r29, 0x34
/* 80683A70  7F 64 DB 78 */	mr r4, r27
/* 80683A74  38 A0 00 02 */	li r5, 2
/* 80683A78  38 C0 08 00 */	li r6, 0x800
/* 80683A7C  4B BE CB 8D */	bl cLib_addCalcAngleS2__FPssss
/* 80683A80  38 7D 00 38 */	addi r3, r29, 0x38
/* 80683A84  7F 44 D3 78 */	mr r4, r26
/* 80683A88  38 A0 00 02 */	li r5, 2
/* 80683A8C  38 C0 08 00 */	li r6, 0x800
/* 80683A90  4B BE CB 79 */	bl cLib_addCalcAngleS2__FPssss
/* 80683A94  48 00 00 38 */	b lbl_80683ACC
lbl_80683A98:
/* 80683A98  A8 7D 00 48 */	lha r3, 0x48(r29)
/* 80683A9C  38 03 00 01 */	addi r0, r3, 1
/* 80683AA0  B0 1D 00 48 */	sth r0, 0x48(r29)
/* 80683AA4  38 7D 00 34 */	addi r3, r29, 0x34
/* 80683AA8  38 80 00 00 */	li r4, 0
/* 80683AAC  38 A0 00 01 */	li r5, 1
/* 80683AB0  38 C0 10 00 */	li r6, 0x1000
/* 80683AB4  4B BE CB 55 */	bl cLib_addCalcAngleS2__FPssss
/* 80683AB8  38 7D 00 38 */	addi r3, r29, 0x38
/* 80683ABC  38 80 80 00 */	li r4, -32768
/* 80683AC0  38 A0 00 01 */	li r5, 1
/* 80683AC4  38 C0 10 00 */	li r6, 0x1000
/* 80683AC8  4B BE CB 41 */	bl cLib_addCalcAngleS2__FPssss
lbl_80683ACC:
/* 80683ACC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80683AD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80683AD4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80683AD8  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80683ADC  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 80683AE0  4B CC 2E 09 */	bl PSMTXTrans
/* 80683AE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80683AE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80683AEC  A8 9D 00 34 */	lha r4, 0x34(r29)
/* 80683AF0  4B 98 89 DD */	bl mDoMtx_ZrotM__FPA4_fs
/* 80683AF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80683AF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80683AFC  A8 9D 00 38 */	lha r4, 0x38(r29)
/* 80683B00  4B 98 88 9D */	bl mDoMtx_XrotM__FPA4_fs
/* 80683B04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80683B08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80683B0C  A8 9D 00 36 */	lha r4, 0x36(r29)
/* 80683B10  4B 98 89 25 */	bl mDoMtx_YrotM__FPA4_fs
/* 80683B14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80683B18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80683B1C  38 80 80 00 */	li r4, -32768
/* 80683B20  4B 98 88 7D */	bl mDoMtx_XrotM__FPA4_fs
/* 80683B24  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x80685684@ha */
/* 80683B28  38 63 56 84 */	addi r3, r3, l_HIO@l /* 0x80685684@l */
/* 80683B2C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80683B30  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80683B34  EC 21 00 32 */	fmuls f1, f1, f0
/* 80683B38  FC 40 08 90 */	fmr f2, f1
/* 80683B3C  FC 60 08 90 */	fmr f3, f1
/* 80683B40  4B 98 92 F9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80683B44  88 1D 00 4E */	lbz r0, 0x4e(r29)
/* 80683B48  7C 00 07 75 */	extsb. r0, r0
/* 80683B4C  41 82 00 40 */	beq lbl_80683B8C
/* 80683B50  A8 1D 00 48 */	lha r0, 0x48(r29)
/* 80683B54  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80683B58  41 82 00 1C */	beq lbl_80683B74
/* 80683B5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80683B60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80683B64  80 9D 00 00 */	lwz r4, 0(r29)
/* 80683B68  38 84 00 24 */	addi r4, r4, 0x24
/* 80683B6C  4B CC 29 45 */	bl PSMTXCopy
/* 80683B70  48 00 00 54 */	b lbl_80683BC4
lbl_80683B74:
/* 80683B74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80683B78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80683B7C  80 9D 00 04 */	lwz r4, 4(r29)
/* 80683B80  38 84 00 24 */	addi r4, r4, 0x24
/* 80683B84  4B CC 29 2D */	bl PSMTXCopy
/* 80683B88  48 00 00 3C */	b lbl_80683BC4
lbl_80683B8C:
/* 80683B8C  A8 1D 00 48 */	lha r0, 0x48(r29)
/* 80683B90  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80683B94  41 82 00 1C */	beq lbl_80683BB0
/* 80683B98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80683B9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80683BA0  80 9D 00 08 */	lwz r4, 8(r29)
/* 80683BA4  38 84 00 24 */	addi r4, r4, 0x24
/* 80683BA8  4B CC 29 09 */	bl PSMTXCopy
/* 80683BAC  48 00 00 18 */	b lbl_80683BC4
lbl_80683BB0:
/* 80683BB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80683BB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80683BB8  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 80683BBC  38 84 00 24 */	addi r4, r4, 0x24
/* 80683BC0  4B CC 28 F1 */	bl PSMTXCopy
lbl_80683BC4:
/* 80683BC4  7F C0 07 74 */	extsb r0, r30
/* 80683BC8  2C 00 00 01 */	cmpwi r0, 1
/* 80683BCC  40 82 00 74 */	bne lbl_80683C40
/* 80683BD0  38 00 00 01 */	li r0, 1
/* 80683BD4  98 1D 00 4C */	stb r0, 0x4c(r29)
/* 80683BD8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80683BDC  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80683BE0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80683BE4  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80683BE8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80683BEC  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80683BF0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80683BF4  4B BE 3D 61 */	bl cM_rndF__Ff
/* 80683BF8  FC 00 08 1E */	fctiwz f0, f1
/* 80683BFC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80683C00  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80683C04  98 1D 00 4F */	stb r0, 0x4f(r29)
/* 80683C08  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80683C0C  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 80683C10  38 00 00 00 */	li r0, 0
/* 80683C14  98 1D 00 4D */	stb r0, 0x4d(r29)
/* 80683C18  D0 1D 00 44 */	stfs f0, 0x44(r29)
/* 80683C1C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80683C20  4B BE 3D 35 */	bl cM_rndF__Ff
/* 80683C24  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80683C28  EC 00 08 2A */	fadds f0, f0, f1
/* 80683C2C  FC 00 00 1E */	fctiwz f0, f0
/* 80683C30  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80683C34  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80683C38  B0 1D 00 4A */	sth r0, 0x4a(r29)
/* 80683C3C  48 00 01 88 */	b lbl_80683DC4
lbl_80683C40:
/* 80683C40  2C 00 00 02 */	cmpwi r0, 2
/* 80683C44  40 82 00 48 */	bne lbl_80683C8C
/* 80683C48  38 00 00 05 */	li r0, 5
/* 80683C4C  98 1D 00 4C */	stb r0, 0x4c(r29)
/* 80683C50  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80683C54  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80683C58  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80683C5C  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80683C60  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80683C64  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80683C68  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80683C6C  4B BE 3C E9 */	bl cM_rndF__Ff
/* 80683C70  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80683C74  EC 00 08 2A */	fadds f0, f0, f1
/* 80683C78  FC 00 00 1E */	fctiwz f0, f0
/* 80683C7C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80683C80  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80683C84  98 1D 00 4F */	stb r0, 0x4f(r29)
/* 80683C88  48 00 01 3C */	b lbl_80683DC4
lbl_80683C8C:
/* 80683C8C  80 1C 04 A4 */	lwz r0, 0x4a4(r28)
/* 80683C90  90 01 00 0C */	stw r0, 0xc(r1)
/* 80683C94  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80683C98  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80683C9C  38 81 00 0C */	addi r4, r1, 0xc
/* 80683CA0  4B 99 5B 59 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80683CA4  28 03 00 00 */	cmplwi r3, 0
/* 80683CA8  40 82 01 1C */	bne lbl_80683DC4
/* 80683CAC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80683CB0  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80683CB4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80683CB8  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80683CBC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80683CC0  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80683CC4  38 61 00 14 */	addi r3, r1, 0x14
/* 80683CC8  38 9D 00 10 */	addi r4, r29, 0x10
/* 80683CCC  38 BC 04 A8 */	addi r5, r28, 0x4a8
/* 80683CD0  4B BE 2E 65 */	bl __mi__4cXyzCFRC3Vec
/* 80683CD4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80683CD8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80683CDC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80683CE0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80683CE4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80683CE8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80683CEC  38 00 00 04 */	li r0, 4
/* 80683CF0  98 1D 00 4C */	stb r0, 0x4c(r29)
/* 80683CF4  38 00 00 00 */	li r0, 0
/* 80683CF8  98 1D 00 4D */	stb r0, 0x4d(r29)
/* 80683CFC  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80683D00  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80683D04  4B BE 39 71 */	bl cM_atan2s__Fff
/* 80683D08  7C 64 1B 78 */	mr r4, r3
/* 80683D0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80683D10  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80683D14  80 63 00 00 */	lwz r3, 0(r3)
/* 80683D18  4B 98 86 C5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80683D1C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80683D20  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80683D24  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80683D28  4B BE 3C 2D */	bl cM_rndF__Ff
/* 80683D2C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80683D30  EC 00 08 2A */	fadds f0, f0, f1
/* 80683D34  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80683D38  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80683D3C  4B BE 3C 19 */	bl cM_rndF__Ff
/* 80683D40  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80683D44  EC 00 08 2A */	fadds f0, f0, f1
/* 80683D48  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80683D4C  38 61 00 38 */	addi r3, r1, 0x38
/* 80683D50  38 9D 00 28 */	addi r4, r29, 0x28
/* 80683D54  4B BE D1 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80683D58  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80683D5C  4B BE 3B F9 */	bl cM_rndF__Ff
/* 80683D60  FC 00 08 1E */	fctiwz f0, f1
/* 80683D64  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80683D68  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80683D6C  B0 1D 00 34 */	sth r0, 0x34(r29)
/* 80683D70  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80683D74  4B BE 3B E1 */	bl cM_rndF__Ff
/* 80683D78  FC 00 08 1E */	fctiwz f0, f1
/* 80683D7C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80683D80  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80683D84  B0 1D 00 38 */	sth r0, 0x38(r29)
/* 80683D88  38 00 00 00 */	li r0, 0
/* 80683D8C  98 1D 00 4F */	stb r0, 0x4f(r29)
/* 80683D90  38 00 00 01 */	li r0, 1
/* 80683D94  98 1D 00 4E */	stb r0, 0x4e(r29)
/* 80683D98  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070128@ha */
/* 80683D9C  38 03 01 28 */	addi r0, r3, 0x0128 /* 0x00070128@l */
/* 80683DA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80683DA4  38 7D 00 54 */	addi r3, r29, 0x54
/* 80683DA8  38 81 00 10 */	addi r4, r1, 0x10
/* 80683DAC  38 A0 00 00 */	li r5, 0
/* 80683DB0  38 C0 FF FF */	li r6, -1
/* 80683DB4  81 9D 00 64 */	lwz r12, 0x64(r29)
/* 80683DB8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80683DBC  7D 89 03 A6 */	mtctr r12
/* 80683DC0  4E 80 04 21 */	bctrl 
lbl_80683DC4:
/* 80683DC4  39 61 00 70 */	addi r11, r1, 0x70
/* 80683DC8  4B CD E4 55 */	bl _restgpr_26
/* 80683DCC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80683DD0  7C 08 03 A6 */	mtlr r0
/* 80683DD4  38 21 00 70 */	addi r1, r1, 0x70
/* 80683DD8  4E 80 00 20 */	blr 
