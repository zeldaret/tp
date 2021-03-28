lbl_805A7424:
/* 805A7424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7428  7C 08 02 A6 */	mflr r0
/* 805A742C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7430  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A7434  93 C1 00 08 */	stw r30, 8(r1)
/* 805A7438  7C 7F 1B 78 */	mr r31, r3
/* 805A743C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A7440  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A7444  40 82 00 1C */	bne lbl_805A7460
/* 805A7448  28 1F 00 00 */	cmplwi r31, 0
/* 805A744C  41 82 00 08 */	beq lbl_805A7454
/* 805A7450  4B A7 17 14 */	b __ct__10fopAc_ac_cFv
lbl_805A7454:
/* 805A7454  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805A7458  60 00 00 08 */	ori r0, r0, 8
/* 805A745C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805A7460:
/* 805A7460  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A7464  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 805A7468  98 1F 05 97 */	stb r0, 0x597(r31)
/* 805A746C  88 1F 05 97 */	lbz r0, 0x597(r31)
/* 805A7470  54 00 10 3A */	slwi r0, r0, 2
/* 805A7474  3C 60 80 5B */	lis r3, l_evArcName@ha
/* 805A7478  38 63 82 40 */	addi r3, r3, l_evArcName@l
/* 805A747C  7C 83 00 2E */	lwzx r4, r3, r0
/* 805A7480  28 04 00 00 */	cmplwi r4, 0
/* 805A7484  41 82 00 18 */	beq lbl_805A749C
/* 805A7488  38 7F 05 70 */	addi r3, r31, 0x570
/* 805A748C  4B A8 5A 30 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805A7490  2C 03 00 04 */	cmpwi r3, 4
/* 805A7494  41 82 00 08 */	beq lbl_805A749C
/* 805A7498  48 00 00 64 */	b lbl_805A74FC
lbl_805A749C:
/* 805A749C  38 7F 05 68 */	addi r3, r31, 0x568
/* 805A74A0  3C 80 80 5B */	lis r4, l_arcName@ha
/* 805A74A4  38 84 82 1C */	addi r4, r4, l_arcName@l
/* 805A74A8  80 84 00 00 */	lwz r4, 0(r4)
/* 805A74AC  4B A8 5A 10 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805A74B0  7C 7E 1B 78 */	mr r30, r3
/* 805A74B4  2C 1E 00 04 */	cmpwi r30, 4
/* 805A74B8  40 82 00 40 */	bne lbl_805A74F8
/* 805A74BC  7F E3 FB 78 */	mr r3, r31
/* 805A74C0  3C 80 80 5A */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 805A74C4  38 84 6F 58 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 805A74C8  38 A0 11 00 */	li r5, 0x1100
/* 805A74CC  4B A7 2F E4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805A74D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A74D4  40 82 00 0C */	bne lbl_805A74E0
/* 805A74D8  38 60 00 05 */	li r3, 5
/* 805A74DC  48 00 00 20 */	b lbl_805A74FC
lbl_805A74E0:
/* 805A74E0  7F E3 FB 78 */	mr r3, r31
/* 805A74E4  4B FF FB 85 */	bl Create__13daTagStatue_cFv
/* 805A74E8  2C 03 00 00 */	cmpwi r3, 0
/* 805A74EC  40 82 00 0C */	bne lbl_805A74F8
/* 805A74F0  38 60 00 05 */	li r3, 5
/* 805A74F4  48 00 00 08 */	b lbl_805A74FC
lbl_805A74F8:
/* 805A74F8  7F C3 F3 78 */	mr r3, r30
lbl_805A74FC:
/* 805A74FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7500  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A7504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7508  7C 08 03 A6 */	mtlr r0
/* 805A750C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7510  4E 80 00 20 */	blr 
