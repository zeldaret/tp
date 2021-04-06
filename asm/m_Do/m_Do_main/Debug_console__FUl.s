lbl_80005D4C:
/* 80005D4C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80005D50  7C 08 02 A6 */	mflr r0
/* 80005D54  90 01 00 54 */	stw r0, 0x54(r1)
/* 80005D58  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80005D5C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80005D60  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80005D64  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80005D68  39 61 00 30 */	addi r11, r1, 0x30
/* 80005D6C  48 35 C4 6D */	bl _savegpr_28
/* 80005D70  83 ED 8C 38 */	lwz r31, systemConsole__9JFWSystem(r13)
/* 80005D74  28 1F 00 00 */	cmplwi r31, 0
/* 80005D78  41 82 03 A8 */	beq lbl_80006120
/* 80005D7C  88 0D 85 A0 */	lbz r0, data_80450B20(r13)
/* 80005D80  7C 00 07 75 */	extsb. r0, r0
/* 80005D84  40 82 00 14 */	bne lbl_80005D98
/* 80005D88  C0 02 80 00 */	lfs f0, lit_3884(r2)
/* 80005D8C  D0 0D 85 9C */	stfs f0, console_position_x(r13)
/* 80005D90  38 00 00 01 */	li r0, 1
/* 80005D94  98 0D 85 A0 */	stb r0, data_80450B20(r13)
lbl_80005D98:
/* 80005D98  88 0D 85 A8 */	lbz r0, data_80450B28(r13)
/* 80005D9C  7C 00 07 75 */	extsb. r0, r0
/* 80005DA0  40 82 00 14 */	bne lbl_80005DB4
/* 80005DA4  C0 02 80 04 */	lfs f0, lit_3885(r2)
/* 80005DA8  D0 0D 85 A4 */	stfs f0, console_position_y(r13)
/* 80005DAC  38 00 00 01 */	li r0, 1
/* 80005DB0  98 0D 85 A8 */	stb r0, data_80450B28(r13)
lbl_80005DB4:
/* 80005DB4  88 0D 85 B0 */	lbz r0, data_80450B30(r13)
/* 80005DB8  7C 00 07 75 */	extsb. r0, r0
/* 80005DBC  40 82 00 14 */	bne lbl_80005DD0
/* 80005DC0  C0 02 80 08 */	lfs f0, lit_3886(r2)
/* 80005DC4  D0 0D 85 AC */	stfs f0, console_scroll(r13)
/* 80005DC8  38 00 00 01 */	li r0, 1
/* 80005DCC  98 0D 85 B0 */	stb r0, data_80450B30(r13)
lbl_80005DD0:
/* 80005DD0  54 64 30 32 */	slwi r4, r3, 6
/* 80005DD4  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80005DD8  38 03 D2 E8 */	addi r0, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80005DDC  7F A0 22 14 */	add r29, r0, r4
/* 80005DE0  3B DD 00 34 */	addi r30, r29, 0x34
/* 80005DE4  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 80005DE8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80005DEC  41 82 00 28 */	beq lbl_80005E14
/* 80005DF0  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 80005DF4  54 00 07 35 */	rlwinm. r0, r0, 0, 0x1c, 0x1a
/* 80005DF8  40 82 00 1C */	bne lbl_80005E14
/* 80005DFC  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 80005E00  7C 00 00 34 */	cntlzw r0, r0
/* 80005E04  54 00 D9 7E */	srwi r0, r0, 5
/* 80005E08  98 1F 00 68 */	stb r0, 0x68(r31)
/* 80005E0C  38 60 00 00 */	li r3, 0
/* 80005E10  48 2D EE 2D */	bl setMessageCount__12JUTAssertionFi
lbl_80005E14:
/* 80005E14  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 80005E18  28 00 00 00 */	cmplwi r0, 0
/* 80005E1C  41 82 03 04 */	beq lbl_80006120
/* 80005E20  3B 9D 00 30 */	addi r28, r29, 0x30
/* 80005E24  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 80005E28  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80005E2C  41 82 00 0C */	beq lbl_80005E38
/* 80005E30  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80005E34  40 82 00 20 */	bne lbl_80005E54
lbl_80005E38:
/* 80005E38  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80005E3C  C0 22 80 08 */	lfs f1, lit_3886(r2)
/* 80005E40  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80005E44  40 81 01 B0 */	ble lbl_80005FF4
/* 80005E48  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80005E4C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80005E50  40 81 01 A4 */	ble lbl_80005FF4
lbl_80005E54:
/* 80005E54  C3 FD 00 00 */	lfs f31, 0(r29)
/* 80005E58  C3 DD 00 04 */	lfs f30, 4(r29)
/* 80005E5C  54 60 05 2B */	rlwinm. r0, r3, 0, 0x14, 0x15
/* 80005E60  41 82 00 18 */	beq lbl_80005E78
/* 80005E64  80 1E 00 00 */	lwz r0, 0(r30)
/* 80005E68  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80005E6C  41 82 00 0C */	beq lbl_80005E78
/* 80005E70  7F E3 FB 78 */	mr r3, r31
/* 80005E74  48 2E 17 79 */	bl clear__10JUTConsoleFv
lbl_80005E78:
/* 80005E78  80 7C 00 00 */	lwz r3, 0(r28)
/* 80005E7C  54 60 05 2B */	rlwinm. r0, r3, 0, 0x14, 0x15
/* 80005E80  40 82 00 90 */	bne lbl_80005F10
/* 80005E84  C0 0D 85 AC */	lfs f0, console_scroll(r13)
/* 80005E88  EC 20 F0 28 */	fsubs f1, f0, f30
/* 80005E8C  D0 2D 85 AC */	stfs f1, console_scroll(r13)
/* 80005E90  C0 02 80 0C */	lfs f0, lit_3887(r2)
/* 80005E94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80005E98  40 81 00 14 */	ble lbl_80005EAC
/* 80005E9C  FC 00 08 1E */	fctiwz f0, f1
/* 80005EA0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80005EA4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80005EA8  48 00 00 2C */	b lbl_80005ED4
lbl_80005EAC:
/* 80005EAC  C0 02 80 10 */	lfs f0, lit_3888(r2)
/* 80005EB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80005EB4  40 80 00 1C */	bge lbl_80005ED0
/* 80005EB8  FC 00 08 50 */	fneg f0, f1
/* 80005EBC  FC 00 00 1E */	fctiwz f0, f0
/* 80005EC0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80005EC4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80005EC8  7C 80 00 D0 */	neg r4, r0
/* 80005ECC  48 00 00 08 */	b lbl_80005ED4
lbl_80005ED0:
/* 80005ED0  38 80 00 00 */	li r4, 0
lbl_80005ED4:
/* 80005ED4  2C 04 00 00 */	cmpwi r4, 0
/* 80005ED8  41 82 00 60 */	beq lbl_80005F38
/* 80005EDC  C0 4D 85 AC */	lfs f2, console_scroll(r13)
/* 80005EE0  C8 22 80 18 */	lfd f1, lit_3890(r2)
/* 80005EE4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80005EE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80005EEC  3C 00 43 30 */	lis r0, 0x4330
/* 80005EF0  90 01 00 08 */	stw r0, 8(r1)
/* 80005EF4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80005EF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80005EFC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80005F00  D0 0D 85 AC */	stfs f0, console_scroll(r13)
/* 80005F04  7F E3 FB 78 */	mr r3, r31
/* 80005F08  48 2E 21 A1 */	bl scroll__10JUTConsoleFi
/* 80005F0C  48 00 00 2C */	b lbl_80005F38
lbl_80005F10:
/* 80005F10  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 80005F14  41 82 00 10 */	beq lbl_80005F24
/* 80005F18  C0 0D 85 9C */	lfs f0, console_position_x(r13)
/* 80005F1C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80005F20  D0 0D 85 9C */	stfs f0, console_position_x(r13)
lbl_80005F24:
/* 80005F24  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 80005F28  41 82 00 10 */	beq lbl_80005F38
/* 80005F2C  C0 0D 85 A4 */	lfs f0, console_position_y(r13)
/* 80005F30  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80005F34  D0 0D 85 A4 */	stfs f0, console_position_y(r13)
lbl_80005F38:
/* 80005F38  80 1E 00 00 */	lwz r0, 0(r30)
/* 80005F3C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80005F40  41 82 00 18 */	beq lbl_80005F58
/* 80005F44  7F E3 FB 78 */	mr r3, r31
/* 80005F48  38 80 FF FF */	li r4, -1
/* 80005F4C  48 2E 20 31 */	bl dumpToTerminal__10JUTConsoleFUi
/* 80005F50  38 00 00 03 */	li r0, 3
/* 80005F54  90 1F 00 58 */	stw r0, 0x58(r31)
lbl_80005F58:
/* 80005F58  38 60 00 1E */	li r3, 0x1e
/* 80005F5C  38 80 01 86 */	li r4, 0x186
/* 80005F60  38 A0 00 01 */	li r5, 1
/* 80005F64  3C C0 80 37 */	lis r6, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 80005F68  38 C6 39 A0 */	addi r6, r6, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 80005F6C  38 C6 01 B1 */	addi r6, r6, 0x1b1
/* 80005F70  4C C6 31 82 */	crclr 6
/* 80005F74  48 2D A6 8D */	bl JUTReport__FiiiPCce
/* 80005F78  38 60 00 1E */	li r3, 0x1e
/* 80005F7C  38 80 01 90 */	li r4, 0x190
/* 80005F80  38 A0 00 01 */	li r5, 1
/* 80005F84  3C C0 80 37 */	lis r6, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 80005F88  38 C6 39 A0 */	addi r6, r6, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 80005F8C  38 C6 01 D3 */	addi r6, r6, 0x1d3
/* 80005F90  4C C6 31 82 */	crclr 6
/* 80005F94  48 2D A6 6D */	bl JUTReport__FiiiPCce
/* 80005F98  38 60 00 1E */	li r3, 0x1e
/* 80005F9C  38 80 01 9A */	li r4, 0x19a
/* 80005FA0  38 A0 00 01 */	li r5, 1
/* 80005FA4  3C C0 80 37 */	lis r6, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 80005FA8  38 C6 39 A0 */	addi r6, r6, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 80005FAC  38 C6 01 ED */	addi r6, r6, 0x1ed
/* 80005FB0  4C C6 31 82 */	crclr 6
/* 80005FB4  48 2D A6 4D */	bl JUTReport__FiiiPCce
/* 80005FB8  7F E3 FB 78 */	mr r3, r31
/* 80005FBC  48 2E 21 ED */	bl getLineOffset__10JUTConsoleCFv
/* 80005FC0  7C 67 1B 78 */	mr r7, r3
/* 80005FC4  38 60 00 1E */	li r3, 0x1e
/* 80005FC8  38 80 01 A4 */	li r4, 0x1a4
/* 80005FCC  38 A0 00 01 */	li r5, 1
/* 80005FD0  3C C0 80 37 */	lis r6, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 80005FD4  38 C6 39 A0 */	addi r6, r6, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 80005FD8  38 C6 02 16 */	addi r6, r6, 0x216
/* 80005FDC  81 1F 00 40 */	lwz r8, 0x40(r31)
/* 80005FE0  81 3F 00 44 */	lwz r9, 0x44(r31)
/* 80005FE4  81 5F 00 58 */	lwz r10, 0x58(r31)
/* 80005FE8  4C C6 31 82 */	crclr 6
/* 80005FEC  48 2D A6 15 */	bl JUTReport__FiiiPCce
/* 80005FF0  48 00 01 00 */	b lbl_800060F0
lbl_80005FF4:
/* 80005FF4  80 9E 00 00 */	lwz r4, 0(r30)
/* 80005FF8  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 80005FFC  41 82 00 18 */	beq lbl_80006014
/* 80006000  3C 60 80 3F */	lis r3, g_HIO@ha /* 0x803F1BBC@ha */
/* 80006004  38 63 1B BC */	addi r3, r3, g_HIO@l /* 0x803F1BBC@l */
/* 80006008  88 03 00 15 */	lbz r0, 0x15(r3)
/* 8000600C  68 00 00 01 */	xori r0, r0, 1
/* 80006010  98 03 00 15 */	stb r0, 0x15(r3)
lbl_80006014:
/* 80006014  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80006018  41 82 00 30 */	beq lbl_80006048
/* 8000601C  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 80006020  80 63 00 94 */	lwz r3, 0x94(r3)
/* 80006024  28 03 00 00 */	cmplwi r3, 0
/* 80006028  41 82 00 08 */	beq lbl_80006030
/* 8000602C  48 2C D1 ED */	bl dump__11JKRAramHeapFv
lbl_80006030:
/* 80006030  48 25 C4 41 */	bl dump__24DynamicModuleControlBaseFv
/* 80006034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80006038  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000603C  3C 63 00 02 */	addis r3, r3, 2
/* 80006040  38 63 C2 F8 */	addi r3, r3, -15624
/* 80006044  48 03 65 F5 */	bl dump__14dRes_control_cFv
lbl_80006048:
/* 80006048  80 1E 00 00 */	lwz r0, 0(r30)
/* 8000604C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80006050  41 82 00 18 */	beq lbl_80006068
/* 80006054  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 80006058  81 83 00 00 */	lwz r12, 0(r3)
/* 8000605C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80006060  7D 89 03 A6 */	mtctr r12
/* 80006064  4E 80 04 21 */	bctrl 
lbl_80006068:
/* 80006068  80 1E 00 00 */	lwz r0, 0(r30)
/* 8000606C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80006070  41 82 00 40 */	beq lbl_800060B0
/* 80006074  80 6D 86 AC */	lwz r3, zeldaHeap(r13)
/* 80006078  81 83 00 00 */	lwz r12, 0(r3)
/* 8000607C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80006080  7D 89 03 A6 */	mtctr r12
/* 80006084  4E 80 04 21 */	bctrl 
/* 80006088  80 6D 86 A8 */	lwz r3, gameHeap(r13)
/* 8000608C  81 83 00 00 */	lwz r12, 0(r3)
/* 80006090  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80006094  7D 89 03 A6 */	mtctr r12
/* 80006098  4E 80 04 21 */	bctrl 
/* 8000609C  80 6D 86 B4 */	lwz r3, archiveHeap(r13)
/* 800060A0  81 83 00 00 */	lwz r12, 0(r3)
/* 800060A4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800060A8  7D 89 03 A6 */	mtctr r12
/* 800060AC  4E 80 04 21 */	bctrl 
lbl_800060B0:
/* 800060B0  38 60 00 1E */	li r3, 0x1e
/* 800060B4  38 80 01 B8 */	li r4, 0x1b8
/* 800060B8  38 A0 00 01 */	li r5, 1
/* 800060BC  3C C0 80 37 */	lis r6, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 800060C0  38 C6 39 A0 */	addi r6, r6, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 800060C4  38 C6 02 35 */	addi r6, r6, 0x235
/* 800060C8  4C C6 31 82 */	crclr 6
/* 800060CC  48 2D A5 35 */	bl JUTReport__FiiiPCce
/* 800060D0  38 60 00 1E */	li r3, 0x1e
/* 800060D4  38 80 01 C2 */	li r4, 0x1c2
/* 800060D8  38 A0 00 01 */	li r5, 1
/* 800060DC  3C C0 80 37 */	lis r6, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 800060E0  38 C6 39 A0 */	addi r6, r6, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 800060E4  38 C6 02 5B */	addi r6, r6, 0x25b
/* 800060E8  4C C6 31 82 */	crclr 6
/* 800060EC  48 2D A5 15 */	bl JUTReport__FiiiPCce
lbl_800060F0:
/* 800060F0  C0 0D 85 A4 */	lfs f0, console_position_y(r13)
/* 800060F4  FC 00 00 1E */	fctiwz f0, f0
/* 800060F8  D8 01 00 08 */	stfd f0, 8(r1)
/* 800060FC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80006100  C0 0D 85 9C */	lfs f0, console_position_x(r13)
/* 80006104  FC 00 00 1E */	fctiwz f0, f0
/* 80006108  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8000610C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006110  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80006114  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80006118  38 60 00 01 */	li r3, 1
/* 8000611C  48 00 00 08 */	b lbl_80006124
lbl_80006120:
/* 80006120  38 60 00 00 */	li r3, 0
lbl_80006124:
/* 80006124  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80006128  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8000612C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80006130  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80006134  39 61 00 30 */	addi r11, r1, 0x30
/* 80006138  48 35 C0 ED */	bl _restgpr_28
/* 8000613C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80006140  7C 08 03 A6 */	mtlr r0
/* 80006144  38 21 00 50 */	addi r1, r1, 0x50
/* 80006148  4E 80 00 20 */	blr 
