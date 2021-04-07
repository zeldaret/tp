lbl_8057CCDC:
/* 8057CCDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057CCE0  7C 08 02 A6 */	mflr r0
/* 8057CCE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057CCE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057CCEC  93 C1 00 08 */	stw r30, 8(r1)
/* 8057CCF0  7C 7F 1B 78 */	mr r31, r3
/* 8057CCF4  3C 60 80 58 */	lis r3, d_a_obj_fmobj__stringBase0@ha /* 0x8057CF74@ha */
/* 8057CCF8  38 63 CF 74 */	addi r3, r3, d_a_obj_fmobj__stringBase0@l /* 0x8057CF74@l */
/* 8057CCFC  38 80 00 04 */	li r4, 4
/* 8057CD00  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057CD04  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057CD08  3F C5 00 02 */	addis r30, r5, 2
/* 8057CD0C  3B DE C2 F8 */	addi r30, r30, -15624
/* 8057CD10  7F C5 F3 78 */	mr r5, r30
/* 8057CD14  38 C0 00 80 */	li r6, 0x80
/* 8057CD18  4B AB F5 D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8057CD1C  3C 80 00 08 */	lis r4, 8
/* 8057CD20  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8057CD24  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8057CD28  4B A9 7F 2D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8057CD2C  90 7F 05 74 */	stw r3, 0x574(r31)
/* 8057CD30  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8057CD34  28 00 00 00 */	cmplwi r0, 0
/* 8057CD38  40 82 00 0C */	bne lbl_8057CD44
/* 8057CD3C  38 60 00 00 */	li r3, 0
/* 8057CD40  48 00 00 88 */	b lbl_8057CDC8
lbl_8057CD44:
/* 8057CD44  38 60 00 C0 */	li r3, 0xc0
/* 8057CD48  4B D5 1F 05 */	bl __nw__FUl
/* 8057CD4C  7C 60 1B 79 */	or. r0, r3, r3
/* 8057CD50  41 82 00 0C */	beq lbl_8057CD5C
/* 8057CD54  4B AF EC 1D */	bl __ct__4dBgWFv
/* 8057CD58  7C 60 1B 78 */	mr r0, r3
lbl_8057CD5C:
/* 8057CD5C  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8057CD60  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8057CD64  28 00 00 00 */	cmplwi r0, 0
/* 8057CD68  40 82 00 0C */	bne lbl_8057CD74
/* 8057CD6C  38 60 00 00 */	li r3, 0
/* 8057CD70  48 00 00 58 */	b lbl_8057CDC8
lbl_8057CD74:
/* 8057CD74  3C 60 80 58 */	lis r3, d_a_obj_fmobj__stringBase0@ha /* 0x8057CF74@ha */
/* 8057CD78  38 63 CF 74 */	addi r3, r3, d_a_obj_fmobj__stringBase0@l /* 0x8057CF74@l */
/* 8057CD7C  38 80 00 07 */	li r4, 7
/* 8057CD80  7F C5 F3 78 */	mr r5, r30
/* 8057CD84  38 C0 00 80 */	li r6, 0x80
/* 8057CD88  4B AB F5 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8057CD8C  7C 64 1B 78 */	mr r4, r3
/* 8057CD90  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8057CD94  38 A0 00 01 */	li r5, 1
/* 8057CD98  38 DF 05 88 */	addi r6, r31, 0x588
/* 8057CD9C  4B AF D1 9D */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8057CDA0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8057CDA4  28 00 00 01 */	cmplwi r0, 1
/* 8057CDA8  40 82 00 0C */	bne lbl_8057CDB4
/* 8057CDAC  38 60 00 00 */	li r3, 0
/* 8057CDB0  48 00 00 18 */	b lbl_8057CDC8
lbl_8057CDB4:
/* 8057CDB4  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 8057CDB8  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 8057CDBC  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8057CDC0  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 8057CDC4  38 60 00 01 */	li r3, 1
lbl_8057CDC8:
/* 8057CDC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057CDCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057CDD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057CDD4  7C 08 03 A6 */	mtlr r0
/* 8057CDD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057CDDC  4E 80 00 20 */	blr 
