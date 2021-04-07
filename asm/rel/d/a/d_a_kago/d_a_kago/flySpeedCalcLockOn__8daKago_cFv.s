lbl_8084B744:
/* 8084B744  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8084B748  7C 08 02 A6 */	mflr r0
/* 8084B74C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8084B750  39 61 00 40 */	addi r11, r1, 0x40
/* 8084B754  4B B1 6A 85 */	bl _savegpr_28
/* 8084B758  7C 7F 1B 78 */	mr r31, r3
/* 8084B75C  3C 60 80 85 */	lis r3, lit_3929@ha /* 0x80854B04@ha */
/* 8084B760  3B C3 4B 04 */	addi r30, r3, lit_3929@l /* 0x80854B04@l */
/* 8084B764  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084B768  80 9F 06 18 */	lwz r4, 0x618(r31)
/* 8084B76C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8084B770  4B A2 55 05 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8084B774  7C 03 00 D0 */	neg r0, r3
/* 8084B778  7C 1D 07 34 */	extsh r29, r0
/* 8084B77C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8084B780  80 9F 06 18 */	lwz r4, 0x618(r31)
/* 8084B784  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8084B788  4B A2 54 7D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8084B78C  7C 7C 1B 78 */	mr r28, r3
/* 8084B790  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 8084B794  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8084B798  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8084B79C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8084B7A0  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8084B7A4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8084B7A8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8084B7AC  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 8084B7B0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8084B7B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8084B7B8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8084B7BC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8084B7C0  38 61 00 0C */	addi r3, r1, 0xc
/* 8084B7C4  38 81 00 18 */	addi r4, r1, 0x18
/* 8084B7C8  4B AF BB D5 */	bl PSVECSquareDistance
/* 8084B7CC  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8084B7D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084B7D4  40 81 00 58 */	ble lbl_8084B82C
/* 8084B7D8  FC 00 08 34 */	frsqrte f0, f1
/* 8084B7DC  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 8084B7E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8084B7E4  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 8084B7E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8084B7EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8084B7F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8084B7F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8084B7F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8084B7FC  FC 00 00 32 */	fmul f0, f0, f0
/* 8084B800  FC 01 00 32 */	fmul f0, f1, f0
/* 8084B804  FC 03 00 28 */	fsub f0, f3, f0
/* 8084B808  FC 02 00 32 */	fmul f0, f2, f0
/* 8084B80C  FC 44 00 32 */	fmul f2, f4, f0
/* 8084B810  FC 00 00 32 */	fmul f0, f0, f0
/* 8084B814  FC 01 00 32 */	fmul f0, f1, f0
/* 8084B818  FC 03 00 28 */	fsub f0, f3, f0
/* 8084B81C  FC 02 00 32 */	fmul f0, f2, f0
/* 8084B820  FC 21 00 32 */	fmul f1, f1, f0
/* 8084B824  FC 20 08 18 */	frsp f1, f1
/* 8084B828  48 00 00 88 */	b lbl_8084B8B0
lbl_8084B82C:
/* 8084B82C  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 8084B830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084B834  40 80 00 10 */	bge lbl_8084B844
/* 8084B838  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8084B83C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8084B840  48 00 00 70 */	b lbl_8084B8B0
lbl_8084B844:
/* 8084B844  D0 21 00 08 */	stfs f1, 8(r1)
/* 8084B848  80 81 00 08 */	lwz r4, 8(r1)
/* 8084B84C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8084B850  3C 00 7F 80 */	lis r0, 0x7f80
/* 8084B854  7C 03 00 00 */	cmpw r3, r0
/* 8084B858  41 82 00 14 */	beq lbl_8084B86C
/* 8084B85C  40 80 00 40 */	bge lbl_8084B89C
/* 8084B860  2C 03 00 00 */	cmpwi r3, 0
/* 8084B864  41 82 00 20 */	beq lbl_8084B884
/* 8084B868  48 00 00 34 */	b lbl_8084B89C
lbl_8084B86C:
/* 8084B86C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8084B870  41 82 00 0C */	beq lbl_8084B87C
/* 8084B874  38 00 00 01 */	li r0, 1
/* 8084B878  48 00 00 28 */	b lbl_8084B8A0
lbl_8084B87C:
/* 8084B87C  38 00 00 02 */	li r0, 2
/* 8084B880  48 00 00 20 */	b lbl_8084B8A0
lbl_8084B884:
/* 8084B884  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8084B888  41 82 00 0C */	beq lbl_8084B894
/* 8084B88C  38 00 00 05 */	li r0, 5
/* 8084B890  48 00 00 10 */	b lbl_8084B8A0
lbl_8084B894:
/* 8084B894  38 00 00 03 */	li r0, 3
/* 8084B898  48 00 00 08 */	b lbl_8084B8A0
lbl_8084B89C:
/* 8084B89C  38 00 00 04 */	li r0, 4
lbl_8084B8A0:
/* 8084B8A0  2C 00 00 01 */	cmpwi r0, 1
/* 8084B8A4  40 82 00 0C */	bne lbl_8084B8B0
/* 8084B8A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8084B8AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8084B8B0:
/* 8084B8B0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8084B8B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084B8B8  40 80 00 0C */	bge lbl_8084B8C4
/* 8084B8BC  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 8084B8C0  AB 83 04 DE */	lha r28, 0x4de(r3)
lbl_8084B8C4:
/* 8084B8C4  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 8084B8C8  7F A4 EB 78 */	mr r4, r29
/* 8084B8CC  38 A0 00 08 */	li r5, 8
/* 8084B8D0  38 C0 01 00 */	li r6, 0x100
/* 8084B8D4  38 E0 00 10 */	li r7, 0x10
/* 8084B8D8  4B A2 4C 69 */	bl cLib_addCalcAngleS__FPsssss
/* 8084B8DC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8084B8E0  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8084B8E4  AB BF 04 DE */	lha r29, 0x4de(r31)
/* 8084B8E8  38 7F 04 DE */	addi r3, r31, 0x4de
/* 8084B8EC  7F 84 E3 78 */	mr r4, r28
/* 8084B8F0  38 A0 00 08 */	li r5, 8
/* 8084B8F4  38 C0 01 00 */	li r6, 0x100
/* 8084B8F8  38 E0 00 10 */	li r7, 0x10
/* 8084B8FC  4B A2 4C 45 */	bl cLib_addCalcAngleS__FPsssss
/* 8084B900  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8084B904  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8084B908  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 8084B90C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8084B910  7C 00 E8 50 */	subf r0, r0, r29
/* 8084B914  54 00 28 34 */	slwi r0, r0, 5
/* 8084B918  7C 04 07 34 */	extsh r4, r0
/* 8084B91C  38 A0 00 08 */	li r5, 8
/* 8084B920  38 C0 04 00 */	li r6, 0x400
/* 8084B924  38 E0 00 10 */	li r7, 0x10
/* 8084B928  4B A2 4C 19 */	bl cLib_addCalcAngleS__FPsssss
/* 8084B92C  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 8084B930  2C 00 30 00 */	cmpwi r0, 0x3000
/* 8084B934  40 81 00 0C */	ble lbl_8084B940
/* 8084B938  38 00 30 00 */	li r0, 0x3000
/* 8084B93C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
lbl_8084B940:
/* 8084B940  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 8084B944  2C 00 D0 00 */	cmpwi r0, -12288
/* 8084B948  40 80 00 0C */	bge lbl_8084B954
/* 8084B94C  38 00 D0 00 */	li r0, -12288
/* 8084B950  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
lbl_8084B954:
/* 8084B954  39 61 00 40 */	addi r11, r1, 0x40
/* 8084B958  4B B1 68 CD */	bl _restgpr_28
/* 8084B95C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8084B960  7C 08 03 A6 */	mtlr r0
/* 8084B964  38 21 00 40 */	addi r1, r1, 0x40
/* 8084B968  4E 80 00 20 */	blr 
