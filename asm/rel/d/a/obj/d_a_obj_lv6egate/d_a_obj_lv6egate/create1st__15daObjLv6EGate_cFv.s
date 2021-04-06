lbl_80C82078:
/* 80C82078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8207C  7C 08 02 A6 */	mflr r0
/* 80C82080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C82088  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8208C  41 82 00 08 */	beq lbl_80C82094
/* 80C82090  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C82094:
/* 80C82094  3C 80 80 C8 */	lis r4, l_arcName@ha /* 0x80C82BB0@ha */
/* 80C82098  38 84 2B B0 */	addi r4, r4, l_arcName@l /* 0x80C82BB0@l */
/* 80C8209C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C820A0  4B 3A AE 1D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C820A4  7C 60 1B 78 */	mr r0, r3
/* 80C820A8  2C 00 00 04 */	cmpwi r0, 4
/* 80C820AC  40 82 00 44 */	bne lbl_80C820F0
/* 80C820B0  7F E3 FB 78 */	mr r3, r31
/* 80C820B4  48 00 00 55 */	bl setMtx__15daObjLv6EGate_cFv
/* 80C820B8  7F E3 FB 78 */	mr r3, r31
/* 80C820BC  3C 80 80 C8 */	lis r4, l_arcName@ha /* 0x80C82BB0@ha */
/* 80C820C0  38 84 2B B0 */	addi r4, r4, l_arcName@l /* 0x80C82BB0@l */
/* 80C820C4  80 84 00 00 */	lwz r4, 0(r4)
/* 80C820C8  38 A0 00 03 */	li r5, 3
/* 80C820CC  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C820D0  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C820D4  38 E0 07 B0 */	li r7, 0x7b0
/* 80C820D8  39 1F 05 A8 */	addi r8, r31, 0x5a8
/* 80C820DC  4B 3F 66 E1 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C820E0  7C 60 1B 78 */	mr r0, r3
/* 80C820E4  2C 00 00 05 */	cmpwi r0, 5
/* 80C820E8  40 82 00 08 */	bne lbl_80C820F0
/* 80C820EC  48 00 00 08 */	b lbl_80C820F4
lbl_80C820F0:
/* 80C820F0  7C 03 03 78 */	mr r3, r0
lbl_80C820F4:
/* 80C820F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C820F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C820FC  7C 08 03 A6 */	mtlr r0
/* 80C82100  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82104  4E 80 00 20 */	blr 
