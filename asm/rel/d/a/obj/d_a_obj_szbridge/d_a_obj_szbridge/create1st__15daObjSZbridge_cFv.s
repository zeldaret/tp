lbl_80D04424:
/* 80D04424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04428  7C 08 02 A6 */	mflr r0
/* 80D0442C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04430  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D04434  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D04438  41 82 00 08 */	beq lbl_80D04440
/* 80D0443C  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80D04440:
/* 80D04440  3C 80 80 D0 */	lis r4, l_arcName@ha
/* 80D04444  38 84 4C 8C */	addi r4, r4, l_arcName@l
/* 80D04448  80 84 00 00 */	lwz r4, 0(r4)
/* 80D0444C  4B 32 8A 70 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D04450  7C 60 1B 78 */	mr r0, r3
/* 80D04454  2C 00 00 04 */	cmpwi r0, 4
/* 80D04458  40 82 00 48 */	bne lbl_80D044A0
/* 80D0445C  7F E3 FB 78 */	mr r3, r31
/* 80D04460  48 00 00 59 */	bl setMtx__15daObjSZbridge_cFv
/* 80D04464  7F E3 FB 78 */	mr r3, r31
/* 80D04468  3C 80 80 D0 */	lis r4, l_arcName@ha
/* 80D0446C  38 84 4C 8C */	addi r4, r4, l_arcName@l
/* 80D04470  80 84 00 00 */	lwz r4, 0(r4)
/* 80D04474  38 A0 00 07 */	li r5, 7
/* 80D04478  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80D0447C  38 C6 5A 24 */	addi r6, r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80D04480  3C E0 00 01 */	lis r7, 0x0001 /* 0x00011190@ha */
/* 80D04484  38 E7 11 90 */	addi r7, r7, 0x1190 /* 0x00011190@l */
/* 80D04488  39 1F 05 A8 */	addi r8, r31, 0x5a8
/* 80D0448C  4B 37 43 30 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D04490  7C 60 1B 78 */	mr r0, r3
/* 80D04494  2C 00 00 05 */	cmpwi r0, 5
/* 80D04498  40 82 00 08 */	bne lbl_80D044A0
/* 80D0449C  48 00 00 08 */	b lbl_80D044A4
lbl_80D044A0:
/* 80D044A0  7C 03 03 78 */	mr r3, r0
lbl_80D044A4:
/* 80D044A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D044A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D044AC  7C 08 03 A6 */	mtlr r0
/* 80D044B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D044B4  4E 80 00 20 */	blr 
