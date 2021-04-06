lbl_8046E0F0:
/* 8046E0F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046E0F4  7C 08 02 A6 */	mflr r0
/* 8046E0F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046E0FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8046E100  4B EF 40 DD */	bl _savegpr_29
/* 8046E104  7C 7E 1B 78 */	mr r30, r3
/* 8046E108  3C 60 80 47 */	lis r3, d_a_obj_brakeeff__stringBase0@ha /* 0x8046E538@ha */
/* 8046E10C  38 63 E5 38 */	addi r3, r3, d_a_obj_brakeeff__stringBase0@l /* 0x8046E538@l */
/* 8046E110  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 8046E114  54 00 10 3A */	slwi r0, r0, 2
/* 8046E118  3C 80 80 47 */	lis r4, bef_bmd@ha /* 0x8046E54C@ha */
/* 8046E11C  38 84 E5 4C */	addi r4, r4, bef_bmd@l /* 0x8046E54C@l */
/* 8046E120  7C 84 00 2E */	lwzx r4, r4, r0
/* 8046E124  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046E128  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046E12C  3F E5 00 02 */	addis r31, r5, 2
/* 8046E130  3B FF C2 F8 */	addi r31, r31, -15624
/* 8046E134  7F E5 FB 78 */	mr r5, r31
/* 8046E138  38 C0 00 80 */	li r6, 0x80
/* 8046E13C  4B BC E1 B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8046E140  3C 80 00 08 */	lis r4, 8
/* 8046E144  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8046E148  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8046E14C  4B BA 6B 09 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8046E150  90 7E 05 74 */	stw r3, 0x574(r30)
/* 8046E154  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8046E158  28 00 00 00 */	cmplwi r0, 0
/* 8046E15C  40 82 00 0C */	bne lbl_8046E168
/* 8046E160  38 60 00 00 */	li r3, 0
/* 8046E164  48 00 01 34 */	b lbl_8046E298
lbl_8046E168:
/* 8046E168  38 60 00 18 */	li r3, 0x18
/* 8046E16C  4B E6 0A E1 */	bl __nw__FUl
/* 8046E170  7C 7D 1B 79 */	or. r29, r3, r3
/* 8046E174  41 82 00 20 */	beq lbl_8046E194
/* 8046E178  3C 80 80 47 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8046E604@ha */
/* 8046E17C  38 04 E6 04 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8046E604@l */
/* 8046E180  90 1D 00 00 */	stw r0, 0(r29)
/* 8046E184  38 80 00 00 */	li r4, 0
/* 8046E188  4B EB A2 75 */	bl init__12J3DFrameCtrlFs
/* 8046E18C  38 00 00 00 */	li r0, 0
/* 8046E190  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8046E194:
/* 8046E194  93 BE 05 78 */	stw r29, 0x578(r30)
/* 8046E198  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 8046E19C  28 00 00 00 */	cmplwi r0, 0
/* 8046E1A0  40 82 00 0C */	bne lbl_8046E1AC
/* 8046E1A4  38 60 00 00 */	li r3, 0
/* 8046E1A8  48 00 00 F0 */	b lbl_8046E298
lbl_8046E1AC:
/* 8046E1AC  3C 60 80 47 */	lis r3, d_a_obj_brakeeff__stringBase0@ha /* 0x8046E538@ha */
/* 8046E1B0  38 63 E5 38 */	addi r3, r3, d_a_obj_brakeeff__stringBase0@l /* 0x8046E538@l */
/* 8046E1B4  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 8046E1B8  54 00 10 3A */	slwi r0, r0, 2
/* 8046E1BC  3C 80 80 47 */	lis r4, bef_brk@ha /* 0x8046E554@ha */
/* 8046E1C0  38 84 E5 54 */	addi r4, r4, bef_brk@l /* 0x8046E554@l */
/* 8046E1C4  7C 84 00 2E */	lwzx r4, r4, r0
/* 8046E1C8  7F E5 FB 78 */	mr r5, r31
/* 8046E1CC  38 C0 00 80 */	li r6, 0x80
/* 8046E1D0  4B BC E1 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8046E1D4  7C 65 1B 78 */	mr r5, r3
/* 8046E1D8  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8046E1DC  80 83 00 04 */	lwz r4, 4(r3)
/* 8046E1E0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8046E1E4  38 84 00 58 */	addi r4, r4, 0x58
/* 8046E1E8  38 C0 00 01 */	li r6, 1
/* 8046E1EC  38 E0 00 00 */	li r7, 0
/* 8046E1F0  3D 00 80 47 */	lis r8, lit_3879@ha /* 0x8046E528@ha */
/* 8046E1F4  C0 28 E5 28 */	lfs f1, lit_3879@l(r8)  /* 0x8046E528@l */
/* 8046E1F8  39 00 00 00 */	li r8, 0
/* 8046E1FC  39 20 FF FF */	li r9, -1
/* 8046E200  4B B9 F5 0D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8046E204  2C 03 00 00 */	cmpwi r3, 0
/* 8046E208  40 82 00 0C */	bne lbl_8046E214
/* 8046E20C  38 60 00 00 */	li r3, 0
/* 8046E210  48 00 00 88 */	b lbl_8046E298
lbl_8046E214:
/* 8046E214  38 60 00 C0 */	li r3, 0xc0
/* 8046E218  4B E6 0A 35 */	bl __nw__FUl
/* 8046E21C  7C 60 1B 79 */	or. r0, r3, r3
/* 8046E220  41 82 00 0C */	beq lbl_8046E22C
/* 8046E224  4B C0 D7 4D */	bl __ct__4dBgWFv
/* 8046E228  7C 60 1B 78 */	mr r0, r3
lbl_8046E22C:
/* 8046E22C  90 1E 07 38 */	stw r0, 0x738(r30)
/* 8046E230  80 1E 07 38 */	lwz r0, 0x738(r30)
/* 8046E234  28 00 00 00 */	cmplwi r0, 0
/* 8046E238  40 82 00 0C */	bne lbl_8046E244
/* 8046E23C  38 60 00 00 */	li r3, 0
/* 8046E240  48 00 00 58 */	b lbl_8046E298
lbl_8046E244:
/* 8046E244  3C 60 80 47 */	lis r3, d_a_obj_brakeeff__stringBase0@ha /* 0x8046E538@ha */
/* 8046E248  38 63 E5 38 */	addi r3, r3, d_a_obj_brakeeff__stringBase0@l /* 0x8046E538@l */
/* 8046E24C  38 80 00 0D */	li r4, 0xd
/* 8046E250  7F E5 FB 78 */	mr r5, r31
/* 8046E254  38 C0 00 80 */	li r6, 0x80
/* 8046E258  4B BC E0 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8046E25C  7C 64 1B 78 */	mr r4, r3
/* 8046E260  80 7E 07 38 */	lwz r3, 0x738(r30)
/* 8046E264  38 A0 00 01 */	li r5, 1
/* 8046E268  38 DE 07 08 */	addi r6, r30, 0x708
/* 8046E26C  4B C0 BC CD */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8046E270  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8046E274  28 00 00 01 */	cmplwi r0, 1
/* 8046E278  40 82 00 0C */	bne lbl_8046E284
/* 8046E27C  38 60 00 00 */	li r3, 0
/* 8046E280  48 00 00 18 */	b lbl_8046E298
lbl_8046E284:
/* 8046E284  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 8046E288  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 8046E28C  80 7E 07 38 */	lwz r3, 0x738(r30)
/* 8046E290  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 8046E294  38 60 00 01 */	li r3, 1
lbl_8046E298:
/* 8046E298  39 61 00 20 */	addi r11, r1, 0x20
/* 8046E29C  4B EF 3F 8D */	bl _restgpr_29
/* 8046E2A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046E2A4  7C 08 03 A6 */	mtlr r0
/* 8046E2A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8046E2AC  4E 80 00 20 */	blr 
