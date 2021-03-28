lbl_807AA784:
/* 807AA784  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807AA788  7C 08 02 A6 */	mflr r0
/* 807AA78C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807AA790  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 807AA794  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 807AA798  39 61 00 20 */	addi r11, r1, 0x20
/* 807AA79C  4B BB 7A 40 */	b _savegpr_29
/* 807AA7A0  7C 7F 1B 78 */	mr r31, r3
/* 807AA7A4  3C 80 80 7B */	lis r4, lit_3909@ha
/* 807AA7A8  3B C4 FD 2C */	addi r30, r4, lit_3909@l
/* 807AA7AC  3B A0 08 00 */	li r29, 0x800
/* 807AA7B0  C3 FE 01 08 */	lfs f31, 0x108(r30)
/* 807AA7B4  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807AA7B8  2C 00 00 01 */	cmpwi r0, 1
/* 807AA7BC  41 82 00 48 */	beq lbl_807AA804
/* 807AA7C0  40 80 01 00 */	bge lbl_807AA8C0
/* 807AA7C4  2C 00 00 00 */	cmpwi r0, 0
/* 807AA7C8  40 80 00 08 */	bge lbl_807AA7D0
/* 807AA7CC  48 00 00 F4 */	b lbl_807AA8C0
lbl_807AA7D0:
/* 807AA7D0  A8 1F 06 EA */	lha r0, 0x6ea(r31)
/* 807AA7D4  2C 00 00 00 */	cmpwi r0, 0
/* 807AA7D8  40 82 00 E8 */	bne lbl_807AA8C0
/* 807AA7DC  38 80 00 0B */	li r4, 0xb
/* 807AA7E0  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 807AA7E4  38 A0 00 00 */	li r5, 0
/* 807AA7E8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807AA7EC  4B FF CC 75 */	bl bckSet__8daE_SW_cFifUcf
/* 807AA7F0  38 00 00 01 */	li r0, 1
/* 807AA7F4  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 807AA7F8  7F E3 FB 78 */	mr r3, r31
/* 807AA7FC  4B FF D2 C5 */	bl setHideEffect__8daE_SW_cFv
/* 807AA800  48 00 00 C0 */	b lbl_807AA8C0
lbl_807AA804:
/* 807AA804  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AA808  38 63 00 0C */	addi r3, r3, 0xc
/* 807AA80C  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 807AA810  4B B7 DC 1C */	b checkPass__12J3DFrameCtrlFf
/* 807AA814  2C 03 00 00 */	cmpwi r3, 0
/* 807AA818  41 82 00 30 */	beq lbl_807AA848
/* 807AA81C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035D@ha */
/* 807AA820  38 03 03 5D */	addi r0, r3, 0x035D /* 0x0007035D@l */
/* 807AA824  90 01 00 08 */	stw r0, 8(r1)
/* 807AA828  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807AA82C  38 81 00 08 */	addi r4, r1, 8
/* 807AA830  88 BF 06 E9 */	lbz r5, 0x6e9(r31)
/* 807AA834  38 C0 FF FF */	li r6, -1
/* 807AA838  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 807AA83C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807AA840  7D 89 03 A6 */	mtctr r12
/* 807AA844  4E 80 04 21 */	bctrl 
lbl_807AA848:
/* 807AA848  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AA84C  38 63 00 0C */	addi r3, r3, 0xc
/* 807AA850  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807AA854  4B B7 DB D8 */	b checkPass__12J3DFrameCtrlFf
/* 807AA858  2C 03 00 00 */	cmpwi r3, 0
/* 807AA85C  41 82 00 0C */	beq lbl_807AA868
/* 807AA860  38 00 00 01 */	li r0, 1
/* 807AA864  98 1F 06 E4 */	stb r0, 0x6e4(r31)
lbl_807AA868:
/* 807AA868  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AA86C  38 80 00 01 */	li r4, 1
/* 807AA870  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807AA874  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807AA878  40 82 00 18 */	bne lbl_807AA890
/* 807AA87C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807AA880  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807AA884  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807AA888  41 82 00 08 */	beq lbl_807AA890
/* 807AA88C  38 80 00 00 */	li r4, 0
lbl_807AA890:
/* 807AA890  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807AA894  41 82 00 24 */	beq lbl_807AA8B8
/* 807AA898  38 00 00 01 */	li r0, 1
/* 807AA89C  98 1F 06 E5 */	stb r0, 0x6e5(r31)
/* 807AA8A0  7F E3 FB 78 */	mr r3, r31
/* 807AA8A4  38 80 00 00 */	li r4, 0
/* 807AA8A8  38 A0 00 00 */	li r5, 0
/* 807AA8AC  4B FF D2 B9 */	bl setActionMode__8daE_SW_cFss
/* 807AA8B0  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 807AA8B4  D0 1F 06 D8 */	stfs f0, 0x6d8(r31)
lbl_807AA8B8:
/* 807AA8B8  3B A0 00 00 */	li r29, 0
/* 807AA8BC  C3 FE 00 04 */	lfs f31, 4(r30)
lbl_807AA8C0:
/* 807AA8C0  38 7F 05 2C */	addi r3, r31, 0x52c
/* 807AA8C4  FC 20 F8 90 */	fmr f1, f31
/* 807AA8C8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807AA8CC  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 807AA8D0  4B AC 51 6C */	b cLib_addCalc2__FPffff
/* 807AA8D4  38 7F 04 DE */	addi r3, r31, 0x4de
/* 807AA8D8  A8 9F 06 9E */	lha r4, 0x69e(r31)
/* 807AA8DC  38 A0 00 04 */	li r5, 4
/* 807AA8E0  7F A6 EB 78 */	mr r6, r29
/* 807AA8E4  4B AC 5D 24 */	b cLib_addCalcAngleS2__FPssss
/* 807AA8E8  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 807AA8EC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 807AA8F0  38 A0 00 08 */	li r5, 8
/* 807AA8F4  38 C0 04 00 */	li r6, 0x400
/* 807AA8F8  4B AC 5D 10 */	b cLib_addCalcAngleS2__FPssss
/* 807AA8FC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807AA900  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807AA904  39 61 00 20 */	addi r11, r1, 0x20
/* 807AA908  4B BB 79 20 */	b _restgpr_29
/* 807AA90C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807AA910  7C 08 03 A6 */	mtlr r0
/* 807AA914  38 21 00 30 */	addi r1, r1, 0x30
/* 807AA918  4E 80 00 20 */	blr 
