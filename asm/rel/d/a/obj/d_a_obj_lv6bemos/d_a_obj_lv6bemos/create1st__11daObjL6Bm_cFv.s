lbl_80C7D2F8:
/* 80C7D2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7D2FC  7C 08 02 A6 */	mflr r0
/* 80C7D300  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7D304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7D308  7C 7F 1B 78 */	mr r31, r3
/* 80C7D30C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7D310  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7D314  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C7D318  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C7D31C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C7D320  7C 05 07 74 */	extsb r5, r0
/* 80C7D324  4B 3B 80 3D */	bl isSwitch__10dSv_info_cCFii
/* 80C7D328  2C 03 00 00 */	cmpwi r3, 0
/* 80C7D32C  41 82 00 0C */	beq lbl_80C7D338
/* 80C7D330  38 60 00 05 */	li r3, 5
/* 80C7D334  48 00 00 5C */	b lbl_80C7D390
lbl_80C7D338:
/* 80C7D338  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C7D33C  3C 80 80 C8 */	lis r4, l_arcName@ha /* 0x80C7DF98@ha */
/* 80C7D340  38 84 DF 98 */	addi r4, r4, l_arcName@l /* 0x80C7DF98@l */
/* 80C7D344  80 84 00 00 */	lwz r4, 0(r4)
/* 80C7D348  4B 3A FB 75 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C7D34C  7C 60 1B 78 */	mr r0, r3
/* 80C7D350  2C 00 00 04 */	cmpwi r0, 4
/* 80C7D354  40 82 00 38 */	bne lbl_80C7D38C
/* 80C7D358  7F E3 FB 78 */	mr r3, r31
/* 80C7D35C  3C 80 80 C8 */	lis r4, l_arcName@ha /* 0x80C7DF98@ha */
/* 80C7D360  38 84 DF 98 */	addi r4, r4, l_arcName@l /* 0x80C7DF98@l */
/* 80C7D364  80 84 00 00 */	lwz r4, 0(r4)
/* 80C7D368  38 A0 00 16 */	li r5, 0x16
/* 80C7D36C  38 C0 00 00 */	li r6, 0
/* 80C7D370  38 E0 40 00 */	li r7, 0x4000
/* 80C7D374  39 00 00 00 */	li r8, 0
/* 80C7D378  4B 3F B4 45 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C7D37C  7C 60 1B 78 */	mr r0, r3
/* 80C7D380  2C 00 00 05 */	cmpwi r0, 5
/* 80C7D384  40 82 00 08 */	bne lbl_80C7D38C
/* 80C7D388  48 00 00 08 */	b lbl_80C7D390
lbl_80C7D38C:
/* 80C7D38C  7C 03 03 78 */	mr r3, r0
lbl_80C7D390:
/* 80C7D390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7D394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7D398  7C 08 03 A6 */	mtlr r0
/* 80C7D39C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7D3A0  4E 80 00 20 */	blr 
