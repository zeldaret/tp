lbl_80BADB70:
/* 80BADB70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BADB74  7C 08 02 A6 */	mflr r0
/* 80BADB78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BADB7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BADB80  93 C1 00 08 */	stw r30, 8(r1)
/* 80BADB84  7C 7E 1B 78 */	mr r30, r3
/* 80BADB88  48 00 03 59 */	bl getResName__11daObj_Bed_cFv
/* 80BADB8C  38 80 00 04 */	li r4, 4
/* 80BADB90  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BADB94  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BADB98  3F E5 00 02 */	addis r31, r5, 2
/* 80BADB9C  3B FF C2 F8 */	addi r31, r31, -15624
/* 80BADBA0  7F E5 FB 78 */	mr r5, r31
/* 80BADBA4  38 C0 00 80 */	li r6, 0x80
/* 80BADBA8  4B 48 E7 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BADBAC  28 03 00 00 */	cmplwi r3, 0
/* 80BADBB0  40 82 00 0C */	bne lbl_80BADBBC
/* 80BADBB4  38 60 00 00 */	li r3, 0
/* 80BADBB8  48 00 00 B0 */	b lbl_80BADC68
lbl_80BADBBC:
/* 80BADBBC  3C 80 00 08 */	lis r4, 8
/* 80BADBC0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BADBC4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BADBC8  4B 46 70 8D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BADBCC  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80BADBD0  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80BADBD4  28 00 00 00 */	cmplwi r0, 0
/* 80BADBD8  40 82 00 0C */	bne lbl_80BADBE4
/* 80BADBDC  38 60 00 00 */	li r3, 0
/* 80BADBE0  48 00 00 88 */	b lbl_80BADC68
lbl_80BADBE4:
/* 80BADBE4  38 60 00 C0 */	li r3, 0xc0
/* 80BADBE8  4B 72 10 65 */	bl __nw__FUl
/* 80BADBEC  7C 60 1B 79 */	or. r0, r3, r3
/* 80BADBF0  41 82 00 0C */	beq lbl_80BADBFC
/* 80BADBF4  4B 4C DD 7D */	bl __ct__4dBgWFv
/* 80BADBF8  7C 60 1B 78 */	mr r0, r3
lbl_80BADBFC:
/* 80BADBFC  90 1E 07 FC */	stw r0, 0x7fc(r30)
/* 80BADC00  80 1E 07 FC */	lwz r0, 0x7fc(r30)
/* 80BADC04  28 00 00 00 */	cmplwi r0, 0
/* 80BADC08  40 82 00 0C */	bne lbl_80BADC14
/* 80BADC0C  38 60 00 00 */	li r3, 0
/* 80BADC10  48 00 00 58 */	b lbl_80BADC68
lbl_80BADC14:
/* 80BADC14  7F C3 F3 78 */	mr r3, r30
/* 80BADC18  48 00 02 C9 */	bl getResName__11daObj_Bed_cFv
/* 80BADC1C  38 80 00 07 */	li r4, 7
/* 80BADC20  7F E5 FB 78 */	mr r5, r31
/* 80BADC24  38 C0 00 80 */	li r6, 0x80
/* 80BADC28  4B 48 E6 C5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BADC2C  7C 64 1B 78 */	mr r4, r3
/* 80BADC30  80 7E 07 FC */	lwz r3, 0x7fc(r30)
/* 80BADC34  38 A0 00 01 */	li r5, 1
/* 80BADC38  38 DE 07 CC */	addi r6, r30, 0x7cc
/* 80BADC3C  4B 4C C2 FD */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80BADC40  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BADC44  28 00 00 01 */	cmplwi r0, 1
/* 80BADC48  40 82 00 0C */	bne lbl_80BADC54
/* 80BADC4C  38 60 00 00 */	li r3, 0
/* 80BADC50  48 00 00 18 */	b lbl_80BADC68
lbl_80BADC54:
/* 80BADC54  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80BADC58  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80BADC5C  80 7E 07 FC */	lwz r3, 0x7fc(r30)
/* 80BADC60  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80BADC64  38 60 00 01 */	li r3, 1
lbl_80BADC68:
/* 80BADC68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BADC6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BADC70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BADC74  7C 08 03 A6 */	mtlr r0
/* 80BADC78  38 21 00 10 */	addi r1, r1, 0x10
/* 80BADC7C  4E 80 00 20 */	blr 
