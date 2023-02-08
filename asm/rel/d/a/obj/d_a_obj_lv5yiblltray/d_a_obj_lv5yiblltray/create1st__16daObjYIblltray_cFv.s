lbl_80C6EBF8:
/* 80C6EBF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6EBFC  7C 08 02 A6 */	mflr r0
/* 80C6EC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6EC04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6EC08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6EC0C  41 82 00 08 */	beq lbl_80C6EC14
/* 80C6EC10  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C6EC14:
/* 80C6EC14  3C 80 80 C7 */	lis r4, l_arcName@ha /* 0x80C70A38@ha */
/* 80C6EC18  38 84 0A 38 */	addi r4, r4, l_arcName@l /* 0x80C70A38@l */
/* 80C6EC1C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C6EC20  4B 3B E2 9D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C6EC24  7C 60 1B 78 */	mr r0, r3
/* 80C6EC28  2C 00 00 04 */	cmpwi r0, 4
/* 80C6EC2C  40 82 00 44 */	bne lbl_80C6EC70
/* 80C6EC30  7F E3 FB 78 */	mr r3, r31
/* 80C6EC34  48 00 00 55 */	bl setMtx__16daObjYIblltray_cFv
/* 80C6EC38  7F E3 FB 78 */	mr r3, r31
/* 80C6EC3C  3C 80 80 C7 */	lis r4, l_arcName@ha /* 0x80C70A38@ha */
/* 80C6EC40  38 84 0A 38 */	addi r4, r4, l_arcName@l /* 0x80C70A38@l */
/* 80C6EC44  80 84 00 00 */	lwz r4, 0(r4)
/* 80C6EC48  38 A0 00 0C */	li r5, 0xc
/* 80C6EC4C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C6EC50  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C6EC54  38 E0 12 10 */	li r7, 0x1210
/* 80C6EC58  39 1F 05 C0 */	addi r8, r31, 0x5c0
/* 80C6EC5C  4B 40 9B 61 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C6EC60  7C 60 1B 78 */	mr r0, r3
/* 80C6EC64  2C 00 00 05 */	cmpwi r0, 5
/* 80C6EC68  40 82 00 08 */	bne lbl_80C6EC70
/* 80C6EC6C  48 00 00 08 */	b lbl_80C6EC74
lbl_80C6EC70:
/* 80C6EC70  7C 03 03 78 */	mr r3, r0
lbl_80C6EC74:
/* 80C6EC74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6EC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6EC7C  7C 08 03 A6 */	mtlr r0
/* 80C6EC80  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6EC84  4E 80 00 20 */	blr 
