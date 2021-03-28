lbl_806388A0:
/* 806388A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806388A4  7C 08 02 A6 */	mflr r0
/* 806388A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806388AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806388B0  93 C1 00 08 */	stw r30, 8(r1)
/* 806388B4  7C 7F 1B 78 */	mr r31, r3
/* 806388B8  38 60 00 C0 */	li r3, 0xc0
/* 806388BC  4B C9 63 90 */	b __nw__FUl
/* 806388C0  7C 60 1B 79 */	or. r0, r3, r3
/* 806388C4  41 82 00 0C */	beq lbl_806388D0
/* 806388C8  4B A4 30 A8 */	b __ct__4dBgWFv
/* 806388CC  7C 60 1B 78 */	mr r0, r3
lbl_806388D0:
/* 806388D0  90 1F 10 14 */	stw r0, 0x1014(r31)
/* 806388D4  80 1F 10 14 */	lwz r0, 0x1014(r31)
/* 806388D8  28 00 00 00 */	cmplwi r0, 0
/* 806388DC  40 82 00 0C */	bne lbl_806388E8
/* 806388E0  38 60 00 00 */	li r3, 0
/* 806388E4  48 00 00 A4 */	b lbl_80638988
lbl_806388E8:
/* 806388E8  3C 60 80 64 */	lis r3, stringBase0@ha
/* 806388EC  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 806388F0  38 63 00 11 */	addi r3, r3, 0x11
/* 806388F4  38 80 00 09 */	li r4, 9
/* 806388F8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806388FC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80638900  3F C5 00 02 */	addis r30, r5, 2
/* 80638904  3B DE C2 F8 */	addi r30, r30, -15624
/* 80638908  7F C5 F3 78 */	mr r5, r30
/* 8063890C  38 C0 00 80 */	li r6, 0x80
/* 80638910  4B A0 39 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80638914  7C 64 1B 78 */	mr r4, r3
/* 80638918  80 7F 10 14 */	lwz r3, 0x1014(r31)
/* 8063891C  38 A0 00 00 */	li r5, 0
/* 80638920  38 DF 0F E4 */	addi r6, r31, 0xfe4
/* 80638924  4B A4 16 14 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80638928  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8063892C  28 00 00 01 */	cmplwi r0, 1
/* 80638930  40 82 00 0C */	bne lbl_8063893C
/* 80638934  38 60 00 00 */	li r3, 0
/* 80638938  48 00 00 50 */	b lbl_80638988
lbl_8063893C:
/* 8063893C  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80638940  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80638944  80 7F 10 14 */	lwz r3, 0x1014(r31)
/* 80638948  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 8063894C  3C 60 80 64 */	lis r3, stringBase0@ha
/* 80638950  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 80638954  38 63 00 11 */	addi r3, r3, 0x11
/* 80638958  38 80 00 04 */	li r4, 4
/* 8063895C  7F C5 F3 78 */	mr r5, r30
/* 80638960  38 C0 00 80 */	li r6, 0x80
/* 80638964  4B A0 39 88 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80638968  38 80 00 00 */	li r4, 0
/* 8063896C  3C A0 31 00 */	lis r5, 0x3100 /* 0x31000084@ha */
/* 80638970  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x31000084@l */
/* 80638974  4B 9D C2 E0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80638978  90 7F 05 FC */	stw r3, 0x5fc(r31)
/* 8063897C  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80638980  30 03 FF FF */	addic r0, r3, -1
/* 80638984  7C 60 19 10 */	subfe r3, r0, r3
lbl_80638988:
/* 80638988  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063898C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80638990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80638994  7C 08 03 A6 */	mtlr r0
/* 80638998  38 21 00 10 */	addi r1, r1, 0x10
/* 8063899C  4E 80 00 20 */	blr 
