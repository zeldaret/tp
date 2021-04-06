lbl_80BF5AB4:
/* 80BF5AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF5AB8  7C 08 02 A6 */	mflr r0
/* 80BF5ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF5AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF5AC4  7C 7F 1B 78 */	mr r31, r3
/* 80BF5AC8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BF5ACC  54 00 05 BE */	clrlwi r0, r0, 0x16
/* 80BF5AD0  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80BF5AD4  41 82 00 34 */	beq lbl_80BF5B08
/* 80BF5AD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF5ADC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF5AE0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80BF5AE4  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80BF5AE8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BF5AEC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BF5AF0  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BF5AF4  4B 43 EE C9 */	bl isEventBit__11dSv_event_cCFUs
/* 80BF5AF8  2C 03 00 00 */	cmpwi r3, 0
/* 80BF5AFC  41 82 00 0C */	beq lbl_80BF5B08
/* 80BF5B00  38 60 00 05 */	li r3, 5
/* 80BF5B04  48 00 00 5C */	b lbl_80BF5B60
lbl_80BF5B08:
/* 80BF5B08  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BF5B0C  3C 80 80 BF */	lis r4, l_arcName@ha /* 0x80BF620C@ha */
/* 80BF5B10  38 84 62 0C */	addi r4, r4, l_arcName@l /* 0x80BF620C@l */
/* 80BF5B14  80 84 00 00 */	lwz r4, 0(r4)
/* 80BF5B18  4B 43 73 A5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BF5B1C  7C 60 1B 78 */	mr r0, r3
/* 80BF5B20  2C 00 00 04 */	cmpwi r0, 4
/* 80BF5B24  40 82 00 38 */	bne lbl_80BF5B5C
/* 80BF5B28  7F E3 FB 78 */	mr r3, r31
/* 80BF5B2C  3C 80 80 BF */	lis r4, l_arcName@ha /* 0x80BF620C@ha */
/* 80BF5B30  38 84 62 0C */	addi r4, r4, l_arcName@l /* 0x80BF620C@l */
/* 80BF5B34  80 84 00 00 */	lwz r4, 0(r4)
/* 80BF5B38  38 A0 00 0B */	li r5, 0xb
/* 80BF5B3C  38 C0 00 00 */	li r6, 0
/* 80BF5B40  38 E0 61 00 */	li r7, 0x6100
/* 80BF5B44  39 00 00 00 */	li r8, 0
/* 80BF5B48  4B 48 2C 75 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BF5B4C  7C 60 1B 78 */	mr r0, r3
/* 80BF5B50  2C 00 00 05 */	cmpwi r0, 5
/* 80BF5B54  40 82 00 08 */	bne lbl_80BF5B5C
/* 80BF5B58  48 00 00 08 */	b lbl_80BF5B60
lbl_80BF5B5C:
/* 80BF5B5C  7C 03 03 78 */	mr r3, r0
lbl_80BF5B60:
/* 80BF5B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF5B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF5B68  7C 08 03 A6 */	mtlr r0
/* 80BF5B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF5B70  4E 80 00 20 */	blr 
