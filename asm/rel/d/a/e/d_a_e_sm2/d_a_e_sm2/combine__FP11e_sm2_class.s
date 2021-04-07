lbl_80799A50:
/* 80799A50  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80799A54  7C 08 02 A6 */	mflr r0
/* 80799A58  90 01 00 74 */	stw r0, 0x74(r1)
/* 80799A5C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80799A60  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80799A64  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80799A68  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80799A6C  39 61 00 50 */	addi r11, r1, 0x50
/* 80799A70  4B BC 87 65 */	bl _savegpr_27
/* 80799A74  7C 7C 1B 78 */	mr r28, r3
/* 80799A78  3C 60 80 7A */	lis r3, lit_3790@ha /* 0x8079D5B0@ha */
/* 80799A7C  3B E3 D5 B0 */	addi r31, r3, lit_3790@l /* 0x8079D5B0@l */
/* 80799A80  80 1C 0F D0 */	lwz r0, 0xfd0(r28)
/* 80799A84  90 01 00 08 */	stw r0, 8(r1)
/* 80799A88  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80799A8C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80799A90  38 81 00 08 */	addi r4, r1, 8
/* 80799A94  4B 87 FD 65 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80799A98  7C 7B 1B 79 */	or. r27, r3, r3
/* 80799A9C  3B C0 00 01 */	li r30, 1
/* 80799AA0  41 82 00 10 */	beq lbl_80799AB0
/* 80799AA4  A8 1B 06 82 */	lha r0, 0x682(r27)
/* 80799AA8  2C 00 00 02 */	cmpwi r0, 2
/* 80799AAC  41 82 00 38 */	beq lbl_80799AE4
lbl_80799AB0:
/* 80799AB0  38 00 00 00 */	li r0, 0
/* 80799AB4  B0 1C 06 82 */	sth r0, 0x682(r28)
/* 80799AB8  B0 1C 06 84 */	sth r0, 0x684(r28)
/* 80799ABC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80799AC0  4B AC DE 95 */	bl cM_rndF__Ff
/* 80799AC4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80799AC8  EC 00 08 2A */	fadds f0, f0, f1
/* 80799ACC  FC 00 00 1E */	fctiwz f0, f0
/* 80799AD0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80799AD4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80799AD8  B0 1C 06 86 */	sth r0, 0x686(r28)
/* 80799ADC  38 60 00 01 */	li r3, 1
/* 80799AE0  48 00 02 A4 */	b lbl_80799D84
lbl_80799AE4:
/* 80799AE4  38 61 00 0C */	addi r3, r1, 0xc
/* 80799AE8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80799AEC  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80799AF0  4B AC D0 45 */	bl __mi__4cXyzCFRC3Vec
/* 80799AF4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80799AF8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80799AFC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80799B00  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80799B04  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80799B08  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80799B0C  38 61 00 18 */	addi r3, r1, 0x18
/* 80799B10  4B BA D6 29 */	bl PSVECSquareMag
/* 80799B14  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80799B18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80799B1C  40 81 00 08 */	ble lbl_80799B24
/* 80799B20  48 00 00 0C */	b lbl_80799B2C
lbl_80799B24:
/* 80799B24  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80799B28  FC 01 00 40 */	fcmpo cr0, f1, f0
lbl_80799B2C:
/* 80799B2C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80799B30  3B A0 00 00 */	li r29, 0
/* 80799B34  38 00 00 01 */	li r0, 1
/* 80799B38  98 1C 06 A8 */	stb r0, 0x6a8(r28)
/* 80799B3C  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80799B40  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80799B44  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80799B48  EC 01 00 32 */	fmuls f0, f1, f0
/* 80799B4C  EF C2 00 2A */	fadds f30, f2, f0
/* 80799B50  A8 1C 06 84 */	lha r0, 0x684(r28)
/* 80799B54  2C 00 00 05 */	cmpwi r0, 5
/* 80799B58  41 82 00 B0 */	beq lbl_80799C08
/* 80799B5C  40 80 00 1C */	bge lbl_80799B78
/* 80799B60  2C 00 00 01 */	cmpwi r0, 1
/* 80799B64  41 82 00 58 */	beq lbl_80799BBC
/* 80799B68  40 80 01 B4 */	bge lbl_80799D1C
/* 80799B6C  2C 00 00 00 */	cmpwi r0, 0
/* 80799B70  40 80 00 14 */	bge lbl_80799B84
/* 80799B74  48 00 01 A8 */	b lbl_80799D1C
lbl_80799B78:
/* 80799B78  2C 00 00 0A */	cmpwi r0, 0xa
/* 80799B7C  41 82 00 C4 */	beq lbl_80799C40
/* 80799B80  48 00 01 9C */	b lbl_80799D1C
lbl_80799B84:
/* 80799B84  A8 1C 06 86 */	lha r0, 0x686(r28)
/* 80799B88  2C 00 00 00 */	cmpwi r0, 0
/* 80799B8C  40 82 01 90 */	bne lbl_80799D1C
/* 80799B90  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80799B94  4B AC DD C1 */	bl cM_rndF__Ff
/* 80799B98  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80799B9C  EC 00 08 2A */	fadds f0, f0, f1
/* 80799BA0  FC 00 00 1E */	fctiwz f0, f0
/* 80799BA4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80799BA8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80799BAC  B0 1C 06 86 */	sth r0, 0x686(r28)
/* 80799BB0  38 00 00 01 */	li r0, 1
/* 80799BB4  B0 1C 06 84 */	sth r0, 0x684(r28)
/* 80799BB8  48 00 01 64 */	b lbl_80799D1C
lbl_80799BBC:
/* 80799BBC  C3 FF 00 60 */	lfs f31, 0x60(r31)
/* 80799BC0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80799BC4  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80799BC8  4B AC DA AD */	bl cM_atan2s__Fff
/* 80799BCC  B0 7C 06 A4 */	sth r3, 0x6a4(r28)
/* 80799BD0  A8 1C 06 86 */	lha r0, 0x686(r28)
/* 80799BD4  2C 00 00 00 */	cmpwi r0, 0
/* 80799BD8  40 82 01 44 */	bne lbl_80799D1C
/* 80799BDC  38 00 00 00 */	li r0, 0
/* 80799BE0  B0 1C 06 84 */	sth r0, 0x684(r28)
/* 80799BE4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80799BE8  4B AC DD 6D */	bl cM_rndF__Ff
/* 80799BEC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80799BF0  EC 00 08 2A */	fadds f0, f0, f1
/* 80799BF4  FC 00 00 1E */	fctiwz f0, f0
/* 80799BF8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80799BFC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80799C00  B0 1C 06 86 */	sth r0, 0x686(r28)
/* 80799C04  48 00 01 18 */	b lbl_80799D1C
lbl_80799C08:
/* 80799C08  3B C0 00 00 */	li r30, 0
/* 80799C0C  38 00 00 0A */	li r0, 0xa
/* 80799C10  B0 1C 06 8C */	sth r0, 0x68c(r28)
/* 80799C14  B0 1C 06 8E */	sth r0, 0x68e(r28)
/* 80799C18  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80799C1C  D0 1C 08 2C */	stfs f0, 0x82c(r28)
/* 80799C20  3B A0 00 01 */	li r29, 1
/* 80799C24  38 00 00 02 */	li r0, 2
/* 80799C28  98 1C 06 A8 */	stb r0, 0x6a8(r28)
/* 80799C2C  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 80799C30  3C 63 00 01 */	addis r3, r3, 1
/* 80799C34  38 03 80 00 */	addi r0, r3, -32768
/* 80799C38  B0 1C 06 A4 */	sth r0, 0x6a4(r28)
/* 80799C3C  48 00 00 E0 */	b lbl_80799D1C
lbl_80799C40:
/* 80799C40  3B C0 00 00 */	li r30, 0
/* 80799C44  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80799C48  C0 1B 08 30 */	lfs f0, 0x830(r27)
/* 80799C4C  EF C1 00 32 */	fmuls f30, f1, f0
/* 80799C50  38 00 00 0A */	li r0, 0xa
/* 80799C54  B0 1C 06 8C */	sth r0, 0x68c(r28)
/* 80799C58  B0 1C 06 8E */	sth r0, 0x68e(r28)
/* 80799C5C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80799C60  D0 1C 08 2C */	stfs f0, 0x82c(r28)
/* 80799C64  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80799C68  C0 3B 07 50 */	lfs f1, 0x750(r27)
/* 80799C6C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80799C70  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80799C74  C0 1C 08 34 */	lfs f0, 0x834(r28)
/* 80799C78  EC 63 00 32 */	fmuls f3, f3, f0
/* 80799C7C  4B AD 5D C1 */	bl cLib_addCalc2__FPffff
/* 80799C80  38 7C 04 D8 */	addi r3, r28, 0x4d8
/* 80799C84  C0 3B 07 58 */	lfs f1, 0x758(r27)
/* 80799C88  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80799C8C  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80799C90  C0 1C 08 34 */	lfs f0, 0x834(r28)
/* 80799C94  EC 63 00 32 */	fmuls f3, f3, f0
/* 80799C98  4B AD 5D A5 */	bl cLib_addCalc2__FPffff
/* 80799C9C  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 80799CA0  3C 63 00 01 */	addis r3, r3, 1
/* 80799CA4  38 03 80 00 */	addi r0, r3, -32768
/* 80799CA8  B0 1C 06 A4 */	sth r0, 0x6a4(r28)
/* 80799CAC  3B A0 00 01 */	li r29, 1
/* 80799CB0  38 00 00 02 */	li r0, 2
/* 80799CB4  98 1C 06 A8 */	stb r0, 0x6a8(r28)
/* 80799CB8  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80799CBC  C0 1B 07 50 */	lfs f0, 0x750(r27)
/* 80799CC0  EC 41 00 28 */	fsubs f2, f1, f0
/* 80799CC4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80799CC8  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80799CCC  C0 1B 07 58 */	lfs f0, 0x758(r27)
/* 80799CD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80799CD4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80799CD8  A8 1C 06 86 */	lha r0, 0x686(r28)
/* 80799CDC  2C 00 00 00 */	cmpwi r0, 0
/* 80799CE0  41 82 00 34 */	beq lbl_80799D14
/* 80799CE4  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80799CE8  EC 00 00 32 */	fmuls f0, f0, f0
/* 80799CEC  EC 21 00 2A */	fadds f1, f1, f0
/* 80799CF0  FC 00 F8 90 */	fmr f0, f31
/* 80799CF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80799CF8  40 81 00 0C */	ble lbl_80799D04
/* 80799CFC  FC 00 08 34 */	frsqrte f0, f1
/* 80799D00  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80799D04:
/* 80799D04  C0 1C 08 34 */	lfs f0, 0x834(r28)
/* 80799D08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80799D0C  4C 40 13 82 */	cror 2, 0, 2
/* 80799D10  40 82 00 0C */	bne lbl_80799D1C
lbl_80799D14:
/* 80799D14  7F 83 E3 78 */	mr r3, r28
/* 80799D18  4B FF F3 6D */	bl sm2_delete__FP11e_sm2_class
lbl_80799D1C:
/* 80799D1C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80799D20  FC 20 F8 90 */	fmr f1, f31
/* 80799D24  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80799D28  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80799D2C  4B AD 5D 11 */	bl cLib_addCalc2__FPffff
/* 80799D30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80799D34  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80799D38  41 81 00 0C */	bgt lbl_80799D44
/* 80799D3C  7F A0 07 75 */	extsb. r0, r29
/* 80799D40  41 82 00 2C */	beq lbl_80799D6C
lbl_80799D44:
/* 80799D44  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80799D48  A8 9C 06 A4 */	lha r4, 0x6a4(r28)
/* 80799D4C  38 A0 00 04 */	li r5, 4
/* 80799D50  A8 DC 06 A6 */	lha r6, 0x6a6(r28)
/* 80799D54  4B AD 68 B5 */	bl cLib_addCalcAngleS2__FPssss
/* 80799D58  38 7C 06 A6 */	addi r3, r28, 0x6a6
/* 80799D5C  38 80 07 D0 */	li r4, 0x7d0
/* 80799D60  38 A0 00 01 */	li r5, 1
/* 80799D64  38 C0 01 90 */	li r6, 0x190
/* 80799D68  4B AD 68 A1 */	bl cLib_addCalcAngleS2__FPssss
lbl_80799D6C:
/* 80799D6C  38 7C 08 30 */	addi r3, r28, 0x830
/* 80799D70  FC 20 F0 90 */	fmr f1, f30
/* 80799D74  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80799D78  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 80799D7C  4B AD 5C C1 */	bl cLib_addCalc2__FPffff
/* 80799D80  7F C3 F3 78 */	mr r3, r30
lbl_80799D84:
/* 80799D84  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80799D88  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80799D8C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80799D90  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80799D94  39 61 00 50 */	addi r11, r1, 0x50
/* 80799D98  4B BC 84 89 */	bl _restgpr_27
/* 80799D9C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80799DA0  7C 08 03 A6 */	mtlr r0
/* 80799DA4  38 21 00 70 */	addi r1, r1, 0x70
/* 80799DA8  4E 80 00 20 */	blr 
