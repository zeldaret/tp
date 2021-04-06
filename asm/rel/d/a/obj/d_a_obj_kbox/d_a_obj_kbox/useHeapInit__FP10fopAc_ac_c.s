lbl_80C3EAAC:
/* 80C3EAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3EAB0  7C 08 02 A6 */	mflr r0
/* 80C3EAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3EAB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3EABC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C3EAC0  7C 7F 1B 78 */	mr r31, r3
/* 80C3EAC4  3C 60 80 C4 */	lis r3, d_a_obj_kbox__stringBase0@ha /* 0x80C3F108@ha */
/* 80C3EAC8  38 63 F1 08 */	addi r3, r3, d_a_obj_kbox__stringBase0@l /* 0x80C3F108@l */
/* 80C3EACC  38 63 00 18 */	addi r3, r3, 0x18
/* 80C3EAD0  38 80 00 04 */	li r4, 4
/* 80C3EAD4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3EAD8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3EADC  3F C5 00 02 */	addis r30, r5, 2
/* 80C3EAE0  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C3EAE4  7F C5 F3 78 */	mr r5, r30
/* 80C3EAE8  38 C0 00 80 */	li r6, 0x80
/* 80C3EAEC  4B 3F D8 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C3EAF0  3C 80 00 08 */	lis r4, 8
/* 80C3EAF4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C3EAF8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C3EAFC  4B 3D 61 59 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C3EB00  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80C3EB04  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80C3EB08  28 00 00 00 */	cmplwi r0, 0
/* 80C3EB0C  40 82 00 0C */	bne lbl_80C3EB18
/* 80C3EB10  38 60 00 00 */	li r3, 0
/* 80C3EB14  48 00 00 A0 */	b lbl_80C3EBB4
lbl_80C3EB18:
/* 80C3EB18  90 1F 05 24 */	stw r0, 0x524(r31)
/* 80C3EB1C  38 60 00 C0 */	li r3, 0xc0
/* 80C3EB20  4B 69 01 2D */	bl __nw__FUl
/* 80C3EB24  7C 60 1B 79 */	or. r0, r3, r3
/* 80C3EB28  41 82 00 0C */	beq lbl_80C3EB34
/* 80C3EB2C  4B 43 CE 45 */	bl __ct__4dBgWFv
/* 80C3EB30  7C 60 1B 78 */	mr r0, r3
lbl_80C3EB34:
/* 80C3EB34  90 1F 09 A4 */	stw r0, 0x9a4(r31)
/* 80C3EB38  80 1F 09 A4 */	lwz r0, 0x9a4(r31)
/* 80C3EB3C  28 00 00 00 */	cmplwi r0, 0
/* 80C3EB40  40 82 00 0C */	bne lbl_80C3EB4C
/* 80C3EB44  38 60 00 00 */	li r3, 0
/* 80C3EB48  48 00 00 6C */	b lbl_80C3EBB4
lbl_80C3EB4C:
/* 80C3EB4C  3C 60 80 C4 */	lis r3, d_a_obj_kbox__stringBase0@ha /* 0x80C3F108@ha */
/* 80C3EB50  38 63 F1 08 */	addi r3, r3, d_a_obj_kbox__stringBase0@l /* 0x80C3F108@l */
/* 80C3EB54  38 63 00 18 */	addi r3, r3, 0x18
/* 80C3EB58  38 80 00 07 */	li r4, 7
/* 80C3EB5C  7F C5 F3 78 */	mr r5, r30
/* 80C3EB60  38 C0 00 80 */	li r6, 0x80
/* 80C3EB64  4B 3F D7 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C3EB68  7C 64 1B 78 */	mr r4, r3
/* 80C3EB6C  80 7F 09 A4 */	lwz r3, 0x9a4(r31)
/* 80C3EB70  38 A0 00 01 */	li r5, 1
/* 80C3EB74  38 DF 09 74 */	addi r6, r31, 0x974
/* 80C3EB78  4B 43 B3 C1 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C3EB7C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C3EB80  28 00 00 01 */	cmplwi r0, 1
/* 80C3EB84  40 82 00 0C */	bne lbl_80C3EB90
/* 80C3EB88  38 60 00 00 */	li r3, 0
/* 80C3EB8C  48 00 00 28 */	b lbl_80C3EBB4
lbl_80C3EB90:
/* 80C3EB90  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80C3EB94  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80C3EB98  80 7F 09 A4 */	lwz r3, 0x9a4(r31)
/* 80C3EB9C  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80C3EBA0  3C 60 80 C4 */	lis r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80C3D630@ha */
/* 80C3EBA4  38 03 D6 30 */	addi r0, r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80C3D630@l */
/* 80C3EBA8  80 7F 09 A4 */	lwz r3, 0x9a4(r31)
/* 80C3EBAC  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C3EBB0  38 60 00 01 */	li r3, 1
lbl_80C3EBB4:
/* 80C3EBB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3EBB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C3EBBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3EBC0  7C 08 03 A6 */	mtlr r0
/* 80C3EBC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3EBC8  4E 80 00 20 */	blr 
