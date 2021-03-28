lbl_80CCDC0C:
/* 80CCDC0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCDC10  7C 08 02 A6 */	mflr r0
/* 80CCDC14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCDC18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCDC1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCDC20  7C 7E 1B 78 */	mr r30, r3
/* 80CCDC24  3C 80 80 CD */	lis r4, cNullVec__6Z2Calc@ha
/* 80CCDC28  3B E4 E1 7C */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80CCDC2C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CCDC30  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CCDC34  40 82 00 28 */	bne lbl_80CCDC5C
/* 80CCDC38  28 1E 00 00 */	cmplwi r30, 0
/* 80CCDC3C  41 82 00 14 */	beq lbl_80CCDC50
/* 80CCDC40  4B 3A A9 E4 */	b __ct__16dBgS_MoveBgActorFv
/* 80CCDC44  3C 60 80 CD */	lis r3, __vt__14daObj_Sekizo_c@ha
/* 80CCDC48  38 03 E2 04 */	addi r0, r3, __vt__14daObj_Sekizo_c@l
/* 80CCDC4C  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80CCDC50:
/* 80CCDC50  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CCDC54  60 00 00 08 */	ori r0, r0, 8
/* 80CCDC58  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CCDC5C:
/* 80CCDC5C  38 00 00 00 */	li r0, 0
/* 80CCDC60  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 80CCDC64  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80CCDC68  38 9F 00 20 */	addi r4, r31, 0x20
/* 80CCDC6C  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80CCDC70  54 00 18 38 */	slwi r0, r0, 3
/* 80CCDC74  7C 84 02 14 */	add r4, r4, r0
/* 80CCDC78  80 04 00 04 */	lwz r0, 4(r4)
/* 80CCDC7C  54 00 10 3A */	slwi r0, r0, 2
/* 80CCDC80  38 9F 00 30 */	addi r4, r31, 0x30
/* 80CCDC84  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CCDC88  4B 35 F2 34 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CCDC8C  7C 60 1B 78 */	mr r0, r3
/* 80CCDC90  2C 00 00 04 */	cmpwi r0, 4
/* 80CCDC94  40 82 00 50 */	bne lbl_80CCDCE4
/* 80CCDC98  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80CCDC9C  54 06 18 38 */	slwi r6, r0, 3
/* 80CCDCA0  7F C3 F3 78 */	mr r3, r30
/* 80CCDCA4  38 BF 00 28 */	addi r5, r31, 0x28
/* 80CCDCA8  7C 85 32 14 */	add r4, r5, r6
/* 80CCDCAC  80 04 00 04 */	lwz r0, 4(r4)
/* 80CCDCB0  54 00 10 3A */	slwi r0, r0, 2
/* 80CCDCB4  38 9F 00 30 */	addi r4, r31, 0x30
/* 80CCDCB8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CCDCBC  7C A5 30 2E */	lwzx r5, r5, r6
/* 80CCDCC0  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CCDCC4  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80CCDCC8  38 E0 40 00 */	li r7, 0x4000
/* 80CCDCCC  39 00 00 00 */	li r8, 0
/* 80CCDCD0  4B 3A AA EC */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CCDCD4  7C 60 1B 78 */	mr r0, r3
/* 80CCDCD8  2C 00 00 05 */	cmpwi r0, 5
/* 80CCDCDC  40 82 00 08 */	bne lbl_80CCDCE4
/* 80CCDCE0  48 00 00 08 */	b lbl_80CCDCE8
lbl_80CCDCE4:
/* 80CCDCE4  7C 03 03 78 */	mr r3, r0
lbl_80CCDCE8:
/* 80CCDCE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCDCEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCDCF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCDCF4  7C 08 03 A6 */	mtlr r0
/* 80CCDCF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCDCFC  4E 80 00 20 */	blr 
