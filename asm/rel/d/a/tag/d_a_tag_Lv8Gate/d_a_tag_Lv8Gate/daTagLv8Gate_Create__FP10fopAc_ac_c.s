lbl_80D51DC8:
/* 80D51DC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D51DCC  7C 08 02 A6 */	mflr r0
/* 80D51DD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D51DD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D51DD8  4B 61 04 04 */	b _savegpr_29
/* 80D51DDC  3C 80 80 D5 */	lis r4, lit_3749@ha
/* 80D51DE0  3B E4 24 CC */	addi r31, r4, lit_3749@l
/* 80D51DE4  7C 7D 1B 78 */	mr r29, r3
/* 80D51DE8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D51DEC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D51DF0  40 82 00 1C */	bne lbl_80D51E0C
/* 80D51DF4  28 1D 00 00 */	cmplwi r29, 0
/* 80D51DF8  41 82 00 08 */	beq lbl_80D51E00
/* 80D51DFC  4B 2C 6D 68 */	b __ct__10fopAc_ac_cFv
lbl_80D51E00:
/* 80D51E00  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80D51E04  60 00 00 08 */	ori r0, r0, 8
/* 80D51E08  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80D51E0C:
/* 80D51E0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D51E10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D51E14  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D51E18  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D51E1C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D51E20  A0 84 02 C4 */	lhz r4, 0x2c4(r4)
/* 80D51E24  4B 2E 2B 98 */	b isEventBit__11dSv_event_cCFUs
/* 80D51E28  2C 03 00 00 */	cmpwi r3, 0
/* 80D51E2C  40 82 00 0C */	bne lbl_80D51E38
/* 80D51E30  3B C0 00 05 */	li r30, 5
/* 80D51E34  48 00 00 D8 */	b lbl_80D51F0C
lbl_80D51E38:
/* 80D51E38  38 7D 05 70 */	addi r3, r29, 0x570
/* 80D51E3C  3C 80 80 D5 */	lis r4, l_arcName@ha
/* 80D51E40  38 84 25 10 */	addi r4, r4, l_arcName@l
/* 80D51E44  80 84 00 00 */	lwz r4, 0(r4)
/* 80D51E48  4B 2D B0 74 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D51E4C  7C 7E 1B 78 */	mr r30, r3
/* 80D51E50  2C 1E 00 04 */	cmpwi r30, 4
/* 80D51E54  40 82 00 B8 */	bne lbl_80D51F0C
/* 80D51E58  7F A3 EB 78 */	mr r3, r29
/* 80D51E5C  3C 80 80 D5 */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha
/* 80D51E60  38 84 1C 38 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l
/* 80D51E64  38 A0 16 00 */	li r5, 0x1600
/* 80D51E68  4B 2C 86 48 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D51E6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D51E70  40 82 00 0C */	bne lbl_80D51E7C
/* 80D51E74  3B C0 00 05 */	li r30, 5
/* 80D51E78  48 00 00 94 */	b lbl_80D51F0C
lbl_80D51E7C:
/* 80D51E7C  7F A3 EB 78 */	mr r3, r29
/* 80D51E80  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D51E84  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80D51E88  FC 60 08 90 */	fmr f3, f1
/* 80D51E8C  C0 9F 00 0C */	lfs f4, 0xc(r31)
/* 80D51E90  C0 BF 00 10 */	lfs f5, 0x10(r31)
/* 80D51E94  FC C0 20 90 */	fmr f6, f4
/* 80D51E98  4B 2C 86 B0 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D51E9C  88 1D 04 9A */	lbz r0, 0x49a(r29)
/* 80D51EA0  60 00 00 10 */	ori r0, r0, 0x10
/* 80D51EA4  98 1D 04 9A */	stb r0, 0x49a(r29)
/* 80D51EA8  38 00 00 10 */	li r0, 0x10
/* 80D51EAC  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80D51EB0  38 00 00 5A */	li r0, 0x5a
/* 80D51EB4  98 1D 05 48 */	stb r0, 0x548(r29)
/* 80D51EB8  38 00 FF FF */	li r0, -1
/* 80D51EBC  B0 1D 05 78 */	sth r0, 0x578(r29)
/* 80D51EC0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80D51EC4  28 03 00 00 */	cmplwi r3, 0
/* 80D51EC8  41 82 00 44 */	beq lbl_80D51F0C
/* 80D51ECC  38 03 00 24 */	addi r0, r3, 0x24
/* 80D51ED0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80D51ED4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80D51ED8  4B 2B AE 8C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D51EDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D51EE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D51EE4  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80D51EE8  3C 84 00 01 */	addis r4, r4, 1
/* 80D51EEC  38 04 80 00 */	addi r0, r4, -32768
/* 80D51EF0  7C 04 07 34 */	extsh r4, r0
/* 80D51EF4  4B 2B A5 40 */	b mDoMtx_YrotM__FPA4_fs
/* 80D51EF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D51EFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D51F00  80 9D 05 68 */	lwz r4, 0x568(r29)
/* 80D51F04  38 84 00 24 */	addi r4, r4, 0x24
/* 80D51F08  4B 5F 45 A8 */	b PSMTXCopy
lbl_80D51F0C:
/* 80D51F0C  7F C3 F3 78 */	mr r3, r30
/* 80D51F10  39 61 00 20 */	addi r11, r1, 0x20
/* 80D51F14  4B 61 03 14 */	b _restgpr_29
/* 80D51F18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D51F1C  7C 08 03 A6 */	mtlr r0
/* 80D51F20  38 21 00 20 */	addi r1, r1, 0x20
/* 80D51F24  4E 80 00 20 */	blr 
