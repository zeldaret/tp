lbl_80D1316C:
/* 80D1316C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D13170  7C 08 02 A6 */	mflr r0
/* 80D13174  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D13178  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1317C  4B 64 F0 59 */	bl _savegpr_27
/* 80D13180  7C 7E 1B 78 */	mr r30, r3
/* 80D13184  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D13188  54 1C 07 3E */	clrlwi r28, r0, 0x1c
/* 80D1318C  54 1F 16 BA */	rlwinm r31, r0, 2, 0x1a, 0x1d
/* 80D13190  3C 60 80 D1 */	lis r3, l_arcName@ha /* 0x80D13624@ha */
/* 80D13194  3B A3 36 24 */	addi r29, r3, l_arcName@l /* 0x80D13624@l */
/* 80D13198  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80D1319C  3C 80 80 D1 */	lis r4, l_bmdIdx@ha /* 0x80D13604@ha */
/* 80D131A0  38 84 36 04 */	addi r4, r4, l_bmdIdx@l /* 0x80D13604@l */
/* 80D131A4  7C 84 F8 2E */	lwzx r4, r4, r31
/* 80D131A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D131AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D131B0  3F 65 00 02 */	addis r27, r5, 2
/* 80D131B4  3B 7B C2 F8 */	addi r27, r27, -15624
/* 80D131B8  7F 65 DB 78 */	mr r5, r27
/* 80D131BC  38 C0 00 80 */	li r6, 0x80
/* 80D131C0  4B 32 91 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D131C4  3C 80 00 08 */	lis r4, 8
/* 80D131C8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D131CC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D131D0  4B 30 1A 85 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D131D4  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80D131D8  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80D131DC  28 00 00 00 */	cmplwi r0, 0
/* 80D131E0  40 82 00 0C */	bne lbl_80D131EC
/* 80D131E4  38 60 00 00 */	li r3, 0
/* 80D131E8  48 00 00 B4 */	b lbl_80D1329C
lbl_80D131EC:
/* 80D131EC  28 1C 00 00 */	cmplwi r28, 0
/* 80D131F0  40 82 00 A8 */	bne lbl_80D13298
/* 80D131F4  38 60 00 C0 */	li r3, 0xc0
/* 80D131F8  4B 5B BA 55 */	bl __nw__FUl
/* 80D131FC  7C 60 1B 79 */	or. r0, r3, r3
/* 80D13200  41 82 00 0C */	beq lbl_80D1320C
/* 80D13204  4B 36 87 6D */	bl __ct__4dBgWFv
/* 80D13208  7C 60 1B 78 */	mr r0, r3
lbl_80D1320C:
/* 80D1320C  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80D13210  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80D13214  28 00 00 00 */	cmplwi r0, 0
/* 80D13218  40 82 00 0C */	bne lbl_80D13224
/* 80D1321C  38 60 00 00 */	li r3, 0
/* 80D13220  48 00 00 7C */	b lbl_80D1329C
lbl_80D13224:
/* 80D13224  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D13228  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D1322C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80D13230  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D13234  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80D13238  4B 63 36 B1 */	bl PSMTXTrans
/* 80D1323C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D13240  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D13244  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80D13248  4B 2F 91 ED */	bl mDoMtx_YrotM__FPA4_fs
/* 80D1324C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D13250  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D13254  38 9E 05 7C */	addi r4, r30, 0x57c
/* 80D13258  4B 63 32 59 */	bl PSMTXCopy
/* 80D1325C  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80D13260  38 80 00 07 */	li r4, 7
/* 80D13264  7F 65 DB 78 */	mr r5, r27
/* 80D13268  38 C0 00 80 */	li r6, 0x80
/* 80D1326C  4B 32 90 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D13270  7C 64 1B 78 */	mr r4, r3
/* 80D13274  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D13278  38 A0 00 01 */	li r5, 1
/* 80D1327C  38 DE 05 7C */	addi r6, r30, 0x57c
/* 80D13280  4B 36 6C B9 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D13284  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D13288  28 00 00 01 */	cmplwi r0, 1
/* 80D1328C  40 82 00 0C */	bne lbl_80D13298
/* 80D13290  38 60 00 00 */	li r3, 0
/* 80D13294  48 00 00 08 */	b lbl_80D1329C
lbl_80D13298:
/* 80D13298  38 60 00 01 */	li r3, 1
lbl_80D1329C:
/* 80D1329C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D132A0  4B 64 EF 81 */	bl _restgpr_27
/* 80D132A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D132A8  7C 08 03 A6 */	mtlr r0
/* 80D132AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D132B0  4E 80 00 20 */	blr 
