lbl_80134838:
/* 80134838  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8013483C  7C 08 02 A6 */	mflr r0
/* 80134840  90 01 00 54 */	stw r0, 0x54(r1)
/* 80134844  39 61 00 50 */	addi r11, r1, 0x50
/* 80134848  48 22 D9 95 */	bl _savegpr_29
/* 8013484C  7C 7D 1B 78 */	mr r29, r3
/* 80134850  83 E3 28 10 */	lwz r31, 0x2810(r3)
/* 80134854  3B DD 1F D0 */	addi r30, r29, 0x1fd0
/* 80134858  A8 63 30 08 */	lha r3, 0x3008(r3)
/* 8013485C  38 03 FF FF */	addi r0, r3, -1
/* 80134860  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 80134864  A8 9D 30 08 */	lha r4, 0x3008(r29)
/* 80134868  7C 80 07 35 */	extsh. r0, r4
/* 8013486C  40 80 01 74 */	bge lbl_801349E0
/* 80134870  28 1F 00 00 */	cmplwi r31, 0
/* 80134874  41 82 00 3C */	beq lbl_801348B0
/* 80134878  88 1F 05 68 */	lbz r0, 0x568(r31)
/* 8013487C  7C 00 07 75 */	extsb. r0, r0
/* 80134880  40 80 00 0C */	bge lbl_8013488C
/* 80134884  38 00 00 00 */	li r0, 0
/* 80134888  48 00 00 08 */	b lbl_80134890
lbl_8013488C:
/* 8013488C  38 1F 05 38 */	addi r0, r31, 0x538
lbl_80134890:
/* 80134890  28 00 00 00 */	cmplwi r0, 0
/* 80134894  41 82 00 1C */	beq lbl_801348B0
/* 80134898  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlPoint_c0@ha /* 0x8038F7DC@ha */
/* 8013489C  38 63 F7 DC */	addi r3, r3, m__21daAlinkHIO_wlPoint_c0@l /* 0x8038F7DC@l */
/* 801348A0  A8 03 00 50 */	lha r0, 0x50(r3)
/* 801348A4  7C 00 00 D0 */	neg r0, r0
/* 801348A8  7C 04 00 00 */	cmpw r4, r0
/* 801348AC  40 80 00 10 */	bge lbl_801348BC
lbl_801348B0:
/* 801348B0  7F A3 EB 78 */	mr r3, r29
/* 801348B4  4B FF 88 F5 */	bl procWolfWaitInit__9daAlink_cFv
/* 801348B8  48 00 01 20 */	b lbl_801349D8
lbl_801348BC:
/* 801348BC  80 1D 31 98 */	lwz r0, 0x3198(r29)
/* 801348C0  2C 00 00 00 */	cmpwi r0, 0
/* 801348C4  40 82 00 10 */	bne lbl_801348D4
/* 801348C8  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 801348CC  64 00 00 02 */	oris r0, r0, 2
/* 801348D0  90 1D 05 80 */	stw r0, 0x580(r29)
lbl_801348D4:
/* 801348D4  88 1F 05 68 */	lbz r0, 0x568(r31)
/* 801348D8  7C 00 07 75 */	extsb. r0, r0
/* 801348DC  40 80 00 0C */	bge lbl_801348E8
/* 801348E0  38 60 00 00 */	li r3, 0
/* 801348E4  48 00 00 08 */	b lbl_801348EC
lbl_801348E8:
/* 801348E8  38 7F 05 38 */	addi r3, r31, 0x538
lbl_801348EC:
/* 801348EC  C0 03 00 00 */	lfs f0, 0(r3)
/* 801348F0  D0 1D 37 38 */	stfs f0, 0x3738(r29)
/* 801348F4  C0 03 00 04 */	lfs f0, 4(r3)
/* 801348F8  D0 1D 37 3C */	stfs f0, 0x373c(r29)
/* 801348FC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80134900  D0 1D 37 40 */	stfs f0, 0x3740(r29)
/* 80134904  7F A3 EB 78 */	mr r3, r29
/* 80134908  38 80 00 93 */	li r4, 0x93
/* 8013490C  4B F7 E9 45 */	bl setDoStatus__9daAlink_cFUc
/* 80134910  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80134914  38 9D 37 38 */	addi r4, r29, 0x3738
/* 80134918  48 13 C2 ED */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8013491C  7C 64 1B 78 */	mr r4, r3
/* 80134920  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80134924  38 A0 00 02 */	li r5, 2
/* 80134928  38 C0 20 00 */	li r6, 0x2000
/* 8013492C  38 E0 08 00 */	li r7, 0x800
/* 80134930  48 13 BC 11 */	bl cLib_addCalcAngleS__FPsssss
/* 80134934  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80134938  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8013493C  88 1D 2F 8D */	lbz r0, 0x2f8d(r29)
/* 80134940  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80134944  41 82 00 0C */	beq lbl_80134950
/* 80134948  38 00 00 01 */	li r0, 1
/* 8013494C  B0 1D 30 12 */	sth r0, 0x3012(r29)
lbl_80134950:
/* 80134950  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 80134954  2C 00 00 00 */	cmpwi r0, 0
/* 80134958  41 82 00 48 */	beq lbl_801349A0
/* 8013495C  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 80134960  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80134964  40 82 00 2C */	bne lbl_80134990
/* 80134968  7F C3 F3 78 */	mr r3, r30
/* 8013496C  48 02 9B 61 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80134970  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80134974  40 82 00 1C */	bne lbl_80134990
/* 80134978  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8013497C  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlPoint_c0@ha /* 0x8038F7DC@ha */
/* 80134980  38 63 F7 DC */	addi r3, r3, m__21daAlinkHIO_wlPoint_c0@l /* 0x8038F7DC@l */
/* 80134984  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80134988  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013498C  40 81 00 14 */	ble lbl_801349A0
lbl_80134990:
/* 80134990  7F A3 EB 78 */	mr r3, r29
/* 80134994  7F E4 FB 78 */	mr r4, r31
/* 80134998  4B FF F6 69 */	bl procWolfTagJumpInit__9daAlink_cFP10fopAc_ac_c
/* 8013499C  48 00 00 3C */	b lbl_801349D8
lbl_801349A0:
/* 801349A0  7F C3 F3 78 */	mr r3, r30
/* 801349A4  48 02 9B 29 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801349A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801349AC  41 82 00 2C */	beq lbl_801349D8
/* 801349B0  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 801349B4  60 00 01 00 */	ori r0, r0, 0x100
/* 801349B8  90 1D 31 A0 */	stw r0, 0x31a0(r29)
/* 801349BC  7F A3 EB 78 */	mr r3, r29
/* 801349C0  38 80 00 31 */	li r4, 0x31
/* 801349C4  3C A0 80 39 */	lis r5, m__21daAlinkHIO_wlPoint_c0@ha /* 0x8038F7DC@ha */
/* 801349C8  38 A5 F7 DC */	addi r5, r5, m__21daAlinkHIO_wlPoint_c0@l /* 0x8038F7DC@l */
/* 801349CC  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 801349D0  C0 45 00 58 */	lfs f2, 0x58(r5)
/* 801349D4  4B FF 4D 05 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
lbl_801349D8:
/* 801349D8  38 60 00 01 */	li r3, 1
/* 801349DC  48 00 03 C4 */	b lbl_80134DA0
lbl_801349E0:
/* 801349E0  38 00 00 04 */	li r0, 4
/* 801349E4  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 801349E8  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 801349EC  2C 00 00 00 */	cmpwi r0, 0
/* 801349F0  41 82 00 1C */	beq lbl_80134A0C
/* 801349F4  C0 3D 34 78 */	lfs f1, 0x3478(r29)
/* 801349F8  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 801349FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80134A00  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80134A04  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80134A08  D0 1D 34 78 */	stfs f0, 0x3478(r29)
lbl_80134A0C:
/* 80134A0C  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80134A10  FC 20 00 50 */	fneg f1, f0
/* 80134A14  C0 5D 33 98 */	lfs f2, 0x3398(r29)
/* 80134A18  48 13 2C 5D */	bl cM_atan2s__Fff
/* 80134A1C  7C 60 07 34 */	extsh r0, r3
/* 80134A20  7C 00 0E 70 */	srawi r0, r0, 1
/* 80134A24  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 80134A28  7F A3 EB 78 */	mr r3, r29
/* 80134A2C  38 80 00 04 */	li r4, 4
/* 80134A30  4B FF 3D DD */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80134A34  2C 03 00 00 */	cmpwi r3, 0
/* 80134A38  41 82 00 38 */	beq lbl_80134A70
/* 80134A3C  7F C3 F3 78 */	mr r3, r30
/* 80134A40  48 02 9A 8D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80134A44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80134A48  41 82 00 28 */	beq lbl_80134A70
/* 80134A4C  38 00 00 0C */	li r0, 0xc
/* 80134A50  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 80134A54  7F A3 EB 78 */	mr r3, r29
/* 80134A58  38 80 00 05 */	li r4, 5
/* 80134A5C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80134A60  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 80134A64  38 A5 F0 A8 */	addi r5, r5, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 80134A68  C0 45 00 34 */	lfs f2, 0x34(r5)
/* 80134A6C  4B FF 4C 6D */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
lbl_80134A70:
/* 80134A70  A8 1D 30 08 */	lha r0, 0x3008(r29)
/* 80134A74  2C 00 00 00 */	cmpwi r0, 0
/* 80134A78  40 82 03 24 */	bne lbl_80134D9C
/* 80134A7C  38 61 00 24 */	addi r3, r1, 0x24
/* 80134A80  38 9D 37 C8 */	addi r4, r29, 0x37c8
/* 80134A84  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80134A88  48 13 20 AD */	bl __mi__4cXyzCFRC3Vec
/* 80134A8C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80134A90  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80134A94  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80134A98  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80134A9C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80134AA0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80134AA4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80134AA8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80134AAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80134AB0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80134AB4  38 61 00 0C */	addi r3, r1, 0xc
/* 80134AB8  48 21 26 81 */	bl PSVECSquareMag
/* 80134ABC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80134AC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80134AC4  40 81 00 58 */	ble lbl_80134B1C
/* 80134AC8  FC 00 08 34 */	frsqrte f0, f1
/* 80134ACC  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80134AD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80134AD4  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80134AD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80134ADC  FC 01 00 32 */	fmul f0, f1, f0
/* 80134AE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80134AE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80134AE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80134AEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80134AF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80134AF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80134AF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80134AFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80134B00  FC 00 00 32 */	fmul f0, f0, f0
/* 80134B04  FC 01 00 32 */	fmul f0, f1, f0
/* 80134B08  FC 03 00 28 */	fsub f0, f3, f0
/* 80134B0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80134B10  FC 21 00 32 */	fmul f1, f1, f0
/* 80134B14  FC 20 08 18 */	frsp f1, f1
/* 80134B18  48 00 00 88 */	b lbl_80134BA0
lbl_80134B1C:
/* 80134B1C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80134B20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80134B24  40 80 00 10 */	bge lbl_80134B34
/* 80134B28  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80134B2C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80134B30  48 00 00 70 */	b lbl_80134BA0
lbl_80134B34:
/* 80134B34  D0 21 00 08 */	stfs f1, 8(r1)
/* 80134B38  80 81 00 08 */	lwz r4, 8(r1)
/* 80134B3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80134B40  3C 00 7F 80 */	lis r0, 0x7f80
/* 80134B44  7C 03 00 00 */	cmpw r3, r0
/* 80134B48  41 82 00 14 */	beq lbl_80134B5C
/* 80134B4C  40 80 00 40 */	bge lbl_80134B8C
/* 80134B50  2C 03 00 00 */	cmpwi r3, 0
/* 80134B54  41 82 00 20 */	beq lbl_80134B74
/* 80134B58  48 00 00 34 */	b lbl_80134B8C
lbl_80134B5C:
/* 80134B5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80134B60  41 82 00 0C */	beq lbl_80134B6C
/* 80134B64  38 00 00 01 */	li r0, 1
/* 80134B68  48 00 00 28 */	b lbl_80134B90
lbl_80134B6C:
/* 80134B6C  38 00 00 02 */	li r0, 2
/* 80134B70  48 00 00 20 */	b lbl_80134B90
lbl_80134B74:
/* 80134B74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80134B78  41 82 00 0C */	beq lbl_80134B84
/* 80134B7C  38 00 00 05 */	li r0, 5
/* 80134B80  48 00 00 10 */	b lbl_80134B90
lbl_80134B84:
/* 80134B84  38 00 00 03 */	li r0, 3
/* 80134B88  48 00 00 08 */	b lbl_80134B90
lbl_80134B8C:
/* 80134B8C  38 00 00 04 */	li r0, 4
lbl_80134B90:
/* 80134B90  2C 00 00 01 */	cmpwi r0, 1
/* 80134B94  40 82 00 0C */	bne lbl_80134BA0
/* 80134B98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80134B9C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80134BA0:
/* 80134BA0  C0 42 95 58 */	lfs f2, lit_24323(r2)
/* 80134BA4  C0 1D 34 80 */	lfs f0, 0x3480(r29)
/* 80134BA8  EC 02 00 2A */	fadds f0, f2, f0
/* 80134BAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80134BB0  40 80 01 D4 */	bge lbl_80134D84
/* 80134BB4  80 1D 31 98 */	lwz r0, 0x3198(r29)
/* 80134BB8  2C 00 00 00 */	cmpwi r0, 0
/* 80134BBC  40 82 00 1C */	bne lbl_80134BD8
/* 80134BC0  C0 1D 37 C8 */	lfs f0, 0x37c8(r29)
/* 80134BC4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80134BC8  C0 1D 37 CC */	lfs f0, 0x37cc(r29)
/* 80134BCC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80134BD0  C0 1D 37 D0 */	lfs f0, 0x37d0(r29)
/* 80134BD4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_80134BD8:
/* 80134BD8  28 1F 00 00 */	cmplwi r31, 0
/* 80134BDC  41 82 01 28 */	beq lbl_80134D04
/* 80134BE0  88 1F 05 68 */	lbz r0, 0x568(r31)
/* 80134BE4  7C 00 07 75 */	extsb. r0, r0
/* 80134BE8  40 80 00 0C */	bge lbl_80134BF4
/* 80134BEC  38 00 00 00 */	li r0, 0
/* 80134BF0  48 00 00 08 */	b lbl_80134BF8
lbl_80134BF4:
/* 80134BF4  38 1F 05 38 */	addi r0, r31, 0x538
lbl_80134BF8:
/* 80134BF8  28 00 00 00 */	cmplwi r0, 0
/* 80134BFC  41 82 00 F8 */	beq lbl_80134CF4
/* 80134C00  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 80134C04  64 00 00 02 */	oris r0, r0, 2
/* 80134C08  90 1D 05 80 */	stw r0, 0x580(r29)
/* 80134C0C  88 1F 05 68 */	lbz r0, 0x568(r31)
/* 80134C10  7C 00 07 75 */	extsb. r0, r0
/* 80134C14  40 80 00 0C */	bge lbl_80134C20
/* 80134C18  38 60 00 00 */	li r3, 0
/* 80134C1C  48 00 00 08 */	b lbl_80134C24
lbl_80134C20:
/* 80134C20  38 7F 05 38 */	addi r3, r31, 0x538
lbl_80134C24:
/* 80134C24  C0 03 00 00 */	lfs f0, 0(r3)
/* 80134C28  D0 1D 37 38 */	stfs f0, 0x3738(r29)
/* 80134C2C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80134C30  D0 1D 37 3C */	stfs f0, 0x373c(r29)
/* 80134C34  C0 03 00 08 */	lfs f0, 8(r3)
/* 80134C38  D0 1D 37 40 */	stfs f0, 0x3740(r29)
/* 80134C3C  A8 1D 30 0A */	lha r0, 0x300a(r29)
/* 80134C40  2C 00 00 00 */	cmpwi r0, 0
/* 80134C44  41 82 00 A0 */	beq lbl_80134CE4
/* 80134C48  38 00 00 50 */	li r0, 0x50
/* 80134C4C  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 80134C50  7F A3 EB 78 */	mr r3, r29
/* 80134C54  38 80 00 35 */	li r4, 0x35
/* 80134C58  3C A0 80 39 */	lis r5, m__21daAlinkHIO_wlPoint_c0@ha /* 0x8038F7DC@ha */
/* 80134C5C  38 A5 F7 DC */	addi r5, r5, m__21daAlinkHIO_wlPoint_c0@l /* 0x8038F7DC@l */
/* 80134C60  38 A5 00 28 */	addi r5, r5, 0x28
/* 80134C64  4B FF 4B E5 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80134C68  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80134C6C  D0 3D 33 98 */	stfs f1, 0x3398(r29)
/* 80134C70  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80134C74  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80134C78  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80134C7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80134C80  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80134C84  C0 03 00 08 */	lfs f0, 8(r3)
/* 80134C88  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80134C8C  7F A3 EB 78 */	mr r3, r29
/* 80134C90  C0 5D 05 34 */	lfs f2, 0x534(r29)
/* 80134C94  38 80 00 00 */	li r4, 0
/* 80134C98  4B F8 6A D9 */	bl setSpecialGravity__9daAlink_cFffi
/* 80134C9C  38 00 00 04 */	li r0, 4
/* 80134CA0  98 1D 2F 9D */	stb r0, 0x2f9d(r29)
/* 80134CA4  7F A3 EB 78 */	mr r3, r29
/* 80134CA8  38 80 00 04 */	li r4, 4
/* 80134CAC  4B FE C5 15 */	bl setFootEffectProcType__9daAlink_cFi
/* 80134CB0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80134CB4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80134CB8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80134CBC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80134CC0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80134CC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80134CC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80134CCC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80134CD0  38 80 00 02 */	li r4, 2
/* 80134CD4  38 A0 00 0F */	li r5, 0xf
/* 80134CD8  38 C1 00 18 */	addi r6, r1, 0x18
/* 80134CDC  4B F3 AD 49 */	bl StartShock__12dVibration_cFii4cXyz
/* 80134CE0  48 00 00 BC */	b lbl_80134D9C
lbl_80134CE4:
/* 80134CE4  7F A3 EB 78 */	mr r3, r29
/* 80134CE8  7F E4 FB 78 */	mr r4, r31
/* 80134CEC  48 00 00 CD */	bl procWolfTagJumpLandInit__9daAlink_cFP10fopAc_ac_c
/* 80134CF0  48 00 00 AC */	b lbl_80134D9C
lbl_80134CF4:
/* 80134CF4  7F A3 EB 78 */	mr r3, r29
/* 80134CF8  38 80 00 00 */	li r4, 0
/* 80134CFC  48 00 00 BD */	bl procWolfTagJumpLandInit__9daAlink_cFP10fopAc_ac_c
/* 80134D00  48 00 00 9C */	b lbl_80134D9C
lbl_80134D04:
/* 80134D04  80 1D 31 98 */	lwz r0, 0x3198(r29)
/* 80134D08  2C 00 00 00 */	cmpwi r0, 0
/* 80134D0C  41 82 00 20 */	beq lbl_80134D2C
/* 80134D10  7F A3 EB 78 */	mr r3, r29
/* 80134D14  38 80 00 02 */	li r4, 2
/* 80134D18  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 80134D1C  38 A5 F0 A8 */	addi r5, r5, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 80134D20  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 80134D24  4B FF A0 AD */	bl procWolfFallInit__9daAlink_cFif
/* 80134D28  48 00 00 74 */	b lbl_80134D9C
lbl_80134D2C:
/* 80134D2C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80134D30  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80134D34  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80134D38  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80134D3C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80134D40  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80134D44  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 80134D48  EC 02 00 32 */	fmuls f0, f2, f0
/* 80134D4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80134D50  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80134D54  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80134D58  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80134D5C  7C 63 02 14 */	add r3, r3, r0
/* 80134D60  C0 03 00 04 */	lfs f0, 4(r3)
/* 80134D64  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80134D68  EC 02 00 32 */	fmuls f0, f2, f0
/* 80134D6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80134D70  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80134D74  7F A3 EB 78 */	mr r3, r29
/* 80134D78  38 80 00 00 */	li r4, 0
/* 80134D7C  48 00 00 3D */	bl procWolfTagJumpLandInit__9daAlink_cFP10fopAc_ac_c
/* 80134D80  48 00 00 1C */	b lbl_80134D9C
lbl_80134D84:
/* 80134D84  7F A3 EB 78 */	mr r3, r29
/* 80134D88  38 80 00 02 */	li r4, 2
/* 80134D8C  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 80134D90  38 A5 F0 A8 */	addi r5, r5, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 80134D94  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 80134D98  4B FF A0 39 */	bl procWolfFallInit__9daAlink_cFif
lbl_80134D9C:
/* 80134D9C  38 60 00 01 */	li r3, 1
lbl_80134DA0:
/* 80134DA0  39 61 00 50 */	addi r11, r1, 0x50
/* 80134DA4  48 22 D4 85 */	bl _restgpr_29
/* 80134DA8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80134DAC  7C 08 03 A6 */	mtlr r0
/* 80134DB0  38 21 00 50 */	addi r1, r1, 0x50
/* 80134DB4  4E 80 00 20 */	blr 
