lbl_80C7CFD0:
/* 80C7CFD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C7CFD4  7C 08 02 A6 */	mflr r0
/* 80C7CFD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C7CFDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7CFE0  4B 6E 51 F5 */	bl _savegpr_27
/* 80C7CFE4  7C 7D 1B 78 */	mr r29, r3
/* 80C7CFE8  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C7DF98@ha */
/* 80C7CFEC  38 63 DF 98 */	addi r3, r3, l_arcName@l /* 0x80C7DF98@l */
/* 80C7CFF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7CFF4  38 80 00 0E */	li r4, 0xe
/* 80C7CFF8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7CFFC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7D000  3F C5 00 02 */	addis r30, r5, 2
/* 80C7D004  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C7D008  7F C5 F3 78 */	mr r5, r30
/* 80C7D00C  38 C0 00 80 */	li r6, 0x80
/* 80C7D010  4B 3B F2 DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7D014  3C 80 00 08 */	lis r4, 8
/* 80C7D018  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C7D01C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C7D020  4B 39 7C 35 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C7D024  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 80C7D028  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 80C7D02C  28 00 00 00 */	cmplwi r0, 0
/* 80C7D030  40 82 00 0C */	bne lbl_80C7D03C
/* 80C7D034  38 60 00 00 */	li r3, 0
/* 80C7D038  48 00 02 60 */	b lbl_80C7D298
lbl_80C7D03C:
/* 80C7D03C  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C7DF98@ha */
/* 80C7D040  38 63 DF 98 */	addi r3, r3, l_arcName@l /* 0x80C7DF98@l */
/* 80C7D044  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7D048  38 80 00 0D */	li r4, 0xd
/* 80C7D04C  7F C5 F3 78 */	mr r5, r30
/* 80C7D050  38 C0 00 80 */	li r6, 0x80
/* 80C7D054  4B 3B F2 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7D058  7C 7F 1B 78 */	mr r31, r3
/* 80C7D05C  3C 80 00 08 */	lis r4, 8
/* 80C7D060  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C7D064  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C7D068  4B 39 7B ED */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C7D06C  90 7D 08 80 */	stw r3, 0x880(r29)
/* 80C7D070  80 1D 08 80 */	lwz r0, 0x880(r29)
/* 80C7D074  28 00 00 00 */	cmplwi r0, 0
/* 80C7D078  40 82 00 0C */	bne lbl_80C7D084
/* 80C7D07C  38 60 00 00 */	li r3, 0
/* 80C7D080  48 00 02 18 */	b lbl_80C7D298
lbl_80C7D084:
/* 80C7D084  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C7DF98@ha */
/* 80C7D088  38 63 DF 98 */	addi r3, r3, l_arcName@l /* 0x80C7DF98@l */
/* 80C7D08C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7D090  38 80 00 13 */	li r4, 0x13
/* 80C7D094  7F C5 F3 78 */	mr r5, r30
/* 80C7D098  38 C0 00 80 */	li r6, 0x80
/* 80C7D09C  4B 3B F2 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7D0A0  7C 7B 1B 78 */	mr r27, r3
/* 80C7D0A4  38 60 00 18 */	li r3, 0x18
/* 80C7D0A8  4B 65 1B A5 */	bl __nw__FUl
/* 80C7D0AC  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C7D0B0  41 82 00 20 */	beq lbl_80C7D0D0
/* 80C7D0B4  3C 80 80 C8 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C7E104@ha */
/* 80C7D0B8  38 04 E1 04 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C7E104@l */
/* 80C7D0BC  90 1C 00 00 */	stw r0, 0(r28)
/* 80C7D0C0  38 80 00 00 */	li r4, 0
/* 80C7D0C4  4B 6A B3 39 */	bl init__12J3DFrameCtrlFs
/* 80C7D0C8  38 00 00 00 */	li r0, 0
/* 80C7D0CC  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80C7D0D0:
/* 80C7D0D0  93 9D 08 84 */	stw r28, 0x884(r29)
/* 80C7D0D4  80 7D 08 84 */	lwz r3, 0x884(r29)
/* 80C7D0D8  28 03 00 00 */	cmplwi r3, 0
/* 80C7D0DC  41 82 00 30 */	beq lbl_80C7D10C
/* 80C7D0E0  38 9F 00 58 */	addi r4, r31, 0x58
/* 80C7D0E4  7F 65 DB 78 */	mr r5, r27
/* 80C7D0E8  38 C0 00 01 */	li r6, 1
/* 80C7D0EC  38 E0 00 00 */	li r7, 0
/* 80C7D0F0  3D 00 80 C8 */	lis r8, lit_3880@ha /* 0x80C7DF38@ha */
/* 80C7D0F4  C0 28 DF 38 */	lfs f1, lit_3880@l(r8)  /* 0x80C7DF38@l */
/* 80C7D0F8  39 00 00 00 */	li r8, 0
/* 80C7D0FC  39 20 FF FF */	li r9, -1
/* 80C7D100  4B 39 05 3D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C7D104  2C 03 00 00 */	cmpwi r3, 0
/* 80C7D108  40 82 00 0C */	bne lbl_80C7D114
lbl_80C7D10C:
/* 80C7D10C  38 60 00 00 */	li r3, 0
/* 80C7D110  48 00 01 88 */	b lbl_80C7D298
lbl_80C7D114:
/* 80C7D114  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C7DF98@ha */
/* 80C7D118  38 63 DF 98 */	addi r3, r3, l_arcName@l /* 0x80C7DF98@l */
/* 80C7D11C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7D120  38 80 00 11 */	li r4, 0x11
/* 80C7D124  7F C5 F3 78 */	mr r5, r30
/* 80C7D128  38 C0 00 80 */	li r6, 0x80
/* 80C7D12C  4B 3B F1 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7D130  7C 7B 1B 78 */	mr r27, r3
/* 80C7D134  38 60 00 18 */	li r3, 0x18
/* 80C7D138  4B 65 1B 15 */	bl __nw__FUl
/* 80C7D13C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C7D140  41 82 00 20 */	beq lbl_80C7D160
/* 80C7D144  3C 80 80 C8 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C7E104@ha */
/* 80C7D148  38 04 E1 04 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C7E104@l */
/* 80C7D14C  90 1C 00 00 */	stw r0, 0(r28)
/* 80C7D150  38 80 00 00 */	li r4, 0
/* 80C7D154  4B 6A B2 A9 */	bl init__12J3DFrameCtrlFs
/* 80C7D158  38 00 00 00 */	li r0, 0
/* 80C7D15C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80C7D160:
/* 80C7D160  93 9D 08 88 */	stw r28, 0x888(r29)
/* 80C7D164  80 7D 08 88 */	lwz r3, 0x888(r29)
/* 80C7D168  28 03 00 00 */	cmplwi r3, 0
/* 80C7D16C  41 82 00 30 */	beq lbl_80C7D19C
/* 80C7D170  38 9F 00 58 */	addi r4, r31, 0x58
/* 80C7D174  7F 65 DB 78 */	mr r5, r27
/* 80C7D178  38 C0 00 01 */	li r6, 1
/* 80C7D17C  38 E0 00 02 */	li r7, 2
/* 80C7D180  3D 00 80 C8 */	lis r8, lit_3880@ha /* 0x80C7DF38@ha */
/* 80C7D184  C0 28 DF 38 */	lfs f1, lit_3880@l(r8)  /* 0x80C7DF38@l */
/* 80C7D188  39 00 00 00 */	li r8, 0
/* 80C7D18C  39 20 FF FF */	li r9, -1
/* 80C7D190  4B 39 04 AD */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C7D194  2C 03 00 00 */	cmpwi r3, 0
/* 80C7D198  40 82 00 0C */	bne lbl_80C7D1A4
lbl_80C7D19C:
/* 80C7D19C  38 60 00 00 */	li r3, 0
/* 80C7D1A0  48 00 00 F8 */	b lbl_80C7D298
lbl_80C7D1A4:
/* 80C7D1A4  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C7DF98@ha */
/* 80C7D1A8  38 63 DF 98 */	addi r3, r3, l_arcName@l /* 0x80C7DF98@l */
/* 80C7D1AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7D1B0  38 80 00 07 */	li r4, 7
/* 80C7D1B4  7F C5 F3 78 */	mr r5, r30
/* 80C7D1B8  38 C0 00 80 */	li r6, 0x80
/* 80C7D1BC  4B 3B F1 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7D1C0  7C 7B 1B 78 */	mr r27, r3
/* 80C7D1C4  38 60 00 1C */	li r3, 0x1c
/* 80C7D1C8  4B 65 1A 85 */	bl __nw__FUl
/* 80C7D1CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C7D1D0  41 82 00 20 */	beq lbl_80C7D1F0
/* 80C7D1D4  3C 80 80 C8 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C7E104@ha */
/* 80C7D1D8  38 04 E1 04 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C7E104@l */
/* 80C7D1DC  90 1E 00 00 */	stw r0, 0(r30)
/* 80C7D1E0  38 80 00 00 */	li r4, 0
/* 80C7D1E4  4B 6A B2 19 */	bl init__12J3DFrameCtrlFs
/* 80C7D1E8  38 00 00 00 */	li r0, 0
/* 80C7D1EC  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80C7D1F0:
/* 80C7D1F0  93 DD 08 8C */	stw r30, 0x88c(r29)
/* 80C7D1F4  80 7D 08 8C */	lwz r3, 0x88c(r29)
/* 80C7D1F8  28 03 00 00 */	cmplwi r3, 0
/* 80C7D1FC  41 82 00 30 */	beq lbl_80C7D22C
/* 80C7D200  7F 64 DB 78 */	mr r4, r27
/* 80C7D204  38 A0 00 01 */	li r5, 1
/* 80C7D208  38 C0 00 02 */	li r6, 2
/* 80C7D20C  3C E0 80 C8 */	lis r7, lit_3880@ha /* 0x80C7DF38@ha */
/* 80C7D210  C0 27 DF 38 */	lfs f1, lit_3880@l(r7)  /* 0x80C7DF38@l */
/* 80C7D214  38 E0 00 00 */	li r7, 0
/* 80C7D218  39 00 FF FF */	li r8, -1
/* 80C7D21C  39 20 00 00 */	li r9, 0
/* 80C7D220  4B 39 05 BD */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C7D224  2C 03 00 00 */	cmpwi r3, 0
/* 80C7D228  40 82 00 0C */	bne lbl_80C7D234
lbl_80C7D22C:
/* 80C7D22C  38 60 00 00 */	li r3, 0
/* 80C7D230  48 00 00 68 */	b lbl_80C7D298
lbl_80C7D234:
/* 80C7D234  88 1D 08 91 */	lbz r0, 0x891(r29)
/* 80C7D238  28 00 00 00 */	cmplwi r0, 0
/* 80C7D23C  41 82 00 58 */	beq lbl_80C7D294
/* 80C7D240  80 9D 08 84 */	lwz r4, 0x884(r29)
/* 80C7D244  A8 04 00 08 */	lha r0, 8(r4)
/* 80C7D248  3C 60 80 C8 */	lis r3, lit_3882@ha /* 0x80C7DF3C@ha */
/* 80C7D24C  C8 23 DF 3C */	lfd f1, lit_3882@l(r3)  /* 0x80C7DF3C@l */
/* 80C7D250  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C7D254  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7D258  3C 00 43 30 */	lis r0, 0x4330
/* 80C7D25C  90 01 00 08 */	stw r0, 8(r1)
/* 80C7D260  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C7D264  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C7D268  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80C7D26C  3C 60 80 C8 */	lis r3, lit_3880@ha /* 0x80C7DF38@ha */
/* 80C7D270  C0 03 DF 38 */	lfs f0, lit_3880@l(r3)  /* 0x80C7DF38@l */
/* 80C7D274  80 7D 08 88 */	lwz r3, 0x888(r29)
/* 80C7D278  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C7D27C  38 00 10 00 */	li r0, 0x1000
/* 80C7D280  B0 1D 08 B2 */	sth r0, 0x8b2(r29)
/* 80C7D284  38 00 00 04 */	li r0, 4
/* 80C7D288  B0 1D 08 B4 */	sth r0, 0x8b4(r29)
/* 80C7D28C  38 00 00 05 */	li r0, 5
/* 80C7D290  98 1D 08 90 */	stb r0, 0x890(r29)
lbl_80C7D294:
/* 80C7D294  38 60 00 01 */	li r3, 1
lbl_80C7D298:
/* 80C7D298  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7D29C  4B 6E 4F 85 */	bl _restgpr_27
/* 80C7D2A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C7D2A4  7C 08 03 A6 */	mtlr r0
/* 80C7D2A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80C7D2AC  4E 80 00 20 */	blr 
