lbl_80D276B4:
/* 80D276B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D276B8  7C 08 02 A6 */	mflr r0
/* 80D276BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D276C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D276C4  7C 7F 1B 78 */	mr r31, r3
/* 80D276C8  88 03 05 CB */	lbz r0, 0x5cb(r3)
/* 80D276CC  28 00 00 00 */	cmplwi r0, 0
/* 80D276D0  40 82 00 24 */	bne lbl_80D276F4
/* 80D276D4  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80D276D8  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 80D276DC  38 00 00 01 */	li r0, 1
/* 80D276E0  98 1F 05 CB */	stb r0, 0x5cb(r31)
/* 80D276E4  38 00 00 00 */	li r0, 0
/* 80D276E8  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80D276EC  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80D276F0  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
lbl_80D276F4:
/* 80D276F4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D276F8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80D276FC  2C 00 00 01 */	cmpwi r0, 1
/* 80D27700  41 82 00 40 */	beq lbl_80D27740
/* 80D27704  40 80 00 68 */	bge lbl_80D2776C
/* 80D27708  2C 00 00 00 */	cmpwi r0, 0
/* 80D2770C  40 80 00 08 */	bge lbl_80D27714
/* 80D27710  48 00 00 5C */	b lbl_80D2776C
lbl_80D27714:
/* 80D27714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D27718  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2771C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D27720  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D27724  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D27728  A0 84 00 66 */	lhz r4, 0x66(r4)
/* 80D2772C  4B 30 D2 91 */	bl isEventBit__11dSv_event_cCFUs
/* 80D27730  2C 03 00 00 */	cmpwi r3, 0
/* 80D27734  41 82 00 38 */	beq lbl_80D2776C
/* 80D27738  38 60 00 05 */	li r3, 5
/* 80D2773C  48 00 00 CC */	b lbl_80D27808
lbl_80D27740:
/* 80D27740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D27744  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D27748  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D2774C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D27750  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D27754  A0 84 00 66 */	lhz r4, 0x66(r4)
/* 80D27758  4B 30 D2 65 */	bl isEventBit__11dSv_event_cCFUs
/* 80D2775C  2C 03 00 00 */	cmpwi r3, 0
/* 80D27760  40 82 00 0C */	bne lbl_80D2776C
/* 80D27764  38 60 00 05 */	li r3, 5
/* 80D27768  48 00 00 A0 */	b lbl_80D27808
lbl_80D2776C:
/* 80D2776C  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80D27770  3C 80 80 D3 */	lis r4, l_evArcName@ha /* 0x80D29738@ha */
/* 80D27774  38 84 97 38 */	addi r4, r4, l_evArcName@l /* 0x80D29738@l */
/* 80D27778  80 84 00 00 */	lwz r4, 0(r4)
/* 80D2777C  4B 30 57 41 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D27780  2C 03 00 04 */	cmpwi r3, 4
/* 80D27784  41 82 00 08 */	beq lbl_80D2778C
/* 80D27788  48 00 00 80 */	b lbl_80D27808
lbl_80D2778C:
/* 80D2778C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D27790  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D27794  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 80D27798  3C 80 80 D3 */	lis r4, l_arcName@ha /* 0x80D29730@ha */
/* 80D2779C  38 84 97 30 */	addi r4, r4, l_arcName@l /* 0x80D29730@l */
/* 80D277A0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D277A4  4B 30 57 19 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D277A8  7C 60 1B 78 */	mr r0, r3
/* 80D277AC  2C 00 00 04 */	cmpwi r0, 4
/* 80D277B0  40 82 00 54 */	bne lbl_80D27804
/* 80D277B4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D277B8  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 80D277BC  7F E3 FB 78 */	mr r3, r31
/* 80D277C0  3C 80 80 D3 */	lis r4, l_arcName@ha /* 0x80D29730@ha */
/* 80D277C4  38 84 97 30 */	addi r4, r4, l_arcName@l /* 0x80D29730@l */
/* 80D277C8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D277CC  3C A0 80 D3 */	lis r5, l_dzb_idx@ha /* 0x80D295BC@ha */
/* 80D277D0  38 A5 95 BC */	addi r5, r5, l_dzb_idx@l /* 0x80D295BC@l */
/* 80D277D4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80D277D8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80D277DC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80D277E0  3C E0 80 D3 */	lis r7, l_heap_size@ha /* 0x80D29600@ha */
/* 80D277E4  38 E7 96 00 */	addi r7, r7, l_heap_size@l /* 0x80D29600@l */
/* 80D277E8  7C E7 00 2E */	lwzx r7, r7, r0
/* 80D277EC  39 00 00 00 */	li r8, 0
/* 80D277F0  4B 35 0F CD */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D277F4  7C 60 1B 78 */	mr r0, r3
/* 80D277F8  2C 00 00 05 */	cmpwi r0, 5
/* 80D277FC  40 82 00 08 */	bne lbl_80D27804
/* 80D27800  48 00 00 08 */	b lbl_80D27808
lbl_80D27804:
/* 80D27804  7C 03 03 78 */	mr r3, r0
lbl_80D27808:
/* 80D27808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2780C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D27810  7C 08 03 A6 */	mtlr r0
/* 80D27814  38 21 00 10 */	addi r1, r1, 0x10
/* 80D27818  4E 80 00 20 */	blr 
