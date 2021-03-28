lbl_80C1B878:
/* 80C1B878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1B87C  7C 08 02 A6 */	mflr r0
/* 80C1B880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1B884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1B888  7C 7F 1B 78 */	mr r31, r3
/* 80C1B88C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C1B890  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C1B894  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1B898  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C1B89C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C1B8A0  7C 05 07 74 */	extsb r5, r0
/* 80C1B8A4  4B 41 9A BC */	b isSwitch__10dSv_info_cCFii
/* 80C1B8A8  2C 03 00 00 */	cmpwi r3, 0
/* 80C1B8AC  41 82 00 0C */	beq lbl_80C1B8B8
/* 80C1B8B0  38 60 00 05 */	li r3, 5
/* 80C1B8B4  48 00 00 70 */	b lbl_80C1B924
lbl_80C1B8B8:
/* 80C1B8B8  7F E3 FB 78 */	mr r3, r31
/* 80C1B8BC  28 1F 00 00 */	cmplwi r31, 0
/* 80C1B8C0  41 82 00 08 */	beq lbl_80C1B8C8
/* 80C1B8C4  38 7F 05 A0 */	addi r3, r31, 0x5a0
lbl_80C1B8C8:
/* 80C1B8C8  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C1B8CC  38 84 C7 34 */	addi r4, r4, l_arcName@l
/* 80C1B8D0  80 84 00 00 */	lwz r4, 0(r4)
/* 80C1B8D4  4B 41 15 E8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C1B8D8  7C 60 1B 78 */	mr r0, r3
/* 80C1B8DC  2C 00 00 04 */	cmpwi r0, 4
/* 80C1B8E0  40 82 00 40 */	bne lbl_80C1B920
/* 80C1B8E4  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80C1B8E8  4B 72 AB 9C */	b PSMTXIdentity
/* 80C1B8EC  7F E3 FB 78 */	mr r3, r31
/* 80C1B8F0  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C1B8F4  38 84 C7 34 */	addi r4, r4, l_arcName@l
/* 80C1B8F8  80 84 00 00 */	lwz r4, 0(r4)
/* 80C1B8FC  38 A0 00 07 */	li r5, 7
/* 80C1B900  38 C0 00 00 */	li r6, 0
/* 80C1B904  38 E0 28 60 */	li r7, 0x2860
/* 80C1B908  39 1F 05 B8 */	addi r8, r31, 0x5b8
/* 80C1B90C  4B 45 CE B0 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C1B910  7C 60 1B 78 */	mr r0, r3
/* 80C1B914  2C 00 00 05 */	cmpwi r0, 5
/* 80C1B918  40 82 00 08 */	bne lbl_80C1B920
/* 80C1B91C  48 00 00 08 */	b lbl_80C1B924
lbl_80C1B920:
/* 80C1B920  7C 03 03 78 */	mr r3, r0
lbl_80C1B924:
/* 80C1B924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1B928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1B92C  7C 08 03 A6 */	mtlr r0
/* 80C1B930  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1B934  4E 80 00 20 */	blr 
