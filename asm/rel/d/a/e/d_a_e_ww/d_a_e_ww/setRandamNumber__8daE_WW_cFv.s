lbl_807E7E74:
/* 807E7E74  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807E7E78  7C 08 02 A6 */	mflr r0
/* 807E7E7C  90 01 00 54 */	stw r0, 0x54(r1)
/* 807E7E80  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807E7E84  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807E7E88  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 807E7E8C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 807E7E90  39 61 00 30 */	addi r11, r1, 0x30
/* 807E7E94  4B B7 A3 39 */	bl _savegpr_25
/* 807E7E98  7C 7B 1B 78 */	mr r27, r3
/* 807E7E9C  3C 60 80 7F */	lis r3, lit_3905@ha /* 0x807EF770@ha */
/* 807E7EA0  3B E3 F7 70 */	addi r31, r3, lit_3905@l /* 0x807EF770@l */
/* 807E7EA4  3B C0 00 00 */	li r30, 0
/* 807E7EA8  88 1B 06 B6 */	lbz r0, 0x6b6(r27)
/* 807E7EAC  7C 1D 03 78 */	mr r29, r0
/* 807E7EB0  28 00 00 05 */	cmplwi r0, 5
/* 807E7EB4  40 80 00 08 */	bge lbl_807E7EBC
/* 807E7EB8  3B A0 00 05 */	li r29, 5
lbl_807E7EBC:
/* 807E7EBC  3B 80 00 00 */	li r28, 0
/* 807E7EC0  3B 40 00 00 */	li r26, 0
/* 807E7EC4  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 807E7EC8  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 807E7ECC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E7ED0  3C 00 43 30 */	lis r0, 0x4330
/* 807E7ED4  90 01 00 08 */	stw r0, 8(r1)
/* 807E7ED8  C8 01 00 08 */	lfd f0, 8(r1)
/* 807E7EDC  EC 20 08 28 */	fsubs f1, f0, f1
/* 807E7EE0  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 807E7EE4  EF C1 00 28 */	fsubs f30, f1, f0
/* 807E7EE8  C3 FF 00 58 */	lfs f31, 0x58(r31)
/* 807E7EEC  48 00 00 B0 */	b lbl_807E7F9C
lbl_807E7EF0:
/* 807E7EF0  FC 20 F0 90 */	fmr f1, f30
/* 807E7EF4  4B A7 FA 61 */	bl cM_rndF__Ff
/* 807E7EF8  FC 00 08 1E */	fctiwz f0, f1
/* 807E7EFC  D8 01 00 08 */	stfd f0, 8(r1)
/* 807E7F00  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807E7F04  38 00 00 01 */	li r0, 1
/* 807E7F08  7C 00 20 30 */	slw r0, r0, r4
/* 807E7F0C  7F C0 00 39 */	and. r0, r30, r0
/* 807E7F10  41 82 00 54 */	beq lbl_807E7F64
/* 807E7F14  FC 20 F0 90 */	fmr f1, f30
/* 807E7F18  4B A7 FA 3D */	bl cM_rndF__Ff
/* 807E7F1C  FC 00 08 1E */	fctiwz f0, f1
/* 807E7F20  D8 01 00 08 */	stfd f0, 8(r1)
/* 807E7F24  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807E7F28  38 60 00 01 */	li r3, 1
/* 807E7F2C  7C 60 20 30 */	slw r0, r3, r4
/* 807E7F30  7F C0 00 39 */	and. r0, r30, r0
/* 807E7F34  41 82 00 30 */	beq lbl_807E7F64
/* 807E7F38  38 A0 00 00 */	li r5, 0
/* 807E7F3C  7F A9 03 A6 */	mtctr r29
/* 807E7F40  2C 1D 00 00 */	cmpwi r29, 0
/* 807E7F44  40 81 00 20 */	ble lbl_807E7F64
lbl_807E7F48:
/* 807E7F48  7C 60 28 30 */	slw r0, r3, r5
/* 807E7F4C  7F C0 00 39 */	and. r0, r30, r0
/* 807E7F50  40 82 00 0C */	bne lbl_807E7F5C
/* 807E7F54  7C A4 2B 78 */	mr r4, r5
/* 807E7F58  48 00 00 0C */	b lbl_807E7F64
lbl_807E7F5C:
/* 807E7F5C  38 A5 00 01 */	addi r5, r5, 1
/* 807E7F60  42 00 FF E8 */	bdnz lbl_807E7F48
lbl_807E7F64:
/* 807E7F64  38 00 00 01 */	li r0, 1
/* 807E7F68  7C 00 20 30 */	slw r0, r0, r4
/* 807E7F6C  7F DE 03 78 */	or r30, r30, r0
/* 807E7F70  7F 3B D2 14 */	add r25, r27, r26
/* 807E7F74  90 99 06 FC */	stw r4, 0x6fc(r25)
/* 807E7F78  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807E7F7C  4B A7 FA 11 */	bl cM_rndFX__Ff
/* 807E7F80  EC 1F 08 2A */	fadds f0, f31, f1
/* 807E7F84  FC 00 00 1E */	fctiwz f0, f0
/* 807E7F88  D8 01 00 08 */	stfd f0, 8(r1)
/* 807E7F8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807E7F90  90 19 06 D4 */	stw r0, 0x6d4(r25)
/* 807E7F94  3B 9C 00 01 */	addi r28, r28, 1
/* 807E7F98  3B 5A 00 04 */	addi r26, r26, 4
lbl_807E7F9C:
/* 807E7F9C  7C 1C E8 00 */	cmpw r28, r29
/* 807E7FA0  41 80 FF 50 */	blt lbl_807E7EF0
/* 807E7FA4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807E7FA8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807E7FAC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 807E7FB0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 807E7FB4  39 61 00 30 */	addi r11, r1, 0x30
/* 807E7FB8  4B B7 A2 61 */	bl _restgpr_25
/* 807E7FBC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807E7FC0  7C 08 03 A6 */	mtlr r0
/* 807E7FC4  38 21 00 50 */	addi r1, r1, 0x50
/* 807E7FC8  4E 80 00 20 */	blr 
