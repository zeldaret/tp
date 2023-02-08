lbl_80B747A0:
/* 80B747A0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B747A4  7C 08 02 A6 */	mflr r0
/* 80B747A8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B747AC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B747B0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B747B4  39 61 00 60 */	addi r11, r1, 0x60
/* 80B747B8  4B 7E DA 25 */	bl _savegpr_29
/* 80B747BC  7C 7F 1B 78 */	mr r31, r3
/* 80B747C0  7C 80 23 78 */	mr r0, r4
/* 80B747C4  FF E0 08 90 */	fmr f31, f1
/* 80B747C8  7C BD 2B 78 */	mr r29, r5
/* 80B747CC  3C 60 80 B7 */	lis r3, m__19daNpc_ZelRo_Param_c@ha /* 0x80B74C5C@ha */
/* 80B747D0  3B C3 4C 5C */	addi r30, r3, m__19daNpc_ZelRo_Param_c@l /* 0x80B74C5C@l */
/* 80B747D4  38 A0 00 00 */	li r5, 0
/* 80B747D8  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B747DC  28 04 00 00 */	cmplwi r4, 0
/* 80B747E0  41 82 01 40 */	beq lbl_80B74920
/* 80B747E4  38 61 00 18 */	addi r3, r1, 0x18
/* 80B747E8  7C 05 03 78 */	mr r5, r0
/* 80B747EC  4B 6F 23 49 */	bl __mi__4cXyzCFRC3Vec
/* 80B747F0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80B747F4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B747F8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B747FC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B74800  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B74804  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B74808  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B7480C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80B74810  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B74814  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B74818  38 61 00 0C */	addi r3, r1, 0xc
/* 80B7481C  4B 7D 29 1D */	bl PSVECSquareMag
/* 80B74820  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80B74824  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B74828  40 81 00 58 */	ble lbl_80B74880
/* 80B7482C  FC 00 08 34 */	frsqrte f0, f1
/* 80B74830  C8 9E 00 C8 */	lfd f4, 0xc8(r30)
/* 80B74834  FC 44 00 32 */	fmul f2, f4, f0
/* 80B74838  C8 7E 00 D0 */	lfd f3, 0xd0(r30)
/* 80B7483C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B74840  FC 01 00 32 */	fmul f0, f1, f0
/* 80B74844  FC 03 00 28 */	fsub f0, f3, f0
/* 80B74848  FC 02 00 32 */	fmul f0, f2, f0
/* 80B7484C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B74850  FC 00 00 32 */	fmul f0, f0, f0
/* 80B74854  FC 01 00 32 */	fmul f0, f1, f0
/* 80B74858  FC 03 00 28 */	fsub f0, f3, f0
/* 80B7485C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B74860  FC 44 00 32 */	fmul f2, f4, f0
/* 80B74864  FC 00 00 32 */	fmul f0, f0, f0
/* 80B74868  FC 01 00 32 */	fmul f0, f1, f0
/* 80B7486C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B74870  FC 02 00 32 */	fmul f0, f2, f0
/* 80B74874  FC 41 00 32 */	fmul f2, f1, f0
/* 80B74878  FC 40 10 18 */	frsp f2, f2
/* 80B7487C  48 00 00 90 */	b lbl_80B7490C
lbl_80B74880:
/* 80B74880  C8 1E 00 D8 */	lfd f0, 0xd8(r30)
/* 80B74884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B74888  40 80 00 10 */	bge lbl_80B74898
/* 80B7488C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B74890  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B74894  48 00 00 78 */	b lbl_80B7490C
lbl_80B74898:
/* 80B74898  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B7489C  80 81 00 08 */	lwz r4, 8(r1)
/* 80B748A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B748A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B748A8  7C 03 00 00 */	cmpw r3, r0
/* 80B748AC  41 82 00 14 */	beq lbl_80B748C0
/* 80B748B0  40 80 00 40 */	bge lbl_80B748F0
/* 80B748B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B748B8  41 82 00 20 */	beq lbl_80B748D8
/* 80B748BC  48 00 00 34 */	b lbl_80B748F0
lbl_80B748C0:
/* 80B748C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B748C4  41 82 00 0C */	beq lbl_80B748D0
/* 80B748C8  38 00 00 01 */	li r0, 1
/* 80B748CC  48 00 00 28 */	b lbl_80B748F4
lbl_80B748D0:
/* 80B748D0  38 00 00 02 */	li r0, 2
/* 80B748D4  48 00 00 20 */	b lbl_80B748F4
lbl_80B748D8:
/* 80B748D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B748DC  41 82 00 0C */	beq lbl_80B748E8
/* 80B748E0  38 00 00 05 */	li r0, 5
/* 80B748E4  48 00 00 10 */	b lbl_80B748F4
lbl_80B748E8:
/* 80B748E8  38 00 00 03 */	li r0, 3
/* 80B748EC  48 00 00 08 */	b lbl_80B748F4
lbl_80B748F0:
/* 80B748F0  38 00 00 04 */	li r0, 4
lbl_80B748F4:
/* 80B748F4  2C 00 00 01 */	cmpwi r0, 1
/* 80B748F8  40 82 00 10 */	bne lbl_80B74908
/* 80B748FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B74900  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B74904  48 00 00 08 */	b lbl_80B7490C
lbl_80B74908:
/* 80B74908  FC 40 08 90 */	fmr f2, f1
lbl_80B7490C:
/* 80B7490C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B74910  4B 6F 2D 65 */	bl cM_atan2s__Fff
/* 80B74914  7C 03 00 D0 */	neg r0, r3
/* 80B74918  7C 05 07 34 */	extsh r5, r0
/* 80B7491C  7C A5 EA 14 */	add r5, r5, r29
lbl_80B74920:
/* 80B74920  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80B74924  7C A5 02 14 */	add r5, r5, r0
/* 80B74928  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80B7492C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B74930  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80B74934  C8 5E 00 C0 */	lfd f2, 0xc0(r30)
/* 80B74938  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B7493C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B74940  3C 60 43 30 */	lis r3, 0x4330
/* 80B74944  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B74948  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B7494C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B74950  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B74954  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B74958  7C A0 07 34 */	extsh r0, r5
/* 80B7495C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B74960  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B74964  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B74968  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B7496C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B74970  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B74974  EC 01 00 2A */	fadds f0, f1, f0
/* 80B74978  FC 00 00 1E */	fctiwz f0, f0
/* 80B7497C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B74980  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B74984  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80B74988  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B7498C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B74990  39 61 00 60 */	addi r11, r1, 0x60
/* 80B74994  4B 7E D8 95 */	bl _restgpr_29
/* 80B74998  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B7499C  7C 08 03 A6 */	mtlr r0
/* 80B749A0  38 21 00 70 */	addi r1, r1, 0x70
/* 80B749A4  4E 80 00 20 */	blr 
