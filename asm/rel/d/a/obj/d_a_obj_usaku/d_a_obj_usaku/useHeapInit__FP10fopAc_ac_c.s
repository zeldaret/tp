lbl_80D210A8:
/* 80D210A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D210AC  7C 08 02 A6 */	mflr r0
/* 80D210B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D210B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D210B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D210BC  7C 7F 1B 78 */	mr r31, r3
/* 80D210C0  3C 60 80 D2 */	lis r3, d_a_obj_usaku__stringBase0@ha /* 0x80D212EC@ha */
/* 80D210C4  38 63 12 EC */	addi r3, r3, d_a_obj_usaku__stringBase0@l /* 0x80D212EC@l */
/* 80D210C8  38 80 00 04 */	li r4, 4
/* 80D210CC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D210D0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D210D4  3F C5 00 02 */	addis r30, r5, 2
/* 80D210D8  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D210DC  7F C5 F3 78 */	mr r5, r30
/* 80D210E0  38 C0 00 80 */	li r6, 0x80
/* 80D210E4  4B 31 B2 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D210E8  3C 80 00 08 */	lis r4, 8
/* 80D210EC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D210F0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D210F4  4B 2F 3B 61 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D210F8  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80D210FC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80D21100  28 00 00 00 */	cmplwi r0, 0
/* 80D21104  40 82 00 0C */	bne lbl_80D21110
/* 80D21108  38 60 00 00 */	li r3, 0
/* 80D2110C  48 00 00 88 */	b lbl_80D21194
lbl_80D21110:
/* 80D21110  38 60 00 C0 */	li r3, 0xc0
/* 80D21114  4B 5A DB 39 */	bl __nw__FUl
/* 80D21118  7C 60 1B 79 */	or. r0, r3, r3
/* 80D2111C  41 82 00 0C */	beq lbl_80D21128
/* 80D21120  4B 35 A8 51 */	bl __ct__4dBgWFv
/* 80D21124  7C 60 1B 78 */	mr r0, r3
lbl_80D21128:
/* 80D21128  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 80D2112C  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80D21130  28 00 00 00 */	cmplwi r0, 0
/* 80D21134  40 82 00 0C */	bne lbl_80D21140
/* 80D21138  38 60 00 00 */	li r3, 0
/* 80D2113C  48 00 00 58 */	b lbl_80D21194
lbl_80D21140:
/* 80D21140  3C 60 80 D2 */	lis r3, d_a_obj_usaku__stringBase0@ha /* 0x80D212EC@ha */
/* 80D21144  38 63 12 EC */	addi r3, r3, d_a_obj_usaku__stringBase0@l /* 0x80D212EC@l */
/* 80D21148  38 80 00 07 */	li r4, 7
/* 80D2114C  7F C5 F3 78 */	mr r5, r30
/* 80D21150  38 C0 00 80 */	li r6, 0x80
/* 80D21154  4B 31 B1 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D21158  7C 64 1B 78 */	mr r4, r3
/* 80D2115C  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D21160  38 A0 00 01 */	li r5, 1
/* 80D21164  38 DF 05 80 */	addi r6, r31, 0x580
/* 80D21168  4B 35 8D D1 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D2116C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D21170  28 00 00 01 */	cmplwi r0, 1
/* 80D21174  40 82 00 0C */	bne lbl_80D21180
/* 80D21178  38 60 00 00 */	li r3, 0
/* 80D2117C  48 00 00 18 */	b lbl_80D21194
lbl_80D21180:
/* 80D21180  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80D21184  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80D21188  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D2118C  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80D21190  38 60 00 01 */	li r3, 1
lbl_80D21194:
/* 80D21194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D21198  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2119C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D211A0  7C 08 03 A6 */	mtlr r0
/* 80D211A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D211A8  4E 80 00 20 */	blr 
