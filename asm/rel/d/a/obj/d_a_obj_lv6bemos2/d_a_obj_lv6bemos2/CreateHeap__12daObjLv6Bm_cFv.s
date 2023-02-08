lbl_80C7E764:
/* 80C7E764  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C7E768  7C 08 02 A6 */	mflr r0
/* 80C7E76C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C7E770  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7E774  4B 6E 3A 61 */	bl _savegpr_27
/* 80C7E778  7C 7D 1B 78 */	mr r29, r3
/* 80C7E77C  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C81D24@ha */
/* 80C7E780  38 63 1D 24 */	addi r3, r3, l_arcName@l /* 0x80C81D24@l */
/* 80C7E784  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7E788  38 80 00 0D */	li r4, 0xd
/* 80C7E78C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7E790  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7E794  3F C5 00 02 */	addis r30, r5, 2
/* 80C7E798  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C7E79C  7F C5 F3 78 */	mr r5, r30
/* 80C7E7A0  38 C0 00 80 */	li r6, 0x80
/* 80C7E7A4  4B 3B DB 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7E7A8  7C 7F 1B 78 */	mr r31, r3
/* 80C7E7AC  38 80 00 00 */	li r4, 0
/* 80C7E7B0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C7E7B4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C7E7B8  4B 39 64 9D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C7E7BC  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 80C7E7C0  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 80C7E7C4  28 00 00 00 */	cmplwi r0, 0
/* 80C7E7C8  40 82 00 0C */	bne lbl_80C7E7D4
/* 80C7E7CC  38 60 00 00 */	li r3, 0
/* 80C7E7D0  48 00 03 4C */	b lbl_80C7EB1C
lbl_80C7E7D4:
/* 80C7E7D4  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C81D24@ha */
/* 80C7E7D8  38 63 1D 24 */	addi r3, r3, l_arcName@l /* 0x80C81D24@l */
/* 80C7E7DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7E7E0  38 80 00 14 */	li r4, 0x14
/* 80C7E7E4  7F C5 F3 78 */	mr r5, r30
/* 80C7E7E8  38 C0 00 80 */	li r6, 0x80
/* 80C7E7EC  4B 3B DB 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7E7F0  7C 7B 1B 78 */	mr r27, r3
/* 80C7E7F4  38 60 00 18 */	li r3, 0x18
/* 80C7E7F8  4B 65 04 55 */	bl __nw__FUl
/* 80C7E7FC  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C7E800  41 82 00 20 */	beq lbl_80C7E820
/* 80C7E804  3C 80 80 C8 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C81FB0@ha */
/* 80C7E808  38 04 1F B0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C81FB0@l */
/* 80C7E80C  90 1C 00 00 */	stw r0, 0(r28)
/* 80C7E810  38 80 00 00 */	li r4, 0
/* 80C7E814  4B 6A 9B E9 */	bl init__12J3DFrameCtrlFs
/* 80C7E818  38 00 00 00 */	li r0, 0
/* 80C7E81C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80C7E820:
/* 80C7E820  93 9D 05 AC */	stw r28, 0x5ac(r29)
/* 80C7E824  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80C7E828  28 03 00 00 */	cmplwi r3, 0
/* 80C7E82C  41 82 00 30 */	beq lbl_80C7E85C
/* 80C7E830  38 9F 00 58 */	addi r4, r31, 0x58
/* 80C7E834  7F 65 DB 78 */	mr r5, r27
/* 80C7E838  38 C0 00 01 */	li r6, 1
/* 80C7E83C  38 E0 00 00 */	li r7, 0
/* 80C7E840  3D 00 80 C8 */	lis r8, lit_3855@ha /* 0x80C81C48@ha */
/* 80C7E844  C0 28 1C 48 */	lfs f1, lit_3855@l(r8)  /* 0x80C81C48@l */
/* 80C7E848  39 00 00 00 */	li r8, 0
/* 80C7E84C  39 20 FF FF */	li r9, -1
/* 80C7E850  4B 38 EE BD */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C7E854  2C 03 00 00 */	cmpwi r3, 0
/* 80C7E858  40 82 00 0C */	bne lbl_80C7E864
lbl_80C7E85C:
/* 80C7E85C  38 60 00 00 */	li r3, 0
/* 80C7E860  48 00 02 BC */	b lbl_80C7EB1C
lbl_80C7E864:
/* 80C7E864  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C81D24@ha */
/* 80C7E868  38 63 1D 24 */	addi r3, r3, l_arcName@l /* 0x80C81D24@l */
/* 80C7E86C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7E870  38 80 00 09 */	li r4, 9
/* 80C7E874  7F C5 F3 78 */	mr r5, r30
/* 80C7E878  38 C0 00 80 */	li r6, 0x80
/* 80C7E87C  4B 3B DA 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7E880  7C 7B 1B 78 */	mr r27, r3
/* 80C7E884  38 60 00 1C */	li r3, 0x1c
/* 80C7E888  4B 65 03 C5 */	bl __nw__FUl
/* 80C7E88C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C7E890  41 82 00 20 */	beq lbl_80C7E8B0
/* 80C7E894  3C 80 80 C8 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C81FB0@ha */
/* 80C7E898  38 04 1F B0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C81FB0@l */
/* 80C7E89C  90 1C 00 00 */	stw r0, 0(r28)
/* 80C7E8A0  38 80 00 00 */	li r4, 0
/* 80C7E8A4  4B 6A 9B 59 */	bl init__12J3DFrameCtrlFs
/* 80C7E8A8  38 00 00 00 */	li r0, 0
/* 80C7E8AC  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_80C7E8B0:
/* 80C7E8B0  93 9D 05 B0 */	stw r28, 0x5b0(r29)
/* 80C7E8B4  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80C7E8B8  28 03 00 00 */	cmplwi r3, 0
/* 80C7E8BC  41 82 00 30 */	beq lbl_80C7E8EC
/* 80C7E8C0  7F 64 DB 78 */	mr r4, r27
/* 80C7E8C4  38 A0 00 01 */	li r5, 1
/* 80C7E8C8  38 C0 00 00 */	li r6, 0
/* 80C7E8CC  3C E0 80 C8 */	lis r7, lit_3855@ha /* 0x80C81C48@ha */
/* 80C7E8D0  C0 27 1C 48 */	lfs f1, lit_3855@l(r7)  /* 0x80C81C48@l */
/* 80C7E8D4  38 E0 00 00 */	li r7, 0
/* 80C7E8D8  39 00 FF FF */	li r8, -1
/* 80C7E8DC  39 20 00 00 */	li r9, 0
/* 80C7E8E0  4B 38 EE FD */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C7E8E4  2C 03 00 00 */	cmpwi r3, 0
/* 80C7E8E8  40 82 00 0C */	bne lbl_80C7E8F4
lbl_80C7E8EC:
/* 80C7E8EC  38 60 00 00 */	li r3, 0
/* 80C7E8F0  48 00 02 2C */	b lbl_80C7EB1C
lbl_80C7E8F4:
/* 80C7E8F4  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C81D24@ha */
/* 80C7E8F8  38 63 1D 24 */	addi r3, r3, l_arcName@l /* 0x80C81D24@l */
/* 80C7E8FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7E900  38 80 00 10 */	li r4, 0x10
/* 80C7E904  7F C5 F3 78 */	mr r5, r30
/* 80C7E908  38 C0 00 80 */	li r6, 0x80
/* 80C7E90C  4B 3B D9 E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7E910  7C 7F 1B 78 */	mr r31, r3
/* 80C7E914  3C 80 00 08 */	lis r4, 8
/* 80C7E918  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C7E91C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C7E920  4B 39 63 35 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C7E924  90 7D 05 B4 */	stw r3, 0x5b4(r29)
/* 80C7E928  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 80C7E92C  28 00 00 00 */	cmplwi r0, 0
/* 80C7E930  40 82 00 0C */	bne lbl_80C7E93C
/* 80C7E934  38 60 00 00 */	li r3, 0
/* 80C7E938  48 00 01 E4 */	b lbl_80C7EB1C
lbl_80C7E93C:
/* 80C7E93C  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C81D24@ha */
/* 80C7E940  38 63 1D 24 */	addi r3, r3, l_arcName@l /* 0x80C81D24@l */
/* 80C7E944  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7E948  38 80 00 1A */	li r4, 0x1a
/* 80C7E94C  7F C5 F3 78 */	mr r5, r30
/* 80C7E950  38 C0 00 80 */	li r6, 0x80
/* 80C7E954  4B 3B D9 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7E958  7C 7B 1B 78 */	mr r27, r3
/* 80C7E95C  38 60 00 18 */	li r3, 0x18
/* 80C7E960  4B 65 02 ED */	bl __nw__FUl
/* 80C7E964  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C7E968  41 82 00 20 */	beq lbl_80C7E988
/* 80C7E96C  3C 80 80 C8 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C81FB0@ha */
/* 80C7E970  38 04 1F B0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C81FB0@l */
/* 80C7E974  90 1C 00 00 */	stw r0, 0(r28)
/* 80C7E978  38 80 00 00 */	li r4, 0
/* 80C7E97C  4B 6A 9A 81 */	bl init__12J3DFrameCtrlFs
/* 80C7E980  38 00 00 00 */	li r0, 0
/* 80C7E984  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80C7E988:
/* 80C7E988  93 9D 05 B8 */	stw r28, 0x5b8(r29)
/* 80C7E98C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80C7E990  28 03 00 00 */	cmplwi r3, 0
/* 80C7E994  41 82 00 30 */	beq lbl_80C7E9C4
/* 80C7E998  38 9F 00 58 */	addi r4, r31, 0x58
/* 80C7E99C  7F 65 DB 78 */	mr r5, r27
/* 80C7E9A0  38 C0 00 01 */	li r6, 1
/* 80C7E9A4  38 E0 00 00 */	li r7, 0
/* 80C7E9A8  3D 00 80 C8 */	lis r8, lit_3855@ha /* 0x80C81C48@ha */
/* 80C7E9AC  C0 28 1C 48 */	lfs f1, lit_3855@l(r8)  /* 0x80C81C48@l */
/* 80C7E9B0  39 00 00 00 */	li r8, 0
/* 80C7E9B4  39 20 FF FF */	li r9, -1
/* 80C7E9B8  4B 38 EC 85 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C7E9BC  2C 03 00 00 */	cmpwi r3, 0
/* 80C7E9C0  40 82 00 0C */	bne lbl_80C7E9CC
lbl_80C7E9C4:
/* 80C7E9C4  38 60 00 00 */	li r3, 0
/* 80C7E9C8  48 00 01 54 */	b lbl_80C7EB1C
lbl_80C7E9CC:
/* 80C7E9CC  80 9D 05 B8 */	lwz r4, 0x5b8(r29)
/* 80C7E9D0  A8 04 00 08 */	lha r0, 8(r4)
/* 80C7E9D4  3C 60 80 C8 */	lis r3, lit_4012@ha /* 0x80C81C4C@ha */
/* 80C7E9D8  C8 23 1C 4C */	lfd f1, lit_4012@l(r3)  /* 0x80C81C4C@l */
/* 80C7E9DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C7E9E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7E9E4  3C 00 43 30 */	lis r0, 0x4330
/* 80C7E9E8  90 01 00 08 */	stw r0, 8(r1)
/* 80C7E9EC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C7E9F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C7E9F4  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80C7E9F8  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C81D24@ha */
/* 80C7E9FC  38 63 1D 24 */	addi r3, r3, l_arcName@l /* 0x80C81D24@l */
/* 80C7EA00  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7EA04  38 80 00 19 */	li r4, 0x19
/* 80C7EA08  7F C5 F3 78 */	mr r5, r30
/* 80C7EA0C  38 C0 00 80 */	li r6, 0x80
/* 80C7EA10  4B 3B D8 DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7EA14  7C 7B 1B 78 */	mr r27, r3
/* 80C7EA18  38 60 00 18 */	li r3, 0x18
/* 80C7EA1C  4B 65 02 31 */	bl __nw__FUl
/* 80C7EA20  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C7EA24  41 82 00 20 */	beq lbl_80C7EA44
/* 80C7EA28  3C 80 80 C8 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C81FB0@ha */
/* 80C7EA2C  38 04 1F B0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C81FB0@l */
/* 80C7EA30  90 1C 00 00 */	stw r0, 0(r28)
/* 80C7EA34  38 80 00 00 */	li r4, 0
/* 80C7EA38  4B 6A 99 C5 */	bl init__12J3DFrameCtrlFs
/* 80C7EA3C  38 00 00 00 */	li r0, 0
/* 80C7EA40  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80C7EA44:
/* 80C7EA44  93 9D 05 BC */	stw r28, 0x5bc(r29)
/* 80C7EA48  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 80C7EA4C  28 03 00 00 */	cmplwi r3, 0
/* 80C7EA50  41 82 00 30 */	beq lbl_80C7EA80
/* 80C7EA54  38 9F 00 58 */	addi r4, r31, 0x58
/* 80C7EA58  7F 65 DB 78 */	mr r5, r27
/* 80C7EA5C  38 C0 00 01 */	li r6, 1
/* 80C7EA60  38 E0 00 02 */	li r7, 2
/* 80C7EA64  3D 00 80 C8 */	lis r8, lit_3855@ha /* 0x80C81C48@ha */
/* 80C7EA68  C0 28 1C 48 */	lfs f1, lit_3855@l(r8)  /* 0x80C81C48@l */
/* 80C7EA6C  39 00 00 00 */	li r8, 0
/* 80C7EA70  39 20 FF FF */	li r9, -1
/* 80C7EA74  4B 38 EB C9 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C7EA78  2C 03 00 00 */	cmpwi r3, 0
/* 80C7EA7C  40 82 00 0C */	bne lbl_80C7EA88
lbl_80C7EA80:
/* 80C7EA80  38 60 00 00 */	li r3, 0
/* 80C7EA84  48 00 00 98 */	b lbl_80C7EB1C
lbl_80C7EA88:
/* 80C7EA88  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C81D24@ha */
/* 80C7EA8C  38 63 1D 24 */	addi r3, r3, l_arcName@l /* 0x80C81D24@l */
/* 80C7EA90  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7EA94  38 80 00 0A */	li r4, 0xa
/* 80C7EA98  7F C5 F3 78 */	mr r5, r30
/* 80C7EA9C  38 C0 00 80 */	li r6, 0x80
/* 80C7EAA0  4B 3B D8 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7EAA4  7C 7B 1B 78 */	mr r27, r3
/* 80C7EAA8  38 60 00 1C */	li r3, 0x1c
/* 80C7EAAC  4B 65 01 A1 */	bl __nw__FUl
/* 80C7EAB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C7EAB4  41 82 00 20 */	beq lbl_80C7EAD4
/* 80C7EAB8  3C 80 80 C8 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C81FB0@ha */
/* 80C7EABC  38 04 1F B0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C81FB0@l */
/* 80C7EAC0  90 1E 00 00 */	stw r0, 0(r30)
/* 80C7EAC4  38 80 00 00 */	li r4, 0
/* 80C7EAC8  4B 6A 99 35 */	bl init__12J3DFrameCtrlFs
/* 80C7EACC  38 00 00 00 */	li r0, 0
/* 80C7EAD0  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80C7EAD4:
/* 80C7EAD4  93 DD 05 C0 */	stw r30, 0x5c0(r29)
/* 80C7EAD8  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 80C7EADC  28 03 00 00 */	cmplwi r3, 0
/* 80C7EAE0  41 82 00 30 */	beq lbl_80C7EB10
/* 80C7EAE4  7F 64 DB 78 */	mr r4, r27
/* 80C7EAE8  38 A0 00 01 */	li r5, 1
/* 80C7EAEC  38 C0 00 02 */	li r6, 2
/* 80C7EAF0  3C E0 80 C8 */	lis r7, lit_3855@ha /* 0x80C81C48@ha */
/* 80C7EAF4  C0 27 1C 48 */	lfs f1, lit_3855@l(r7)  /* 0x80C81C48@l */
/* 80C7EAF8  38 E0 00 00 */	li r7, 0
/* 80C7EAFC  39 00 FF FF */	li r8, -1
/* 80C7EB00  39 20 00 00 */	li r9, 0
/* 80C7EB04  4B 38 EC D9 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C7EB08  2C 03 00 00 */	cmpwi r3, 0
/* 80C7EB0C  40 82 00 0C */	bne lbl_80C7EB18
lbl_80C7EB10:
/* 80C7EB10  38 60 00 00 */	li r3, 0
/* 80C7EB14  48 00 00 08 */	b lbl_80C7EB1C
lbl_80C7EB18:
/* 80C7EB18  38 60 00 01 */	li r3, 1
lbl_80C7EB1C:
/* 80C7EB1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7EB20  4B 6E 37 01 */	bl _restgpr_27
/* 80C7EB24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C7EB28  7C 08 03 A6 */	mtlr r0
/* 80C7EB2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C7EB30  4E 80 00 20 */	blr 
