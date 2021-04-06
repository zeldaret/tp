lbl_80749D9C:
/* 80749D9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80749DA0  7C 08 02 A6 */	mflr r0
/* 80749DA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80749DA8  39 61 00 30 */	addi r11, r1, 0x30
/* 80749DAC  4B C1 84 25 */	bl _savegpr_26
/* 80749DB0  7C 7C 1B 78 */	mr r28, r3
/* 80749DB4  3B A0 00 00 */	li r29, 0
/* 80749DB8  3B 60 00 00 */	li r27, 0
/* 80749DBC  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x8074C394@ha */
/* 80749DC0  3B C3 C3 94 */	addi r30, r3, l_HIO@l /* 0x8074C394@l */
/* 80749DC4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80749DC8  3B E3 35 90 */	addi r31, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80749DCC  48 00 00 E0 */	b lbl_80749EAC
lbl_80749DD0:
/* 80749DD0  3B 5B 05 AC */	addi r26, r27, 0x5ac
/* 80749DD4  7C 1C D0 2E */	lwzx r0, r28, r26
/* 80749DD8  90 01 00 08 */	stw r0, 8(r1)
/* 80749DDC  7F E3 FB 78 */	mr r3, r31
/* 80749DE0  38 81 00 08 */	addi r4, r1, 8
/* 80749DE4  4B 8C FA 15 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80749DE8  28 03 00 00 */	cmplwi r3, 0
/* 80749DEC  40 82 00 1C */	bne lbl_80749E08
/* 80749DF0  7C 7C D0 2E */	lwzx r3, r28, r26
/* 80749DF4  3C 03 00 01 */	addis r0, r3, 1
/* 80749DF8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80749DFC  41 82 00 0C */	beq lbl_80749E08
/* 80749E00  38 00 FF FF */	li r0, -1
/* 80749E04  7C 1C D1 2E */	stwx r0, r28, r26
lbl_80749E08:
/* 80749E08  7C 7C D0 2E */	lwzx r3, r28, r26
/* 80749E0C  3C 03 00 01 */	addis r0, r3, 1
/* 80749E10  28 00 FF FF */	cmplwi r0, 0xffff
/* 80749E14  40 82 00 90 */	bne lbl_80749EA4
/* 80749E18  A8 1C 06 24 */	lha r0, 0x624(r28)
/* 80749E1C  2C 00 00 00 */	cmpwi r0, 0
/* 80749E20  40 82 00 84 */	bne lbl_80749EA4
/* 80749E24  3C 60 80 75 */	lis r3, data_8074C3E0@ha /* 0x8074C3E0@ha */
/* 80749E28  C0 23 C3 E0 */	lfs f1, data_8074C3E0@l(r3)  /* 0x8074C3E0@l */
/* 80749E2C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80749E30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80749E34  4C 40 13 82 */	cror 2, 0, 2
/* 80749E38  40 82 00 28 */	bne lbl_80749E60
/* 80749E3C  3C 60 80 75 */	lis r3, lit_5216@ha /* 0x8074C080@ha */
/* 80749E40  C0 23 C0 80 */	lfs f1, lit_5216@l(r3)  /* 0x8074C080@l */
/* 80749E44  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80749E48  EC 01 00 32 */	fmuls f0, f1, f0
/* 80749E4C  FC 00 00 1E */	fctiwz f0, f0
/* 80749E50  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80749E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80749E58  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 80749E5C  48 00 00 18 */	b lbl_80749E74
lbl_80749E60:
/* 80749E60  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80749E64  FC 00 00 1E */	fctiwz f0, f0
/* 80749E68  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80749E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80749E70  B0 1C 06 24 */	sth r0, 0x624(r28)
lbl_80749E74:
/* 80749E74  88 1C 06 1A */	lbz r0, 0x61a(r28)
/* 80749E78  28 00 00 04 */	cmplwi r0, 4
/* 80749E7C  40 82 00 28 */	bne lbl_80749EA4
/* 80749E80  38 60 00 00 */	li r3, 0
/* 80749E84  4B 8E 2A F9 */	bl getLayerNo__14dComIfG_play_cFi
/* 80749E88  2C 03 00 02 */	cmpwi r3, 2
/* 80749E8C  40 82 00 10 */	bne lbl_80749E9C
/* 80749E90  38 00 00 C8 */	li r0, 0xc8
/* 80749E94  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 80749E98  48 00 00 0C */	b lbl_80749EA4
lbl_80749E9C:
/* 80749E9C  38 00 00 A0 */	li r0, 0xa0
/* 80749EA0  B0 1C 06 24 */	sth r0, 0x624(r28)
lbl_80749EA4:
/* 80749EA4  3B BD 00 01 */	addi r29, r29, 1
/* 80749EA8  3B 7B 00 04 */	addi r27, r27, 4
lbl_80749EAC:
/* 80749EAC  88 1C 06 00 */	lbz r0, 0x600(r28)
/* 80749EB0  7C 1D 00 00 */	cmpw r29, r0
/* 80749EB4  41 80 FF 1C */	blt lbl_80749DD0
/* 80749EB8  39 61 00 30 */	addi r11, r1, 0x30
/* 80749EBC  4B C1 83 61 */	bl _restgpr_26
/* 80749EC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80749EC4  7C 08 03 A6 */	mtlr r0
/* 80749EC8  38 21 00 30 */	addi r1, r1, 0x30
/* 80749ECC  4E 80 00 20 */	blr 
