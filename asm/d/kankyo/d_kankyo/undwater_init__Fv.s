lbl_8019EAA0:
/* 8019EAA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019EAA4  7C 08 02 A6 */	mflr r0
/* 8019EAA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019EAAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8019EAB0  48 1C 37 25 */	bl _savegpr_27
/* 8019EAB4  3C 60 80 39 */	lis r3, d_kankyo_d_kankyo__stringBase0@ha
/* 8019EAB8  38 63 4C 6C */	addi r3, r3, d_kankyo_d_kankyo__stringBase0@l
/* 8019EABC  38 63 01 73 */	addi r3, r3, 0x173
/* 8019EAC0  38 80 00 1D */	li r4, 0x1d
/* 8019EAC4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8019EAC8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8019EACC  3F 85 00 02 */	addis r28, r5, 2
/* 8019EAD0  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8019EAD4  7F 85 E3 78 */	mr r5, r28
/* 8019EAD8  38 C0 00 80 */	li r6, 0x80
/* 8019EADC  4B E9 D8 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8019EAE0  7C 7B 1B 78 */	mr r27, r3
/* 8019EAE4  38 60 06 00 */	li r3, 0x600
/* 8019EAE8  38 80 00 20 */	li r4, 0x20
/* 8019EAEC  4B E7 05 59 */	bl mDoExt_createSolidHeapFromGameToCurrent__FUlUl
/* 8019EAF0  3C 80 80 43 */	lis r4, g_env_light@ha
/* 8019EAF4  3B A4 CA 54 */	addi r29, r4, g_env_light@l
/* 8019EAF8  90 7D 0F 38 */	stw r3, 0xf38(r29)
/* 8019EAFC  28 03 00 00 */	cmplwi r3, 0
/* 8019EB00  41 82 00 B8 */	beq lbl_8019EBB8
/* 8019EB04  7F 63 DB 78 */	mr r3, r27
/* 8019EB08  3C 80 00 08 */	lis r4, 8
/* 8019EB0C  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020202@ha */
/* 8019EB10  38 A5 02 02 */	addi r5, r5, 0x0202 /* 0x11020202@l */
/* 8019EB14  4B E7 61 41 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8019EB18  3C 80 80 43 */	lis r4, g_env_light@ha
/* 8019EB1C  38 84 CA 54 */	addi r4, r4, g_env_light@l
/* 8019EB20  90 64 0F 30 */	stw r3, 0xf30(r4)
/* 8019EB24  28 03 00 00 */	cmplwi r3, 0
/* 8019EB28  41 82 00 84 */	beq lbl_8019EBAC
/* 8019EB2C  38 60 00 18 */	li r3, 0x18
/* 8019EB30  48 13 01 1D */	bl __nw__FUl
/* 8019EB34  7C 7E 1B 79 */	or. r30, r3, r3
/* 8019EB38  41 82 00 20 */	beq lbl_8019EB58
/* 8019EB3C  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8019EB40  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8019EB44  90 1E 00 00 */	stw r0, 0(r30)
/* 8019EB48  38 80 00 00 */	li r4, 0
/* 8019EB4C  48 18 98 B1 */	bl init__12J3DFrameCtrlFs
/* 8019EB50  38 00 00 00 */	li r0, 0
/* 8019EB54  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_8019EB58:
/* 8019EB58  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8019EB5C  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 8019EB60  93 DF 10 5C */	stw r30, 0x105c(r31)
/* 8019EB64  28 1E 00 00 */	cmplwi r30, 0
/* 8019EB68  41 82 00 44 */	beq lbl_8019EBAC
/* 8019EB6C  3C 60 80 39 */	lis r3, d_kankyo_d_kankyo__stringBase0@ha
/* 8019EB70  38 63 4C 6C */	addi r3, r3, d_kankyo_d_kankyo__stringBase0@l
/* 8019EB74  38 63 01 73 */	addi r3, r3, 0x173
/* 8019EB78  38 80 00 3C */	li r4, 0x3c
/* 8019EB7C  7F 85 E3 78 */	mr r5, r28
/* 8019EB80  38 C0 00 80 */	li r6, 0x80
/* 8019EB84  4B E9 D7 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8019EB88  7C 65 1B 78 */	mr r5, r3
/* 8019EB8C  80 7F 10 5C */	lwz r3, 0x105c(r31)
/* 8019EB90  38 9B 00 58 */	addi r4, r27, 0x58
/* 8019EB94  38 C0 00 01 */	li r6, 1
/* 8019EB98  38 E0 00 02 */	li r7, 2
/* 8019EB9C  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 8019EBA0  39 00 00 00 */	li r8, 0
/* 8019EBA4  39 20 FF FF */	li r9, -1
/* 8019EBA8  4B E6 EA 95 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
lbl_8019EBAC:
/* 8019EBAC  4B E7 06 49 */	bl mDoExt_restoreCurrentHeap__Fv
/* 8019EBB0  80 7D 0F 38 */	lwz r3, 0xf38(r29)
/* 8019EBB4  4B E7 04 D9 */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
lbl_8019EBB8:
/* 8019EBB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8019EBBC  48 1C 36 65 */	bl _restgpr_27
/* 8019EBC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019EBC4  7C 08 03 A6 */	mtlr r0
/* 8019EBC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8019EBCC  4E 80 00 20 */	blr 
