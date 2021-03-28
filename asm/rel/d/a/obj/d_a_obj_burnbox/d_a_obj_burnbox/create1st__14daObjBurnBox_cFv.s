lbl_8046E93C:
/* 8046E93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046E940  7C 08 02 A6 */	mflr r0
/* 8046E944  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046E948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046E94C  7C 7F 1B 78 */	mr r31, r3
/* 8046E950  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 8046E954  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8046E958  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8046E95C  3C 80 80 47 */	lis r4, l_arcName@ha
/* 8046E960  38 84 EE D4 */	addi r4, r4, l_arcName@l
/* 8046E964  7C 84 00 2E */	lwzx r4, r4, r0
/* 8046E968  4B BB E5 54 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8046E96C  7C 60 1B 78 */	mr r0, r3
/* 8046E970  2C 00 00 04 */	cmpwi r0, 4
/* 8046E974  40 82 00 60 */	bne lbl_8046E9D4
/* 8046E978  38 A0 FF FF */	li r5, -1
/* 8046E97C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8046E980  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8046E984  2C 00 00 01 */	cmpwi r0, 1
/* 8046E988  41 82 00 08 */	beq lbl_8046E990
/* 8046E98C  48 00 00 08 */	b lbl_8046E994
lbl_8046E990:
/* 8046E990  38 A0 00 07 */	li r5, 7
lbl_8046E994:
/* 8046E994  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8046E998  7F E3 FB 78 */	mr r3, r31
/* 8046E99C  3C 80 80 47 */	lis r4, l_arcName@ha
/* 8046E9A0  38 84 EE D4 */	addi r4, r4, l_arcName@l
/* 8046E9A4  7C 84 00 2E */	lwzx r4, r4, r0
/* 8046E9A8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 8046E9AC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 8046E9B0  3C E0 80 47 */	lis r7, l_heap_size@ha
/* 8046E9B4  38 E7 EE 54 */	addi r7, r7, l_heap_size@l
/* 8046E9B8  7C E7 00 2E */	lwzx r7, r7, r0
/* 8046E9BC  39 00 00 00 */	li r8, 0
/* 8046E9C0  4B C0 9D FC */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 8046E9C4  7C 60 1B 78 */	mr r0, r3
/* 8046E9C8  2C 00 00 05 */	cmpwi r0, 5
/* 8046E9CC  40 82 00 08 */	bne lbl_8046E9D4
/* 8046E9D0  48 00 00 08 */	b lbl_8046E9D8
lbl_8046E9D4:
/* 8046E9D4  7C 03 03 78 */	mr r3, r0
lbl_8046E9D8:
/* 8046E9D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046E9DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046E9E0  7C 08 03 A6 */	mtlr r0
/* 8046E9E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8046E9E8  4E 80 00 20 */	blr 
