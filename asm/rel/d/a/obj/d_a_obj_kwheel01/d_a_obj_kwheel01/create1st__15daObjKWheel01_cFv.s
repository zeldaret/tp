lbl_80C4EA78:
/* 80C4EA78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C4EA7C  7C 08 02 A6 */	mflr r0
/* 80C4EA80  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C4EA84  39 61 00 30 */	addi r11, r1, 0x30
/* 80C4EA88  4B 71 37 48 */	b _savegpr_26
/* 80C4EA8C  7C 7F 1B 78 */	mr r31, r3
/* 80C4EA90  38 00 00 04 */	li r0, 4
/* 80C4EA94  7C 09 03 A6 */	mtctr r0
lbl_80C4EA98:
/* 80C4EA98  42 00 00 00 */	bdnz lbl_80C4EA98
/* 80C4EA9C  88 1F 07 00 */	lbz r0, 0x700(r31)
/* 80C4EAA0  28 00 00 00 */	cmplwi r0, 0
/* 80C4EAA4  40 82 00 9C */	bne lbl_80C4EB40
/* 80C4EAA8  7F E3 FB 78 */	mr r3, r31
/* 80C4EAAC  48 00 01 A9 */	bl setMtx__15daObjKWheel01_cFv
/* 80C4EAB0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C4EAB4  54 00 7E BE */	rlwinm r0, r0, 0xf, 0x1a, 0x1f
/* 80C4EAB8  60 1C 00 C0 */	ori r28, r0, 0xc0
/* 80C4EABC  3B 60 00 00 */	li r27, 0
/* 80C4EAC0  3B C0 00 00 */	li r30, 0
/* 80C4EAC4  3B A0 00 00 */	li r29, 0
lbl_80C4EAC8:
/* 80C4EAC8  38 00 00 01 */	li r0, 1
/* 80C4EACC  7C 03 D8 30 */	slw r3, r0, r27
/* 80C4EAD0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C4EAD4  54 00 4F 3E */	rlwinm r0, r0, 9, 0x1c, 0x1f
/* 80C4EAD8  7C 60 00 39 */	and. r0, r3, r0
/* 80C4EADC  40 82 00 50 */	bne lbl_80C4EB2C
/* 80C4EAE0  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80C4EAE4  3C 80 80 C5 */	lis r4, l_pos@ha
/* 80C4EAE8  38 04 F6 FC */	addi r0, r4, l_pos@l
/* 80C4EAEC  7C 80 EA 14 */	add r4, r0, r29
/* 80C4EAF0  38 A1 00 08 */	addi r5, r1, 8
/* 80C4EAF4  4B 6F 82 78 */	b PSMTXMultVec
/* 80C4EAF8  38 60 00 D1 */	li r3, 0xd1
/* 80C4EAFC  7F 84 E3 78 */	mr r4, r28
/* 80C4EB00  38 A1 00 08 */	addi r5, r1, 8
/* 80C4EB04  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C4EB08  7C 06 07 74 */	extsb r6, r0
/* 80C4EB0C  38 E0 00 00 */	li r7, 0
/* 80C4EB10  39 00 00 00 */	li r8, 0
/* 80C4EB14  39 20 FF FF */	li r9, -1
/* 80C4EB18  4B 3C B2 80 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80C4EB1C  38 1E 06 20 */	addi r0, r30, 0x620
/* 80C4EB20  7C 7F 01 2E */	stwx r3, r31, r0
/* 80C4EB24  38 00 00 01 */	li r0, 1
/* 80C4EB28  98 1F 07 00 */	stb r0, 0x700(r31)
lbl_80C4EB2C:
/* 80C4EB2C  3B 7B 00 01 */	addi r27, r27, 1
/* 80C4EB30  2C 1B 00 04 */	cmpwi r27, 4
/* 80C4EB34  3B DE 00 04 */	addi r30, r30, 4
/* 80C4EB38  3B BD 00 0C */	addi r29, r29, 0xc
/* 80C4EB3C  41 80 FF 8C */	blt lbl_80C4EAC8
lbl_80C4EB40:
/* 80C4EB40  7F E3 FB 78 */	mr r3, r31
/* 80C4EB44  28 1F 00 00 */	cmplwi r31, 0
/* 80C4EB48  41 82 00 08 */	beq lbl_80C4EB50
/* 80C4EB4C  38 7F 05 A0 */	addi r3, r31, 0x5a0
lbl_80C4EB50:
/* 80C4EB50  3C 80 80 C5 */	lis r4, l_arcName@ha
/* 80C4EB54  38 84 F6 F8 */	addi r4, r4, l_arcName@l
/* 80C4EB58  80 84 00 00 */	lwz r4, 0(r4)
/* 80C4EB5C  4B 3D E3 60 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C4EB60  7C 7B 1B 78 */	mr r27, r3
/* 80C4EB64  2C 1B 00 04 */	cmpwi r27, 4
/* 80C4EB68  40 82 00 D0 */	bne lbl_80C4EC38
/* 80C4EB6C  38 00 00 00 */	li r0, 0
/* 80C4EB70  B0 1F 06 1C */	sth r0, 0x61c(r31)
/* 80C4EB74  7F E3 FB 78 */	mr r3, r31
/* 80C4EB78  48 00 00 DD */	bl setMtx__15daObjKWheel01_cFv
/* 80C4EB7C  7F E3 FB 78 */	mr r3, r31
/* 80C4EB80  3C 80 80 C5 */	lis r4, l_arcName@ha
/* 80C4EB84  38 84 F6 F8 */	addi r4, r4, l_arcName@l
/* 80C4EB88  80 84 00 00 */	lwz r4, 0(r4)
/* 80C4EB8C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C4EB90  54 00 2F FF */	rlwinm. r0, r0, 5, 0x1f, 0x1f
/* 80C4EB94  41 82 00 14 */	beq lbl_80C4EBA8
/* 80C4EB98  3C A0 80 C5 */	lis r5, l_dzbidx@ha
/* 80C4EB9C  38 A5 F6 B8 */	addi r5, r5, l_dzbidx@l
/* 80C4EBA0  80 A5 00 08 */	lwz r5, 8(r5)
/* 80C4EBA4  48 00 00 10 */	b lbl_80C4EBB4
lbl_80C4EBA8:
/* 80C4EBA8  3C A0 80 C5 */	lis r5, l_dzbidx@ha
/* 80C4EBAC  38 A5 F6 B8 */	addi r5, r5, l_dzbidx@l
/* 80C4EBB0  80 A5 00 00 */	lwz r5, 0(r5)
lbl_80C4EBB4:
/* 80C4EBB4  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C4EBB8  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C4EBBC  38 E0 5D 98 */	li r7, 0x5d98
/* 80C4EBC0  39 1F 05 B8 */	addi r8, r31, 0x5b8
/* 80C4EBC4  4B 42 9B F8 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C4EBC8  7C 7B 1B 78 */	mr r27, r3
/* 80C4EBCC  2C 1B 00 05 */	cmpwi r27, 5
/* 80C4EBD0  40 82 00 08 */	bne lbl_80C4EBD8
/* 80C4EBD4  48 00 00 68 */	b lbl_80C4EC3C
lbl_80C4EBD8:
/* 80C4EBD8  3B 40 00 00 */	li r26, 0
/* 80C4EBDC  3B C0 00 00 */	li r30, 0
/* 80C4EBE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4EBE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4EBE8  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80C4EBEC  3B A0 00 01 */	li r29, 1
lbl_80C4EBF0:
/* 80C4EBF0  7F A3 D0 30 */	slw r3, r29, r26
/* 80C4EBF4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C4EBF8  54 00 4F 3E */	rlwinm r0, r0, 9, 0x1c, 0x1f
/* 80C4EBFC  7C 60 00 39 */	and. r0, r3, r0
/* 80C4EC00  40 82 00 28 */	bne lbl_80C4EC28
/* 80C4EC04  7F 83 E3 78 */	mr r3, r28
/* 80C4EC08  38 1E 06 30 */	addi r0, r30, 0x630
/* 80C4EC0C  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80C4EC10  7F E5 FB 78 */	mr r5, r31
/* 80C4EC14  4B 42 5D F4 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C4EC18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C4EC1C  41 82 00 0C */	beq lbl_80C4EC28
/* 80C4EC20  38 60 00 05 */	li r3, 5
/* 80C4EC24  48 00 00 18 */	b lbl_80C4EC3C
lbl_80C4EC28:
/* 80C4EC28  3B 5A 00 01 */	addi r26, r26, 1
/* 80C4EC2C  2C 1A 00 04 */	cmpwi r26, 4
/* 80C4EC30  3B DE 00 04 */	addi r30, r30, 4
/* 80C4EC34  41 80 FF BC */	blt lbl_80C4EBF0
lbl_80C4EC38:
/* 80C4EC38  7F 63 DB 78 */	mr r3, r27
lbl_80C4EC3C:
/* 80C4EC3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C4EC40  4B 71 35 DC */	b _restgpr_26
/* 80C4EC44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C4EC48  7C 08 03 A6 */	mtlr r0
/* 80C4EC4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C4EC50  4E 80 00 20 */	blr 
