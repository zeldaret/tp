lbl_80D00498:
/* 80D00498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0049C  7C 08 02 A6 */	mflr r0
/* 80D004A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D004A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D004A8  7C 7F 1B 78 */	mr r31, r3
/* 80D004AC  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D004B0  3C 80 80 D0 */	lis r4, l_arcName@ha
/* 80D004B4  38 84 0A E0 */	addi r4, r4, l_arcName@l
/* 80D004B8  80 84 00 00 */	lwz r4, 0(r4)
/* 80D004BC  4B 32 CA 00 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D004C0  7C 60 1B 78 */	mr r0, r3
/* 80D004C4  2C 00 00 04 */	cmpwi r0, 4
/* 80D004C8  40 82 00 38 */	bne lbl_80D00500
/* 80D004CC  7F E3 FB 78 */	mr r3, r31
/* 80D004D0  3C 80 80 D0 */	lis r4, l_arcName@ha
/* 80D004D4  38 84 0A E0 */	addi r4, r4, l_arcName@l
/* 80D004D8  80 84 00 00 */	lwz r4, 0(r4)
/* 80D004DC  38 A0 00 09 */	li r5, 9
/* 80D004E0  38 C0 00 00 */	li r6, 0
/* 80D004E4  38 E0 22 00 */	li r7, 0x2200
/* 80D004E8  39 00 00 00 */	li r8, 0
/* 80D004EC  4B 37 82 D0 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D004F0  7C 60 1B 78 */	mr r0, r3
/* 80D004F4  2C 00 00 05 */	cmpwi r0, 5
/* 80D004F8  40 82 00 08 */	bne lbl_80D00500
/* 80D004FC  48 00 00 08 */	b lbl_80D00504
lbl_80D00500:
/* 80D00500  7C 03 03 78 */	mr r3, r0
lbl_80D00504:
/* 80D00504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D00508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0050C  7C 08 03 A6 */	mtlr r0
/* 80D00510  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00514  4E 80 00 20 */	blr 
