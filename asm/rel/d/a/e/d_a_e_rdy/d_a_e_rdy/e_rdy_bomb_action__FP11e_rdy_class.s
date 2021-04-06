lbl_8077089C:
/* 8077089C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807708A0  7C 08 02 A6 */	mflr r0
/* 807708A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 807708A8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807708AC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807708B0  39 61 00 40 */	addi r11, r1, 0x40
/* 807708B4  4B BF 19 25 */	bl _savegpr_28
/* 807708B8  7C 7C 1B 78 */	mr r28, r3
/* 807708BC  3C 80 80 78 */	lis r4, lit_4018@ha /* 0x80779DFC@ha */
/* 807708C0  3B E4 9D FC */	addi r31, r4, lit_4018@l /* 0x80779DFC@l */
/* 807708C4  4B FF C8 75 */	bl bomb_check__FP11e_rdy_class
/* 807708C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 807708CC  40 82 00 18 */	bne lbl_807708E4
/* 807708D0  38 00 00 03 */	li r0, 3
/* 807708D4  B0 1C 0A 42 */	sth r0, 0xa42(r28)
/* 807708D8  38 00 00 00 */	li r0, 0
/* 807708DC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807708E0  48 00 03 F8 */	b lbl_80770CD8
lbl_807708E4:
/* 807708E4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 807708E8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807708EC  EC 21 00 28 */	fsubs f1, f1, f0
/* 807708F0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807708F4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807708F8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807708FC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80770900  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80770904  4B AF 6D 71 */	bl cM_atan2s__Fff
/* 80770908  7C 7D 1B 78 */	mr r29, r3
/* 8077090C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80770910  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 80770914  28 00 00 06 */	cmplwi r0, 6
/* 80770918  41 81 03 78 */	bgt lbl_80770C90
/* 8077091C  3C 60 80 78 */	lis r3, lit_6169@ha /* 0x8077A230@ha */
/* 80770920  38 63 A2 30 */	addi r3, r3, lit_6169@l /* 0x8077A230@l */
/* 80770924  54 00 10 3A */	slwi r0, r0, 2
/* 80770928  7C 03 00 2E */	lwzx r0, r3, r0
/* 8077092C  7C 09 03 A6 */	mtctr r0
/* 80770930  4E 80 04 20 */	bctr 
lbl_80770934:
/* 80770934  38 00 00 01 */	li r0, 1
/* 80770938  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8077093C  7F 83 E3 78 */	mr r3, r28
/* 80770940  38 80 00 4C */	li r4, 0x4c
/* 80770944  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80770948  38 A0 00 02 */	li r5, 2
/* 8077094C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80770950  4B FF B5 31 */	bl anm_init__FP11e_rdy_classifUcf
/* 80770954  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80770958  4B AF 6F FD */	bl cM_rndF__Ff
/* 8077095C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80770960  EC 00 08 2A */	fadds f0, f0, f1
/* 80770964  FC 00 00 1E */	fctiwz f0, f0
/* 80770968  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8077096C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80770970  B0 1C 0A 62 */	sth r0, 0xa62(r28)
lbl_80770974:
/* 80770974  A8 1C 0A 62 */	lha r0, 0xa62(r28)
/* 80770978  2C 00 00 00 */	cmpwi r0, 0
/* 8077097C  40 82 03 14 */	bne lbl_80770C90
/* 80770980  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80770984  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80770988  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077098C  40 80 03 04 */	bge lbl_80770C90
/* 80770990  38 00 00 02 */	li r0, 2
/* 80770994  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80770998  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8077099C  4B AF 6F F1 */	bl cM_rndFX__Ff
/* 807709A0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807709A4  EC 40 08 2A */	fadds f2, f0, f1
/* 807709A8  7F 83 E3 78 */	mr r3, r28
/* 807709AC  38 80 00 3E */	li r4, 0x3e
/* 807709B0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807709B4  38 A0 00 02 */	li r5, 2
/* 807709B8  4B FF B4 C9 */	bl anm_init__FP11e_rdy_classifUcf
/* 807709BC  48 00 02 D4 */	b lbl_80770C90
lbl_807709C0:
/* 807709C0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807709C4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807709C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807709CC  40 80 00 74 */	bge lbl_80770A40
/* 807709D0  7F C3 F3 78 */	mr r3, r30
/* 807709D4  4B 8C 15 C1 */	bl checkStateCarry__7dBomb_cFv
/* 807709D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807709DC  40 82 00 64 */	bne lbl_80770A40
/* 807709E0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807709E4  EC 20 00 32 */	fmuls f1, f0, f0
/* 807709E8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807709EC  EC 00 00 32 */	fmuls f0, f0, f0
/* 807709F0  EC 21 00 2A */	fadds f1, f1, f0
/* 807709F4  FC 00 F8 90 */	fmr f0, f31
/* 807709F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807709FC  40 81 00 0C */	ble lbl_80770A08
/* 80770A00  FC 00 08 34 */	frsqrte f0, f1
/* 80770A04  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80770A08:
/* 80770A08  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80770A0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80770A10  40 80 00 30 */	bge lbl_80770A40
/* 80770A14  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 80770A18  A8 1C 0A 4C */	lha r0, 0xa4c(r28)
/* 80770A1C  7C 03 00 50 */	subf r0, r3, r0
/* 80770A20  7C 00 07 34 */	extsh r0, r0
/* 80770A24  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80770A28  40 80 00 18 */	bge lbl_80770A40
/* 80770A2C  2C 00 C0 00 */	cmpwi r0, -16384
/* 80770A30  40 81 00 10 */	ble lbl_80770A40
/* 80770A34  38 00 00 05 */	li r0, 5
/* 80770A38  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80770A3C  48 00 02 54 */	b lbl_80770C90
lbl_80770A40:
/* 80770A40  3F BD 00 01 */	addis r29, r29, 1
/* 80770A44  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 80770A48  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 80770A4C  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 80770A50  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80770A54  EC 20 00 32 */	fmuls f1, f0, f0
/* 80770A58  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80770A5C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80770A60  EC 21 00 2A */	fadds f1, f1, f0
/* 80770A64  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80770A68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80770A6C  3B BD 80 00 */	addi r29, r29, -32768
/* 80770A70  40 81 00 0C */	ble lbl_80770A7C
/* 80770A74  FC 00 08 34 */	frsqrte f0, f1
/* 80770A78  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80770A7C:
/* 80770A7C  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80770A80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80770A84  40 81 02 0C */	ble lbl_80770C90
/* 80770A88  38 00 00 03 */	li r0, 3
/* 80770A8C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80770A90  7F 83 E3 78 */	mr r3, r28
/* 80770A94  38 80 00 4C */	li r4, 0x4c
/* 80770A98  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80770A9C  38 A0 00 02 */	li r5, 2
/* 80770AA0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80770AA4  4B FF B3 DD */	bl anm_init__FP11e_rdy_classifUcf
/* 80770AA8  48 00 01 E8 */	b lbl_80770C90
lbl_80770AAC:
/* 80770AAC  AB BC 0A 4C */	lha r29, 0xa4c(r28)
/* 80770AB0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80770AB4  EC 20 00 32 */	fmuls f1, f0, f0
/* 80770AB8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80770ABC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80770AC0  EC 21 00 2A */	fadds f1, f1, f0
/* 80770AC4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80770AC8  40 81 00 0C */	ble lbl_80770AD4
/* 80770ACC  FC 00 08 34 */	frsqrte f0, f1
/* 80770AD0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80770AD4:
/* 80770AD4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80770AD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80770ADC  40 80 01 B4 */	bge lbl_80770C90
/* 80770AE0  38 00 00 00 */	li r0, 0
/* 80770AE4  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80770AE8  48 00 01 A8 */	b lbl_80770C90
lbl_80770AEC:
/* 80770AEC  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 80770AF0  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 80770AF4  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 80770AF8  38 00 00 00 */	li r0, 0
/* 80770AFC  98 1C 0A 7D */	stb r0, 0xa7d(r28)
/* 80770B00  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80770B04  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80770B08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80770B0C  40 81 00 0C */	ble lbl_80770B18
/* 80770B10  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80770B14  48 00 01 7C */	b lbl_80770C90
lbl_80770B18:
/* 80770B18  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80770B1C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80770B20  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80770B24  EC 00 00 32 */	fmuls f0, f0, f0
/* 80770B28  EC 21 00 2A */	fadds f1, f1, f0
/* 80770B2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80770B30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80770B34  40 81 00 0C */	ble lbl_80770B40
/* 80770B38  FC 00 08 34 */	frsqrte f0, f1
/* 80770B3C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80770B40:
/* 80770B40  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80770B44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80770B48  40 80 01 48 */	bge lbl_80770C90
/* 80770B4C  38 00 00 14 */	li r0, 0x14
/* 80770B50  B0 1C 0A 60 */	sth r0, 0xa60(r28)
/* 80770B54  38 00 00 06 */	li r0, 6
/* 80770B58  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80770B5C  7F 83 E3 78 */	mr r3, r28
/* 80770B60  38 80 00 1D */	li r4, 0x1d
/* 80770B64  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80770B68  38 A0 00 00 */	li r5, 0
/* 80770B6C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80770B70  4B FF B3 11 */	bl anm_init__FP11e_rdy_classifUcf
/* 80770B74  48 00 01 1C */	b lbl_80770C90
lbl_80770B78:
/* 80770B78  38 00 00 00 */	li r0, 0
/* 80770B7C  98 1C 0A 7D */	stb r0, 0xa7d(r28)
/* 80770B80  AB BC 0A 4C */	lha r29, 0xa4c(r28)
/* 80770B84  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 80770B88  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80770B8C  FC 00 00 1E */	fctiwz f0, f0
/* 80770B90  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80770B94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80770B98  2C 00 00 0A */	cmpwi r0, 0xa
/* 80770B9C  41 81 00 A4 */	bgt lbl_80770C40
/* 80770BA0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80770BA4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80770BA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80770BAC  7F A4 EB 78 */	mr r4, r29
/* 80770BB0  4B 89 B8 2D */	bl mDoMtx_YrotS__FPA4_fs
/* 80770BB4  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80770BB8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80770BBC  FC 00 F8 90 */	fmr f0, f31
/* 80770BC0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80770BC4  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80770BC8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80770BCC  38 61 00 14 */	addi r3, r1, 0x14
/* 80770BD0  38 81 00 08 */	addi r4, r1, 8
/* 80770BD4  4B B0 03 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80770BD8  38 61 00 08 */	addi r3, r1, 8
/* 80770BDC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80770BE0  7C 65 1B 78 */	mr r5, r3
/* 80770BE4  4B BD 64 AD */	bl PSVECAdd
/* 80770BE8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80770BEC  C0 21 00 08 */	lfs f1, 8(r1)
/* 80770BF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80770BF4  C0 7F 00 B0 */	lfs f3, 0xb0(r31)
/* 80770BF8  4B AF EE 45 */	bl cLib_addCalc2__FPffff
/* 80770BFC  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 80770C00  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80770C04  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80770C08  C0 7F 00 B0 */	lfs f3, 0xb0(r31)
/* 80770C0C  4B AF EE 31 */	bl cLib_addCalc2__FPffff
/* 80770C10  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 80770C14  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80770C18  FC 00 00 1E */	fctiwz f0, f0
/* 80770C1C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80770C20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80770C24  2C 00 00 0A */	cmpwi r0, 0xa
/* 80770C28  40 82 00 18 */	bne lbl_80770C40
/* 80770C2C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80770C30  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80770C34  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80770C38  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80770C3C  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_80770C40:
/* 80770C40  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 80770C44  38 80 00 01 */	li r4, 1
/* 80770C48  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80770C4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80770C50  40 82 00 18 */	bne lbl_80770C68
/* 80770C54  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80770C58  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80770C5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80770C60  41 82 00 08 */	beq lbl_80770C68
/* 80770C64  38 80 00 00 */	li r4, 0
lbl_80770C68:
/* 80770C68  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80770C6C  41 82 00 24 */	beq lbl_80770C90
/* 80770C70  7F 83 E3 78 */	mr r3, r28
/* 80770C74  38 80 00 4C */	li r4, 0x4c
/* 80770C78  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80770C7C  38 A0 00 02 */	li r5, 2
/* 80770C80  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80770C84  4B FF B1 FD */	bl anm_init__FP11e_rdy_classifUcf
/* 80770C88  38 00 00 03 */	li r0, 3
/* 80770C8C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_80770C90:
/* 80770C90  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80770C94  FC 20 F8 90 */	fmr f1, f31
/* 80770C98  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80770C9C  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80770CA0  4B AF ED 9D */	bl cLib_addCalc2__FPffff
/* 80770CA4  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80770CA8  7F A4 EB 78 */	mr r4, r29
/* 80770CAC  38 A0 00 04 */	li r5, 4
/* 80770CB0  38 C0 10 00 */	li r6, 0x1000
/* 80770CB4  4B AF F9 55 */	bl cLib_addCalcAngleS2__FPssss
/* 80770CB8  38 00 00 0B */	li r0, 0xb
/* 80770CBC  98 1C 0A 98 */	stb r0, 0xa98(r28)
/* 80770CC0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80770CC4  D0 1C 0A A4 */	stfs f0, 0xaa4(r28)
/* 80770CC8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80770CCC  D0 1C 0A A8 */	stfs f0, 0xaa8(r28)
/* 80770CD0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80770CD4  D0 1C 0A AC */	stfs f0, 0xaac(r28)
lbl_80770CD8:
/* 80770CD8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80770CDC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80770CE0  39 61 00 40 */	addi r11, r1, 0x40
/* 80770CE4  4B BF 15 41 */	bl _restgpr_28
/* 80770CE8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80770CEC  7C 08 03 A6 */	mtlr r0
/* 80770CF0  38 21 00 50 */	addi r1, r1, 0x50
/* 80770CF4  4E 80 00 20 */	blr 
