lbl_80D0D868:
/* 80D0D868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0D86C  7C 08 02 A6 */	mflr r0
/* 80D0D870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0D874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0D878  7C 7F 1B 78 */	mr r31, r3
/* 80D0D87C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D0D880  3C 80 80 D1 */	lis r4, l_arcName@ha
/* 80D0D884  38 84 E6 78 */	addi r4, r4, l_arcName@l
/* 80D0D888  80 84 00 00 */	lwz r4, 0(r4)
/* 80D0D88C  4B 31 F6 30 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D0D890  7C 60 1B 78 */	mr r0, r3
/* 80D0D894  2C 00 00 04 */	cmpwi r0, 4
/* 80D0D898  40 82 00 38 */	bne lbl_80D0D8D0
/* 80D0D89C  7F E3 FB 78 */	mr r3, r31
/* 80D0D8A0  3C 80 80 D1 */	lis r4, l_arcName@ha
/* 80D0D8A4  38 84 E6 78 */	addi r4, r4, l_arcName@l
/* 80D0D8A8  80 84 00 00 */	lwz r4, 0(r4)
/* 80D0D8AC  38 A0 00 08 */	li r5, 8
/* 80D0D8B0  38 C0 00 00 */	li r6, 0
/* 80D0D8B4  38 E0 0C 20 */	li r7, 0xc20
/* 80D0D8B8  39 00 00 00 */	li r8, 0
/* 80D0D8BC  4B 36 AF 00 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D0D8C0  7C 60 1B 78 */	mr r0, r3
/* 80D0D8C4  2C 00 00 05 */	cmpwi r0, 5
/* 80D0D8C8  40 82 00 08 */	bne lbl_80D0D8D0
/* 80D0D8CC  48 00 00 08 */	b lbl_80D0D8D4
lbl_80D0D8D0:
/* 80D0D8D0  7C 03 03 78 */	mr r3, r0
lbl_80D0D8D4:
/* 80D0D8D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0D8D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0D8DC  7C 08 03 A6 */	mtlr r0
/* 80D0D8E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0D8E4  4E 80 00 20 */	blr 
