lbl_80B111F4:
/* 80B111F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B111F8  7C 08 02 A6 */	mflr r0
/* 80B111FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B11200  39 61 00 30 */	addi r11, r1, 0x30
/* 80B11204  4B 85 0F D9 */	bl _savegpr_29
/* 80B11208  7C 7E 1B 78 */	mr r30, r3
/* 80B1120C  3C 60 80 B1 */	lis r3, lit_3648@ha /* 0x80B142DC@ha */
/* 80B11210  3B E3 42 DC */	addi r31, r3, lit_3648@l /* 0x80B142DC@l */
/* 80B11214  38 00 00 00 */	li r0, 0
/* 80B11218  98 1E 05 EB */	stb r0, 0x5eb(r30)
/* 80B1121C  38 7E 08 8C */	addi r3, r30, 0x88c
/* 80B11220  4B 57 32 41 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80B11224  28 03 00 00 */	cmplwi r3, 0
/* 80B11228  41 82 01 6C */	beq lbl_80B11394
/* 80B1122C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B11230  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80B11234  40 82 01 70 */	bne lbl_80B113A4
/* 80B11238  88 1E 05 F2 */	lbz r0, 0x5f2(r30)
/* 80B1123C  28 00 00 00 */	cmplwi r0, 0
/* 80B11240  40 82 01 64 */	bne lbl_80B113A4
/* 80B11244  88 1E 05 EA */	lbz r0, 0x5ea(r30)
/* 80B11248  28 00 00 00 */	cmplwi r0, 0
/* 80B1124C  40 82 01 58 */	bne lbl_80B113A4
/* 80B11250  38 7E 08 8C */	addi r3, r30, 0x88c
/* 80B11254  4B 57 32 F5 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80B11258  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80B1125C  28 00 00 03 */	cmplwi r0, 3
/* 80B11260  40 82 01 44 */	bne lbl_80B113A4
/* 80B11264  88 1E 05 EB */	lbz r0, 0x5eb(r30)
/* 80B11268  28 00 00 00 */	cmplwi r0, 0
/* 80B1126C  40 82 00 40 */	bne lbl_80B112AC
/* 80B11270  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80B11274  80 9E 05 D4 */	lwz r4, 0x5d4(r30)
/* 80B11278  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80B1127C  A8 1E 06 08 */	lha r0, 0x608(r30)
/* 80B11280  2C 00 00 00 */	cmpwi r0, 0
/* 80B11284  40 82 00 28 */	bne lbl_80B112AC
/* 80B11288  38 80 00 00 */	li r4, 0
/* 80B1128C  B0 9E 06 0A */	sth r4, 0x60a(r30)
/* 80B11290  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B11294  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B11298  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80B1129C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B112A0  38 00 00 02 */	li r0, 2
/* 80B112A4  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80B112A8  B0 9E 06 0A */	sth r4, 0x60a(r30)
lbl_80B112AC:
/* 80B112AC  3B A3 00 84 */	addi r29, r3, 0x84
/* 80B112B0  7F A3 EB 78 */	mr r3, r29
/* 80B112B4  7F A4 EB 78 */	mr r4, r29
/* 80B112B8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80B112BC  4B 83 5E 1D */	bl PSVECScale
/* 80B112C0  38 7E 05 FC */	addi r3, r30, 0x5fc
/* 80B112C4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80B112C8  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80B112CC  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80B112D0  C0 9F 00 08 */	lfs f4, 8(r31)
/* 80B112D4  4B 75 E6 A9 */	bl cLib_addCalc__FPfffff
/* 80B112D8  38 7E 06 00 */	addi r3, r30, 0x600
/* 80B112DC  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80B112E0  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80B112E4  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80B112E8  C0 9F 00 08 */	lfs f4, 8(r31)
/* 80B112EC  4B 75 E6 91 */	bl cLib_addCalc__FPfffff
/* 80B112F0  38 7E 06 04 */	addi r3, r30, 0x604
/* 80B112F4  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80B112F8  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80B112FC  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80B11300  C0 9F 00 08 */	lfs f4, 8(r31)
/* 80B11304  4B 75 E6 79 */	bl cLib_addCalc__FPfffff
/* 80B11308  C0 3E 05 FC */	lfs f1, 0x5fc(r30)
/* 80B1130C  C0 5E 06 04 */	lfs f2, 0x604(r30)
/* 80B11310  4B 75 63 65 */	bl cM_atan2s__Fff
/* 80B11314  7C 63 07 34 */	extsh r3, r3
/* 80B11318  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80B1131C  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80B11320  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B11324  40 82 00 10 */	bne lbl_80B11334
/* 80B11328  C0 1E 06 04 */	lfs f0, 0x604(r30)
/* 80B1132C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B11330  41 82 00 48 */	beq lbl_80B11378
lbl_80B11334:
/* 80B11334  A8 1E 05 C4 */	lha r0, 0x5c4(r30)
/* 80B11338  7C 00 18 50 */	subf r0, r0, r3
/* 80B1133C  7C 00 07 35 */	extsh. r0, r0
/* 80B11340  40 80 00 20 */	bge lbl_80B11360
/* 80B11344  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 80B11348  38 80 20 00 */	li r4, 0x2000
/* 80B1134C  38 A0 00 10 */	li r5, 0x10
/* 80B11350  38 C0 10 00 */	li r6, 0x1000
/* 80B11354  38 E0 00 00 */	li r7, 0
/* 80B11358  4B 75 F1 E9 */	bl cLib_addCalcAngleS__FPsssss
/* 80B1135C  48 00 00 1C */	b lbl_80B11378
lbl_80B11360:
/* 80B11360  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 80B11364  38 80 E0 00 */	li r4, -8192
/* 80B11368  38 A0 00 02 */	li r5, 2
/* 80B1136C  38 C0 10 00 */	li r6, 0x1000
/* 80B11370  38 E0 00 00 */	li r7, 0
/* 80B11374  4B 75 F1 CD */	bl cLib_addCalcAngleS__FPsssss
lbl_80B11378:
/* 80B11378  C0 3E 05 FC */	lfs f1, 0x5fc(r30)
/* 80B1137C  C0 5E 06 04 */	lfs f2, 0x604(r30)
/* 80B11380  4B 75 62 F5 */	bl cM_atan2s__Fff
/* 80B11384  B0 7E 05 C4 */	sth r3, 0x5c4(r30)
/* 80B11388  38 00 00 01 */	li r0, 1
/* 80B1138C  98 1E 05 EB */	stb r0, 0x5eb(r30)
/* 80B11390  48 00 00 14 */	b lbl_80B113A4
lbl_80B11394:
/* 80B11394  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 80B11398  38 80 00 00 */	li r4, 0
/* 80B1139C  38 A0 05 00 */	li r5, 0x500
/* 80B113A0  4B 75 F7 F1 */	bl cLib_chaseAngleS__FPsss
lbl_80B113A4:
/* 80B113A4  88 1E 05 EB */	lbz r0, 0x5eb(r30)
/* 80B113A8  28 00 00 00 */	cmplwi r0, 0
/* 80B113AC  40 82 00 58 */	bne lbl_80B11404
/* 80B113B0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80B113B4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B113B8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B113BC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B113C0  38 7E 05 FC */	addi r3, r30, 0x5fc
/* 80B113C4  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80B113C8  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80B113CC  FC 80 08 90 */	fmr f4, f1
/* 80B113D0  4B 75 E5 AD */	bl cLib_addCalc__FPfffff
/* 80B113D4  38 7E 06 00 */	addi r3, r30, 0x600
/* 80B113D8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80B113DC  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80B113E0  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80B113E4  C0 9F 00 08 */	lfs f4, 8(r31)
/* 80B113E8  4B 75 E5 95 */	bl cLib_addCalc__FPfffff
/* 80B113EC  38 7E 06 04 */	addi r3, r30, 0x604
/* 80B113F0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80B113F4  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80B113F8  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80B113FC  C0 9F 00 08 */	lfs f4, 8(r31)
/* 80B11400  4B 75 E5 7D */	bl cLib_addCalc__FPfffff
lbl_80B11404:
/* 80B11404  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B11408  38 9E 05 FC */	addi r4, r30, 0x5fc
/* 80B1140C  7C 65 1B 78 */	mr r5, r3
/* 80B11410  4B 83 5C 81 */	bl PSVECAdd
/* 80B11414  39 61 00 30 */	addi r11, r1, 0x30
/* 80B11418  4B 85 0E 11 */	bl _restgpr_29
/* 80B1141C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B11420  7C 08 03 A6 */	mtlr r0
/* 80B11424  38 21 00 30 */	addi r1, r1, 0x30
/* 80B11428  4E 80 00 20 */	blr 
