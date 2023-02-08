lbl_80C5C058:
/* 80C5C058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C05C  7C 08 02 A6 */	mflr r0
/* 80C5C060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5C068  7C 7F 1B 78 */	mr r31, r3
/* 80C5C06C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C5C070  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5C074  54 00 36 BA */	rlwinm r0, r0, 6, 0x1a, 0x1d
/* 80C5C078  3C 80 80 C6 */	lis r4, l_arcName@ha /* 0x80C5C3F0@ha */
/* 80C5C07C  38 84 C3 F0 */	addi r4, r4, l_arcName@l /* 0x80C5C3F0@l */
/* 80C5C080  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C5C084  4B 3D 0E 39 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C5C088  7C 60 1B 78 */	mr r0, r3
/* 80C5C08C  2C 00 00 04 */	cmpwi r0, 4
/* 80C5C090  40 82 00 54 */	bne lbl_80C5C0E4
/* 80C5C094  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5C098  54 00 36 BA */	rlwinm r0, r0, 6, 0x1a, 0x1d
/* 80C5C09C  7F E3 FB 78 */	mr r3, r31
/* 80C5C0A0  3C 80 80 C6 */	lis r4, l_arcName@ha /* 0x80C5C3F0@ha */
/* 80C5C0A4  38 84 C3 F0 */	addi r4, r4, l_arcName@l /* 0x80C5C3F0@l */
/* 80C5C0A8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C5C0AC  3C A0 80 C6 */	lis r5, l_dzbIdx@ha /* 0x80C5C3C4@ha */
/* 80C5C0B0  38 A5 C3 C4 */	addi r5, r5, l_dzbIdx@l /* 0x80C5C3C4@l */
/* 80C5C0B4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C5C0B8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C5C0BC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C5C0C0  3C E0 80 C6 */	lis r7, l_heap_size@ha /* 0x80C5C3D4@ha */
/* 80C5C0C4  38 E7 C3 D4 */	addi r7, r7, l_heap_size@l /* 0x80C5C3D4@l */
/* 80C5C0C8  7C E7 00 2E */	lwzx r7, r7, r0
/* 80C5C0CC  39 00 00 00 */	li r8, 0
/* 80C5C0D0  4B 41 C6 ED */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C5C0D4  7C 60 1B 78 */	mr r0, r3
/* 80C5C0D8  2C 00 00 05 */	cmpwi r0, 5
/* 80C5C0DC  40 82 00 08 */	bne lbl_80C5C0E4
/* 80C5C0E0  48 00 00 08 */	b lbl_80C5C0E8
lbl_80C5C0E4:
/* 80C5C0E4  7C 03 03 78 */	mr r3, r0
lbl_80C5C0E8:
/* 80C5C0E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5C0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C0F0  7C 08 03 A6 */	mtlr r0
/* 80C5C0F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C0F8  4E 80 00 20 */	blr 
