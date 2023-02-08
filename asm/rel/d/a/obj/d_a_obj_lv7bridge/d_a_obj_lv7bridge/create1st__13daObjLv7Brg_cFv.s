lbl_80C86A44:
/* 80C86A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C86A48  7C 08 02 A6 */	mflr r0
/* 80C86A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C86A50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C86A54  7C 7F 1B 78 */	mr r31, r3
/* 80C86A58  88 03 0A 7F */	lbz r0, 0xa7f(r3)
/* 80C86A5C  28 00 00 00 */	cmplwi r0, 0
/* 80C86A60  40 82 00 38 */	bne lbl_80C86A98
/* 80C86A64  38 00 00 01 */	li r0, 1
/* 80C86A68  98 1F 0A 7F */	stb r0, 0xa7f(r31)
/* 80C86A6C  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80C86A70  B0 1F 0A 80 */	sth r0, 0xa80(r31)
/* 80C86A74  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80C86A78  B0 1F 0A 82 */	sth r0, 0xa82(r31)
/* 80C86A7C  38 00 00 00 */	li r0, 0
/* 80C86A80  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80C86A84  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80C86A88  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80C86A8C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80C86A90  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80C86A94  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
lbl_80C86A98:
/* 80C86A98  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C86A9C  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 80C86AA0  98 1F 0A 7C */	stb r0, 0xa7c(r31)
/* 80C86AA4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C86AA8  54 00 47 FE */	rlwinm r0, r0, 8, 0x1f, 0x1f
/* 80C86AAC  98 1F 0A 7E */	stb r0, 0xa7e(r31)
/* 80C86AB0  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C86AB4  88 1F 0A 7E */	lbz r0, 0xa7e(r31)
/* 80C86AB8  54 00 10 3A */	slwi r0, r0, 2
/* 80C86ABC  3C 80 80 C8 */	lis r4, l_arcName@ha /* 0x80C87A54@ha */
/* 80C86AC0  38 84 7A 54 */	addi r4, r4, l_arcName@l /* 0x80C87A54@l */
/* 80C86AC4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C86AC8  4B 3A 63 F5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C86ACC  7C 60 1B 78 */	mr r0, r3
/* 80C86AD0  2C 00 00 04 */	cmpwi r0, 4
/* 80C86AD4  40 82 00 54 */	bne lbl_80C86B28
/* 80C86AD8  88 1F 0A 7E */	lbz r0, 0xa7e(r31)
/* 80C86ADC  54 00 10 3A */	slwi r0, r0, 2
/* 80C86AE0  7F E3 FB 78 */	mr r3, r31
/* 80C86AE4  3C 80 80 C8 */	lis r4, l_arcName@ha /* 0x80C87A54@ha */
/* 80C86AE8  38 84 7A 54 */	addi r4, r4, l_arcName@l /* 0x80C87A54@l */
/* 80C86AEC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C86AF0  3C A0 80 C8 */	lis r5, l_dzb@ha /* 0x80C879A8@ha */
/* 80C86AF4  38 A5 79 A8 */	addi r5, r5, l_dzb@l /* 0x80C879A8@l */
/* 80C86AF8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C86AFC  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80C86B00  38 C6 5A 24 */	addi r6, r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80C86B04  3C E0 80 C8 */	lis r7, l_heap_size@ha /* 0x80C879C4@ha */
/* 80C86B08  38 E7 79 C4 */	addi r7, r7, l_heap_size@l /* 0x80C879C4@l */
/* 80C86B0C  7C E7 00 2E */	lwzx r7, r7, r0
/* 80C86B10  39 00 00 00 */	li r8, 0
/* 80C86B14  4B 3F 1C A9 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C86B18  7C 60 1B 78 */	mr r0, r3
/* 80C86B1C  2C 00 00 05 */	cmpwi r0, 5
/* 80C86B20  40 82 00 08 */	bne lbl_80C86B28
/* 80C86B24  48 00 00 08 */	b lbl_80C86B2C
lbl_80C86B28:
/* 80C86B28  7C 03 03 78 */	mr r3, r0
lbl_80C86B2C:
/* 80C86B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C86B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C86B34  7C 08 03 A6 */	mtlr r0
/* 80C86B38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C86B3C  4E 80 00 20 */	blr 
