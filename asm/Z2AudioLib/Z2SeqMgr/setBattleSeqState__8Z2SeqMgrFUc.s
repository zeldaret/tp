lbl_802B4844:
/* 802B4844  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B4848  7C 08 02 A6 */	mflr r0
/* 802B484C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B4850  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802B4854  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802B4858  7C 7E 1B 78 */	mr r30, r3
/* 802B485C  7C 9F 23 78 */	mr r31, r4
/* 802B4860  88 03 00 D0 */	lbz r0, 0xd0(r3)
/* 802B4864  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 802B4868  40 82 02 7C */	bne lbl_802B4AE4
/* 802B486C  80 8D 86 00 */	lwz r4, data_80450B80(r13)
/* 802B4870  88 04 00 1D */	lbz r0, 0x1d(r4)
/* 802B4874  28 00 00 00 */	cmplwi r0, 0
/* 802B4878  41 82 02 6C */	beq lbl_802B4AE4
/* 802B487C  88 9E 00 BF */	lbz r4, 0xbf(r30)
/* 802B4880  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802B4884  7C 04 00 40 */	cmplw r4, r0
/* 802B4888  41 82 02 5C */	beq lbl_802B4AE4
/* 802B488C  28 00 00 00 */	cmplwi r0, 0
/* 802B4890  40 82 00 14 */	bne lbl_802B48A4
/* 802B4894  88 8D 82 E2 */	lbz r4, struct_80450860+0x2(r13)
/* 802B4898  88 AD 82 E1 */	lbz r5, struct_80450860+0x1(r13)
/* 802B489C  48 00 09 69 */	bl stopBattleBgm__8Z2SeqMgrFUcUc
/* 802B48A0  48 00 02 44 */	b lbl_802B4AE4
lbl_802B48A4:
/* 802B48A4  80 7E 00 04 */	lwz r3, 4(r30)
/* 802B48A8  28 03 00 00 */	cmplwi r3, 0
/* 802B48AC  41 82 00 10 */	beq lbl_802B48BC
/* 802B48B0  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B48B4  90 61 00 0C */	stw r3, 0xc(r1)
/* 802B48B8  48 00 00 08 */	b lbl_802B48C0
lbl_802B48BC:
/* 802B48BC  38 60 FF FF */	li r3, -1
lbl_802B48C0:
/* 802B48C0  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B48C4  28 00 00 0F */	cmplwi r0, 0xf
/* 802B48C8  40 82 02 1C */	bne lbl_802B4AE4
/* 802B48CC  80 7E 00 00 */	lwz r3, 0(r30)
/* 802B48D0  28 03 00 00 */	cmplwi r3, 0
/* 802B48D4  41 82 00 10 */	beq lbl_802B48E4
/* 802B48D8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B48DC  90 61 00 08 */	stw r3, 8(r1)
/* 802B48E0  48 00 00 08 */	b lbl_802B48E8
lbl_802B48E4:
/* 802B48E4  38 60 FF FF */	li r3, -1
lbl_802B48E8:
/* 802B48E8  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B48EC  28 00 00 00 */	cmplwi r0, 0
/* 802B48F0  40 82 00 14 */	bne lbl_802B4904
/* 802B48F4  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B48F8  48 00 B8 ED */	bl isTwilightBattle__13Z2SoundObjMgrFv
/* 802B48FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B4900  41 82 01 E4 */	beq lbl_802B4AE4
lbl_802B4904:
/* 802B4904  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802B4908  2C 00 00 03 */	cmpwi r0, 3
/* 802B490C  41 82 01 60 */	beq lbl_802B4A6C
/* 802B4910  40 80 01 D0 */	bge lbl_802B4AE0
/* 802B4914  2C 00 00 02 */	cmpwi r0, 2
/* 802B4918  40 80 00 08 */	bge lbl_802B4920
/* 802B491C  48 00 01 C4 */	b lbl_802B4AE0
lbl_802B4920:
/* 802B4920  88 1E 00 BF */	lbz r0, 0xbf(r30)
/* 802B4924  28 00 00 01 */	cmplwi r0, 1
/* 802B4928  40 82 00 BC */	bne lbl_802B49E4
/* 802B492C  80 6D 85 F4 */	lwz r3, data_80450B74(r13)
/* 802B4930  38 9E 00 04 */	addi r4, r30, 4
/* 802B4934  38 A0 00 09 */	li r5, 9
/* 802B4938  38 C0 00 01 */	li r6, 1
/* 802B493C  38 E0 FF FF */	li r7, -1
/* 802B4940  4B FF 65 9D */	bl setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
/* 802B4944  7F C3 F3 78 */	mr r3, r30
/* 802B4948  38 9E 00 04 */	addi r4, r30, 4
/* 802B494C  88 AD 82 EC */	lbz r5, data_8045086C(r13)
/* 802B4950  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B4954  38 C0 00 00 */	li r6, 0
/* 802B4958  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B495C  FC 60 10 90 */	fmr f3, f2
/* 802B4960  4B FF F6 8D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B4964  7F C3 F3 78 */	mr r3, r30
/* 802B4968  38 9E 00 04 */	addi r4, r30, 4
/* 802B496C  38 A0 00 02 */	li r5, 2
/* 802B4970  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B4974  38 C0 00 00 */	li r6, 0
/* 802B4978  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B497C  FC 60 10 90 */	fmr f3, f2
/* 802B4980  4B FF F6 6D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B4984  7F C3 F3 78 */	mr r3, r30
/* 802B4988  38 9E 00 04 */	addi r4, r30, 4
/* 802B498C  38 A0 00 03 */	li r5, 3
/* 802B4990  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B4994  38 C0 00 00 */	li r6, 0
/* 802B4998  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B499C  FC 60 10 90 */	fmr f3, f2
/* 802B49A0  4B FF F6 4D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B49A4  7F C3 F3 78 */	mr r3, r30
/* 802B49A8  38 9E 00 04 */	addi r4, r30, 4
/* 802B49AC  38 A0 00 0C */	li r5, 0xc
/* 802B49B0  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B49B4  38 C0 00 00 */	li r6, 0
/* 802B49B8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B49BC  FC 60 10 90 */	fmr f3, f2
/* 802B49C0  4B FF F6 2D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B49C4  7F C3 F3 78 */	mr r3, r30
/* 802B49C8  38 9E 00 04 */	addi r4, r30, 4
/* 802B49CC  38 A0 00 0E */	li r5, 0xe
/* 802B49D0  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B49D4  38 C0 00 00 */	li r6, 0
/* 802B49D8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B49DC  FC 60 10 90 */	fmr f3, f2
/* 802B49E0  4B FF F6 0D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
lbl_802B49E4:
/* 802B49E4  88 1E 00 C0 */	lbz r0, 0xc0(r30)
/* 802B49E8  28 00 00 00 */	cmplwi r0, 0
/* 802B49EC  41 82 00 F4 */	beq lbl_802B4AE0
/* 802B49F0  38 00 00 00 */	li r0, 0
/* 802B49F4  98 1E 00 C0 */	stb r0, 0xc0(r30)
/* 802B49F8  80 BE 00 04 */	lwz r5, 4(r30)
/* 802B49FC  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 802B4A00  38 80 00 0A */	li r4, 0xa
/* 802B4A04  90 85 00 30 */	stw r4, 0x30(r5)
/* 802B4A08  C0 42 BF 98 */	lfs f2, lit_3372(r2)
/* 802B4A0C  EC 22 00 28 */	fsubs f1, f2, f0
/* 802B4A10  80 05 00 30 */	lwz r0, 0x30(r5)
/* 802B4A14  C8 62 BF A8 */	lfd f3, lit_3561(r2)
/* 802B4A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B4A1C  3C 60 43 30 */	lis r3, 0x4330
/* 802B4A20  90 61 00 10 */	stw r3, 0x10(r1)
/* 802B4A24  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B4A28  EC 00 18 28 */	fsubs f0, f0, f3
/* 802B4A2C  EC 01 00 24 */	fdivs f0, f1, f0
/* 802B4A30  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 802B4A34  D0 45 00 2C */	stfs f2, 0x2c(r5)
/* 802B4A38  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 802B4A3C  90 9E 00 20 */	stw r4, 0x20(r30)
/* 802B4A40  C0 42 BF 9C */	lfs f2, lit_3373(r2)
/* 802B4A44  EC 22 00 28 */	fsubs f1, f2, f0
/* 802B4A48  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 802B4A4C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B4A50  90 61 00 18 */	stw r3, 0x18(r1)
/* 802B4A54  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B4A58  EC 00 18 28 */	fsubs f0, f0, f3
/* 802B4A5C  EC 01 00 24 */	fdivs f0, f1, f0
/* 802B4A60  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 802B4A64  D0 5E 00 1C */	stfs f2, 0x1c(r30)
/* 802B4A68  48 00 00 78 */	b lbl_802B4AE0
lbl_802B4A6C:
/* 802B4A6C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B4A70  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 802B4A74  D0 3E 00 18 */	stfs f1, 0x18(r30)
/* 802B4A78  38 00 00 00 */	li r0, 0
/* 802B4A7C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 802B4A80  D0 3E 00 1C */	stfs f1, 0x1c(r30)
/* 802B4A84  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802B4A88  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 802B4A8C  D0 3E 00 28 */	stfs f1, 0x28(r30)
/* 802B4A90  90 1E 00 30 */	stw r0, 0x30(r30)
/* 802B4A94  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 802B4A98  88 1E 00 BF */	lbz r0, 0xbf(r30)
/* 802B4A9C  28 00 00 01 */	cmplwi r0, 1
/* 802B4AA0  40 82 00 20 */	bne lbl_802B4AC0
/* 802B4AA4  80 6D 85 F4 */	lwz r3, data_80450B74(r13)
/* 802B4AA8  38 9E 00 04 */	addi r4, r30, 4
/* 802B4AAC  38 A0 00 09 */	li r5, 9
/* 802B4AB0  38 C0 00 03 */	li r6, 3
/* 802B4AB4  38 E0 FF FF */	li r7, -1
/* 802B4AB8  4B FF 64 25 */	bl setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
/* 802B4ABC  48 00 00 24 */	b lbl_802B4AE0
lbl_802B4AC0:
/* 802B4AC0  28 00 00 02 */	cmplwi r0, 2
/* 802B4AC4  40 82 00 1C */	bne lbl_802B4AE0
/* 802B4AC8  80 6D 85 F4 */	lwz r3, data_80450B74(r13)
/* 802B4ACC  38 9E 00 04 */	addi r4, r30, 4
/* 802B4AD0  38 A0 00 09 */	li r5, 9
/* 802B4AD4  38 C0 00 02 */	li r6, 2
/* 802B4AD8  38 E0 FF FF */	li r7, -1
/* 802B4ADC  4B FF 64 01 */	bl setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
lbl_802B4AE0:
/* 802B4AE0  9B FE 00 BF */	stb r31, 0xbf(r30)
lbl_802B4AE4:
/* 802B4AE4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802B4AE8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802B4AEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B4AF0  7C 08 03 A6 */	mtlr r0
/* 802B4AF4  38 21 00 30 */	addi r1, r1, 0x30
/* 802B4AF8  4E 80 00 20 */	blr 
