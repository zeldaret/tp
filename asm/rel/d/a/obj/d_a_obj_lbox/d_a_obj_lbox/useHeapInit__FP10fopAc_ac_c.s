lbl_80C53A38:
/* 80C53A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C53A3C  7C 08 02 A6 */	mflr r0
/* 80C53A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C53A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C53A48  93 C1 00 08 */	stw r30, 8(r1)
/* 80C53A4C  7C 7F 1B 78 */	mr r31, r3
/* 80C53A50  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C53A54  38 63 3F FC */	addi r3, r3, stringBase0@l
/* 80C53A58  38 80 00 04 */	li r4, 4
/* 80C53A5C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C53A60  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C53A64  3F C5 00 02 */	addis r30, r5, 2
/* 80C53A68  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C53A6C  7F C5 F3 78 */	mr r5, r30
/* 80C53A70  38 C0 00 80 */	li r6, 0x80
/* 80C53A74  4B 3E 88 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C53A78  3C 80 00 08 */	lis r4, 8
/* 80C53A7C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C53A80  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C53A84  4B 3C 11 D0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C53A88  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80C53A8C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80C53A90  28 00 00 00 */	cmplwi r0, 0
/* 80C53A94  40 82 00 0C */	bne lbl_80C53AA0
/* 80C53A98  38 60 00 00 */	li r3, 0
/* 80C53A9C  48 00 00 88 */	b lbl_80C53B24
lbl_80C53AA0:
/* 80C53AA0  38 60 00 C0 */	li r3, 0xc0
/* 80C53AA4  4B 67 B1 A8 */	b __nw__FUl
/* 80C53AA8  7C 60 1B 79 */	or. r0, r3, r3
/* 80C53AAC  41 82 00 0C */	beq lbl_80C53AB8
/* 80C53AB0  4B 42 7E C0 */	b __ct__4dBgWFv
/* 80C53AB4  7C 60 1B 78 */	mr r0, r3
lbl_80C53AB8:
/* 80C53AB8  90 1F 0A 80 */	stw r0, 0xa80(r31)
/* 80C53ABC  80 1F 0A 80 */	lwz r0, 0xa80(r31)
/* 80C53AC0  28 00 00 00 */	cmplwi r0, 0
/* 80C53AC4  40 82 00 0C */	bne lbl_80C53AD0
/* 80C53AC8  38 60 00 00 */	li r3, 0
/* 80C53ACC  48 00 00 58 */	b lbl_80C53B24
lbl_80C53AD0:
/* 80C53AD0  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C53AD4  38 63 3F FC */	addi r3, r3, stringBase0@l
/* 80C53AD8  38 80 00 07 */	li r4, 7
/* 80C53ADC  7F C5 F3 78 */	mr r5, r30
/* 80C53AE0  38 C0 00 80 */	li r6, 0x80
/* 80C53AE4  4B 3E 88 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C53AE8  7C 64 1B 78 */	mr r4, r3
/* 80C53AEC  80 7F 0A 80 */	lwz r3, 0xa80(r31)
/* 80C53AF0  38 A0 00 01 */	li r5, 1
/* 80C53AF4  38 DF 0A 50 */	addi r6, r31, 0xa50
/* 80C53AF8  4B 42 64 40 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C53AFC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C53B00  28 00 00 01 */	cmplwi r0, 1
/* 80C53B04  40 82 00 0C */	bne lbl_80C53B10
/* 80C53B08  38 60 00 00 */	li r3, 0
/* 80C53B0C  48 00 00 18 */	b lbl_80C53B24
lbl_80C53B10:
/* 80C53B10  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C53B14  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C53B18  80 7F 0A 80 */	lwz r3, 0xa80(r31)
/* 80C53B1C  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80C53B20  38 60 00 01 */	li r3, 1
lbl_80C53B24:
/* 80C53B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C53B28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C53B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C53B30  7C 08 03 A6 */	mtlr r0
/* 80C53B34  38 21 00 10 */	addi r1, r1, 0x10
/* 80C53B38  4E 80 00 20 */	blr 
