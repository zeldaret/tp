lbl_80CC0F40:
/* 80CC0F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC0F44  7C 08 02 A6 */	mflr r0
/* 80CC0F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC0F4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC0F50  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC0F54  7C 7F 1B 78 */	mr r31, r3
/* 80CC0F58  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CC0F5C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CC0F60  40 82 00 28 */	bne lbl_80CC0F88
/* 80CC0F64  28 1F 00 00 */	cmplwi r31, 0
/* 80CC0F68  41 82 00 14 */	beq lbl_80CC0F7C
/* 80CC0F6C  4B 3B 76 B8 */	b __ct__16dBgS_MoveBgActorFv
/* 80CC0F70  3C 60 80 CC */	lis r3, __vt__13daObj_Roten_c@ha
/* 80CC0F74  38 03 14 A8 */	addi r0, r3, __vt__13daObj_Roten_c@l
/* 80CC0F78  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80CC0F7C:
/* 80CC0F7C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CC0F80  60 00 00 08 */	ori r0, r0, 8
/* 80CC0F84  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CC0F88:
/* 80CC0F88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC0F8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC0F90  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80CC0F94  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80CC0F98  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80CC0F9C  A0 84 00 80 */	lhz r4, 0x80(r4)
/* 80CC0FA0  4B 37 3A 1C */	b isEventBit__11dSv_event_cCFUs
/* 80CC0FA4  2C 03 00 00 */	cmpwi r3, 0
/* 80CC0FA8  40 82 00 0C */	bne lbl_80CC0FB4
/* 80CC0FAC  38 60 00 05 */	li r3, 5
/* 80CC0FB0  48 00 00 70 */	b lbl_80CC1020
lbl_80CC0FB4:
/* 80CC0FB4  7F E3 FB 78 */	mr r3, r31
/* 80CC0FB8  48 00 03 2D */	bl getResName__13daObj_Roten_cFv
/* 80CC0FBC  7C 64 1B 78 */	mr r4, r3
/* 80CC0FC0  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CC0FC4  4B 36 BE F8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CC0FC8  7C 7E 1B 78 */	mr r30, r3
/* 80CC0FCC  2C 1E 00 04 */	cmpwi r30, 4
/* 80CC0FD0  40 82 00 4C */	bne lbl_80CC101C
/* 80CC0FD4  7F E3 FB 78 */	mr r3, r31
/* 80CC0FD8  48 00 03 0D */	bl getResName__13daObj_Roten_cFv
/* 80CC0FDC  7C 64 1B 78 */	mr r4, r3
/* 80CC0FE0  7F E3 FB 78 */	mr r3, r31
/* 80CC0FE4  3C A0 80 CC */	lis r5, l_dzbFileIdx@ha
/* 80CC0FE8  38 A5 14 54 */	addi r5, r5, l_dzbFileIdx@l
/* 80CC0FEC  80 A5 00 00 */	lwz r5, 0(r5)
/* 80CC0FF0  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CC0FF4  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80CC0FF8  38 E0 14 30 */	li r7, 0x1430
/* 80CC0FFC  39 00 00 00 */	li r8, 0
/* 80CC1000  4B 3B 77 BC */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CC1004  2C 03 00 05 */	cmpwi r3, 5
/* 80CC1008  40 82 00 0C */	bne lbl_80CC1014
/* 80CC100C  38 60 00 05 */	li r3, 5
/* 80CC1010  48 00 00 10 */	b lbl_80CC1020
lbl_80CC1014:
/* 80CC1014  7F E3 FB 78 */	mr r3, r31
/* 80CC1018  4B 3B 79 38 */	b MoveBGExecute__16dBgS_MoveBgActorFv
lbl_80CC101C:
/* 80CC101C  7F C3 F3 78 */	mr r3, r30
lbl_80CC1020:
/* 80CC1020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC1024  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC1028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC102C  7C 08 03 A6 */	mtlr r0
/* 80CC1030  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC1034  4E 80 00 20 */	blr 
