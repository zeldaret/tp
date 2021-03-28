lbl_806531E8:
/* 806531E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806531EC  7C 08 02 A6 */	mflr r0
/* 806531F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806531F4  39 61 00 20 */	addi r11, r1, 0x20
/* 806531F8  4B D0 EF E4 */	b _savegpr_29
/* 806531FC  7C 7F 1B 78 */	mr r31, r3
/* 80653200  3C 80 80 65 */	lis r4, lit_3800@ha
/* 80653204  3B C4 33 2C */	addi r30, r4, lit_3800@l
/* 80653208  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8065320C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80653210  40 82 00 1C */	bne lbl_8065322C
/* 80653214  28 1F 00 00 */	cmplwi r31, 0
/* 80653218  41 82 00 08 */	beq lbl_80653220
/* 8065321C  4B 9C 59 48 */	b __ct__10fopAc_ac_cFv
lbl_80653220:
/* 80653220  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80653224  60 00 00 08 */	ori r0, r0, 8
/* 80653228  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8065322C:
/* 8065322C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80653230  3C 80 80 65 */	lis r4, stringBase0@ha
/* 80653234  38 84 33 64 */	addi r4, r4, stringBase0@l
/* 80653238  4B 9D 9C 84 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8065323C  7C 7D 1B 78 */	mr r29, r3
/* 80653240  2C 1D 00 04 */	cmpwi r29, 4
/* 80653244  40 82 00 A4 */	bne lbl_806532E8
/* 80653248  7F E3 FB 78 */	mr r3, r31
/* 8065324C  3C 80 80 65 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80653250  38 84 31 C8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80653254  38 A0 3A A0 */	li r5, 0x3aa0
/* 80653258  4B 9C 72 58 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8065325C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80653260  40 82 00 0C */	bne lbl_8065326C
/* 80653264  38 60 00 05 */	li r3, 5
/* 80653268  48 00 00 84 */	b lbl_806532EC
lbl_8065326C:
/* 8065326C  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 80653270  28 04 00 00 */	cmplwi r4, 0
/* 80653274  41 82 00 28 */	beq lbl_8065329C
/* 80653278  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8065327C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80653280  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80653284  7F E5 FB 78 */	mr r5, r31
/* 80653288  4B A2 17 80 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8065328C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80653290  41 82 00 0C */	beq lbl_8065329C
/* 80653294  38 60 00 05 */	li r3, 5
/* 80653298  48 00 00 54 */	b lbl_806532EC
lbl_8065329C:
/* 8065329C  38 00 00 00 */	li r0, 0
/* 806532A0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806532A4  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 806532A8  D0 1F 05 88 */	stfs f0, 0x588(r31)
/* 806532AC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 806532B0  38 03 00 24 */	addi r0, r3, 0x24
/* 806532B4  90 1F 05 04 */	stw r0, 0x504(r31)
/* 806532B8  7F E3 FB 78 */	mr r3, r31
/* 806532BC  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 806532C0  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 806532C4  FC 60 10 90 */	fmr f3, f2
/* 806532C8  4B 9C 72 60 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806532CC  7F E3 FB 78 */	mr r3, r31
/* 806532D0  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 806532D4  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 806532D8  FC 60 10 90 */	fmr f3, f2
/* 806532DC  4B 9C 72 5C */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806532E0  7F E3 FB 78 */	mr r3, r31
/* 806532E4  4B FF FB B5 */	bl daB_ZANTS_Execute__FP11daB_ZANTS_c
lbl_806532E8:
/* 806532E8  7F A3 EB 78 */	mr r3, r29
lbl_806532EC:
/* 806532EC  39 61 00 20 */	addi r11, r1, 0x20
/* 806532F0  4B D0 EF 38 */	b _restgpr_29
/* 806532F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806532F8  7C 08 03 A6 */	mtlr r0
/* 806532FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80653300  4E 80 00 20 */	blr 
