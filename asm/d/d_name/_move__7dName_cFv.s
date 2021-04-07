lbl_8024E9A0:
/* 8024E9A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024E9A4  7C 08 02 A6 */	mflr r0
/* 8024E9A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024E9AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8024E9B0  7C 7F 1B 78 */	mr r31, r3
/* 8024E9B4  80 63 00 04 */	lwz r3, 4(r3)
/* 8024E9B8  4B DE 37 E5 */	bl checkTrigger__9STControlFv
/* 8024E9BC  7F E3 FB 78 */	mr r3, r31
/* 8024E9C0  88 1F 02 AB */	lbz r0, 0x2ab(r31)
/* 8024E9C4  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8024E9C8  3C 80 80 3C */	lis r4, SelProc@ha /* 0x803C26E4@ha */
/* 8024E9CC  38 04 26 E4 */	addi r0, r4, SelProc@l /* 0x803C26E4@l */
/* 8024E9D0  7D 80 2A 14 */	add r12, r0, r5
/* 8024E9D4  48 11 36 B1 */	bl __ptmf_scall
/* 8024E9D8  60 00 00 00 */	nop 
/* 8024E9DC  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 8024E9E0  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 8024E9E4  80 63 00 34 */	lwz r3, 0x34(r3)
/* 8024E9E8  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8024E9EC  41 82 00 64 */	beq lbl_8024EA50
/* 8024E9F0  88 1F 02 B1 */	lbz r0, 0x2b1(r31)
/* 8024E9F4  28 00 00 07 */	cmplwi r0, 7
/* 8024E9F8  41 82 01 FC */	beq lbl_8024EBF4
/* 8024E9FC  38 00 00 00 */	li r0, 0
/* 8024EA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024EA04  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024EA08  38 81 00 14 */	addi r4, r1, 0x14
/* 8024EA0C  38 A0 00 00 */	li r5, 0
/* 8024EA10  38 C0 00 00 */	li r6, 0
/* 8024EA14  38 E0 00 00 */	li r7, 0
/* 8024EA18  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024EA1C  FC 40 08 90 */	fmr f2, f1
/* 8024EA20  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024EA24  FC 80 18 90 */	fmr f4, f3
/* 8024EA28  39 00 00 00 */	li r8, 0
/* 8024EA2C  48 05 CF 59 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024EA30  88 1F 02 B1 */	lbz r0, 0x2b1(r31)
/* 8024EA34  98 1F 02 B2 */	stb r0, 0x2b2(r31)
/* 8024EA38  88 7F 02 B1 */	lbz r3, 0x2b1(r31)
/* 8024EA3C  38 03 00 01 */	addi r0, r3, 1
/* 8024EA40  98 1F 02 B1 */	stb r0, 0x2b1(r31)
/* 8024EA44  7F E3 FB 78 */	mr r3, r31
/* 8024EA48  48 00 0E CD */	bl nameCursorMove__7dName_cFv
/* 8024EA4C  48 00 01 A8 */	b lbl_8024EBF4
lbl_8024EA50:
/* 8024EA50  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8024EA54  41 82 00 64 */	beq lbl_8024EAB8
/* 8024EA58  88 1F 02 B1 */	lbz r0, 0x2b1(r31)
/* 8024EA5C  28 00 00 00 */	cmplwi r0, 0
/* 8024EA60  41 82 01 94 */	beq lbl_8024EBF4
/* 8024EA64  38 00 00 00 */	li r0, 0
/* 8024EA68  90 01 00 10 */	stw r0, 0x10(r1)
/* 8024EA6C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024EA70  38 81 00 10 */	addi r4, r1, 0x10
/* 8024EA74  38 A0 00 00 */	li r5, 0
/* 8024EA78  38 C0 00 00 */	li r6, 0
/* 8024EA7C  38 E0 00 00 */	li r7, 0
/* 8024EA80  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024EA84  FC 40 08 90 */	fmr f2, f1
/* 8024EA88  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024EA8C  FC 80 18 90 */	fmr f4, f3
/* 8024EA90  39 00 00 00 */	li r8, 0
/* 8024EA94  48 05 CE F1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024EA98  88 1F 02 B1 */	lbz r0, 0x2b1(r31)
/* 8024EA9C  98 1F 02 B2 */	stb r0, 0x2b2(r31)
/* 8024EAA0  88 7F 02 B1 */	lbz r3, 0x2b1(r31)
/* 8024EAA4  38 03 FF FF */	addi r0, r3, -1
/* 8024EAA8  98 1F 02 B1 */	stb r0, 0x2b1(r31)
/* 8024EAAC  7F E3 FB 78 */	mr r3, r31
/* 8024EAB0  48 00 0E 65 */	bl nameCursorMove__7dName_cFv
/* 8024EAB4  48 00 01 40 */	b lbl_8024EBF4
lbl_8024EAB8:
/* 8024EAB8  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 8024EABC  41 82 00 74 */	beq lbl_8024EB30
/* 8024EAC0  88 1F 02 B1 */	lbz r0, 0x2b1(r31)
/* 8024EAC4  28 00 00 00 */	cmplwi r0, 0
/* 8024EAC8  40 82 00 5C */	bne lbl_8024EB24
/* 8024EACC  38 00 00 A2 */	li r0, 0xa2
/* 8024EAD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024EAD4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024EAD8  38 81 00 0C */	addi r4, r1, 0xc
/* 8024EADC  38 A0 00 00 */	li r5, 0
/* 8024EAE0  38 C0 00 00 */	li r6, 0
/* 8024EAE4  38 E0 00 00 */	li r7, 0
/* 8024EAE8  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024EAEC  FC 40 08 90 */	fmr f2, f1
/* 8024EAF0  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024EAF4  FC 80 18 90 */	fmr f4, f3
/* 8024EAF8  39 00 00 00 */	li r8, 0
/* 8024EAFC  48 05 CE 89 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024EB00  88 1F 02 AB */	lbz r0, 0x2ab(r31)
/* 8024EB04  98 1F 02 AC */	stb r0, 0x2ac(r31)
/* 8024EB08  88 1F 02 AB */	lbz r0, 0x2ab(r31)
/* 8024EB0C  98 1F 02 AE */	stb r0, 0x2ae(r31)
/* 8024EB10  38 00 00 08 */	li r0, 8
/* 8024EB14  98 1F 02 AB */	stb r0, 0x2ab(r31)
/* 8024EB18  38 00 00 01 */	li r0, 1
/* 8024EB1C  98 1F 02 B4 */	stb r0, 0x2b4(r31)
/* 8024EB20  48 00 00 D4 */	b lbl_8024EBF4
lbl_8024EB24:
/* 8024EB24  7F E3 FB 78 */	mr r3, r31
/* 8024EB28  48 00 15 4D */	bl backSpace__7dName_cFv
/* 8024EB2C  48 00 00 C8 */	b lbl_8024EBF4
lbl_8024EB30:
/* 8024EB30  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 8024EB34  41 82 00 C0 */	beq lbl_8024EBF4
/* 8024EB38  88 7F 02 AB */	lbz r3, 0x2ab(r31)
/* 8024EB3C  28 03 00 04 */	cmplwi r3, 4
/* 8024EB40  40 82 00 10 */	bne lbl_8024EB50
/* 8024EB44  88 1F 02 AF */	lbz r0, 0x2af(r31)
/* 8024EB48  28 00 00 03 */	cmplwi r0, 3
/* 8024EB4C  41 82 00 A8 */	beq lbl_8024EBF4
lbl_8024EB50:
/* 8024EB50  28 03 00 04 */	cmplwi r3, 4
/* 8024EB54  41 82 00 0C */	beq lbl_8024EB60
/* 8024EB58  28 03 00 00 */	cmplwi r3, 0
/* 8024EB5C  40 82 00 98 */	bne lbl_8024EBF4
lbl_8024EB60:
/* 8024EB60  38 00 00 4C */	li r0, 0x4c
/* 8024EB64  90 01 00 08 */	stw r0, 8(r1)
/* 8024EB68  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024EB6C  38 81 00 08 */	addi r4, r1, 8
/* 8024EB70  38 A0 00 00 */	li r5, 0
/* 8024EB74  38 C0 00 00 */	li r6, 0
/* 8024EB78  38 E0 00 00 */	li r7, 0
/* 8024EB7C  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024EB80  FC 40 08 90 */	fmr f2, f1
/* 8024EB84  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024EB88  FC 80 18 90 */	fmr f4, f3
/* 8024EB8C  39 00 00 00 */	li r8, 0
/* 8024EB90  48 05 CD F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024EB94  88 1F 02 AF */	lbz r0, 0x2af(r31)
/* 8024EB98  98 1F 02 B0 */	stb r0, 0x2b0(r31)
/* 8024EB9C  38 00 00 03 */	li r0, 3
/* 8024EBA0  98 1F 02 AF */	stb r0, 0x2af(r31)
/* 8024EBA4  88 1F 02 AB */	lbz r0, 0x2ab(r31)
/* 8024EBA8  2C 00 00 04 */	cmpwi r0, 4
/* 8024EBAC  41 82 00 38 */	beq lbl_8024EBE4
/* 8024EBB0  40 80 00 44 */	bge lbl_8024EBF4
/* 8024EBB4  2C 00 00 00 */	cmpwi r0, 0
/* 8024EBB8  41 82 00 08 */	beq lbl_8024EBC0
/* 8024EBBC  48 00 00 38 */	b lbl_8024EBF4
lbl_8024EBC0:
/* 8024EBC0  88 1F 02 A5 */	lbz r0, 0x2a5(r31)
/* 8024EBC4  98 1F 02 A6 */	stb r0, 0x2a6(r31)
/* 8024EBC8  88 1F 02 A7 */	lbz r0, 0x2a7(r31)
/* 8024EBCC  98 1F 02 A8 */	stb r0, 0x2a8(r31)
/* 8024EBD0  7F E3 FB 78 */	mr r3, r31
/* 8024EBD4  48 00 04 61 */	bl MojiSelectAnmInit__7dName_cFv
/* 8024EBD8  38 00 00 02 */	li r0, 2
/* 8024EBDC  98 1F 02 AB */	stb r0, 0x2ab(r31)
/* 8024EBE0  48 00 00 14 */	b lbl_8024EBF4
lbl_8024EBE4:
/* 8024EBE4  7F E3 FB 78 */	mr r3, r31
/* 8024EBE8  48 00 11 B9 */	bl MenuSelectAnmInit__7dName_cFv
/* 8024EBEC  38 00 00 05 */	li r0, 5
/* 8024EBF0  98 1F 02 AB */	stb r0, 0x2ab(r31)
lbl_8024EBF4:
/* 8024EBF4  7F E3 FB 78 */	mr r3, r31
/* 8024EBF8  48 00 00 8D */	bl cursorAnm__7dName_cFv
/* 8024EBFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8024EC00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024EC04  7C 08 03 A6 */	mtlr r0
/* 8024EC08  38 21 00 20 */	addi r1, r1, 0x20
/* 8024EC0C  4E 80 00 20 */	blr 
