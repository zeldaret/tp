lbl_80C5B94C:
/* 80C5B94C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C5B950  7C 08 02 A6 */	mflr r0
/* 80C5B954  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C5B958  39 61 00 20 */	addi r11, r1, 0x20
/* 80C5B95C  4B 70 68 80 */	b _savegpr_29
/* 80C5B960  7C 7E 1B 78 */	mr r30, r3
/* 80C5B964  3C 60 80 C6 */	lis r3, stringBase0@ha
/* 80C5B968  38 63 BD 70 */	addi r3, r3, stringBase0@l
/* 80C5B96C  38 80 00 05 */	li r4, 5
/* 80C5B970  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C5B974  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C5B978  3F E5 00 02 */	addis r31, r5, 2
/* 80C5B97C  3B FF C2 F8 */	addi r31, r31, -15624
/* 80C5B980  7F E5 FB 78 */	mr r5, r31
/* 80C5B984  38 C0 00 80 */	li r6, 0x80
/* 80C5B988  4B 3E 09 64 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C5B98C  3C 80 00 08 */	lis r4, 8
/* 80C5B990  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C5B994  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C5B998  4B 3B 92 BC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C5B99C  90 7E 05 78 */	stw r3, 0x578(r30)
/* 80C5B9A0  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80C5B9A4  28 00 00 00 */	cmplwi r0, 0
/* 80C5B9A8  40 82 00 0C */	bne lbl_80C5B9B4
/* 80C5B9AC  38 60 00 00 */	li r3, 0
/* 80C5B9B0  48 00 01 C4 */	b lbl_80C5BB74
lbl_80C5B9B4:
/* 80C5B9B4  38 60 00 18 */	li r3, 0x18
/* 80C5B9B8  4B 67 32 94 */	b __nw__FUl
/* 80C5B9BC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C5B9C0  41 82 00 20 */	beq lbl_80C5B9E0
/* 80C5B9C4  3C 80 80 C6 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C5B9C8  38 04 BD D4 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C5B9CC  90 1D 00 00 */	stw r0, 0(r29)
/* 80C5B9D0  38 80 00 00 */	li r4, 0
/* 80C5B9D4  4B 6C CA 28 */	b init__12J3DFrameCtrlFs
/* 80C5B9D8  38 00 00 00 */	li r0, 0
/* 80C5B9DC  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C5B9E0:
/* 80C5B9E0  93 BE 05 7C */	stw r29, 0x57c(r30)
/* 80C5B9E4  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 80C5B9E8  28 00 00 00 */	cmplwi r0, 0
/* 80C5B9EC  40 82 00 0C */	bne lbl_80C5B9F8
/* 80C5B9F0  38 60 00 00 */	li r3, 0
/* 80C5B9F4  48 00 01 80 */	b lbl_80C5BB74
lbl_80C5B9F8:
/* 80C5B9F8  3C 60 80 C6 */	lis r3, stringBase0@ha
/* 80C5B9FC  38 63 BD 70 */	addi r3, r3, stringBase0@l
/* 80C5BA00  38 80 00 08 */	li r4, 8
/* 80C5BA04  7F E5 FB 78 */	mr r5, r31
/* 80C5BA08  38 C0 00 80 */	li r6, 0x80
/* 80C5BA0C  4B 3E 08 E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C5BA10  7C 65 1B 78 */	mr r5, r3
/* 80C5BA14  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C5BA18  80 83 00 04 */	lwz r4, 4(r3)
/* 80C5BA1C  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80C5BA20  38 84 00 58 */	addi r4, r4, 0x58
/* 80C5BA24  38 C0 00 01 */	li r6, 1
/* 80C5BA28  38 E0 00 02 */	li r7, 2
/* 80C5BA2C  3D 00 80 C6 */	lis r8, lit_3724@ha
/* 80C5BA30  C0 28 BD 50 */	lfs f1, lit_3724@l(r8)
/* 80C5BA34  39 00 00 00 */	li r8, 0
/* 80C5BA38  39 20 FF FF */	li r9, -1
/* 80C5BA3C  4B 3B 1C 00 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C5BA40  2C 03 00 00 */	cmpwi r3, 0
/* 80C5BA44  40 82 00 0C */	bne lbl_80C5BA50
/* 80C5BA48  38 60 00 00 */	li r3, 0
/* 80C5BA4C  48 00 01 28 */	b lbl_80C5BB74
lbl_80C5BA50:
/* 80C5BA50  38 60 00 C0 */	li r3, 0xc0
/* 80C5BA54  4B 67 31 F8 */	b __nw__FUl
/* 80C5BA58  7C 60 1B 79 */	or. r0, r3, r3
/* 80C5BA5C  41 82 00 0C */	beq lbl_80C5BA68
/* 80C5BA60  4B 41 FF 10 */	b __ct__4dBgWFv
/* 80C5BA64  7C 60 1B 78 */	mr r0, r3
lbl_80C5BA68:
/* 80C5BA68  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 80C5BA6C  80 1E 05 BC */	lwz r0, 0x5bc(r30)
/* 80C5BA70  28 00 00 00 */	cmplwi r0, 0
/* 80C5BA74  40 82 00 0C */	bne lbl_80C5BA80
/* 80C5BA78  38 60 00 00 */	li r3, 0
/* 80C5BA7C  48 00 00 F8 */	b lbl_80C5BB74
lbl_80C5BA80:
/* 80C5BA80  3C 60 80 C6 */	lis r3, stringBase0@ha
/* 80C5BA84  38 63 BD 70 */	addi r3, r3, stringBase0@l
/* 80C5BA88  38 80 00 0B */	li r4, 0xb
/* 80C5BA8C  7F E5 FB 78 */	mr r5, r31
/* 80C5BA90  38 C0 00 80 */	li r6, 0x80
/* 80C5BA94  4B 3E 08 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C5BA98  7C 64 1B 78 */	mr r4, r3
/* 80C5BA9C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80C5BAA0  38 A0 00 01 */	li r5, 1
/* 80C5BAA4  38 DE 05 8C */	addi r6, r30, 0x58c
/* 80C5BAA8  4B 41 E4 90 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C5BAAC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C5BAB0  28 00 00 01 */	cmplwi r0, 1
/* 80C5BAB4  40 82 00 0C */	bne lbl_80C5BAC0
/* 80C5BAB8  38 60 00 00 */	li r3, 0
/* 80C5BABC  48 00 00 B8 */	b lbl_80C5BB74
lbl_80C5BAC0:
/* 80C5BAC0  3C 60 80 C6 */	lis r3, stringBase0@ha
/* 80C5BAC4  38 63 BD 70 */	addi r3, r3, stringBase0@l
/* 80C5BAC8  38 63 00 0A */	addi r3, r3, 0xa
/* 80C5BACC  38 80 00 04 */	li r4, 4
/* 80C5BAD0  7F E5 FB 78 */	mr r5, r31
/* 80C5BAD4  38 C0 00 80 */	li r6, 0x80
/* 80C5BAD8  4B 3E 08 14 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C5BADC  3C 80 00 08 */	lis r4, 8
/* 80C5BAE0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C5BAE4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C5BAE8  4B 3B 91 6C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C5BAEC  90 7E 05 80 */	stw r3, 0x580(r30)
/* 80C5BAF0  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 80C5BAF4  28 00 00 00 */	cmplwi r0, 0
/* 80C5BAF8  40 82 00 0C */	bne lbl_80C5BB04
/* 80C5BAFC  38 60 00 00 */	li r3, 0
/* 80C5BB00  48 00 00 74 */	b lbl_80C5BB74
lbl_80C5BB04:
/* 80C5BB04  38 60 00 C0 */	li r3, 0xc0
/* 80C5BB08  4B 67 31 44 */	b __nw__FUl
/* 80C5BB0C  7C 60 1B 79 */	or. r0, r3, r3
/* 80C5BB10  41 82 00 0C */	beq lbl_80C5BB1C
/* 80C5BB14  4B 41 FE 5C */	b __ct__4dBgWFv
/* 80C5BB18  7C 60 1B 78 */	mr r0, r3
lbl_80C5BB1C:
/* 80C5BB1C  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80C5BB20  80 1E 05 F4 */	lwz r0, 0x5f4(r30)
/* 80C5BB24  28 00 00 00 */	cmplwi r0, 0
/* 80C5BB28  40 82 00 0C */	bne lbl_80C5BB34
/* 80C5BB2C  38 60 00 00 */	li r3, 0
/* 80C5BB30  48 00 00 44 */	b lbl_80C5BB74
lbl_80C5BB34:
/* 80C5BB34  3C 60 80 C6 */	lis r3, stringBase0@ha
/* 80C5BB38  38 63 BD 70 */	addi r3, r3, stringBase0@l
/* 80C5BB3C  38 63 00 0A */	addi r3, r3, 0xa
/* 80C5BB40  38 80 00 07 */	li r4, 7
/* 80C5BB44  7F E5 FB 78 */	mr r5, r31
/* 80C5BB48  38 C0 00 80 */	li r6, 0x80
/* 80C5BB4C  4B 3E 07 A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C5BB50  7C 64 1B 78 */	mr r4, r3
/* 80C5BB54  80 7E 05 F4 */	lwz r3, 0x5f4(r30)
/* 80C5BB58  38 A0 00 01 */	li r5, 1
/* 80C5BB5C  38 DE 05 C4 */	addi r6, r30, 0x5c4
/* 80C5BB60  4B 41 E3 D8 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C5BB64  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C5BB68  20 60 00 01 */	subfic r3, r0, 1
/* 80C5BB6C  30 03 FF FF */	addic r0, r3, -1
/* 80C5BB70  7C 60 19 10 */	subfe r3, r0, r3
lbl_80C5BB74:
/* 80C5BB74  39 61 00 20 */	addi r11, r1, 0x20
/* 80C5BB78  4B 70 66 B0 */	b _restgpr_29
/* 80C5BB7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5BB80  7C 08 03 A6 */	mtlr r0
/* 80C5BB84  38 21 00 20 */	addi r1, r1, 0x20
/* 80C5BB88  4E 80 00 20 */	blr 
