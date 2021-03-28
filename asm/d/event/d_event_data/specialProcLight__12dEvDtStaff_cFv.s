lbl_80044190:
/* 80044190  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80044194  7C 08 02 A6 */	mflr r0
/* 80044198  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004419C  39 61 00 20 */	addi r11, r1, 0x20
/* 800441A0  48 31 E0 3D */	bl _savegpr_29
/* 800441A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800441A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800441AC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 800441B0  7F E3 FB 78 */	mr r3, r31
/* 800441B4  3C 80 80 38 */	lis r4, d_event_d_event_data__stringBase0@ha
/* 800441B8  38 84 9D D0 */	addi r4, r4, d_event_d_event_data__stringBase0@l
/* 800441BC  38 84 00 43 */	addi r4, r4, 0x43
/* 800441C0  38 A0 00 00 */	li r5, 0
/* 800441C4  38 C0 00 00 */	li r6, 0
/* 800441C8  48 00 39 55 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 800441CC  7C 7D 1B 78 */	mr r29, r3
/* 800441D0  2C 1D FF FF */	cmpwi r29, -1
/* 800441D4  41 82 01 38 */	beq lbl_8004430C
/* 800441D8  7F E3 FB 78 */	mr r3, r31
/* 800441DC  7F A4 EB 78 */	mr r4, r29
/* 800441E0  48 00 3D 7D */	bl getMyNowCutName__16dEvent_manager_cFi
/* 800441E4  7C 7E 1B 78 */	mr r30, r3
/* 800441E8  7F E3 FB 78 */	mr r3, r31
/* 800441EC  7F A4 EB 78 */	mr r4, r29
/* 800441F0  48 00 3B 5D */	bl getIsAddvance__16dEvent_manager_cFi
/* 800441F4  2C 03 00 00 */	cmpwi r3, 0
/* 800441F8  41 82 01 08 */	beq lbl_80044300
/* 800441FC  80 9E 00 00 */	lwz r4, 0(r30)
/* 80044200  3C 60 43 48 */	lis r3, 0x4348 /* 0x4348414E@ha */
/* 80044204  38 03 41 4E */	addi r0, r3, 0x414E /* 0x4348414E@l */
/* 80044208  7C 04 00 00 */	cmpw r4, r0
/* 8004420C  41 82 00 1C */	beq lbl_80044228
/* 80044210  40 80 00 F0 */	bge lbl_80044300
/* 80044214  3C 60 41 44 */	lis r3, 0x4144 /* 0x4144445F@ha */
/* 80044218  38 03 44 5F */	addi r0, r3, 0x445F /* 0x4144445F@l */
/* 8004421C  7C 04 00 00 */	cmpw r4, r0
/* 80044220  41 82 00 78 */	beq lbl_80044298
/* 80044224  48 00 00 DC */	b lbl_80044300
lbl_80044228:
/* 80044228  7F E3 FB 78 */	mr r3, r31
/* 8004422C  7F A4 EB 78 */	mr r4, r29
/* 80044230  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80044234  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80044238  38 A5 00 30 */	addi r5, r5, 0x30
/* 8004423C  38 C0 00 00 */	li r6, 0
/* 80044240  48 00 3E AD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80044244  28 03 00 00 */	cmplwi r3, 0
/* 80044248  41 82 00 14 */	beq lbl_8004425C
/* 8004424C  C0 22 84 D4 */	lfs f1, lit_4265(r2)
/* 80044250  C0 03 00 00 */	lfs f0, 0(r3)
/* 80044254  EC 21 00 32 */	fmuls f1, f1, f0
/* 80044258  48 16 49 11 */	bl dKy_instant_timechg__Ff
lbl_8004425C:
/* 8004425C  7F E3 FB 78 */	mr r3, r31
/* 80044260  7F A4 EB 78 */	mr r4, r29
/* 80044264  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80044268  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 8004426C  38 A5 00 49 */	addi r5, r5, 0x49
/* 80044270  38 C0 00 03 */	li r6, 3
/* 80044274  48 00 3E 79 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80044278  28 03 00 00 */	cmplwi r3, 0
/* 8004427C  41 82 00 84 */	beq lbl_80044300
/* 80044280  80 03 00 00 */	lwz r0, 0(r3)
/* 80044284  2C 00 00 00 */	cmpwi r0, 0
/* 80044288  41 82 00 08 */	beq lbl_80044290
/* 8004428C  48 00 00 74 */	b lbl_80044300
lbl_80044290:
/* 80044290  48 16 49 39 */	bl dKy_instant_rainchg__Fv
/* 80044294  48 00 00 6C */	b lbl_80044300
lbl_80044298:
/* 80044298  7F E3 FB 78 */	mr r3, r31
/* 8004429C  7F A4 EB 78 */	mr r4, r29
/* 800442A0  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 800442A4  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 800442A8  38 A5 00 30 */	addi r5, r5, 0x30
/* 800442AC  38 C0 00 00 */	li r6, 0
/* 800442B0  48 00 3E 3D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 800442B4  28 03 00 00 */	cmplwi r3, 0
/* 800442B8  41 82 00 48 */	beq lbl_80044300
/* 800442BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800442C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800442C4  C0 24 00 34 */	lfs f1, 0x34(r4)
/* 800442C8  C0 02 84 E0 */	lfs f0, lit_4460(r2)
/* 800442CC  EC 20 00 72 */	fmuls f1, f0, f1
/* 800442D0  C0 03 00 00 */	lfs f0, 0(r3)
/* 800442D4  EC 21 00 2A */	fadds f1, f1, f0
/* 800442D8  C8 02 84 E8 */	lfd f0, lit_4461(r2)
/* 800442DC  48 00 00 0C */	b lbl_800442E8
lbl_800442E0:
/* 800442E0  FC 21 00 28 */	fsub f1, f1, f0
/* 800442E4  FC 20 08 18 */	frsp f1, f1
lbl_800442E8:
/* 800442E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800442EC  4C 41 13 82 */	cror 2, 1, 2
/* 800442F0  41 82 FF F0 */	beq lbl_800442E0
/* 800442F4  C0 02 84 D4 */	lfs f0, lit_4265(r2)
/* 800442F8  EC 20 00 72 */	fmuls f1, f0, f1
/* 800442FC  48 16 48 6D */	bl dKy_instant_timechg__Ff
lbl_80044300:
/* 80044300  7F E3 FB 78 */	mr r3, r31
/* 80044304  7F A4 EB 78 */	mr r4, r29
/* 80044308  48 00 3E 75 */	bl cutEnd__16dEvent_manager_cFi
lbl_8004430C:
/* 8004430C  39 61 00 20 */	addi r11, r1, 0x20
/* 80044310  48 31 DF 19 */	bl _restgpr_29
/* 80044314  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80044318  7C 08 03 A6 */	mtlr r0
/* 8004431C  38 21 00 20 */	addi r1, r1, 0x20
/* 80044320  4E 80 00 20 */	blr 
