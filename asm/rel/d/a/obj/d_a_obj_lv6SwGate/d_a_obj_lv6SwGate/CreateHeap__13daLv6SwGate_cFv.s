lbl_80C74158:
/* 80C74158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7415C  7C 08 02 A6 */	mflr r0
/* 80C74160  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C74164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C74168  93 C1 00 08 */	stw r30, 8(r1)
/* 80C7416C  7C 7F 1B 78 */	mr r31, r3
/* 80C74170  3C 60 80 C7 */	lis r3, stringBase0@ha
/* 80C74174  38 63 55 8C */	addi r3, r3, stringBase0@l
/* 80C74178  38 80 00 04 */	li r4, 4
/* 80C7417C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C74180  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C74184  3F C5 00 02 */	addis r30, r5, 2
/* 80C74188  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C7418C  7F C5 F3 78 */	mr r5, r30
/* 80C74190  38 C0 00 80 */	li r6, 0x80
/* 80C74194  4B 3C 81 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C74198  3C 80 00 08 */	lis r4, 8
/* 80C7419C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C741A0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C741A4  4B 3A 0A B0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C741A8  90 7F 14 B4 */	stw r3, 0x14b4(r31)
/* 80C741AC  80 1F 14 B4 */	lwz r0, 0x14b4(r31)
/* 80C741B0  28 00 00 00 */	cmplwi r0, 0
/* 80C741B4  40 82 00 0C */	bne lbl_80C741C0
/* 80C741B8  38 60 00 00 */	li r3, 0
/* 80C741BC  48 00 00 C8 */	b lbl_80C74284
lbl_80C741C0:
/* 80C741C0  3C 60 80 C7 */	lis r3, stringBase0@ha
/* 80C741C4  38 63 55 8C */	addi r3, r3, stringBase0@l
/* 80C741C8  38 80 00 04 */	li r4, 4
/* 80C741CC  7F C5 F3 78 */	mr r5, r30
/* 80C741D0  38 C0 00 80 */	li r6, 0x80
/* 80C741D4  4B 3C 81 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C741D8  3C 80 00 08 */	lis r4, 8
/* 80C741DC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C741E0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C741E4  4B 3A 0A 70 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C741E8  90 7F 14 B8 */	stw r3, 0x14b8(r31)
/* 80C741EC  80 1F 14 B8 */	lwz r0, 0x14b8(r31)
/* 80C741F0  28 00 00 00 */	cmplwi r0, 0
/* 80C741F4  40 82 00 0C */	bne lbl_80C74200
/* 80C741F8  38 60 00 00 */	li r3, 0
/* 80C741FC  48 00 00 88 */	b lbl_80C74284
lbl_80C74200:
/* 80C74200  38 60 00 C0 */	li r3, 0xc0
/* 80C74204  4B 65 AA 48 */	b __nw__FUl
/* 80C74208  7C 60 1B 79 */	or. r0, r3, r3
/* 80C7420C  41 82 00 0C */	beq lbl_80C74218
/* 80C74210  4B 40 77 60 */	b __ct__4dBgWFv
/* 80C74214  7C 60 1B 78 */	mr r0, r3
lbl_80C74218:
/* 80C74218  90 1F 14 C4 */	stw r0, 0x14c4(r31)
/* 80C7421C  80 1F 14 C4 */	lwz r0, 0x14c4(r31)
/* 80C74220  28 00 00 00 */	cmplwi r0, 0
/* 80C74224  41 82 00 4C */	beq lbl_80C74270
/* 80C74228  3C 60 80 C7 */	lis r3, stringBase0@ha
/* 80C7422C  38 63 55 8C */	addi r3, r3, stringBase0@l
/* 80C74230  38 80 00 07 */	li r4, 7
/* 80C74234  7F C5 F3 78 */	mr r5, r30
/* 80C74238  38 C0 00 80 */	li r6, 0x80
/* 80C7423C  4B 3C 80 B0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C74240  7C 64 1B 78 */	mr r4, r3
/* 80C74244  80 7F 14 C4 */	lwz r3, 0x14c4(r31)
/* 80C74248  38 A0 00 01 */	li r5, 1
/* 80C7424C  38 DF 14 C8 */	addi r6, r31, 0x14c8
/* 80C74250  4B 40 5C E8 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C74254  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C74258  40 82 00 18 */	bne lbl_80C74270
/* 80C7425C  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C74260  38 03 5A D8 */	addi r0, r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C74264  80 7F 14 C4 */	lwz r3, 0x14c4(r31)
/* 80C74268  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80C7426C  48 00 00 14 */	b lbl_80C74280
lbl_80C74270:
/* 80C74270  38 00 00 00 */	li r0, 0
/* 80C74274  90 1F 14 C4 */	stw r0, 0x14c4(r31)
/* 80C74278  38 60 00 00 */	li r3, 0
/* 80C7427C  48 00 00 08 */	b lbl_80C74284
lbl_80C74280:
/* 80C74280  38 60 00 01 */	li r3, 1
lbl_80C74284:
/* 80C74284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C74288  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C7428C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C74290  7C 08 03 A6 */	mtlr r0
/* 80C74294  38 21 00 10 */	addi r1, r1, 0x10
/* 80C74298  4E 80 00 20 */	blr 
