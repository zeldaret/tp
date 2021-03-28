lbl_80C46A64:
/* 80C46A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46A68  7C 08 02 A6 */	mflr r0
/* 80C46A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46A70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C46A74  7C 7F 1B 78 */	mr r31, r3
/* 80C46A78  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C46A7C  3C 80 80 C4 */	lis r4, l_arcName@ha
/* 80C46A80  38 84 6F 98 */	addi r4, r4, l_arcName@l
/* 80C46A84  80 84 00 00 */	lwz r4, 0(r4)
/* 80C46A88  4B 3E 64 34 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C46A8C  7C 60 1B 78 */	mr r0, r3
/* 80C46A90  2C 00 00 04 */	cmpwi r0, 4
/* 80C46A94  40 82 00 38 */	bne lbl_80C46ACC
/* 80C46A98  7F E3 FB 78 */	mr r3, r31
/* 80C46A9C  3C 80 80 C4 */	lis r4, l_arcName@ha
/* 80C46AA0  38 84 6F 98 */	addi r4, r4, l_arcName@l
/* 80C46AA4  80 84 00 00 */	lwz r4, 0(r4)
/* 80C46AA8  38 A0 00 07 */	li r5, 7
/* 80C46AAC  38 C0 00 00 */	li r6, 0
/* 80C46AB0  38 E0 19 50 */	li r7, 0x1950
/* 80C46AB4  39 00 00 00 */	li r8, 0
/* 80C46AB8  4B 43 1D 04 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C46ABC  7C 60 1B 78 */	mr r0, r3
/* 80C46AC0  2C 00 00 05 */	cmpwi r0, 5
/* 80C46AC4  40 82 00 08 */	bne lbl_80C46ACC
/* 80C46AC8  48 00 00 08 */	b lbl_80C46AD0
lbl_80C46ACC:
/* 80C46ACC  7C 03 03 78 */	mr r3, r0
lbl_80C46AD0:
/* 80C46AD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C46AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46AD8  7C 08 03 A6 */	mtlr r0
/* 80C46ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46AE0  4E 80 00 20 */	blr 
