lbl_8000EA80:
/* 8000EA80  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8000EA84  7C 08 02 A6 */	mflr r0
/* 8000EA88  90 01 00 64 */	stw r0, 0x64(r1)
/* 8000EA8C  39 61 00 60 */	addi r11, r1, 0x60
/* 8000EA90  48 35 37 45 */	bl _savegpr_27
/* 8000EA94  7C 7B 1B 78 */	mr r27, r3
/* 8000EA98  83 E3 00 6C */	lwz r31, 0x6c(r3)
/* 8000EA9C  28 1F 00 00 */	cmplwi r31, 0
/* 8000EAA0  41 82 02 08 */	beq lbl_8000ECA8
/* 8000EAA4  83 DB 00 70 */	lwz r30, 0x70(r27)
/* 8000EAA8  28 1E 00 00 */	cmplwi r30, 0
/* 8000EAAC  41 82 01 FC */	beq lbl_8000ECA8
/* 8000EAB0  38 80 00 00 */	li r4, 0
/* 8000EAB4  3B 80 00 00 */	li r28, 0
/* 8000EAB8  48 00 01 40 */	b lbl_8000EBF8
lbl_8000EABC:
/* 8000EABC  80 1F 00 04 */	lwz r0, 4(r31)
/* 8000EAC0  57 9D 2A F4 */	rlwinm r29, r28, 5, 0xb, 0x1a
/* 8000EAC4  7C 60 EA 14 */	add r3, r0, r29
/* 8000EAC8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000EACC  28 00 00 00 */	cmplwi r0, 0
/* 8000EAD0  40 82 01 24 */	bne lbl_8000EBF4
/* 8000EAD4  7F C3 F3 78 */	mr r3, r30
/* 8000EAD8  7F 84 E3 78 */	mr r4, r28
/* 8000EADC  48 2D 00 1D */	bl getName__10JUTNameTabCFUs
/* 8000EAE0  7C 66 1B 78 */	mr r6, r3
/* 8000EAE4  38 61 00 08 */	addi r3, r1, 8
/* 8000EAE8  38 80 00 40 */	li r4, 0x40
/* 8000EAEC  3C A0 80 37 */	lis r5, m_Do_m_Do_ext__stringBase0@ha /* 0x803740FC@ha */
/* 8000EAF0  38 A5 40 FC */	addi r5, r5, m_Do_m_Do_ext__stringBase0@l /* 0x803740FC@l */
/* 8000EAF4  38 A5 00 1C */	addi r5, r5, 0x1c
/* 8000EAF8  4C C6 31 82 */	crclr 6
/* 8000EAFC  48 35 7A C1 */	bl snprintf
/* 8000EB00  38 61 00 08 */	addi r3, r1, 8
/* 8000EB04  48 02 09 31 */	bl dComIfG_getStageRes__FPCc
/* 8000EB08  80 1F 00 04 */	lwz r0, 4(r31)
/* 8000EB0C  7C 80 EA 14 */	add r4, r0, r29
/* 8000EB10  88 03 00 00 */	lbz r0, 0(r3)
/* 8000EB14  98 04 00 00 */	stb r0, 0(r4)
/* 8000EB18  88 03 00 01 */	lbz r0, 1(r3)
/* 8000EB1C  98 04 00 01 */	stb r0, 1(r4)
/* 8000EB20  A0 03 00 02 */	lhz r0, 2(r3)
/* 8000EB24  B0 04 00 02 */	sth r0, 2(r4)
/* 8000EB28  A0 03 00 04 */	lhz r0, 4(r3)
/* 8000EB2C  B0 04 00 04 */	sth r0, 4(r4)
/* 8000EB30  88 03 00 06 */	lbz r0, 6(r3)
/* 8000EB34  98 04 00 06 */	stb r0, 6(r4)
/* 8000EB38  88 03 00 07 */	lbz r0, 7(r3)
/* 8000EB3C  98 04 00 07 */	stb r0, 7(r4)
/* 8000EB40  88 03 00 08 */	lbz r0, 8(r3)
/* 8000EB44  98 04 00 08 */	stb r0, 8(r4)
/* 8000EB48  88 03 00 09 */	lbz r0, 9(r3)
/* 8000EB4C  98 04 00 09 */	stb r0, 9(r4)
/* 8000EB50  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8000EB54  B0 04 00 0A */	sth r0, 0xa(r4)
/* 8000EB58  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8000EB5C  90 04 00 0C */	stw r0, 0xc(r4)
/* 8000EB60  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8000EB64  98 04 00 10 */	stb r0, 0x10(r4)
/* 8000EB68  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8000EB6C  98 04 00 11 */	stb r0, 0x11(r4)
/* 8000EB70  88 03 00 12 */	lbz r0, 0x12(r3)
/* 8000EB74  98 04 00 12 */	stb r0, 0x12(r4)
/* 8000EB78  88 03 00 13 */	lbz r0, 0x13(r3)
/* 8000EB7C  98 04 00 13 */	stb r0, 0x13(r4)
/* 8000EB80  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8000EB84  98 04 00 14 */	stb r0, 0x14(r4)
/* 8000EB88  88 03 00 15 */	lbz r0, 0x15(r3)
/* 8000EB8C  98 04 00 15 */	stb r0, 0x15(r4)
/* 8000EB90  88 03 00 16 */	lbz r0, 0x16(r3)
/* 8000EB94  98 04 00 16 */	stb r0, 0x16(r4)
/* 8000EB98  88 03 00 17 */	lbz r0, 0x17(r3)
/* 8000EB9C  98 04 00 17 */	stb r0, 0x17(r4)
/* 8000EBA0  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8000EBA4  98 04 00 18 */	stb r0, 0x18(r4)
/* 8000EBA8  88 03 00 19 */	lbz r0, 0x19(r3)
/* 8000EBAC  98 04 00 19 */	stb r0, 0x19(r4)
/* 8000EBB0  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 8000EBB4  B0 04 00 1A */	sth r0, 0x1a(r4)
/* 8000EBB8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000EBBC  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8000EBC0  80 1F 00 04 */	lwz r0, 4(r31)
/* 8000EBC4  7C 80 EA 14 */	add r4, r0, r29
/* 8000EBC8  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8000EBCC  7C 03 02 14 */	add r0, r3, r0
/* 8000EBD0  7C 04 00 50 */	subf r0, r4, r0
/* 8000EBD4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8000EBD8  80 1F 00 04 */	lwz r0, 4(r31)
/* 8000EBDC  7C 80 EA 14 */	add r4, r0, r29
/* 8000EBE0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8000EBE4  7C 03 02 14 */	add r0, r3, r0
/* 8000EBE8  7C 04 00 50 */	subf r0, r4, r0
/* 8000EBEC  90 04 00 0C */	stw r0, 0xc(r4)
/* 8000EBF0  38 80 00 01 */	li r4, 1
lbl_8000EBF4:
/* 8000EBF4  3B 9C 00 01 */	addi r28, r28, 1
lbl_8000EBF8:
/* 8000EBF8  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8000EBFC  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8000EC00  7C 03 00 40 */	cmplw r3, r0
/* 8000EC04  41 80 FE B8 */	blt lbl_8000EABC
/* 8000EC08  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8000EC0C  41 82 00 9C */	beq lbl_8000ECA8
/* 8000EC10  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8000EC14  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8000EC18  93 E3 00 58 */	stw r31, 0x58(r3)
/* 8000EC1C  3B C0 00 00 */	li r30, 0
/* 8000EC20  48 00 00 78 */	b lbl_8000EC98
lbl_8000EC24:
/* 8000EC24  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 8000EC28  57 C0 13 BA */	rlwinm r0, r30, 2, 0xe, 0x1d
/* 8000EC2C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8000EC30  83 83 00 2C */	lwz r28, 0x2c(r3)
/* 8000EC34  28 1C 00 00 */	cmplwi r28, 0
/* 8000EC38  41 82 00 5C */	beq lbl_8000EC94
/* 8000EC3C  83 A3 00 48 */	lwz r29, 0x48(r3)
/* 8000EC40  28 1D 00 00 */	cmplwi r29, 0
/* 8000EC44  41 82 00 50 */	beq lbl_8000EC94
/* 8000EC48  48 32 EA AD */	bl OSDisableInterrupts
/* 8000EC4C  7C 7F 1B 78 */	mr r31, r3
/* 8000EC50  3C 60 80 43 */	lis r3, sGDLObj__17J3DDisplayListObj@ha /* 0x80434C70@ha */
/* 8000EC54  38 63 4C 70 */	addi r3, r3, sGDLObj__17J3DDisplayListObj@l /* 0x80434C70@l */
/* 8000EC58  80 9D 00 00 */	lwz r4, 0(r29)
/* 8000EC5C  80 BD 00 08 */	lwz r5, 8(r29)
/* 8000EC60  48 35 23 39 */	bl GDInitGDLObj
/* 8000EC64  3C 60 80 43 */	lis r3, sGDLObj__17J3DDisplayListObj@ha /* 0x80434C70@ha */
/* 8000EC68  38 03 4C 70 */	addi r0, r3, sGDLObj__17J3DDisplayListObj@l /* 0x80434C70@l */
/* 8000EC6C  90 0D 94 00 */	stw r0, __GDCurrentDL(r13)
/* 8000EC70  7F 83 E3 78 */	mr r3, r28
/* 8000EC74  81 9C 00 00 */	lwz r12, 0(r28)
/* 8000EC78  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8000EC7C  7D 89 03 A6 */	mtctr r12
/* 8000EC80  4E 80 04 21 */	bctrl 
/* 8000EC84  7F E3 FB 78 */	mr r3, r31
/* 8000EC88  48 32 EA 95 */	bl OSRestoreInterrupts
/* 8000EC8C  38 00 00 00 */	li r0, 0
/* 8000EC90  90 0D 94 00 */	stw r0, __GDCurrentDL(r13)
lbl_8000EC94:
/* 8000EC94  3B DE 00 01 */	addi r30, r30, 1
lbl_8000EC98:
/* 8000EC98  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 8000EC9C  A0 1B 00 5C */	lhz r0, 0x5c(r27)
/* 8000ECA0  7C 03 00 40 */	cmplw r3, r0
/* 8000ECA4  41 80 FF 80 */	blt lbl_8000EC24
lbl_8000ECA8:
/* 8000ECA8  39 61 00 60 */	addi r11, r1, 0x60
/* 8000ECAC  48 35 35 75 */	bl _restgpr_27
/* 8000ECB0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8000ECB4  7C 08 03 A6 */	mtlr r0
/* 8000ECB8  38 21 00 60 */	addi r1, r1, 0x60
/* 8000ECBC  4E 80 00 20 */	blr 
