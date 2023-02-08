lbl_80CC1A28:
/* 80CC1A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC1A2C  7C 08 02 A6 */	mflr r0
/* 80CC1A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC1A34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC1A38  7C 7F 1B 78 */	mr r31, r3
/* 80CC1A3C  88 03 05 CC */	lbz r0, 0x5cc(r3)
/* 80CC1A40  28 00 00 00 */	cmplwi r0, 0
/* 80CC1A44  40 82 00 38 */	bne lbl_80CC1A7C
/* 80CC1A48  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80CC1A4C  B0 1F 05 C8 */	sth r0, 0x5c8(r31)
/* 80CC1A50  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80CC1A54  B0 1F 05 CA */	sth r0, 0x5ca(r31)
/* 80CC1A58  38 00 00 00 */	li r0, 0
/* 80CC1A5C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80CC1A60  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80CC1A64  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80CC1A68  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80CC1A6C  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80CC1A70  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80CC1A74  38 00 00 01 */	li r0, 1
/* 80CC1A78  98 1F 05 CC */	stb r0, 0x5cc(r31)
lbl_80CC1A7C:
/* 80CC1A7C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CC1A80  3C 80 80 CC */	lis r4, l_arcName@ha /* 0x80CC275C@ha */
/* 80CC1A84  38 84 27 5C */	addi r4, r4, l_arcName@l /* 0x80CC275C@l */
/* 80CC1A88  80 84 00 00 */	lwz r4, 0(r4)
/* 80CC1A8C  4B 36 B4 31 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CC1A90  7C 60 1B 78 */	mr r0, r3
/* 80CC1A94  2C 00 00 04 */	cmpwi r0, 4
/* 80CC1A98  40 82 00 40 */	bne lbl_80CC1AD8
/* 80CC1A9C  7F E3 FB 78 */	mr r3, r31
/* 80CC1AA0  3C 80 80 CC */	lis r4, l_arcName@ha /* 0x80CC275C@ha */
/* 80CC1AA4  38 84 27 5C */	addi r4, r4, l_arcName@l /* 0x80CC275C@l */
/* 80CC1AA8  80 84 00 00 */	lwz r4, 0(r4)
/* 80CC1AAC  38 A0 00 0E */	li r5, 0xe
/* 80CC1AB0  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80CC1AB4  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80CC1AB8  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000D1C0@ha */
/* 80CC1ABC  38 E7 D1 C0 */	addi r7, r7, 0xD1C0 /* 0x0000D1C0@l */
/* 80CC1AC0  39 00 00 00 */	li r8, 0
/* 80CC1AC4  4B 3B 6C F9 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CC1AC8  7C 60 1B 78 */	mr r0, r3
/* 80CC1ACC  2C 00 00 05 */	cmpwi r0, 5
/* 80CC1AD0  40 82 00 08 */	bne lbl_80CC1AD8
/* 80CC1AD4  48 00 00 08 */	b lbl_80CC1ADC
lbl_80CC1AD8:
/* 80CC1AD8  7C 03 03 78 */	mr r3, r0
lbl_80CC1ADC:
/* 80CC1ADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC1AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC1AE4  7C 08 03 A6 */	mtlr r0
/* 80CC1AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC1AEC  4E 80 00 20 */	blr 
