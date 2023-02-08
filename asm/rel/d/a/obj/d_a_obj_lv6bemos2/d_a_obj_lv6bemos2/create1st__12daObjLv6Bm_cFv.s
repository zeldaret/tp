lbl_80C7EB7C:
/* 80C7EB7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7EB80  7C 08 02 A6 */	mflr r0
/* 80C7EB84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7EB88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7EB8C  7C 7F 1B 78 */	mr r31, r3
/* 80C7EB90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7EB94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7EB98  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C7EB9C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C7EBA0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C7EBA4  7C 05 07 74 */	extsb r5, r0
/* 80C7EBA8  4B 3B 67 B9 */	bl isSwitch__10dSv_info_cCFii
/* 80C7EBAC  2C 03 00 00 */	cmpwi r3, 0
/* 80C7EBB0  41 82 00 0C */	beq lbl_80C7EBBC
/* 80C7EBB4  38 60 00 05 */	li r3, 5
/* 80C7EBB8  48 00 00 A0 */	b lbl_80C7EC58
lbl_80C7EBBC:
/* 80C7EBBC  88 1F 0A 36 */	lbz r0, 0xa36(r31)
/* 80C7EBC0  28 00 00 00 */	cmplwi r0, 0
/* 80C7EBC4  40 82 00 38 */	bne lbl_80C7EBFC
/* 80C7EBC8  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80C7EBCC  B0 1F 0A 32 */	sth r0, 0xa32(r31)
/* 80C7EBD0  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80C7EBD4  B0 1F 0A 34 */	sth r0, 0xa34(r31)
/* 80C7EBD8  38 00 00 00 */	li r0, 0
/* 80C7EBDC  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80C7EBE0  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80C7EBE4  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80C7EBE8  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80C7EBEC  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80C7EBF0  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80C7EBF4  38 00 00 01 */	li r0, 1
/* 80C7EBF8  98 1F 0A 36 */	stb r0, 0xa36(r31)
lbl_80C7EBFC:
/* 80C7EBFC  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C7EC00  3C 80 80 C8 */	lis r4, l_arcName@ha /* 0x80C81D24@ha */
/* 80C7EC04  38 84 1D 24 */	addi r4, r4, l_arcName@l /* 0x80C81D24@l */
/* 80C7EC08  80 84 00 00 */	lwz r4, 0(r4)
/* 80C7EC0C  4B 3A E2 B1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C7EC10  7C 60 1B 78 */	mr r0, r3
/* 80C7EC14  2C 00 00 04 */	cmpwi r0, 4
/* 80C7EC18  40 82 00 3C */	bne lbl_80C7EC54
/* 80C7EC1C  7F E3 FB 78 */	mr r3, r31
/* 80C7EC20  3C 80 80 C8 */	lis r4, l_arcName@ha /* 0x80C81D24@ha */
/* 80C7EC24  38 84 1D 24 */	addi r4, r4, l_arcName@l /* 0x80C81D24@l */
/* 80C7EC28  80 84 00 00 */	lwz r4, 0(r4)
/* 80C7EC2C  38 A0 00 1E */	li r5, 0x1e
/* 80C7EC30  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C7EC34  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C7EC38  38 E0 2F A0 */	li r7, 0x2fa0
/* 80C7EC3C  39 00 00 00 */	li r8, 0
/* 80C7EC40  4B 3F 9B 7D */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C7EC44  7C 60 1B 78 */	mr r0, r3
/* 80C7EC48  2C 00 00 05 */	cmpwi r0, 5
/* 80C7EC4C  40 82 00 08 */	bne lbl_80C7EC54
/* 80C7EC50  48 00 00 08 */	b lbl_80C7EC58
lbl_80C7EC54:
/* 80C7EC54  7C 03 03 78 */	mr r3, r0
lbl_80C7EC58:
/* 80C7EC58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7EC5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7EC60  7C 08 03 A6 */	mtlr r0
/* 80C7EC64  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7EC68  4E 80 00 20 */	blr 
