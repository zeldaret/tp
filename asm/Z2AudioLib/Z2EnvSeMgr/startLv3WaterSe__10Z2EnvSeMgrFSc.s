lbl_802CA794:
/* 802CA794  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802CA798  7C 08 02 A6 */	mflr r0
/* 802CA79C  90 01 00 84 */	stw r0, 0x84(r1)
/* 802CA7A0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 802CA7A4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 802CA7A8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 802CA7AC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 802CA7B0  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 802CA7B4  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 802CA7B8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802CA7BC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 802CA7C0  7C 7E 1B 78 */	mr r30, r3
/* 802CA7C4  7C 9F 23 78 */	mr r31, r4
/* 802CA7C8  80 6D 86 00 */	lwz r3, __OSReport_disable-0x18(r13)
/* 802CA7CC  80 03 00 04 */	lwz r0, 4(r3)
/* 802CA7D0  2C 00 00 2E */	cmpwi r0, 0x2e
/* 802CA7D4  40 82 00 18 */	bne lbl_802CA7EC
/* 802CA7D8  7F E0 07 75 */	extsb. r0, r31
/* 802CA7DC  41 80 00 0C */	blt lbl_802CA7E8
/* 802CA7E0  9B FE 01 40 */	stb r31, 0x140(r30)
/* 802CA7E4  48 00 02 AC */	b lbl_802CAA90
lbl_802CA7E8:
/* 802CA7E8  8B FE 01 40 */	lbz r31, 0x140(r30)
lbl_802CA7EC:
/* 802CA7EC  38 00 FF FF */	li r0, -1
/* 802CA7F0  90 01 00 30 */	stw r0, 0x30(r1)
/* 802CA7F4  7F E0 07 74 */	extsb r0, r31
/* 802CA7F8  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802CA7FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802CA800  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802CA804  3C 00 43 30 */	lis r0, 0x4330
/* 802CA808  90 01 00 38 */	stw r0, 0x38(r1)
/* 802CA80C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802CA810  EC 20 08 28 */	fsubs f1, f0, f1
/* 802CA814  C0 02 C3 F4 */	lfs f0, lit_4260(r2)
/* 802CA818  EF E1 00 24 */	fdivs f31, f1, f0
/* 802CA81C  88 1E 02 3C */	lbz r0, 0x23c(r30)
/* 802CA820  7C 00 07 75 */	extsb. r0, r0
/* 802CA824  41 80 00 B4 */	blt lbl_802CA8D8
/* 802CA828  88 1E 02 48 */	lbz r0, 0x248(r30)
/* 802CA82C  28 00 00 73 */	cmplwi r0, 0x73
/* 802CA830  40 82 00 18 */	bne lbl_802CA848
/* 802CA834  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090036@ha */
/* 802CA838  38 03 00 36 */	addi r0, r3, 0x0036 /* 0x00090036@l */
/* 802CA83C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802CA840  90 01 00 30 */	stw r0, 0x30(r1)
/* 802CA844  48 00 00 1C */	b lbl_802CA860
lbl_802CA848:
/* 802CA848  28 00 00 6E */	cmplwi r0, 0x6e
/* 802CA84C  40 82 00 14 */	bne lbl_802CA860
/* 802CA850  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090017@ha */
/* 802CA854  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00090017@l */
/* 802CA858  90 01 00 28 */	stw r0, 0x28(r1)
/* 802CA85C  90 01 00 30 */	stw r0, 0x30(r1)
lbl_802CA860:
/* 802CA860  C0 1E 02 28 */	lfs f0, 0x228(r30)
/* 802CA864  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802CA868  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802CA86C  40 81 00 08 */	ble lbl_802CA874
/* 802CA870  48 00 00 18 */	b lbl_802CA888
lbl_802CA874:
/* 802CA874  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802CA878  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802CA87C  40 80 00 08 */	bge lbl_802CA884
/* 802CA880  48 00 00 08 */	b lbl_802CA888
lbl_802CA884:
/* 802CA884  FC 20 00 90 */	fmr f1, f0
lbl_802CA888:
/* 802CA888  C0 1E 02 4C */	lfs f0, 0x24c(r30)
/* 802CA88C  EF A0 00 72 */	fmuls f29, f0, f1
/* 802CA890  38 7E 02 24 */	addi r3, r30, 0x224
/* 802CA894  4B FE 44 4D */	bl getPanPower__12Z2MultiSeMgrFv
/* 802CA898  FF C0 08 90 */	fmr f30, f1
/* 802CA89C  38 7E 02 24 */	addi r3, r30, 0x224
/* 802CA8A0  4B FE 45 21 */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802CA8A4  FC 80 08 90 */	fmr f4, f1
/* 802CA8A8  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802CA8AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CA8B0  38 7E 02 40 */	addi r3, r30, 0x240
/* 802CA8B4  38 81 00 24 */	addi r4, r1, 0x24
/* 802CA8B8  FC 20 F8 90 */	fmr f1, f31
/* 802CA8BC  FC 40 E8 90 */	fmr f2, f29
/* 802CA8C0  FC 60 F0 90 */	fmr f3, f30
/* 802CA8C4  C0 BE 02 50 */	lfs f5, 0x250(r30)
/* 802CA8C8  38 A0 00 00 */	li r5, 0
/* 802CA8CC  4B FF B1 E9 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802CA8D0  38 7E 02 24 */	addi r3, r30, 0x224
/* 802CA8D4  4B FE 43 E9 */	bl resetMultiSePos__12Z2MultiSeMgrFv
lbl_802CA8D8:
/* 802CA8D8  88 1E 02 70 */	lbz r0, 0x270(r30)
/* 802CA8DC  7C 00 07 75 */	extsb. r0, r0
/* 802CA8E0  41 80 00 B4 */	blt lbl_802CA994
/* 802CA8E4  88 1E 02 7C */	lbz r0, 0x27c(r30)
/* 802CA8E8  28 00 00 74 */	cmplwi r0, 0x74
/* 802CA8EC  40 82 00 18 */	bne lbl_802CA904
/* 802CA8F0  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090036@ha */
/* 802CA8F4  38 03 00 36 */	addi r0, r3, 0x0036 /* 0x00090036@l */
/* 802CA8F8  90 01 00 20 */	stw r0, 0x20(r1)
/* 802CA8FC  90 01 00 30 */	stw r0, 0x30(r1)
/* 802CA900  48 00 00 1C */	b lbl_802CA91C
lbl_802CA904:
/* 802CA904  28 00 00 6F */	cmplwi r0, 0x6f
/* 802CA908  40 82 00 14 */	bne lbl_802CA91C
/* 802CA90C  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090017@ha */
/* 802CA910  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00090017@l */
/* 802CA914  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802CA918  90 01 00 30 */	stw r0, 0x30(r1)
lbl_802CA91C:
/* 802CA91C  C0 1E 02 5C */	lfs f0, 0x25c(r30)
/* 802CA920  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802CA924  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802CA928  40 81 00 08 */	ble lbl_802CA930
/* 802CA92C  48 00 00 18 */	b lbl_802CA944
lbl_802CA930:
/* 802CA930  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802CA934  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802CA938  40 80 00 08 */	bge lbl_802CA940
/* 802CA93C  48 00 00 08 */	b lbl_802CA944
lbl_802CA940:
/* 802CA940  FC 20 00 90 */	fmr f1, f0
lbl_802CA944:
/* 802CA944  C0 1E 02 80 */	lfs f0, 0x280(r30)
/* 802CA948  EF C0 00 72 */	fmuls f30, f0, f1
/* 802CA94C  38 7E 02 58 */	addi r3, r30, 0x258
/* 802CA950  4B FE 43 91 */	bl getPanPower__12Z2MultiSeMgrFv
/* 802CA954  FF A0 08 90 */	fmr f29, f1
/* 802CA958  38 7E 02 58 */	addi r3, r30, 0x258
/* 802CA95C  4B FE 44 65 */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802CA960  FC 80 08 90 */	fmr f4, f1
/* 802CA964  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802CA968  90 01 00 18 */	stw r0, 0x18(r1)
/* 802CA96C  38 7E 02 74 */	addi r3, r30, 0x274
/* 802CA970  38 81 00 18 */	addi r4, r1, 0x18
/* 802CA974  FC 20 F8 90 */	fmr f1, f31
/* 802CA978  FC 40 F0 90 */	fmr f2, f30
/* 802CA97C  FC 60 E8 90 */	fmr f3, f29
/* 802CA980  C0 BE 02 84 */	lfs f5, 0x284(r30)
/* 802CA984  38 A0 00 00 */	li r5, 0
/* 802CA988  4B FF B1 2D */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802CA98C  38 7E 02 58 */	addi r3, r30, 0x258
/* 802CA990  4B FE 43 2D */	bl resetMultiSePos__12Z2MultiSeMgrFv
lbl_802CA994:
/* 802CA994  88 1E 02 A4 */	lbz r0, 0x2a4(r30)
/* 802CA998  7C 00 07 75 */	extsb. r0, r0
/* 802CA99C  41 80 00 D0 */	blt lbl_802CAA6C
/* 802CA9A0  88 1E 02 B0 */	lbz r0, 0x2b0(r30)
/* 802CA9A4  28 00 00 75 */	cmplwi r0, 0x75
/* 802CA9A8  40 82 00 18 */	bne lbl_802CA9C0
/* 802CA9AC  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009003D@ha */
/* 802CA9B0  38 03 00 3D */	addi r0, r3, 0x003D /* 0x0009003D@l */
/* 802CA9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CA9B8  90 01 00 30 */	stw r0, 0x30(r1)
/* 802CA9BC  48 00 00 38 */	b lbl_802CA9F4
lbl_802CA9C0:
/* 802CA9C0  28 00 00 70 */	cmplwi r0, 0x70
/* 802CA9C4  40 82 00 18 */	bne lbl_802CA9DC
/* 802CA9C8  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090017@ha */
/* 802CA9CC  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00090017@l */
/* 802CA9D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802CA9D4  90 01 00 30 */	stw r0, 0x30(r1)
/* 802CA9D8  48 00 00 1C */	b lbl_802CA9F4
lbl_802CA9DC:
/* 802CA9DC  28 00 00 77 */	cmplwi r0, 0x77
/* 802CA9E0  40 82 00 14 */	bne lbl_802CA9F4
/* 802CA9E4  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009000A@ha */
/* 802CA9E8  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0009000A@l */
/* 802CA9EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802CA9F0  90 01 00 30 */	stw r0, 0x30(r1)
lbl_802CA9F4:
/* 802CA9F4  C0 1E 02 90 */	lfs f0, 0x290(r30)
/* 802CA9F8  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802CA9FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802CAA00  40 81 00 08 */	ble lbl_802CAA08
/* 802CAA04  48 00 00 18 */	b lbl_802CAA1C
lbl_802CAA08:
/* 802CAA08  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802CAA0C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802CAA10  40 80 00 08 */	bge lbl_802CAA18
/* 802CAA14  48 00 00 08 */	b lbl_802CAA1C
lbl_802CAA18:
/* 802CAA18  FC 20 00 90 */	fmr f1, f0
lbl_802CAA1C:
/* 802CAA1C  C0 1E 02 B4 */	lfs f0, 0x2b4(r30)
/* 802CAA20  EF C0 00 72 */	fmuls f30, f0, f1
/* 802CAA24  38 7E 02 8C */	addi r3, r30, 0x28c
/* 802CAA28  4B FE 42 B9 */	bl getPanPower__12Z2MultiSeMgrFv
/* 802CAA2C  FF A0 08 90 */	fmr f29, f1
/* 802CAA30  38 7E 02 8C */	addi r3, r30, 0x28c
/* 802CAA34  4B FE 43 8D */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802CAA38  FC 80 08 90 */	fmr f4, f1
/* 802CAA3C  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802CAA40  90 01 00 08 */	stw r0, 8(r1)
/* 802CAA44  38 7E 02 A8 */	addi r3, r30, 0x2a8
/* 802CAA48  38 81 00 08 */	addi r4, r1, 8
/* 802CAA4C  FC 20 F8 90 */	fmr f1, f31
/* 802CAA50  FC 40 F0 90 */	fmr f2, f30
/* 802CAA54  FC 60 E8 90 */	fmr f3, f29
/* 802CAA58  C0 BE 02 B8 */	lfs f5, 0x2b8(r30)
/* 802CAA5C  38 A0 00 00 */	li r5, 0
/* 802CAA60  4B FF B0 55 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802CAA64  38 7E 02 8C */	addi r3, r30, 0x28c
/* 802CAA68  4B FE 42 55 */	bl resetMultiSePos__12Z2MultiSeMgrFv
lbl_802CAA6C:
/* 802CAA6C  7F C3 F3 78 */	mr r3, r30
/* 802CAA70  7F E4 FB 78 */	mr r4, r31
/* 802CAA74  4B FF D8 8D */	bl startRiverSe__10Z2EnvSeMgrFSc
/* 802CAA78  7F C3 F3 78 */	mr r3, r30
/* 802CAA7C  7F E4 FB 78 */	mr r4, r31
/* 802CAA80  4B FF DE 11 */	bl startFallSe__10Z2EnvSeMgrFSc
/* 802CAA84  7F C3 F3 78 */	mr r3, r30
/* 802CAA88  7F E4 FB 78 */	mr r4, r31
/* 802CAA8C  4B FF E1 BD */	bl startEtcSe__10Z2EnvSeMgrFSc
lbl_802CAA90:
/* 802CAA90  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 802CAA94  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 802CAA98  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 802CAA9C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 802CAAA0  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 802CAAA4  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 802CAAA8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802CAAAC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 802CAAB0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802CAAB4  7C 08 03 A6 */	mtlr r0
/* 802CAAB8  38 21 00 80 */	addi r1, r1, 0x80
/* 802CAABC  4E 80 00 20 */	blr 
