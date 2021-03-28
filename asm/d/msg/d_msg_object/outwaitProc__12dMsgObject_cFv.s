lbl_80234CCC:
/* 80234CCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80234CD0  7C 08 02 A6 */	mflr r0
/* 80234CD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80234CD8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80234CDC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80234CE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80234CE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80234CE8  7C 7E 1B 78 */	mr r30, r3
/* 80234CEC  80 63 01 20 */	lwz r3, 0x120(r3)
/* 80234CF0  83 E3 00 04 */	lwz r31, 4(r3)
/* 80234CF4  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80234CF8  81 83 00 00 */	lwz r12, 0(r3)
/* 80234CFC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80234D00  7D 89 03 A6 */	mtctr r12
/* 80234D04  4E 80 04 21 */	bctrl 
/* 80234D08  7F C3 F3 78 */	mr r3, r30
/* 80234D0C  48 00 25 01 */	bl isBookMessage__12dMsgObject_cFv
/* 80234D10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80234D14  41 82 01 78 */	beq lbl_80234E8C
/* 80234D18  7F C3 F3 78 */	mr r3, r30
/* 80234D1C  48 00 1C BD */	bl isSend__12dMsgObject_cFv
/* 80234D20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80234D24  40 82 00 10 */	bne lbl_80234D34
/* 80234D28  A8 1E 01 6A */	lha r0, 0x16a(r30)
/* 80234D2C  2C 00 00 00 */	cmpwi r0, 0
/* 80234D30  40 81 02 A0 */	ble lbl_80234FD0
lbl_80234D34:
/* 80234D34  A8 7E 01 6A */	lha r3, 0x16a(r30)
/* 80234D38  38 03 00 01 */	addi r0, r3, 1
/* 80234D3C  B0 1E 01 6A */	sth r0, 0x16a(r30)
/* 80234D40  A8 1E 01 6A */	lha r0, 0x16a(r30)
/* 80234D44  2C 00 00 0A */	cmpwi r0, 0xa
/* 80234D48  41 81 02 88 */	bgt lbl_80234FD0
/* 80234D4C  20 00 00 0A */	subfic r0, r0, 0xa
/* 80234D50  C8 22 B1 20 */	lfd f1, lit_4965(r2)
/* 80234D54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80234D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80234D5C  3C 00 43 30 */	lis r0, 0x4330
/* 80234D60  90 01 00 10 */	stw r0, 0x10(r1)
/* 80234D64  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80234D68  EC 20 08 28 */	fsubs f1, f0, f1
/* 80234D6C  C0 02 B1 28 */	lfs f0, lit_5044(r2)
/* 80234D70  EF E1 00 24 */	fdivs f31, f1, f0
/* 80234D74  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80234D78  FC 20 F8 90 */	fmr f1, f31
/* 80234D7C  81 83 00 00 */	lwz r12, 0(r3)
/* 80234D80  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80234D84  7D 89 03 A6 */	mtctr r12
/* 80234D88  4E 80 04 21 */	bctrl 
/* 80234D8C  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80234D90  FC 20 F8 90 */	fmr f1, f31
/* 80234D94  81 83 00 00 */	lwz r12, 0(r3)
/* 80234D98  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80234D9C  7D 89 03 A6 */	mtctr r12
/* 80234DA0  4E 80 04 21 */	bctrl 
/* 80234DA4  A8 1E 01 6A */	lha r0, 0x16a(r30)
/* 80234DA8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80234DAC  41 80 02 24 */	blt lbl_80234FD0
/* 80234DB0  A8 7E 01 72 */	lha r3, 0x172(r30)
/* 80234DB4  38 03 00 01 */	addi r0, r3, 1
/* 80234DB8  B0 1E 01 72 */	sth r0, 0x172(r30)
/* 80234DBC  A8 1E 01 72 */	lha r0, 0x172(r30)
/* 80234DC0  80 7E 01 18 */	lwz r3, 0x118(r30)
/* 80234DC4  B0 03 05 DA */	sth r0, 0x5da(r3)
/* 80234DC8  80 9E 01 14 */	lwz r4, 0x114(r30)
/* 80234DCC  38 60 00 00 */	li r3, 0
/* 80234DD0  80 04 00 20 */	lwz r0, 0x20(r4)
/* 80234DD4  28 00 00 00 */	cmplwi r0, 0
/* 80234DD8  41 82 00 14 */	beq lbl_80234DEC
/* 80234DDC  80 04 00 08 */	lwz r0, 8(r4)
/* 80234DE0  28 00 00 00 */	cmplwi r0, 0
/* 80234DE4  41 82 00 08 */	beq lbl_80234DEC
/* 80234DE8  38 60 00 01 */	li r3, 1
lbl_80234DEC:
/* 80234DEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80234DF0  41 82 00 60 */	beq lbl_80234E50
/* 80234DF4  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80234DF8  90 04 00 20 */	stw r0, 0x20(r4)
/* 80234DFC  80 64 00 08 */	lwz r3, 8(r4)
/* 80234E00  38 A3 00 10 */	addi r5, r3, 0x10
/* 80234E04  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80234E08  90 04 00 24 */	stw r0, 0x24(r4)
/* 80234E0C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80234E10  54 03 10 3A */	slwi r3, r0, 2
/* 80234E14  38 63 00 04 */	addi r3, r3, 4
/* 80234E18  7C 65 1A 14 */	add r3, r5, r3
/* 80234E1C  38 C4 00 28 */	addi r6, r4, 0x28
/* 80234E20  38 85 00 04 */	addi r4, r5, 4
/* 80234E24  38 03 00 03 */	addi r0, r3, 3
/* 80234E28  7C 04 00 50 */	subf r0, r4, r0
/* 80234E2C  54 00 F0 BE */	srwi r0, r0, 2
/* 80234E30  7C 09 03 A6 */	mtctr r0
/* 80234E34  7C 04 18 40 */	cmplw r4, r3
/* 80234E38  40 80 00 18 */	bge lbl_80234E50
lbl_80234E3C:
/* 80234E3C  80 04 00 00 */	lwz r0, 0(r4)
/* 80234E40  90 06 00 00 */	stw r0, 0(r6)
/* 80234E44  38 84 00 04 */	addi r4, r4, 4
/* 80234E48  38 C6 00 04 */	addi r6, r6, 4
/* 80234E4C  42 00 FF F0 */	bdnz lbl_80234E3C
lbl_80234E50:
/* 80234E50  7F E3 FB 78 */	mr r3, r31
/* 80234E54  4B FF 41 E1 */	bl pageSend__19jmessage_tReferenceFv
/* 80234E58  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80234E5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80234E60  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80234E64  7D 89 03 A6 */	mtctr r12
/* 80234E68  4E 80 04 21 */	bctrl 
/* 80234E6C  80 7E 01 20 */	lwz r3, 0x120(r30)
/* 80234E70  4B FF 92 BD */	bl resetRendering__28jmessage_tRenderingProcessorFv
/* 80234E74  38 00 00 00 */	li r0, 0
/* 80234E78  98 1E 01 99 */	stb r0, 0x199(r30)
/* 80234E7C  7F C3 F3 78 */	mr r3, r30
/* 80234E80  38 80 00 06 */	li r4, 6
/* 80234E84  48 00 1A 61 */	bl setStatusLocal__12dMsgObject_cFUs
/* 80234E88  48 00 01 48 */	b lbl_80234FD0
lbl_80234E8C:
/* 80234E8C  7F C3 F3 78 */	mr r3, r30
/* 80234E90  48 00 1B 49 */	bl isSend__12dMsgObject_cFv
/* 80234E94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80234E98  41 82 01 38 */	beq lbl_80234FD0
/* 80234E9C  A8 7E 01 72 */	lha r3, 0x172(r30)
/* 80234EA0  38 03 00 01 */	addi r0, r3, 1
/* 80234EA4  B0 1E 01 72 */	sth r0, 0x172(r30)
/* 80234EA8  A8 1E 01 72 */	lha r0, 0x172(r30)
/* 80234EAC  80 7E 01 18 */	lwz r3, 0x118(r30)
/* 80234EB0  B0 03 05 DA */	sth r0, 0x5da(r3)
/* 80234EB4  80 9E 01 14 */	lwz r4, 0x114(r30)
/* 80234EB8  38 60 00 00 */	li r3, 0
/* 80234EBC  80 04 00 20 */	lwz r0, 0x20(r4)
/* 80234EC0  28 00 00 00 */	cmplwi r0, 0
/* 80234EC4  41 82 00 14 */	beq lbl_80234ED8
/* 80234EC8  80 04 00 08 */	lwz r0, 8(r4)
/* 80234ECC  28 00 00 00 */	cmplwi r0, 0
/* 80234ED0  41 82 00 08 */	beq lbl_80234ED8
/* 80234ED4  38 60 00 01 */	li r3, 1
lbl_80234ED8:
/* 80234ED8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80234EDC  41 82 00 60 */	beq lbl_80234F3C
/* 80234EE0  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80234EE4  90 04 00 20 */	stw r0, 0x20(r4)
/* 80234EE8  80 64 00 08 */	lwz r3, 8(r4)
/* 80234EEC  38 A3 00 10 */	addi r5, r3, 0x10
/* 80234EF0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80234EF4  90 04 00 24 */	stw r0, 0x24(r4)
/* 80234EF8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80234EFC  54 03 10 3A */	slwi r3, r0, 2
/* 80234F00  38 63 00 04 */	addi r3, r3, 4
/* 80234F04  7C 65 1A 14 */	add r3, r5, r3
/* 80234F08  38 C4 00 28 */	addi r6, r4, 0x28
/* 80234F0C  38 85 00 04 */	addi r4, r5, 4
/* 80234F10  38 03 00 03 */	addi r0, r3, 3
/* 80234F14  7C 04 00 50 */	subf r0, r4, r0
/* 80234F18  54 00 F0 BE */	srwi r0, r0, 2
/* 80234F1C  7C 09 03 A6 */	mtctr r0
/* 80234F20  7C 04 18 40 */	cmplw r4, r3
/* 80234F24  40 80 00 18 */	bge lbl_80234F3C
lbl_80234F28:
/* 80234F28  80 04 00 00 */	lwz r0, 0(r4)
/* 80234F2C  90 06 00 00 */	stw r0, 0(r6)
/* 80234F30  38 84 00 04 */	addi r4, r4, 4
/* 80234F34  38 C6 00 04 */	addi r6, r6, 4
/* 80234F38  42 00 FF F0 */	bdnz lbl_80234F28
lbl_80234F3C:
/* 80234F3C  7F E3 FB 78 */	mr r3, r31
/* 80234F40  4B FF 40 F5 */	bl pageSend__19jmessage_tReferenceFv
/* 80234F44  38 00 00 00 */	li r0, 0
/* 80234F48  98 1E 04 CF */	stb r0, 0x4cf(r30)
/* 80234F4C  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80234F50  81 83 00 00 */	lwz r12, 0(r3)
/* 80234F54  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80234F58  7D 89 03 A6 */	mtctr r12
/* 80234F5C  4E 80 04 21 */	bctrl 
/* 80234F60  80 7E 01 20 */	lwz r3, 0x120(r30)
/* 80234F64  4B FF 91 C9 */	bl resetRendering__28jmessage_tRenderingProcessorFv
/* 80234F68  38 00 00 00 */	li r0, 0
/* 80234F6C  98 1E 01 99 */	stb r0, 0x199(r30)
/* 80234F70  7F C3 F3 78 */	mr r3, r30
/* 80234F74  38 80 00 06 */	li r4, 6
/* 80234F78  48 00 19 6D */	bl setStatusLocal__12dMsgObject_cFUs
/* 80234F7C  7F C3 F3 78 */	mr r3, r30
/* 80234F80  48 00 22 BD */	bl isTalkMessage__12dMsgObject_cFv
/* 80234F84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80234F88  41 82 00 48 */	beq lbl_80234FD0
/* 80234F8C  80 7E 01 18 */	lwz r3, 0x118(r30)
/* 80234F90  88 03 12 47 */	lbz r0, 0x1247(r3)
/* 80234F94  28 00 00 01 */	cmplwi r0, 1
/* 80234F98  41 82 00 38 */	beq lbl_80234FD0
/* 80234F9C  38 00 00 5F */	li r0, 0x5f
/* 80234FA0  90 01 00 08 */	stw r0, 8(r1)
/* 80234FA4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80234FA8  38 81 00 08 */	addi r4, r1, 8
/* 80234FAC  38 A0 00 00 */	li r5, 0
/* 80234FB0  38 C0 00 00 */	li r6, 0
/* 80234FB4  38 E0 00 00 */	li r7, 0
/* 80234FB8  C0 22 B0 C0 */	lfs f1, lit_4084(r2)
/* 80234FBC  FC 40 08 90 */	fmr f2, f1
/* 80234FC0  C0 62 B1 10 */	lfs f3, lit_4145(r2)
/* 80234FC4  FC 80 18 90 */	fmr f4, f3
/* 80234FC8  39 00 00 00 */	li r8, 0
/* 80234FCC  48 07 69 B9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80234FD0:
/* 80234FD0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80234FD4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80234FD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80234FDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80234FE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80234FE4  7C 08 03 A6 */	mtlr r0
/* 80234FE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80234FEC  4E 80 00 20 */	blr 
