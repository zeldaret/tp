lbl_80D51628:
/* 80D51628  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D5162C  7C 08 02 A6 */	mflr r0
/* 80D51630  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D51634  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80D51638  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80D5163C  39 61 00 40 */	addi r11, r1, 0x40
/* 80D51640  4B 61 0B 9D */	bl _savegpr_29
/* 80D51644  7C 7E 1B 78 */	mr r30, r3
/* 80D51648  3C 60 80 D5 */	lis r3, lit_3698@ha /* 0x80D51AD4@ha */
/* 80D5164C  3B E3 1A D4 */	addi r31, r3, lit_3698@l /* 0x80D51AD4@l */
/* 80D51650  C3 FE 05 2C */	lfs f31, 0x52c(r30)
/* 80D51654  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D51658  80 9E 05 A0 */	lwz r4, 0x5a0(r30)
/* 80D5165C  4B 30 01 55 */	bl dPath_GetPnt__FPC5dPathi
/* 80D51660  7C 64 1B 78 */	mr r4, r3
/* 80D51664  C0 1E 05 A4 */	lfs f0, 0x5a4(r30)
/* 80D51668  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80D5166C  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 80D51670  38 7E 05 88 */	addi r3, r30, 0x588
/* 80D51674  38 84 00 04 */	addi r4, r4, 4
/* 80D51678  4B 5F 5D 25 */	bl PSVECSquareDistance
/* 80D5167C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D51680  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D51684  40 81 00 58 */	ble lbl_80D516DC
/* 80D51688  FC 00 08 34 */	frsqrte f0, f1
/* 80D5168C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80D51690  FC 44 00 32 */	fmul f2, f4, f0
/* 80D51694  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80D51698  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5169C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D516A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80D516A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80D516A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D516AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D516B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D516B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D516B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D516BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D516C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D516C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D516C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D516CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D516D0  FC 21 00 32 */	fmul f1, f1, f0
/* 80D516D4  FC 20 08 18 */	frsp f1, f1
/* 80D516D8  48 00 00 88 */	b lbl_80D51760
lbl_80D516DC:
/* 80D516DC  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80D516E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D516E4  40 80 00 10 */	bge lbl_80D516F4
/* 80D516E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D516EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D516F0  48 00 00 70 */	b lbl_80D51760
lbl_80D516F4:
/* 80D516F4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D516F8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80D516FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D51700  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D51704  7C 03 00 00 */	cmpw r3, r0
/* 80D51708  41 82 00 14 */	beq lbl_80D5171C
/* 80D5170C  40 80 00 40 */	bge lbl_80D5174C
/* 80D51710  2C 03 00 00 */	cmpwi r3, 0
/* 80D51714  41 82 00 20 */	beq lbl_80D51734
/* 80D51718  48 00 00 34 */	b lbl_80D5174C
lbl_80D5171C:
/* 80D5171C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D51720  41 82 00 0C */	beq lbl_80D5172C
/* 80D51724  38 00 00 01 */	li r0, 1
/* 80D51728  48 00 00 28 */	b lbl_80D51750
lbl_80D5172C:
/* 80D5172C  38 00 00 02 */	li r0, 2
/* 80D51730  48 00 00 20 */	b lbl_80D51750
lbl_80D51734:
/* 80D51734  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D51738  41 82 00 0C */	beq lbl_80D51744
/* 80D5173C  38 00 00 05 */	li r0, 5
/* 80D51740  48 00 00 10 */	b lbl_80D51750
lbl_80D51744:
/* 80D51744  38 00 00 03 */	li r0, 3
/* 80D51748  48 00 00 08 */	b lbl_80D51750
lbl_80D5174C:
/* 80D5174C  38 00 00 04 */	li r0, 4
lbl_80D51750:
/* 80D51750  2C 00 00 01 */	cmpwi r0, 1
/* 80D51754  40 82 00 0C */	bne lbl_80D51760
/* 80D51758  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D5175C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D51760:
/* 80D51760  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80D51764  41 80 00 14 */	blt lbl_80D51778
/* 80D51768  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 80D5176C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D51770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D51774  40 80 00 0C */	bge lbl_80D51780
lbl_80D51778:
/* 80D51778  38 00 00 01 */	li r0, 1
/* 80D5177C  48 00 00 08 */	b lbl_80D51784
lbl_80D51780:
/* 80D51780  38 00 00 00 */	li r0, 0
lbl_80D51784:
/* 80D51784  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D51788  41 82 01 A4 */	beq lbl_80D5192C
/* 80D5178C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D51790  80 9E 05 A0 */	lwz r4, 0x5a0(r30)
/* 80D51794  4B 30 00 1D */	bl dPath_GetPnt__FPC5dPathi
/* 80D51798  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 80D5179C  38 03 00 01 */	addi r0, r3, 1
/* 80D517A0  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80D517A4  80 9E 05 A0 */	lwz r4, 0x5a0(r30)
/* 80D517A8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D517AC  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80D517B0  7C 04 28 00 */	cmpw r4, r5
/* 80D517B4  41 80 00 1C */	blt lbl_80D517D0
/* 80D517B8  38 05 FF FF */	addi r0, r5, -1
/* 80D517BC  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80D517C0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D517C4  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 80D517C8  38 00 00 01 */	li r0, 1
/* 80D517CC  48 00 01 48 */	b lbl_80D51914
lbl_80D517D0:
/* 80D517D0  4B 2F FF E1 */	bl dPath_GetPnt__FPC5dPathi
/* 80D517D4  7C 7D 1B 78 */	mr r29, r3
/* 80D517D8  C0 5E 05 90 */	lfs f2, 0x590(r30)
/* 80D517DC  C0 1E 05 88 */	lfs f0, 0x588(r30)
/* 80D517E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D517E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D517E8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D517EC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80D517F0  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80D517F4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D517F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D517FC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80D51800  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80D51804  38 61 00 10 */	addi r3, r1, 0x10
/* 80D51808  38 81 00 1C */	addi r4, r1, 0x1c
/* 80D5180C  4B 5F 5B 91 */	bl PSVECSquareDistance
/* 80D51810  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D51814  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D51818  40 81 00 58 */	ble lbl_80D51870
/* 80D5181C  FC 00 08 34 */	frsqrte f0, f1
/* 80D51820  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80D51824  FC 44 00 32 */	fmul f2, f4, f0
/* 80D51828  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80D5182C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D51830  FC 01 00 32 */	fmul f0, f1, f0
/* 80D51834  FC 03 00 28 */	fsub f0, f3, f0
/* 80D51838  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5183C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D51840  FC 00 00 32 */	fmul f0, f0, f0
/* 80D51844  FC 01 00 32 */	fmul f0, f1, f0
/* 80D51848  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5184C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D51850  FC 44 00 32 */	fmul f2, f4, f0
/* 80D51854  FC 00 00 32 */	fmul f0, f0, f0
/* 80D51858  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5185C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D51860  FC 02 00 32 */	fmul f0, f2, f0
/* 80D51864  FC 21 00 32 */	fmul f1, f1, f0
/* 80D51868  FC 20 08 18 */	frsp f1, f1
/* 80D5186C  48 00 00 88 */	b lbl_80D518F4
lbl_80D51870:
/* 80D51870  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80D51874  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D51878  40 80 00 10 */	bge lbl_80D51888
/* 80D5187C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D51880  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D51884  48 00 00 70 */	b lbl_80D518F4
lbl_80D51888:
/* 80D51888  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D5188C  80 81 00 08 */	lwz r4, 8(r1)
/* 80D51890  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D51894  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D51898  7C 03 00 00 */	cmpw r3, r0
/* 80D5189C  41 82 00 14 */	beq lbl_80D518B0
/* 80D518A0  40 80 00 40 */	bge lbl_80D518E0
/* 80D518A4  2C 03 00 00 */	cmpwi r3, 0
/* 80D518A8  41 82 00 20 */	beq lbl_80D518C8
/* 80D518AC  48 00 00 34 */	b lbl_80D518E0
lbl_80D518B0:
/* 80D518B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D518B4  41 82 00 0C */	beq lbl_80D518C0
/* 80D518B8  38 00 00 01 */	li r0, 1
/* 80D518BC  48 00 00 28 */	b lbl_80D518E4
lbl_80D518C0:
/* 80D518C0  38 00 00 02 */	li r0, 2
/* 80D518C4  48 00 00 20 */	b lbl_80D518E4
lbl_80D518C8:
/* 80D518C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D518CC  41 82 00 0C */	beq lbl_80D518D8
/* 80D518D0  38 00 00 05 */	li r0, 5
/* 80D518D4  48 00 00 10 */	b lbl_80D518E4
lbl_80D518D8:
/* 80D518D8  38 00 00 03 */	li r0, 3
/* 80D518DC  48 00 00 08 */	b lbl_80D518E4
lbl_80D518E0:
/* 80D518E0  38 00 00 04 */	li r0, 4
lbl_80D518E4:
/* 80D518E4  2C 00 00 01 */	cmpwi r0, 1
/* 80D518E8  40 82 00 0C */	bne lbl_80D518F4
/* 80D518EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D518F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D518F4:
/* 80D518F4  D0 3E 05 A4 */	stfs f1, 0x5a4(r30)
/* 80D518F8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80D518FC  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 80D51900  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80D51904  D0 1E 05 80 */	stfs f0, 0x580(r30)
/* 80D51908  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80D5190C  D0 1E 05 84 */	stfs f0, 0x584(r30)
/* 80D51910  38 00 00 00 */	li r0, 0
lbl_80D51914:
/* 80D51914  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D51918  41 82 00 14 */	beq lbl_80D5192C
/* 80D5191C  38 00 00 00 */	li r0, 0
/* 80D51920  98 1E 05 B1 */	stb r0, 0x5b1(r30)
/* 80D51924  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D51928  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80D5192C:
/* 80D5192C  38 7E 05 88 */	addi r3, r30, 0x588
/* 80D51930  38 9E 05 7C */	addi r4, r30, 0x57c
/* 80D51934  4B 51 F3 41 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80D51938  7C 03 00 D0 */	neg r0, r3
/* 80D5193C  7C 1D 07 34 */	extsh r29, r0
/* 80D51940  38 7E 05 88 */	addi r3, r30, 0x588
/* 80D51944  38 9E 05 7C */	addi r4, r30, 0x57c
/* 80D51948  4B 51 F2 BD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80D5194C  7C 7F 1B 78 */	mr r31, r3
/* 80D51950  38 7E 05 94 */	addi r3, r30, 0x594
/* 80D51954  7F A4 EB 78 */	mr r4, r29
/* 80D51958  38 A0 00 0F */	li r5, 0xf
/* 80D5195C  38 C0 04 00 */	li r6, 0x400
/* 80D51960  4B 51 EC A9 */	bl cLib_addCalcAngleS2__FPssss
/* 80D51964  38 7E 05 96 */	addi r3, r30, 0x596
/* 80D51968  7F E4 FB 78 */	mr r4, r31
/* 80D5196C  38 A0 00 23 */	li r5, 0x23
/* 80D51970  38 C0 01 00 */	li r6, 0x100
/* 80D51974  4B 51 EC 95 */	bl cLib_addCalcAngleS2__FPssss
/* 80D51978  38 7E 05 98 */	addi r3, r30, 0x598
/* 80D5197C  7F E4 07 34 */	extsh r4, r31
/* 80D51980  A8 1E 05 96 */	lha r0, 0x596(r30)
/* 80D51984  7C 04 00 50 */	subf r0, r4, r0
/* 80D51988  54 00 10 3A */	slwi r0, r0, 2
/* 80D5198C  7C 04 07 34 */	extsh r4, r0
/* 80D51990  38 A0 00 23 */	li r5, 0x23
/* 80D51994  38 C0 01 00 */	li r6, 0x100
/* 80D51998  4B 51 EC 71 */	bl cLib_addCalcAngleS2__FPssss
/* 80D5199C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80D519A0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80D519A4  39 61 00 40 */	addi r11, r1, 0x40
/* 80D519A8  4B 61 08 81 */	bl _restgpr_29
/* 80D519AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D519B0  7C 08 03 A6 */	mtlr r0
/* 80D519B4  38 21 00 50 */	addi r1, r1, 0x50
/* 80D519B8  4E 80 00 20 */	blr 
