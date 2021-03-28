lbl_80256C68:
/* 80256C68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80256C6C  7C 08 02 A6 */	mflr r0
/* 80256C70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80256C74  39 61 00 30 */	addi r11, r1, 0x30
/* 80256C78  48 10 B5 61 */	bl _savegpr_28
/* 80256C7C  7C 7F 1B 78 */	mr r31, r3
/* 80256C80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80256C84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80256C88  3B C3 5F 64 */	addi r30, r3, 0x5f64
/* 80256C8C  7F C3 F3 78 */	mr r3, r30
/* 80256C90  3B 9E 01 B4 */	addi r28, r30, 0x1b4
/* 80256C94  7F 84 E3 78 */	mr r4, r28
/* 80256C98  3B BE 01 B8 */	addi r29, r30, 0x1b8
/* 80256C9C  7F A5 EB 78 */	mr r5, r29
/* 80256CA0  80 DF 01 DC */	lwz r6, 0x1dc(r31)
/* 80256CA4  4B DF FA F1 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80256CA8  7F C3 F3 78 */	mr r3, r30
/* 80256CAC  7F 84 E3 78 */	mr r4, r28
/* 80256CB0  7F A5 EB 78 */	mr r5, r29
/* 80256CB4  80 DF 01 E0 */	lwz r6, 0x1e0(r31)
/* 80256CB8  4B DF FA DD */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80256CBC  A0 1F 02 10 */	lhz r0, 0x210(r31)
/* 80256CC0  C8 42 B4 F0 */	lfd f2, lit_3940(r2)
/* 80256CC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80256CC8  3C 60 43 30 */	lis r3, 0x4330
/* 80256CCC  90 61 00 08 */	stw r3, 8(r1)
/* 80256CD0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80256CD4  EC 20 10 28 */	fsubs f1, f0, f2
/* 80256CD8  A0 1F 02 0E */	lhz r0, 0x20e(r31)
/* 80256CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80256CE0  90 61 00 10 */	stw r3, 0x10(r1)
/* 80256CE4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80256CE8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80256CEC  EC 21 00 24 */	fdivs f1, f1, f0
/* 80256CF0  A0 1F 02 12 */	lhz r0, 0x212(r31)
/* 80256CF4  28 00 00 00 */	cmplwi r0, 0
/* 80256CF8  41 82 00 0C */	beq lbl_80256D04
/* 80256CFC  C0 02 B4 DC */	lfs f0, lit_3934(r2)
/* 80256D00  EC 20 08 28 */	fsubs f1, f0, f1
lbl_80256D04:
/* 80256D04  C0 02 B4 E8 */	lfs f0, lit_3937(r2)
/* 80256D08  EC 00 00 72 */	fmuls f0, f0, f1
/* 80256D0C  FC 00 00 1E */	fctiwz f0, f0
/* 80256D10  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80256D14  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80256D18  80 7F 01 E0 */	lwz r3, 0x1e0(r31)
/* 80256D1C  98 03 01 60 */	stb r0, 0x160(r3)
/* 80256D20  A0 7F 02 10 */	lhz r3, 0x210(r31)
/* 80256D24  28 03 00 00 */	cmplwi r3, 0
/* 80256D28  40 82 00 1C */	bne lbl_80256D44
/* 80256D2C  A0 1F 02 0E */	lhz r0, 0x20e(r31)
/* 80256D30  B0 1F 02 10 */	sth r0, 0x210(r31)
/* 80256D34  A0 1F 02 12 */	lhz r0, 0x212(r31)
/* 80256D38  68 00 00 01 */	xori r0, r0, 1
/* 80256D3C  B0 1F 02 12 */	sth r0, 0x212(r31)
/* 80256D40  48 00 00 0C */	b lbl_80256D4C
lbl_80256D44:
/* 80256D44  38 03 FF FF */	addi r0, r3, -1
/* 80256D48  B0 1F 02 10 */	sth r0, 0x210(r31)
lbl_80256D4C:
/* 80256D4C  A0 1F 02 0C */	lhz r0, 0x20c(r31)
/* 80256D50  28 00 00 00 */	cmplwi r0, 0
/* 80256D54  41 82 00 18 */	beq lbl_80256D6C
/* 80256D58  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80256D5C  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 80256D60  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80256D64  70 00 1F 7F */	andi. r0, r0, 0x1f7f
/* 80256D68  41 82 00 44 */	beq lbl_80256DAC
lbl_80256D6C:
/* 80256D6C  38 00 00 02 */	li r0, 2
/* 80256D70  98 1F 02 08 */	stb r0, 0x208(r31)
/* 80256D74  38 00 00 1E */	li r0, 0x1e
/* 80256D78  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80256D7C  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80256D80  80 63 00 04 */	lwz r3, 4(r3)
/* 80256D84  28 03 00 00 */	cmplwi r3, 0
/* 80256D88  41 82 00 18 */	beq lbl_80256DA0
/* 80256D8C  38 80 00 1E */	li r4, 0x1e
/* 80256D90  81 83 00 00 */	lwz r12, 0(r3)
/* 80256D94  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80256D98  7D 89 03 A6 */	mtctr r12
/* 80256D9C  4E 80 04 21 */	bctrl 
lbl_80256DA0:
/* 80256DA0  38 00 00 01 */	li r0, 1
/* 80256DA4  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80256DA8  98 03 00 15 */	stb r0, 0x15(r3)
lbl_80256DAC:
/* 80256DAC  39 61 00 30 */	addi r11, r1, 0x30
/* 80256DB0  48 10 B4 75 */	bl _restgpr_28
/* 80256DB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80256DB8  7C 08 03 A6 */	mtlr r0
/* 80256DBC  38 21 00 30 */	addi r1, r1, 0x30
/* 80256DC0  4E 80 00 20 */	blr 
