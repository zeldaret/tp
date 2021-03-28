lbl_80C83C80:
/* 80C83C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C83C84  7C 08 02 A6 */	mflr r0
/* 80C83C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83C8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C83C90  7C 7F 1B 78 */	mr r31, r3
/* 80C83C94  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C83C98  3C 80 80 C8 */	lis r4, l_arcName@ha
/* 80C83C9C  38 84 46 F0 */	addi r4, r4, l_arcName@l
/* 80C83CA0  80 84 00 00 */	lwz r4, 0(r4)
/* 80C83CA4  4B 3A 92 18 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C83CA8  7C 60 1B 78 */	mr r0, r3
/* 80C83CAC  2C 00 00 04 */	cmpwi r0, 4
/* 80C83CB0  40 82 00 3C */	bne lbl_80C83CEC
/* 80C83CB4  7F E3 FB 78 */	mr r3, r31
/* 80C83CB8  3C 80 80 C8 */	lis r4, l_arcName@ha
/* 80C83CBC  38 84 46 F0 */	addi r4, r4, l_arcName@l
/* 80C83CC0  80 84 00 00 */	lwz r4, 0(r4)
/* 80C83CC4  38 A0 00 07 */	li r5, 7
/* 80C83CC8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C83CCC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C83CD0  38 E0 18 00 */	li r7, 0x1800
/* 80C83CD4  39 00 00 00 */	li r8, 0
/* 80C83CD8  4B 3F 4A E4 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C83CDC  7C 60 1B 78 */	mr r0, r3
/* 80C83CE0  2C 00 00 05 */	cmpwi r0, 5
/* 80C83CE4  40 82 00 08 */	bne lbl_80C83CEC
/* 80C83CE8  48 00 00 08 */	b lbl_80C83CF0
lbl_80C83CEC:
/* 80C83CEC  7C 03 03 78 */	mr r3, r0
lbl_80C83CF0:
/* 80C83CF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C83CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C83CF8  7C 08 03 A6 */	mtlr r0
/* 80C83CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C83D00  4E 80 00 20 */	blr 
