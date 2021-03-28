lbl_804911C8:
/* 804911C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804911CC  7C 08 02 A6 */	mflr r0
/* 804911D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804911D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804911D8  93 C1 00 08 */	stw r30, 8(r1)
/* 804911DC  7C 7E 1B 78 */	mr r30, r3
/* 804911E0  4B FF FC 71 */	bl getModelInfo__8daTbox_cFv
/* 804911E4  7C 64 1B 78 */	mr r4, r3
/* 804911E8  80 63 00 00 */	lwz r3, 0(r3)
/* 804911EC  80 84 00 10 */	lwz r4, 0x10(r4)
/* 804911F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804911F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804911F8  3C A5 00 02 */	addis r5, r5, 2
/* 804911FC  38 C0 00 80 */	li r6, 0x80
/* 80491200  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80491204  4B BA B0 E8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80491208  7C 7F 1B 78 */	mr r31, r3
/* 8049120C  38 60 00 C0 */	li r3, 0xc0
/* 80491210  4B E3 DA 3C */	b __nw__FUl
/* 80491214  7C 60 1B 79 */	or. r0, r3, r3
/* 80491218  41 82 00 0C */	beq lbl_80491224
/* 8049121C  4B BE A7 54 */	b __ct__4dBgWFv
/* 80491220  7C 60 1B 78 */	mr r0, r3
lbl_80491224:
/* 80491224  90 1E 07 38 */	stw r0, 0x738(r30)
/* 80491228  80 7E 07 38 */	lwz r3, 0x738(r30)
/* 8049122C  28 03 00 00 */	cmplwi r3, 0
/* 80491230  40 82 00 0C */	bne lbl_8049123C
/* 80491234  38 60 00 05 */	li r3, 5
/* 80491238  48 00 00 4C */	b lbl_80491284
lbl_8049123C:
/* 8049123C  7F E4 FB 78 */	mr r4, r31
/* 80491240  38 A0 00 01 */	li r5, 1
/* 80491244  38 DE 05 6C */	addi r6, r30, 0x56c
/* 80491248  4B BE 8C F0 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8049124C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80491250  28 00 00 01 */	cmplwi r0, 1
/* 80491254  40 82 00 0C */	bne lbl_80491260
/* 80491258  38 60 00 05 */	li r3, 5
/* 8049125C  48 00 00 28 */	b lbl_80491284
lbl_80491260:
/* 80491260  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80491264  38 03 5A D8 */	addi r0, r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80491268  80 7E 07 38 */	lwz r3, 0x738(r30)
/* 8049126C  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80491270  80 7E 07 38 */	lwz r3, 0x738(r30)
/* 80491274  4B BE A7 4C */	b Move__4dBgWFv
/* 80491278  38 00 00 00 */	li r0, 0
/* 8049127C  90 1E 07 3C */	stw r0, 0x73c(r30)
/* 80491280  38 60 00 04 */	li r3, 4
lbl_80491284:
/* 80491284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80491288  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049128C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80491290  7C 08 03 A6 */	mtlr r0
/* 80491294  38 21 00 10 */	addi r1, r1, 0x10
/* 80491298  4E 80 00 20 */	blr 
