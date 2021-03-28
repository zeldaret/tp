lbl_80D248F4:
/* 80D248F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D248F8  7C 08 02 A6 */	mflr r0
/* 80D248FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D24900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D24904  7C 7F 1B 78 */	mr r31, r3
/* 80D24908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2490C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D24910  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D24914  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D24918  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D2491C  A0 84 00 82 */	lhz r4, 0x82(r4)
/* 80D24920  4B 31 00 9C */	b isEventBit__11dSv_event_cCFUs
/* 80D24924  2C 03 00 00 */	cmpwi r3, 0
/* 80D24928  41 82 00 0C */	beq lbl_80D24934
/* 80D2492C  38 60 00 05 */	li r3, 5
/* 80D24930  48 00 00 8C */	b lbl_80D249BC
lbl_80D24934:
/* 80D24934  88 1F 09 63 */	lbz r0, 0x963(r31)
/* 80D24938  28 00 00 00 */	cmplwi r0, 0
/* 80D2493C  40 82 00 24 */	bne lbl_80D24960
/* 80D24940  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80D24944  B0 1F 09 64 */	sth r0, 0x964(r31)
/* 80D24948  38 00 00 00 */	li r0, 0
/* 80D2494C  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80D24950  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80D24954  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80D24958  38 00 00 01 */	li r0, 1
/* 80D2495C  98 1F 09 63 */	stb r0, 0x963(r31)
lbl_80D24960:
/* 80D24960  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D24964  3C 80 80 D2 */	lis r4, l_arcName@ha
/* 80D24968  38 84 6C 74 */	addi r4, r4, l_arcName@l
/* 80D2496C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D24970  4B 30 85 4C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D24974  7C 60 1B 78 */	mr r0, r3
/* 80D24978  2C 00 00 04 */	cmpwi r0, 4
/* 80D2497C  40 82 00 3C */	bne lbl_80D249B8
/* 80D24980  7F E3 FB 78 */	mr r3, r31
/* 80D24984  3C 80 80 D2 */	lis r4, l_arcName@ha
/* 80D24988  38 84 6C 74 */	addi r4, r4, l_arcName@l
/* 80D2498C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D24990  38 A0 00 18 */	li r5, 0x18
/* 80D24994  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80D24998  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80D2499C  38 E0 40 00 */	li r7, 0x4000
/* 80D249A0  39 00 00 00 */	li r8, 0
/* 80D249A4  4B 35 3E 18 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D249A8  7C 60 1B 78 */	mr r0, r3
/* 80D249AC  2C 00 00 05 */	cmpwi r0, 5
/* 80D249B0  40 82 00 08 */	bne lbl_80D249B8
/* 80D249B4  48 00 00 08 */	b lbl_80D249BC
lbl_80D249B8:
/* 80D249B8  7C 03 03 78 */	mr r3, r0
lbl_80D249BC:
/* 80D249BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D249C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D249C4  7C 08 03 A6 */	mtlr r0
/* 80D249C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D249CC  4E 80 00 20 */	blr 
