lbl_806EF8CC:
/* 806EF8CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806EF8D0  7C 08 02 A6 */	mflr r0
/* 806EF8D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 806EF8D8  39 61 00 30 */	addi r11, r1, 0x30
/* 806EF8DC  4B C7 28 FC */	b _savegpr_28
/* 806EF8E0  7C 7F 1B 78 */	mr r31, r3
/* 806EF8E4  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806EF8E8  38 63 09 5C */	addi r3, r3, stringBase0@l
/* 806EF8EC  38 80 00 16 */	li r4, 0x16
/* 806EF8F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806EF8F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806EF8F8  3F C5 00 02 */	addis r30, r5, 2
/* 806EF8FC  3B DE C2 F8 */	addi r30, r30, -15624
/* 806EF900  7F C5 F3 78 */	mr r5, r30
/* 806EF904  38 C0 00 80 */	li r6, 0x80
/* 806EF908  4B 94 C9 E4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806EF90C  7C 7C 1B 78 */	mr r28, r3
/* 806EF910  38 60 00 58 */	li r3, 0x58
/* 806EF914  4B BD F3 38 */	b __nw__FUl
/* 806EF918  7C 7D 1B 79 */	or. r29, r3, r3
/* 806EF91C  41 82 00 68 */	beq lbl_806EF984
/* 806EF920  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806EF924  38 63 09 5C */	addi r3, r3, stringBase0@l
/* 806EF928  38 80 00 10 */	li r4, 0x10
/* 806EF92C  7F C5 F3 78 */	mr r5, r30
/* 806EF930  38 C0 00 80 */	li r6, 0x80
/* 806EF934  4B 94 C9 B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806EF938  7C 67 1B 78 */	mr r7, r3
/* 806EF93C  38 1F 05 C8 */	addi r0, r31, 0x5c8
/* 806EF940  90 01 00 08 */	stw r0, 8(r1)
/* 806EF944  3C 00 00 08 */	lis r0, 8
/* 806EF948  90 01 00 0C */	stw r0, 0xc(r1)
/* 806EF94C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806EF950  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806EF954  90 01 00 10 */	stw r0, 0x10(r1)
/* 806EF958  7F A3 EB 78 */	mr r3, r29
/* 806EF95C  7F 84 E3 78 */	mr r4, r28
/* 806EF960  38 A0 00 00 */	li r5, 0
/* 806EF964  38 C0 00 00 */	li r6, 0
/* 806EF968  39 00 00 00 */	li r8, 0
/* 806EF96C  3D 20 80 6F */	lis r9, lit_3968@ha
/* 806EF970  C0 29 08 68 */	lfs f1, lit_3968@l(r9)
/* 806EF974  39 20 00 00 */	li r9, 0
/* 806EF978  39 40 FF FF */	li r10, -1
/* 806EF97C  4B 92 0E 54 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806EF980  7C 7D 1B 78 */	mr r29, r3
lbl_806EF984:
/* 806EF984  93 BF 05 BC */	stw r29, 0x5bc(r31)
/* 806EF988  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806EF98C  28 03 00 00 */	cmplwi r3, 0
/* 806EF990  41 82 00 10 */	beq lbl_806EF9A0
/* 806EF994  80 03 00 04 */	lwz r0, 4(r3)
/* 806EF998  28 00 00 00 */	cmplwi r0, 0
/* 806EF99C  40 82 00 0C */	bne lbl_806EF9A8
lbl_806EF9A0:
/* 806EF9A0  38 60 00 00 */	li r3, 0
/* 806EF9A4  48 00 01 78 */	b lbl_806EFB1C
lbl_806EF9A8:
/* 806EF9A8  80 7F 06 BC */	lwz r3, 0x6bc(r31)
/* 806EF9AC  3C 80 80 6F */	lis r4, stringBase0@ha
/* 806EF9B0  38 84 09 5C */	addi r4, r4, stringBase0@l
/* 806EF9B4  38 04 00 05 */	addi r0, r4, 5
/* 806EF9B8  7C 03 00 40 */	cmplw r3, r0
/* 806EF9BC  40 82 00 18 */	bne lbl_806EF9D4
/* 806EF9C0  38 80 00 03 */	li r4, 3
/* 806EF9C4  7F C5 F3 78 */	mr r5, r30
/* 806EF9C8  38 C0 00 80 */	li r6, 0x80
/* 806EF9CC  4B 94 C9 20 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806EF9D0  48 00 00 14 */	b lbl_806EF9E4
lbl_806EF9D4:
/* 806EF9D4  38 80 00 03 */	li r4, 3
/* 806EF9D8  7F C5 F3 78 */	mr r5, r30
/* 806EF9DC  38 C0 00 80 */	li r6, 0x80
/* 806EF9E0  4B 94 C9 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_806EF9E4:
/* 806EF9E4  3C 80 00 08 */	lis r4, 8
/* 806EF9E8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 806EF9EC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 806EF9F0  4B 92 52 64 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806EF9F4  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 806EF9F8  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 806EF9FC  28 00 00 00 */	cmplwi r0, 0
/* 806EFA00  40 82 00 0C */	bne lbl_806EFA0C
/* 806EFA04  38 60 00 00 */	li r3, 0
/* 806EFA08  48 00 01 14 */	b lbl_806EFB1C
lbl_806EFA0C:
/* 806EFA0C  38 60 00 C0 */	li r3, 0xc0
/* 806EFA10  4B BD F2 3C */	b __nw__FUl
/* 806EFA14  7C 60 1B 79 */	or. r0, r3, r3
/* 806EFA18  41 82 00 0C */	beq lbl_806EFA24
/* 806EFA1C  4B 98 BF 54 */	b __ct__4dBgWFv
/* 806EFA20  7C 60 1B 78 */	mr r0, r3
lbl_806EFA24:
/* 806EFA24  90 1F 0A B4 */	stw r0, 0xab4(r31)
/* 806EFA28  80 1F 0A B4 */	lwz r0, 0xab4(r31)
/* 806EFA2C  28 00 00 00 */	cmplwi r0, 0
/* 806EFA30  40 82 00 0C */	bne lbl_806EFA3C
/* 806EFA34  38 60 00 00 */	li r3, 0
/* 806EFA38  48 00 00 E4 */	b lbl_806EFB1C
lbl_806EFA3C:
/* 806EFA3C  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806EFA40  38 63 09 5C */	addi r3, r3, stringBase0@l
/* 806EFA44  38 80 00 1A */	li r4, 0x1a
/* 806EFA48  7F C5 F3 78 */	mr r5, r30
/* 806EFA4C  38 C0 00 80 */	li r6, 0x80
/* 806EFA50  4B 94 C8 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806EFA54  7C 64 1B 78 */	mr r4, r3
/* 806EFA58  80 7F 0A B4 */	lwz r3, 0xab4(r31)
/* 806EFA5C  38 A0 00 01 */	li r5, 1
/* 806EFA60  38 DF 0A 84 */	addi r6, r31, 0xa84
/* 806EFA64  4B 98 A4 D4 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 806EFA68  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 806EFA6C  28 00 00 01 */	cmplwi r0, 1
/* 806EFA70  40 82 00 0C */	bne lbl_806EFA7C
/* 806EFA74  38 60 00 00 */	li r3, 0
/* 806EFA78  48 00 00 A4 */	b lbl_806EFB1C
lbl_806EFA7C:
/* 806EFA7C  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 806EFA80  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 806EFA84  80 7F 0A B4 */	lwz r3, 0xab4(r31)
/* 806EFA88  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 806EFA8C  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806EFA90  38 63 09 5C */	addi r3, r3, stringBase0@l
/* 806EFA94  38 80 00 17 */	li r4, 0x17
/* 806EFA98  7F C5 F3 78 */	mr r5, r30
/* 806EFA9C  38 C0 00 80 */	li r6, 0x80
/* 806EFAA0  4B 94 C8 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806EFAA4  3C 80 00 08 */	lis r4, 8
/* 806EFAA8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 806EFAAC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 806EFAB0  4B 92 51 A4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806EFAB4  90 7F 05 C4 */	stw r3, 0x5c4(r31)
/* 806EFAB8  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 806EFABC  28 00 00 00 */	cmplwi r0, 0
/* 806EFAC0  40 82 00 0C */	bne lbl_806EFACC
/* 806EFAC4  38 60 00 00 */	li r3, 0
/* 806EFAC8  48 00 00 54 */	b lbl_806EFB1C
lbl_806EFACC:
/* 806EFACC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806EFAD0  80 A3 00 04 */	lwz r5, 4(r3)
/* 806EFAD4  93 E5 00 14 */	stw r31, 0x14(r5)
/* 806EFAD8  38 E0 00 00 */	li r7, 0
/* 806EFADC  3C 60 80 6F */	lis r3, JointCallBack__8daE_HZ_cFP8J3DJointi@ha
/* 806EFAE0  38 83 F8 80 */	addi r4, r3, JointCallBack__8daE_HZ_cFP8J3DJointi@l
/* 806EFAE4  48 00 00 20 */	b lbl_806EFB04
lbl_806EFAE8:
/* 806EFAE8  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 806EFAEC  41 82 00 14 */	beq lbl_806EFB00
/* 806EFAF0  80 66 00 28 */	lwz r3, 0x28(r6)
/* 806EFAF4  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 806EFAF8  7C 63 00 2E */	lwzx r3, r3, r0
/* 806EFAFC  90 83 00 04 */	stw r4, 4(r3)
lbl_806EFB00:
/* 806EFB00  38 E7 00 01 */	addi r7, r7, 1
lbl_806EFB04:
/* 806EFB04  80 C5 00 04 */	lwz r6, 4(r5)
/* 806EFB08  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 806EFB0C  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 806EFB10  7C 00 18 40 */	cmplw r0, r3
/* 806EFB14  41 80 FF D4 */	blt lbl_806EFAE8
/* 806EFB18  38 60 00 01 */	li r3, 1
lbl_806EFB1C:
/* 806EFB1C  39 61 00 30 */	addi r11, r1, 0x30
/* 806EFB20  4B C7 27 04 */	b _restgpr_28
/* 806EFB24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806EFB28  7C 08 03 A6 */	mtlr r0
/* 806EFB2C  38 21 00 30 */	addi r1, r1, 0x30
/* 806EFB30  4E 80 00 20 */	blr 
