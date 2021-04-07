lbl_8085B894:
/* 8085B894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8085B898  7C 08 02 A6 */	mflr r0
/* 8085B89C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8085B8A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8085B8A4  4B B0 69 39 */	bl _savegpr_29
/* 8085B8A8  7C 7F 1B 78 */	mr r31, r3
/* 8085B8AC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8085B8B0  98 03 05 C5 */	stb r0, 0x5c5(r3)
/* 8085B8B4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8085B8B8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8085B8BC  40 82 00 8C */	bne lbl_8085B948
/* 8085B8C0  7F E0 FB 79 */	or. r0, r31, r31
/* 8085B8C4  41 82 00 78 */	beq lbl_8085B93C
/* 8085B8C8  7C 1E 03 78 */	mr r30, r0
/* 8085B8CC  4B 7B D2 99 */	bl __ct__10fopAc_ac_cFv
/* 8085B8D0  3B BE 05 74 */	addi r29, r30, 0x574
/* 8085B8D4  3C 60 80 86 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8085BAB0@ha */
/* 8085B8D8  38 03 BA B0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8085BAB0@l */
/* 8085B8DC  90 1E 05 74 */	stw r0, 0x574(r30)
/* 8085B8E0  7F A3 EB 78 */	mr r3, r29
/* 8085B8E4  38 80 00 00 */	li r4, 0
/* 8085B8E8  4B AC CB 15 */	bl init__12J3DFrameCtrlFs
/* 8085B8EC  38 00 00 00 */	li r0, 0
/* 8085B8F0  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8085B8F4  3B BE 05 8C */	addi r29, r30, 0x58c
/* 8085B8F8  3C 60 80 86 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8085BAB0@ha */
/* 8085B8FC  38 03 BA B0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8085BAB0@l */
/* 8085B900  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 8085B904  7F A3 EB 78 */	mr r3, r29
/* 8085B908  38 80 00 00 */	li r4, 0
/* 8085B90C  4B AC CA F1 */	bl init__12J3DFrameCtrlFs
/* 8085B910  38 00 00 00 */	li r0, 0
/* 8085B914  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8085B918  3B BE 05 A4 */	addi r29, r30, 0x5a4
/* 8085B91C  3C 60 80 86 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8085BAB0@ha */
/* 8085B920  38 03 BA B0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8085BAB0@l */
/* 8085B924  90 1E 05 A4 */	stw r0, 0x5a4(r30)
/* 8085B928  7F A3 EB 78 */	mr r3, r29
/* 8085B92C  38 80 00 00 */	li r4, 0
/* 8085B930  4B AC CA CD */	bl init__12J3DFrameCtrlFs
/* 8085B934  38 00 00 00 */	li r0, 0
/* 8085B938  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8085B93C:
/* 8085B93C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8085B940  60 00 00 08 */	ori r0, r0, 8
/* 8085B944  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8085B948:
/* 8085B948  88 1F 05 C5 */	lbz r0, 0x5c5(r31)
/* 8085B94C  28 00 00 01 */	cmplwi r0, 1
/* 8085B950  41 82 00 44 */	beq lbl_8085B994
/* 8085B954  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8085B958  3C 80 80 86 */	lis r4, d_a_kytag09__stringBase0@ha /* 0x8085BA4C@ha */
/* 8085B95C  38 84 BA 4C */	addi r4, r4, d_a_kytag09__stringBase0@l /* 0x8085BA4C@l */
/* 8085B960  4B 7D 15 5D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8085B964  7C 7E 1B 78 */	mr r30, r3
/* 8085B968  2C 1E 00 04 */	cmpwi r30, 4
/* 8085B96C  40 82 00 6C */	bne lbl_8085B9D8
/* 8085B970  7F E3 FB 78 */	mr r3, r31
/* 8085B974  3C 80 80 86 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8085B658@ha */
/* 8085B978  38 84 B6 58 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8085B658@l */
/* 8085B97C  38 A0 5E B0 */	li r5, 0x5eb0
/* 8085B980  4B 7B EB 31 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8085B984  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8085B988  40 82 00 50 */	bne lbl_8085B9D8
/* 8085B98C  38 60 00 05 */	li r3, 5
/* 8085B990  48 00 00 4C */	b lbl_8085B9DC
lbl_8085B994:
/* 8085B994  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8085B998  3C 80 80 86 */	lis r4, d_a_kytag09__stringBase0@ha /* 0x8085BA4C@ha */
/* 8085B99C  38 84 BA 4C */	addi r4, r4, d_a_kytag09__stringBase0@l /* 0x8085BA4C@l */
/* 8085B9A0  38 84 00 08 */	addi r4, r4, 8
/* 8085B9A4  4B 7D 15 19 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8085B9A8  7C 7E 1B 78 */	mr r30, r3
/* 8085B9AC  2C 1E 00 04 */	cmpwi r30, 4
/* 8085B9B0  40 82 00 28 */	bne lbl_8085B9D8
/* 8085B9B4  7F E3 FB 78 */	mr r3, r31
/* 8085B9B8  3C 80 80 86 */	lis r4, useHeapInit2__FP10fopAc_ac_c@ha /* 0x8085B7C0@ha */
/* 8085B9BC  38 84 B7 C0 */	addi r4, r4, useHeapInit2__FP10fopAc_ac_c@l /* 0x8085B7C0@l */
/* 8085B9C0  38 A0 18 80 */	li r5, 0x1880
/* 8085B9C4  4B 7B EA ED */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8085B9C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8085B9CC  40 82 00 0C */	bne lbl_8085B9D8
/* 8085B9D0  38 60 00 05 */	li r3, 5
/* 8085B9D4  48 00 00 08 */	b lbl_8085B9DC
lbl_8085B9D8:
/* 8085B9D8  7F C3 F3 78 */	mr r3, r30
lbl_8085B9DC:
/* 8085B9DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8085B9E0  4B B0 68 49 */	bl _restgpr_29
/* 8085B9E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8085B9E8  7C 08 03 A6 */	mtlr r0
/* 8085B9EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8085B9F0  4E 80 00 20 */	blr 
