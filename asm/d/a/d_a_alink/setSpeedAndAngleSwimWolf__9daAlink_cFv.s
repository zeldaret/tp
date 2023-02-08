lbl_80138000:
/* 80138000  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80138004  7C 08 02 A6 */	mflr r0
/* 80138008  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013800C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80138010  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80138014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138018  93 C1 00 08 */	stw r30, 8(r1)
/* 8013801C  7C 7F 1B 78 */	mr r31, r3
/* 80138020  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80138024  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80138028  41 82 00 18 */	beq lbl_80138040
/* 8013802C  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 80138030  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 80138034  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80138038  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 8013803C  48 00 00 14 */	b lbl_80138050
lbl_80138040:
/* 80138040  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 80138044  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 80138048  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 8013804C  D0 1F 05 94 */	stfs f0, 0x594(r31)
lbl_80138050:
/* 80138050  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 80138054  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80138058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013805C  40 81 00 5C */	ble lbl_801380B8
/* 80138060  AB DF 04 DE */	lha r30, 0x4de(r31)
/* 80138064  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80138068  A8 9F 2F E2 */	lha r4, 0x2fe2(r31)
/* 8013806C  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 80138070  38 E5 F8 B4 */	addi r7, r5, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 80138074  A8 A7 00 3C */	lha r5, 0x3c(r7)
/* 80138078  A8 C7 00 40 */	lha r6, 0x40(r7)
/* 8013807C  A8 E7 00 3E */	lha r7, 0x3e(r7)
/* 80138080  48 13 84 C1 */	bl cLib_addCalcAngleS__FPsssss
/* 80138084  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80138088  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8013808C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80138090  7C 1E 20 50 */	subf r0, r30, r4
/* 80138094  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80138098  7C 63 02 14 */	add r3, r3, r0
/* 8013809C  C0 43 00 04 */	lfs f2, 4(r3)
/* 801380A0  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 801380A4  C0 1F 33 A8 */	lfs f0, 0x33a8(r31)
/* 801380A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801380AC  EF E0 00 B2 */	fmuls f31, f0, f2
/* 801380B0  B0 9F 04 E6 */	sth r4, 0x4e6(r31)
/* 801380B4  48 00 00 08 */	b lbl_801380BC
lbl_801380B8:
/* 801380B8  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
lbl_801380BC:
/* 801380BC  7F E3 FB 78 */	mr r3, r31
/* 801380C0  38 80 00 39 */	li r4, 0x39
/* 801380C4  4B FF 07 49 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 801380C8  2C 03 00 00 */	cmpwi r3, 0
/* 801380CC  41 82 00 08 */	beq lbl_801380D4
/* 801380D0  C3 E2 92 C4 */	lfs f31, lit_6109(r2)
lbl_801380D4:
/* 801380D4  7F E3 FB 78 */	mr r3, r31
/* 801380D8  4B F7 B4 29 */	bl checkAttentionState__9daAlink_cFv
/* 801380DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801380E0  41 82 00 54 */	beq lbl_80138134
/* 801380E4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 801380E8  28 00 01 28 */	cmplwi r0, 0x128
/* 801380EC  40 82 00 48 */	bne lbl_80138134
/* 801380F0  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 801380F4  28 00 00 00 */	cmplwi r0, 0
/* 801380F8  41 82 00 14 */	beq lbl_8013810C
/* 801380FC  7F E3 FB 78 */	mr r3, r31
/* 80138100  38 80 00 00 */	li r4, 0
/* 80138104  4B F7 B6 31 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 80138108  48 00 00 24 */	b lbl_8013812C
lbl_8013810C:
/* 8013810C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80138110  A8 9F 2F E4 */	lha r4, 0x2fe4(r31)
/* 80138114  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 80138118  38 E5 F8 B4 */	addi r7, r5, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 8013811C  A8 A7 00 42 */	lha r5, 0x42(r7)
/* 80138120  A8 C7 00 46 */	lha r6, 0x46(r7)
/* 80138124  A8 E7 00 44 */	lha r7, 0x44(r7)
/* 80138128  48 13 84 19 */	bl cLib_addCalcAngleS__FPsssss
lbl_8013812C:
/* 8013812C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80138130  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_80138134:
/* 80138134  7F E3 FB 78 */	mr r3, r31
/* 80138138  FC 20 F8 90 */	fmr f1, f31
/* 8013813C  3C 80 80 39 */	lis r4, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 80138140  38 84 F8 B4 */	addi r4, r4, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 80138144  C0 44 00 54 */	lfs f2, 0x54(r4)
/* 80138148  4B F7 B7 DD */	bl setNormalSpeedF__9daAlink_cFff
/* 8013814C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80138150  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80138154  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80138158  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8013815C  41 82 00 0C */	beq lbl_80138168
/* 80138160  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80138164  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_80138168:
/* 80138168  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8013816C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80138170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138174  83 C1 00 08 */	lwz r30, 8(r1)
/* 80138178  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013817C  7C 08 03 A6 */	mtlr r0
/* 80138180  38 21 00 20 */	addi r1, r1, 0x20
/* 80138184  4E 80 00 20 */	blr 
