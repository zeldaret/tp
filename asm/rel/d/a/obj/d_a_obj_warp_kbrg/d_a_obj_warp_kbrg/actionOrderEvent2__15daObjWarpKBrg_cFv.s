lbl_80D2814C:
/* 80D2814C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D28150  7C 08 02 A6 */	mflr r0
/* 80D28154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D28158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2815C  7C 7F 1B 78 */	mr r31, r3
/* 80D28160  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80D28164  28 00 00 02 */	cmplwi r0, 2
/* 80D28168  40 82 00 40 */	bne lbl_80D281A8
/* 80D2816C  38 00 00 09 */	li r0, 9
/* 80D28170  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 80D28174  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D28178  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D2817C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80D28180  3C 80 80 D3 */	lis r4, l_staff_name@ha
/* 80D28184  38 84 97 44 */	addi r4, r4, l_staff_name@l
/* 80D28188  80 84 00 00 */	lwz r4, 0(r4)
/* 80D2818C  38 A0 00 00 */	li r5, 0
/* 80D28190  38 C0 00 00 */	li r6, 0
/* 80D28194  4B 31 F9 88 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D28198  90 7F 05 D4 */	stw r3, 0x5d4(r31)
/* 80D2819C  7F E3 FB 78 */	mr r3, r31
/* 80D281A0  48 00 00 AD */	bl demoProc__15daObjWarpKBrg_cFv
/* 80D281A4  48 00 00 2C */	b lbl_80D281D0
lbl_80D281A8:
/* 80D281A8  88 1F 05 D8 */	lbz r0, 0x5d8(r31)
/* 80D281AC  54 00 08 3C */	slwi r0, r0, 1
/* 80D281B0  7C 9F 02 14 */	add r4, r31, r0
/* 80D281B4  A8 84 05 CE */	lha r4, 0x5ce(r4)
/* 80D281B8  38 A0 00 FF */	li r5, 0xff
/* 80D281BC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D281C0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D281C4  38 E0 00 02 */	li r7, 2
/* 80D281C8  39 00 00 01 */	li r8, 1
/* 80D281CC  4B 2F 34 B0 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80D281D0:
/* 80D281D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D281D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D281D8  7C 08 03 A6 */	mtlr r0
/* 80D281DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D281E0  4E 80 00 20 */	blr 
