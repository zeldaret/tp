lbl_80D00F64:
/* 80D00F64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00F68  7C 08 02 A6 */	mflr r0
/* 80D00F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D00F70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D00F74  7C 7F 1B 78 */	mr r31, r3
/* 80D00F78  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D00F7C  54 00 27 3E */	srwi r0, r0, 0x1c
/* 80D00F80  98 03 05 AD */	stb r0, 0x5ad(r3)
/* 80D00F84  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D00F88  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80D00F8C  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80D00F90  88 03 05 AC */	lbz r0, 0x5ac(r3)
/* 80D00F94  28 00 00 0F */	cmplwi r0, 0xf
/* 80D00F98  40 82 00 0C */	bne lbl_80D00FA4
/* 80D00F9C  38 00 00 00 */	li r0, 0
/* 80D00FA0  98 1F 05 AC */	stb r0, 0x5ac(r31)
lbl_80D00FA4:
/* 80D00FA4  88 1F 05 D0 */	lbz r0, 0x5d0(r31)
/* 80D00FA8  28 00 00 00 */	cmplwi r0, 0
/* 80D00FAC  40 82 00 38 */	bne lbl_80D00FE4
/* 80D00FB0  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80D00FB4  B0 1F 05 D2 */	sth r0, 0x5d2(r31)
/* 80D00FB8  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80D00FBC  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 80D00FC0  38 00 00 00 */	li r0, 0
/* 80D00FC4  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80D00FC8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80D00FCC  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80D00FD0  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80D00FD4  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80D00FD8  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80D00FDC  38 00 00 01 */	li r0, 1
/* 80D00FE0  98 1F 05 D0 */	stb r0, 0x5d0(r31)
lbl_80D00FE4:
/* 80D00FE4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D00FE8  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80D00FEC  54 00 10 3A */	slwi r0, r0, 2
/* 80D00FF0  3C 80 80 D0 */	lis r4, l_arcName@ha /* 0x80D020EC@ha */
/* 80D00FF4  38 84 20 EC */	addi r4, r4, l_arcName@l /* 0x80D020EC@l */
/* 80D00FF8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D00FFC  4B 32 BE C1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D01000  7C 60 1B 78 */	mr r0, r3
/* 80D01004  2C 00 00 04 */	cmpwi r0, 4
/* 80D01008  40 82 00 54 */	bne lbl_80D0105C
/* 80D0100C  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80D01010  54 00 10 3A */	slwi r0, r0, 2
/* 80D01014  7F E3 FB 78 */	mr r3, r31
/* 80D01018  3C 80 80 D0 */	lis r4, l_arcName@ha /* 0x80D020EC@ha */
/* 80D0101C  38 84 20 EC */	addi r4, r4, l_arcName@l /* 0x80D020EC@l */
/* 80D01020  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D01024  3C A0 80 D0 */	lis r5, l_dzb@ha /* 0x80D02074@ha */
/* 80D01028  38 A5 20 74 */	addi r5, r5, l_dzb@l /* 0x80D02074@l */
/* 80D0102C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80D01030  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80D01034  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80D01038  3C E0 80 D0 */	lis r7, l_heap_size@ha /* 0x80D0207C@ha */
/* 80D0103C  38 E7 20 7C */	addi r7, r7, l_heap_size@l /* 0x80D0207C@l */
/* 80D01040  7C E7 00 2E */	lwzx r7, r7, r0
/* 80D01044  39 00 00 00 */	li r8, 0
/* 80D01048  4B 37 77 75 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D0104C  7C 60 1B 78 */	mr r0, r3
/* 80D01050  2C 00 00 05 */	cmpwi r0, 5
/* 80D01054  40 82 00 08 */	bne lbl_80D0105C
/* 80D01058  48 00 00 08 */	b lbl_80D01060
lbl_80D0105C:
/* 80D0105C  7C 03 03 78 */	mr r3, r0
lbl_80D01060:
/* 80D01060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D01064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D01068  7C 08 03 A6 */	mtlr r0
/* 80D0106C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D01070  4E 80 00 20 */	blr 
