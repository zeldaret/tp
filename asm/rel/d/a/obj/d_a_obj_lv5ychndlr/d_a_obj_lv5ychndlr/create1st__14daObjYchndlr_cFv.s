lbl_80C6D758:
/* 80C6D758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D75C  7C 08 02 A6 */	mflr r0
/* 80C6D760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6D768  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6D76C  41 82 00 08 */	beq lbl_80C6D774
/* 80C6D770  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C6D774:
/* 80C6D774  3C 80 80 C7 */	lis r4, l_arcName@ha /* 0x80C6E9F4@ha */
/* 80C6D778  38 84 E9 F4 */	addi r4, r4, l_arcName@l /* 0x80C6E9F4@l */
/* 80C6D77C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C6D780  4B 3B F7 3D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C6D784  7C 60 1B 78 */	mr r0, r3
/* 80C6D788  2C 00 00 04 */	cmpwi r0, 4
/* 80C6D78C  40 82 00 3C */	bne lbl_80C6D7C8
/* 80C6D790  7F E3 FB 78 */	mr r3, r31
/* 80C6D794  3C 80 80 C7 */	lis r4, l_arcName@ha /* 0x80C6E9F4@ha */
/* 80C6D798  38 84 E9 F4 */	addi r4, r4, l_arcName@l /* 0x80C6E9F4@l */
/* 80C6D79C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C6D7A0  38 A0 00 08 */	li r5, 8
/* 80C6D7A4  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C6D7A8  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C6D7AC  38 E0 4D B0 */	li r7, 0x4db0
/* 80C6D7B0  39 1F 05 A8 */	addi r8, r31, 0x5a8
/* 80C6D7B4  4B 40 B0 09 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C6D7B8  7C 60 1B 78 */	mr r0, r3
/* 80C6D7BC  2C 00 00 05 */	cmpwi r0, 5
/* 80C6D7C0  40 82 00 08 */	bne lbl_80C6D7C8
/* 80C6D7C4  48 00 00 08 */	b lbl_80C6D7CC
lbl_80C6D7C8:
/* 80C6D7C8  7C 03 03 78 */	mr r3, r0
lbl_80C6D7CC:
/* 80C6D7CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6D7D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D7D4  7C 08 03 A6 */	mtlr r0
/* 80C6D7D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D7DC  4E 80 00 20 */	blr 
