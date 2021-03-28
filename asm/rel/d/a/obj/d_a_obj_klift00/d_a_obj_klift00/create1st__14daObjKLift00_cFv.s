lbl_8058B02C:
/* 8058B02C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B030  7C 08 02 A6 */	mflr r0
/* 8058B034  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B038  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058B03C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058B040  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8058B044  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 8058B048  90 03 06 1C */	stw r0, 0x61c(r3)
/* 8058B04C  80 63 06 1C */	lwz r3, 0x61c(r3)
/* 8058B050  38 03 00 01 */	addi r0, r3, 1
/* 8058B054  90 1F 06 14 */	stw r0, 0x614(r31)
/* 8058B058  7F E3 FB 78 */	mr r3, r31
/* 8058B05C  41 82 00 08 */	beq lbl_8058B064
/* 8058B060  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_8058B064:
/* 8058B064  3C 80 80 59 */	lis r4, l_arcName@ha
/* 8058B068  38 84 C3 F4 */	addi r4, r4, l_arcName@l
/* 8058B06C  80 84 00 00 */	lwz r4, 0(r4)
/* 8058B070  4B AA 1E 4C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8058B074  7C 60 1B 78 */	mr r0, r3
/* 8058B078  2C 00 00 04 */	cmpwi r0, 4
/* 8058B07C  40 82 00 3C */	bne lbl_8058B0B8
/* 8058B080  7F E3 FB 78 */	mr r3, r31
/* 8058B084  3C 80 80 59 */	lis r4, l_arcName@ha
/* 8058B088  38 84 C3 F4 */	addi r4, r4, l_arcName@l
/* 8058B08C  80 84 00 00 */	lwz r4, 0(r4)
/* 8058B090  38 A0 00 09 */	li r5, 9
/* 8058B094  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 8058B098  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 8058B09C  38 E0 20 00 */	li r7, 0x2000
/* 8058B0A0  39 00 00 00 */	li r8, 0
/* 8058B0A4  4B AE D7 18 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 8058B0A8  7C 60 1B 78 */	mr r0, r3
/* 8058B0AC  2C 00 00 05 */	cmpwi r0, 5
/* 8058B0B0  40 82 00 08 */	bne lbl_8058B0B8
/* 8058B0B4  48 00 00 08 */	b lbl_8058B0BC
lbl_8058B0B8:
/* 8058B0B8  7C 03 03 78 */	mr r3, r0
lbl_8058B0BC:
/* 8058B0BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058B0C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B0C4  7C 08 03 A6 */	mtlr r0
/* 8058B0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B0CC  4E 80 00 20 */	blr 
