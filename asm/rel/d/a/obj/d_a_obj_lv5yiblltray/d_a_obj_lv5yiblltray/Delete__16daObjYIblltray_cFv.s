lbl_80C70408:
/* 80C70408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7040C  7C 08 02 A6 */	mflr r0
/* 80C70410  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C70414  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C70418  7C 7F 1B 78 */	mr r31, r3
/* 80C7041C  80 63 06 34 */	lwz r3, 0x634(r3)
/* 80C70420  3C 03 00 01 */	addis r0, r3, 1
/* 80C70424  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C70428  41 82 00 20 */	beq lbl_80C70448
/* 80C7042C  90 61 00 08 */	stw r3, 8(r1)
/* 80C70430  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C70434  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C70438  38 81 00 08 */	addi r4, r1, 8
/* 80C7043C  4B 3A 93 BC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C70440  38 00 00 01 */	li r0, 1
/* 80C70444  98 03 0D B8 */	stb r0, 0xdb8(r3)
lbl_80C70448:
/* 80C70448  7F E3 FB 78 */	mr r3, r31
/* 80C7044C  28 1F 00 00 */	cmplwi r31, 0
/* 80C70450  41 82 00 08 */	beq lbl_80C70458
/* 80C70454  38 7F 05 A0 */	addi r3, r31, 0x5a0
lbl_80C70458:
/* 80C70458  3C 80 80 C7 */	lis r4, l_arcName@ha
/* 80C7045C  38 84 0A 38 */	addi r4, r4, l_arcName@l
/* 80C70460  80 84 00 00 */	lwz r4, 0(r4)
/* 80C70464  4B 3B CB A4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C70468  38 60 00 01 */	li r3, 1
/* 80C7046C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C70470  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C70474  7C 08 03 A6 */	mtlr r0
/* 80C70478  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7047C  4E 80 00 20 */	blr 
