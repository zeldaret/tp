lbl_80D1F414:
/* 80D1F414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F418  7C 08 02 A6 */	mflr r0
/* 80D1F41C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F420  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1F424  93 C1 00 08 */	stw r30, 8(r1)
/* 80D1F428  7C 7E 1B 78 */	mr r30, r3
/* 80D1F42C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80D1F430  3C 80 80 D2 */	lis r4, l_arcName@ha
/* 80D1F434  38 84 F8 F4 */	addi r4, r4, l_arcName@l
/* 80D1F438  80 84 00 00 */	lwz r4, 0(r4)
/* 80D1F43C  4B 30 DA 80 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D1F440  7C 7F 1B 78 */	mr r31, r3
/* 80D1F444  2C 1F 00 04 */	cmpwi r31, 4
/* 80D1F448  40 82 00 38 */	bne lbl_80D1F480
/* 80D1F44C  7F C3 F3 78 */	mr r3, r30
/* 80D1F450  3C 80 80 D2 */	lis r4, l_arcName@ha
/* 80D1F454  38 84 F8 F4 */	addi r4, r4, l_arcName@l
/* 80D1F458  80 84 00 00 */	lwz r4, 0(r4)
/* 80D1F45C  38 A0 00 07 */	li r5, 7
/* 80D1F460  38 C0 00 00 */	li r6, 0
/* 80D1F464  38 E0 40 00 */	li r7, 0x4000
/* 80D1F468  39 00 00 00 */	li r8, 0
/* 80D1F46C  4B 35 93 50 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D1F470  2C 03 00 05 */	cmpwi r3, 5
/* 80D1F474  40 82 00 0C */	bne lbl_80D1F480
/* 80D1F478  38 60 00 05 */	li r3, 5
/* 80D1F47C  48 00 00 08 */	b lbl_80D1F484
lbl_80D1F480:
/* 80D1F480  7F E3 FB 78 */	mr r3, r31
lbl_80D1F484:
/* 80D1F484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1F488  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D1F48C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F490  7C 08 03 A6 */	mtlr r0
/* 80D1F494  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F498  4E 80 00 20 */	blr 
