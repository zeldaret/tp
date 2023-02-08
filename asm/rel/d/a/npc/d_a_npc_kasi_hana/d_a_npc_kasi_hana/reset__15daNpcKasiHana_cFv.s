lbl_80A1CFF0:
/* 80A1CFF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1CFF4  7C 08 02 A6 */	mflr r0
/* 80A1CFF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1CFFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A1D000  7C 7F 1B 78 */	mr r31, r3
/* 80A1D004  4B 73 58 C5 */	bl initialize__8daNpcF_cFv
/* 80A1D008  38 7F 0B F0 */	addi r3, r31, 0xbf0
/* 80A1D00C  4B 73 40 2D */	bl initialize__15daNpcF_Lookat_cFv
/* 80A1D010  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 80A1D014  4B 73 36 9D */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80A1D018  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A1D01C  4B 73 38 E5 */	bl initialize__13daNpcF_Path_cFv
/* 80A1D020  28 1F 00 00 */	cmplwi r31, 0
/* 80A1D024  41 82 00 10 */	beq lbl_80A1D034
/* 80A1D028  38 7F 14 48 */	addi r3, r31, 0x1448
/* 80A1D02C  7F E4 FB 78 */	mr r4, r31
/* 80A1D030  4B 73 36 8D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80A1D034:
/* 80A1D034  88 7F 14 04 */	lbz r3, 0x1404(r31)
/* 80A1D038  7C 60 07 75 */	extsb. r0, r3
/* 80A1D03C  40 82 00 2C */	bne lbl_80A1D068
/* 80A1D040  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A1D044  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A1D048  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80A1D04C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A1D050  7C 05 07 74 */	extsb r5, r0
/* 80A1D054  38 C0 00 00 */	li r6, 0
/* 80A1D058  4B 73 39 05 */	bl setPathInfo__13daNpcF_Path_cFUcScUc
/* 80A1D05C  38 00 00 06 */	li r0, 6
/* 80A1D060  B0 1F 0C 94 */	sth r0, 0xc94(r31)
/* 80A1D064  48 00 00 1C */	b lbl_80A1D080
lbl_80A1D068:
/* 80A1D068  7C 60 07 74 */	extsb r0, r3
/* 80A1D06C  2C 00 00 01 */	cmpwi r0, 1
/* 80A1D070  40 82 00 10 */	bne lbl_80A1D080
/* 80A1D074  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80A1D078  60 00 40 00 */	ori r0, r0, 0x4000
/* 80A1D07C  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80A1D080:
/* 80A1D080  38 A0 00 00 */	li r5, 0
/* 80A1D084  98 BF 14 41 */	stb r5, 0x1441(r31)
/* 80A1D088  90 BF 14 30 */	stw r5, 0x1430(r31)
/* 80A1D08C  90 BF 14 34 */	stw r5, 0x1434(r31)
/* 80A1D090  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A1D094  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80A1D098  80 64 00 00 */	lwz r3, 0(r4)
/* 80A1D09C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A1D0A0  90 7F 14 08 */	stw r3, 0x1408(r31)
/* 80A1D0A4  90 1F 14 0C */	stw r0, 0x140c(r31)
/* 80A1D0A8  80 04 00 08 */	lwz r0, 8(r4)
/* 80A1D0AC  90 1F 14 10 */	stw r0, 0x1410(r31)
/* 80A1D0B0  38 80 FF FF */	li r4, -1
/* 80A1D0B4  B0 9F 14 3C */	sth r4, 0x143c(r31)
/* 80A1D0B8  B0 BF 14 06 */	sth r5, 0x1406(r31)
/* 80A1D0BC  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80A1D0C0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A1D0C4  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80A1D0C8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A1D0CC  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80A1D0D0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80A1D0D4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A1D0D8  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80A1D0DC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A1D0E0  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80A1D0E4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A1D0E8  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80A1D0EC  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80A1D0F0  B0 BF 04 DC */	sth r5, 0x4dc(r31)
/* 80A1D0F4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A1D0F8  B0 BF 04 E0 */	sth r5, 0x4e0(r31)
/* 80A1D0FC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A1D100  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80A1D104  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A1D108  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80A1D10C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A1D110  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80A1D114  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A1D118  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80A1D11C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A1D120  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A1D124  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A1D128  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80A1D12C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A1D130  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80A1D134  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A1D138  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80A1D13C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A1D140  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80A1D144  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80A1D148  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80A1D14C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A1D150  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80A1D154  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80A1D158  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80A1D15C  3C 60 80 A2 */	lis r3, lit_3908@ha /* 0x80A21080@ha */
/* 80A1D160  C0 03 10 80 */	lfs f0, lit_3908@l(r3)  /* 0x80A21080@l */
/* 80A1D164  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A1D168  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A1D16C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A1D170  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A1D174  90 9F 14 2C */	stw r4, 0x142c(r31)
/* 80A1D178  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 80A1D17C  7F E3 FB 78 */	mr r3, r31
/* 80A1D180  3C 80 80 A2 */	lis r4, l_arcNames@ha /* 0x80A214B4@ha */
/* 80A1D184  38 84 14 B4 */	addi r4, r4, l_arcNames@l /* 0x80A214B4@l */
/* 80A1D188  80 84 00 00 */	lwz r4, 0(r4)
/* 80A1D18C  38 A0 00 08 */	li r5, 8
/* 80A1D190  4B 73 59 D9 */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 80A1D194  7C 64 1B 78 */	mr r4, r3
/* 80A1D198  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 80A1D19C  38 00 F5 7F */	li r0, -2689
/* 80A1D1A0  7C 60 00 38 */	and r0, r3, r0
/* 80A1D1A4  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80A1D1A8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A1D1AC  80 63 00 04 */	lwz r3, 4(r3)
/* 80A1D1B0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A1D1B4  7F E3 FB 78 */	mr r3, r31
/* 80A1D1B8  3C C0 80 A2 */	lis r6, lit_4211@ha /* 0x80A210C0@ha */
/* 80A1D1BC  C0 26 10 C0 */	lfs f1, lit_4211@l(r6)  /* 0x80A210C0@l */
/* 80A1D1C0  38 C0 00 02 */	li r6, 2
/* 80A1D1C4  4B 73 5B 01 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80A1D1C8  2C 03 00 00 */	cmpwi r3, 0
/* 80A1D1CC  41 82 00 10 */	beq lbl_80A1D1DC
/* 80A1D1D0  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80A1D1D4  60 00 0A 80 */	ori r0, r0, 0xa80
/* 80A1D1D8  90 1F 09 9C */	stw r0, 0x99c(r31)
lbl_80A1D1DC:
/* 80A1D1DC  38 00 00 00 */	li r0, 0
/* 80A1D1E0  98 1F 14 42 */	stb r0, 0x1442(r31)
/* 80A1D1E4  98 1F 14 45 */	stb r0, 0x1445(r31)
/* 80A1D1E8  98 1F 14 43 */	stb r0, 0x1443(r31)
/* 80A1D1EC  3C 60 80 A2 */	lis r3, lit_5084@ha /* 0x80A215A8@ha */
/* 80A1D1F0  38 83 15 A8 */	addi r4, r3, lit_5084@l /* 0x80A215A8@l */
/* 80A1D1F4  80 64 00 00 */	lwz r3, 0(r4)
/* 80A1D1F8  80 04 00 04 */	lwz r0, 4(r4)
/* 80A1D1FC  90 61 00 08 */	stw r3, 8(r1)
/* 80A1D200  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1D204  80 04 00 08 */	lwz r0, 8(r4)
/* 80A1D208  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1D20C  7F E3 FB 78 */	mr r3, r31
/* 80A1D210  38 81 00 08 */	addi r4, r1, 8
/* 80A1D214  48 00 05 69 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1D218  3C 60 80 A2 */	lis r3, lit_3908@ha /* 0x80A21080@ha */
/* 80A1D21C  C0 03 10 80 */	lfs f0, lit_3908@l(r3)  /* 0x80A21080@l */
/* 80A1D220  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 80A1D224  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A1D228  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1D22C  7C 08 03 A6 */	mtlr r0
/* 80A1D230  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1D234  4E 80 00 20 */	blr 
