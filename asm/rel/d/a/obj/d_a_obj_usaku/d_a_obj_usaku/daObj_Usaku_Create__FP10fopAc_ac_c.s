lbl_80D211AC:
/* 80D211AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D211B0  7C 08 02 A6 */	mflr r0
/* 80D211B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D211B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D211BC  4B 64 10 20 */	b _savegpr_29
/* 80D211C0  7C 7E 1B 78 */	mr r30, r3
/* 80D211C4  3C 80 80 D2 */	lis r4, lit_3744@ha
/* 80D211C8  3B E4 12 DC */	addi r31, r4, lit_3744@l
/* 80D211CC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D211D0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D211D4  40 82 00 1C */	bne lbl_80D211F0
/* 80D211D8  28 1E 00 00 */	cmplwi r30, 0
/* 80D211DC  41 82 00 08 */	beq lbl_80D211E4
/* 80D211E0  4B 2F 79 84 */	b __ct__10fopAc_ac_cFv
lbl_80D211E4:
/* 80D211E4  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D211E8  60 00 00 08 */	ori r0, r0, 8
/* 80D211EC  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D211F0:
/* 80D211F0  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D211F4  3C 80 80 D2 */	lis r4, stringBase0@ha
/* 80D211F8  38 84 12 EC */	addi r4, r4, stringBase0@l
/* 80D211FC  4B 30 BC C0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D21200  7C 7D 1B 78 */	mr r29, r3
/* 80D21204  2C 1D 00 04 */	cmpwi r29, 4
/* 80D21208  40 82 00 B0 */	bne lbl_80D212B8
/* 80D2120C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D21210  98 1E 05 70 */	stb r0, 0x570(r30)
/* 80D21214  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80D21218  28 00 00 FF */	cmplwi r0, 0xff
/* 80D2121C  40 82 00 0C */	bne lbl_80D21228
/* 80D21220  38 00 00 00 */	li r0, 0
/* 80D21224  98 1E 05 70 */	stb r0, 0x570(r30)
lbl_80D21228:
/* 80D21228  7F C3 F3 78 */	mr r3, r30
/* 80D2122C  3C 80 80 D2 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80D21230  38 84 10 A8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80D21234  38 A0 0C 60 */	li r5, 0xc60
/* 80D21238  4B 2F 92 78 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D2123C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D21240  40 82 00 0C */	bne lbl_80D2124C
/* 80D21244  38 60 00 05 */	li r3, 5
/* 80D21248  48 00 00 74 */	b lbl_80D212BC
lbl_80D2124C:
/* 80D2124C  80 9E 05 B0 */	lwz r4, 0x5b0(r30)
/* 80D21250  28 04 00 00 */	cmplwi r4, 0
/* 80D21254  41 82 00 28 */	beq lbl_80D2127C
/* 80D21258  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2125C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D21260  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D21264  7F C5 F3 78 */	mr r5, r30
/* 80D21268  4B 35 37 A0 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D2126C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D21270  41 82 00 0C */	beq lbl_80D2127C
/* 80D21274  38 60 00 05 */	li r3, 5
/* 80D21278  48 00 00 44 */	b lbl_80D212BC
lbl_80D2127C:
/* 80D2127C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D21280  38 03 00 24 */	addi r0, r3, 0x24
/* 80D21284  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D21288  7F C3 F3 78 */	mr r3, r30
/* 80D2128C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D21290  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80D21294  FC 60 08 90 */	fmr f3, f1
/* 80D21298  4B 2F 92 90 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80D2129C  7F C3 F3 78 */	mr r3, r30
/* 80D212A0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D212A4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80D212A8  FC 60 08 90 */	fmr f3, f1
/* 80D212AC  4B 2F 92 8C */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80D212B0  7F C3 F3 78 */	mr r3, r30
/* 80D212B4  4B FF FD 09 */	bl daObj_Usaku_Execute__FP15obj_usaku_class
lbl_80D212B8:
/* 80D212B8  7F A3 EB 78 */	mr r3, r29
lbl_80D212BC:
/* 80D212BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D212C0  4B 64 0F 68 */	b _restgpr_29
/* 80D212C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D212C8  7C 08 03 A6 */	mtlr r0
/* 80D212CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D212D0  4E 80 00 20 */	blr 
