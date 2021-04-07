lbl_80C9D338:
/* 80C9D338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9D33C  7C 08 02 A6 */	mflr r0
/* 80C9D340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9D344  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9D348  7C 7F 1B 78 */	mr r31, r3
/* 80C9D34C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C9D350  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 80C9D354  98 03 06 3C */	stb r0, 0x63c(r3)
/* 80C9D358  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C9D35C  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 80C9D360  28 00 00 07 */	cmplwi r0, 7
/* 80C9D364  41 82 00 0C */	beq lbl_80C9D370
/* 80C9D368  28 00 00 00 */	cmplwi r0, 0
/* 80C9D36C  40 82 00 10 */	bne lbl_80C9D37C
lbl_80C9D370:
/* 80C9D370  38 00 00 00 */	li r0, 0
/* 80C9D374  98 1F 06 69 */	stb r0, 0x669(r31)
/* 80C9D378  48 00 00 14 */	b lbl_80C9D38C
lbl_80C9D37C:
/* 80C9D37C  28 00 00 01 */	cmplwi r0, 1
/* 80C9D380  40 82 00 0C */	bne lbl_80C9D38C
/* 80C9D384  38 00 00 01 */	li r0, 1
/* 80C9D388  98 1F 06 69 */	stb r0, 0x669(r31)
lbl_80C9D38C:
/* 80C9D38C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C9D390  88 1F 06 69 */	lbz r0, 0x669(r31)
/* 80C9D394  54 00 10 3A */	slwi r0, r0, 2
/* 80C9D398  3C 80 80 CA */	lis r4, l_arcName@ha /* 0x80C9E940@ha */
/* 80C9D39C  38 84 E9 40 */	addi r4, r4, l_arcName@l /* 0x80C9E940@l */
/* 80C9D3A0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C9D3A4  4B 38 FB 19 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C9D3A8  7C 60 1B 78 */	mr r0, r3
/* 80C9D3AC  2C 00 00 04 */	cmpwi r0, 4
/* 80C9D3B0  40 82 00 54 */	bne lbl_80C9D404
/* 80C9D3B4  88 1F 06 69 */	lbz r0, 0x669(r31)
/* 80C9D3B8  54 00 10 3A */	slwi r0, r0, 2
/* 80C9D3BC  7F E3 FB 78 */	mr r3, r31
/* 80C9D3C0  3C 80 80 CA */	lis r4, l_arcName@ha /* 0x80C9E940@ha */
/* 80C9D3C4  38 84 E9 40 */	addi r4, r4, l_arcName@l /* 0x80C9E940@l */
/* 80C9D3C8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C9D3CC  3C A0 80 CA */	lis r5, l_dzbName@ha /* 0x80C9E8B4@ha */
/* 80C9D3D0  38 A5 E8 B4 */	addi r5, r5, l_dzbName@l /* 0x80C9E8B4@l */
/* 80C9D3D4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C9D3D8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C9D3DC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C9D3E0  3C E0 80 CA */	lis r7, l_heap_size@ha /* 0x80C9E8D4@ha */
/* 80C9D3E4  38 E7 E8 D4 */	addi r7, r7, l_heap_size@l /* 0x80C9E8D4@l */
/* 80C9D3E8  7C E7 00 2E */	lwzx r7, r7, r0
/* 80C9D3EC  39 00 00 00 */	li r8, 0
/* 80C9D3F0  4B 3D B3 CD */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C9D3F4  7C 60 1B 78 */	mr r0, r3
/* 80C9D3F8  2C 00 00 05 */	cmpwi r0, 5
/* 80C9D3FC  40 82 00 08 */	bne lbl_80C9D404
/* 80C9D400  48 00 00 08 */	b lbl_80C9D408
lbl_80C9D404:
/* 80C9D404  7C 03 03 78 */	mr r3, r0
lbl_80C9D408:
/* 80C9D408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9D40C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9D410  7C 08 03 A6 */	mtlr r0
/* 80C9D414  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9D418  4E 80 00 20 */	blr 
