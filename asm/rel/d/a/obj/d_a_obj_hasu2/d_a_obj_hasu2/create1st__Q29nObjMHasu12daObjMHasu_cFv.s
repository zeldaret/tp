lbl_80C18340:
/* 80C18340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18344  7C 08 02 A6 */	mflr r0
/* 80C18348  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1834C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C18350  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C18354  41 82 00 08 */	beq lbl_80C1835C
/* 80C18358  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C1835C:
/* 80C1835C  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C18360  38 84 8A A8 */	addi r4, r4, l_arcName@l
/* 80C18364  80 84 00 00 */	lwz r4, 0(r4)
/* 80C18368  4B 41 4B 54 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C1836C  7C 60 1B 78 */	mr r0, r3
/* 80C18370  2C 00 00 04 */	cmpwi r0, 4
/* 80C18374  40 82 00 44 */	bne lbl_80C183B8
/* 80C18378  7F E3 FB 78 */	mr r3, r31
/* 80C1837C  48 00 00 55 */	bl setMtx__Q29nObjMHasu12daObjMHasu_cFv
/* 80C18380  7F E3 FB 78 */	mr r3, r31
/* 80C18384  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C18388  38 84 8A A8 */	addi r4, r4, l_arcName@l
/* 80C1838C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C18390  38 A0 00 07 */	li r5, 7
/* 80C18394  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C18398  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C1839C  38 E0 14 50 */	li r7, 0x1450
/* 80C183A0  39 1F 05 A8 */	addi r8, r31, 0x5a8
/* 80C183A4  4B 46 04 18 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C183A8  7C 60 1B 78 */	mr r0, r3
/* 80C183AC  2C 00 00 05 */	cmpwi r0, 5
/* 80C183B0  40 82 00 08 */	bne lbl_80C183B8
/* 80C183B4  48 00 00 08 */	b lbl_80C183BC
lbl_80C183B8:
/* 80C183B8  7C 03 03 78 */	mr r3, r0
lbl_80C183BC:
/* 80C183BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C183C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C183C4  7C 08 03 A6 */	mtlr r0
/* 80C183C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C183CC  4E 80 00 20 */	blr 
