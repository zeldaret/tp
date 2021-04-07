lbl_80D29E7C:
/* 80D29E7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D29E80  7C 08 02 A6 */	mflr r0
/* 80D29E84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D29E88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D29E8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D29E90  7C 7E 1B 78 */	mr r30, r3
/* 80D29E94  3C 60 80 D3 */	lis r3, l_bmd_idx@ha /* 0x80D2B7F8@ha */
/* 80D29E98  3B E3 B7 F8 */	addi r31, r3, l_bmd_idx@l /* 0x80D2B7F8@l */
/* 80D29E9C  88 1E 06 38 */	lbz r0, 0x638(r30)
/* 80D29EA0  28 00 00 00 */	cmplwi r0, 0
/* 80D29EA4  40 82 00 24 */	bne lbl_80D29EC8
/* 80D29EA8  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 80D29EAC  B0 1E 06 36 */	sth r0, 0x636(r30)
/* 80D29EB0  38 00 00 01 */	li r0, 1
/* 80D29EB4  98 1E 06 38 */	stb r0, 0x638(r30)
/* 80D29EB8  38 00 00 00 */	li r0, 0
/* 80D29EBC  B0 1E 04 B8 */	sth r0, 0x4b8(r30)
/* 80D29EC0  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80D29EC4  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
lbl_80D29EC8:
/* 80D29EC8  88 1E 04 99 */	lbz r0, 0x499(r30)
/* 80D29ECC  2C 00 00 01 */	cmpwi r0, 1
/* 80D29ED0  41 82 00 40 */	beq lbl_80D29F10
/* 80D29ED4  40 80 00 68 */	bge lbl_80D29F3C
/* 80D29ED8  2C 00 00 00 */	cmpwi r0, 0
/* 80D29EDC  40 80 00 08 */	bge lbl_80D29EE4
/* 80D29EE0  48 00 00 5C */	b lbl_80D29F3C
lbl_80D29EE4:
/* 80D29EE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D29EE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D29EEC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D29EF0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D29EF4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D29EF8  A0 84 00 FA */	lhz r4, 0xfa(r4)
/* 80D29EFC  4B 30 AA C1 */	bl isEventBit__11dSv_event_cCFUs
/* 80D29F00  2C 03 00 00 */	cmpwi r3, 0
/* 80D29F04  41 82 00 38 */	beq lbl_80D29F3C
/* 80D29F08  38 60 00 05 */	li r3, 5
/* 80D29F0C  48 00 00 E4 */	b lbl_80D29FF0
lbl_80D29F10:
/* 80D29F10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D29F14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D29F18  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D29F1C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D29F20  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D29F24  A0 84 00 FA */	lhz r4, 0xfa(r4)
/* 80D29F28  4B 30 AA 95 */	bl isEventBit__11dSv_event_cCFUs
/* 80D29F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80D29F30  40 82 00 0C */	bne lbl_80D29F3C
/* 80D29F34  38 60 00 05 */	li r3, 5
/* 80D29F38  48 00 00 B8 */	b lbl_80D29FF0
lbl_80D29F3C:
/* 80D29F3C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80D29F40  3C 80 80 D3 */	lis r4, l_arcName@ha /* 0x80D2B934@ha */
/* 80D29F44  38 84 B9 34 */	addi r4, r4, l_arcName@l /* 0x80D2B934@l */
/* 80D29F48  80 84 00 00 */	lwz r4, 0(r4)
/* 80D29F4C  4B 30 2F 71 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D29F50  7C 64 1B 78 */	mr r4, r3
/* 80D29F54  2C 04 00 04 */	cmpwi r4, 4
/* 80D29F58  40 82 00 94 */	bne lbl_80D29FEC
/* 80D29F5C  88 1E 04 99 */	lbz r0, 0x499(r30)
/* 80D29F60  28 00 00 00 */	cmplwi r0, 0
/* 80D29F64  38 E0 21 A0 */	li r7, 0x21a0
/* 80D29F68  41 82 00 08 */	beq lbl_80D29F70
/* 80D29F6C  38 E0 3B 40 */	li r7, 0x3b40
lbl_80D29F70:
/* 80D29F70  7F C3 F3 78 */	mr r3, r30
/* 80D29F74  3C 80 80 D3 */	lis r4, l_arcName@ha /* 0x80D2B934@ha */
/* 80D29F78  38 84 B9 34 */	addi r4, r4, l_arcName@l /* 0x80D2B934@l */
/* 80D29F7C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D29F80  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80D29F84  38 BF 00 08 */	addi r5, r31, 8
/* 80D29F88  7C A5 00 2E */	lwzx r5, r5, r0
/* 80D29F8C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80D29F90  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80D29F94  39 00 00 00 */	li r8, 0
/* 80D29F98  4B 34 E8 25 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D29F9C  7C 64 1B 78 */	mr r4, r3
/* 80D29FA0  2C 04 00 05 */	cmpwi r4, 5
/* 80D29FA4  40 82 00 08 */	bne lbl_80D29FAC
/* 80D29FA8  48 00 00 48 */	b lbl_80D29FF0
lbl_80D29FAC:
/* 80D29FAC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D29FB0  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D29FB4  28 00 00 FF */	cmplwi r0, 0xff
/* 80D29FB8  41 82 00 2C */	beq lbl_80D29FE4
/* 80D29FBC  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80D29FC0  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 80D29FC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D29FC8  3C 00 43 30 */	lis r0, 0x4330
/* 80D29FCC  90 01 00 08 */	stw r0, 8(r1)
/* 80D29FD0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D29FD4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D29FD8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D29FDC  D0 1E 06 2C */	stfs f0, 0x62c(r30)
/* 80D29FE0  48 00 00 0C */	b lbl_80D29FEC
lbl_80D29FE4:
/* 80D29FE4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80D29FE8  D0 1E 06 2C */	stfs f0, 0x62c(r30)
lbl_80D29FEC:
/* 80D29FEC  7C 83 23 78 */	mr r3, r4
lbl_80D29FF0:
/* 80D29FF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D29FF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D29FF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D29FFC  7C 08 03 A6 */	mtlr r0
/* 80D2A000  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2A004  4E 80 00 20 */	blr 
