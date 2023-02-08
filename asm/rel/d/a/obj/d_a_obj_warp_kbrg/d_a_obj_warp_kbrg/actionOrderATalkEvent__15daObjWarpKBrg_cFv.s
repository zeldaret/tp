lbl_80D27ED0:
/* 80D27ED0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D27ED4  7C 08 02 A6 */	mflr r0
/* 80D27ED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D27EDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D27EE0  4B 63 A2 F9 */	bl _savegpr_28
/* 80D27EE4  7C 7F 1B 78 */	mr r31, r3
/* 80D27EE8  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80D27EEC  83 83 10 18 */	lwz r28, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 80D27EF0  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80D27EF4  28 00 00 01 */	cmplwi r0, 1
/* 80D27EF8  40 82 00 28 */	bne lbl_80D27F20
/* 80D27EFC  38 00 00 02 */	li r0, 2
/* 80D27F00  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 80D27F04  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80D27F08  7F E4 FB 78 */	mr r4, r31
/* 80D27F0C  A0 BF 05 CC */	lhz r5, 0x5cc(r31)
/* 80D27F10  38 C0 00 00 */	li r6, 0
/* 80D27F14  38 E0 00 00 */	li r7, 0
/* 80D27F18  4B 52 20 79 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D27F1C  48 00 01 0C */	b lbl_80D28028
lbl_80D27F20:
/* 80D27F20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D27F24  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D27F28  3B BE 4F F8 */	addi r29, r30, 0x4ff8
/* 80D27F2C  7F A3 EB 78 */	mr r3, r29
/* 80D27F30  88 1F 05 D8 */	lbz r0, 0x5d8(r31)
/* 80D27F34  54 00 08 3C */	slwi r0, r0, 1
/* 80D27F38  7C 9F 02 14 */	add r4, r31, r0
/* 80D27F3C  A8 84 05 CE */	lha r4, 0x5ce(r4)
/* 80D27F40  4B 31 FA B9 */	bl startCheck__16dEvent_manager_cFs
/* 80D27F44  2C 03 00 00 */	cmpwi r3, 0
/* 80D27F48  41 82 00 6C */	beq lbl_80D27FB4
/* 80D27F4C  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80D27F50  D0 1C 09 AC */	stfs f0, 0x9ac(r28)
/* 80D27F54  C0 1F 06 2C */	lfs f0, 0x62c(r31)
/* 80D27F58  D0 1C 09 B0 */	stfs f0, 0x9b0(r28)
/* 80D27F5C  C0 1F 06 30 */	lfs f0, 0x630(r31)
/* 80D27F60  D0 1C 09 B4 */	stfs f0, 0x9b4(r28)
/* 80D27F64  80 1C 08 90 */	lwz r0, 0x890(r28)
/* 80D27F68  64 00 08 00 */	oris r0, r0, 0x800
/* 80D27F6C  60 00 04 00 */	ori r0, r0, 0x400
/* 80D27F70  90 1C 08 90 */	stw r0, 0x890(r28)
/* 80D27F74  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80D27F78  7F E4 FB 78 */	mr r4, r31
/* 80D27F7C  4B 31 B6 E1 */	bl setPt2__14dEvt_control_cFPv
/* 80D27F80  7F A3 EB 78 */	mr r3, r29
/* 80D27F84  3C 80 80 D3 */	lis r4, l_staff_name@ha /* 0x80D29744@ha */
/* 80D27F88  38 84 97 44 */	addi r4, r4, l_staff_name@l /* 0x80D29744@l */
/* 80D27F8C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D27F90  38 A0 00 00 */	li r5, 0
/* 80D27F94  38 C0 00 00 */	li r6, 0
/* 80D27F98  4B 31 FB 85 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D27F9C  90 7F 05 D4 */	stw r3, 0x5d4(r31)
/* 80D27FA0  38 00 00 04 */	li r0, 4
/* 80D27FA4  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 80D27FA8  7F E3 FB 78 */	mr r3, r31
/* 80D27FAC  48 00 02 A1 */	bl demoProc__15daObjWarpKBrg_cFv
/* 80D27FB0  48 00 00 78 */	b lbl_80D28028
lbl_80D27FB4:
/* 80D27FB4  7F E3 FB 78 */	mr r3, r31
/* 80D27FB8  48 00 0B 29 */	bl checkTalkDistance__15daObjWarpKBrg_cFv
/* 80D27FBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D27FC0  41 82 00 4C */	beq lbl_80D2800C
/* 80D27FC4  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80D27FC8  D0 1C 09 AC */	stfs f0, 0x9ac(r28)
/* 80D27FCC  C0 1F 06 2C */	lfs f0, 0x62c(r31)
/* 80D27FD0  D0 1C 09 B0 */	stfs f0, 0x9b0(r28)
/* 80D27FD4  C0 1F 06 30 */	lfs f0, 0x630(r31)
/* 80D27FD8  D0 1C 09 B4 */	stfs f0, 0x9b4(r28)
/* 80D27FDC  80 1C 08 90 */	lwz r0, 0x890(r28)
/* 80D27FE0  64 00 08 00 */	oris r0, r0, 0x800
/* 80D27FE4  60 00 04 00 */	ori r0, r0, 0x400
/* 80D27FE8  90 1C 08 90 */	stw r0, 0x890(r28)
/* 80D27FEC  38 60 00 03 */	li r3, 3
/* 80D27FF0  4B 30 7A A9 */	bl dComIfGp_TargetWarpPt_set__FUc
/* 80D27FF4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D27FF8  60 00 00 01 */	ori r0, r0, 1
/* 80D27FFC  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80D28000  38 00 00 0A */	li r0, 0xa
/* 80D28004  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D28008  48 00 00 20 */	b lbl_80D28028
lbl_80D2800C:
/* 80D2800C  80 9C 08 90 */	lwz r4, 0x890(r28)
/* 80D28010  3C 60 78 00 */	lis r3, 0x7800 /* 0x77FFFBFF@ha */
/* 80D28014  38 03 FB FF */	addi r0, r3, 0xFBFF /* 0x77FFFBFF@l */
/* 80D28018  7C 80 00 38 */	and r0, r4, r0
/* 80D2801C  90 1C 08 90 */	stw r0, 0x890(r28)
/* 80D28020  38 00 00 00 */	li r0, 0
/* 80D28024  98 1F 05 CA */	stb r0, 0x5ca(r31)
lbl_80D28028:
/* 80D28028  39 61 00 20 */	addi r11, r1, 0x20
/* 80D2802C  4B 63 A1 F9 */	bl _restgpr_28
/* 80D28030  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D28034  7C 08 03 A6 */	mtlr r0
/* 80D28038  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2803C  4E 80 00 20 */	blr 
