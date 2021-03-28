lbl_802D1C74:
/* 802D1C74  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802D1C78  7C 08 02 A6 */	mflr r0
/* 802D1C7C  90 01 00 54 */	stw r0, 0x54(r1)
/* 802D1C80  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802D1C84  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802D1C88  39 61 00 40 */	addi r11, r1, 0x40
/* 802D1C8C  48 09 05 41 */	bl _savegpr_25
/* 802D1C90  7C 7A 1B 78 */	mr r26, r3
/* 802D1C94  7C 9B 23 78 */	mr r27, r4
/* 802D1C98  7C BC 2B 79 */	or. r28, r5, r5
/* 802D1C9C  3C 60 80 3A */	lis r3, JKRThread__stringBase0@ha
/* 802D1CA0  38 63 CF A8 */	addi r3, r3, JKRThread__stringBase0@l
/* 802D1CA4  3B 23 00 5D */	addi r25, r3, 0x5d
/* 802D1CA8  3B A3 00 7F */	addi r29, r3, 0x7f
/* 802D1CAC  41 82 00 34 */	beq lbl_802D1CE0
/* 802D1CB0  7F 83 E3 78 */	mr r3, r28
/* 802D1CB4  48 01 59 39 */	bl clear__10JUTConsoleFv
/* 802D1CB8  7F 83 E3 78 */	mr r3, r28
/* 802D1CBC  7F 24 CB 78 */	mr r4, r25
/* 802D1CC0  80 AD 8E 34 */	lwz r5, sTotalCount__15JKRThreadSwitch(r13)
/* 802D1CC4  80 DA 00 1C */	lwz r6, 0x1c(r26)
/* 802D1CC8  80 FA 00 10 */	lwz r7, 0x10(r26)
/* 802D1CCC  4C C6 31 82 */	crclr 6
/* 802D1CD0  48 01 5E E9 */	bl print_f__10JUTConsoleFPCce
/* 802D1CD4  7F 83 E3 78 */	mr r3, r28
/* 802D1CD8  7F A4 EB 78 */	mr r4, r29
/* 802D1CDC  48 01 5F 5D */	bl print__10JUTConsoleFPCc
lbl_802D1CE0:
/* 802D1CE0  3C 60 80 43 */	lis r3, sThreadList__9JKRThread@ha
/* 802D1CE4  83 C3 42 8C */	lwz r30, sThreadList__9JKRThread@l(r3)
/* 802D1CE8  48 00 01 04 */	b lbl_802D1DEC
lbl_802D1CEC:
/* 802D1CEC  83 3E 00 00 */	lwz r25, 0(r30)
/* 802D1CF0  88 19 00 60 */	lbz r0, 0x60(r25)
/* 802D1CF4  28 00 00 00 */	cmplwi r0, 0
/* 802D1CF8  41 82 00 F0 */	beq lbl_802D1DE8
/* 802D1CFC  3B A0 00 00 */	li r29, 0
/* 802D1D00  28 1B 00 00 */	cmplwi r27, 0
/* 802D1D04  41 82 00 34 */	beq lbl_802D1D38
/* 802D1D08  7F 65 DB 78 */	mr r5, r27
/* 802D1D0C  48 00 00 20 */	b lbl_802D1D2C
lbl_802D1D10:
/* 802D1D10  80 65 00 00 */	lwz r3, 0(r5)
/* 802D1D14  80 19 00 70 */	lwz r0, 0x70(r25)
/* 802D1D18  7C 03 00 00 */	cmpw r3, r0
/* 802D1D1C  40 82 00 0C */	bne lbl_802D1D28
/* 802D1D20  7C 9D 23 78 */	mr r29, r4
/* 802D1D24  48 00 00 14 */	b lbl_802D1D38
lbl_802D1D28:
/* 802D1D28  38 A5 00 08 */	addi r5, r5, 8
lbl_802D1D2C:
/* 802D1D2C  80 85 00 04 */	lwz r4, 4(r5)
/* 802D1D30  28 04 00 00 */	cmplwi r4, 0
/* 802D1D34  40 82 FF DC */	bne lbl_802D1D10
lbl_802D1D38:
/* 802D1D38  28 1D 00 00 */	cmplwi r29, 0
/* 802D1D3C  40 82 00 24 */	bne lbl_802D1D60
/* 802D1D40  38 61 00 08 */	addi r3, r1, 8
/* 802D1D44  3C 80 80 3A */	lis r4, JKRThread__stringBase0@ha
/* 802D1D48  38 84 CF A8 */	addi r4, r4, JKRThread__stringBase0@l
/* 802D1D4C  38 84 00 A7 */	addi r4, r4, 0xa7
/* 802D1D50  80 B9 00 70 */	lwz r5, 0x70(r25)
/* 802D1D54  4C C6 31 82 */	crclr 6
/* 802D1D58  48 09 47 85 */	bl sprintf
/* 802D1D5C  3B A1 00 08 */	addi r29, r1, 8
lbl_802D1D60:
/* 802D1D60  83 F9 00 68 */	lwz r31, 0x68(r25)
/* 802D1D64  80 7A 00 18 */	lwz r3, 0x18(r26)
/* 802D1D68  80 9A 00 1C */	lwz r4, 0x1c(r26)
/* 802D1D6C  48 09 09 51 */	bl __cvt_sll_flt
/* 802D1D70  80 19 00 64 */	lwz r0, 0x64(r25)
/* 802D1D74  C8 42 C5 C8 */	lfd f2, lit_937(r2)
/* 802D1D78  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802D1D7C  3C 00 43 30 */	lis r0, 0x4330
/* 802D1D80  90 01 00 18 */	stw r0, 0x18(r1)
/* 802D1D84  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802D1D88  EC 00 10 28 */	fsubs f0, f0, f2
/* 802D1D8C  EF E0 08 24 */	fdivs f31, f0, f1
/* 802D1D90  C0 02 C5 C0 */	lfs f0, lit_934(r2)
/* 802D1D94  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802D1D98  48 09 03 15 */	bl __cvt_fp2unsigned
/* 802D1D9C  7C 79 1B 78 */	mr r25, r3
/* 802D1DA0  C0 02 C5 C4 */	lfs f0, lit_935(r2)
/* 802D1DA4  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802D1DA8  48 09 03 05 */	bl __cvt_fp2unsigned
/* 802D1DAC  38 80 00 0A */	li r4, 0xa
/* 802D1DB0  7C 03 23 96 */	divwu r0, r3, r4
/* 802D1DB4  7C 00 21 D6 */	mullw r0, r0, r4
/* 802D1DB8  7D 00 18 50 */	subf r8, r0, r3
/* 802D1DBC  28 1C 00 00 */	cmplwi r28, 0
/* 802D1DC0  41 82 00 28 */	beq lbl_802D1DE8
/* 802D1DC4  7F 83 E3 78 */	mr r3, r28
/* 802D1DC8  3C 80 80 3A */	lis r4, JKRThread__stringBase0@ha
/* 802D1DCC  38 84 CF A8 */	addi r4, r4, JKRThread__stringBase0@l
/* 802D1DD0  38 84 00 AA */	addi r4, r4, 0xaa
/* 802D1DD4  7F A5 EB 78 */	mr r5, r29
/* 802D1DD8  7F E6 FB 78 */	mr r6, r31
/* 802D1DDC  7F 27 CB 78 */	mr r7, r25
/* 802D1DE0  4C C6 31 82 */	crclr 6
/* 802D1DE4  48 01 5D D5 */	bl print_f__10JUTConsoleFPCce
lbl_802D1DE8:
/* 802D1DE8  83 DE 00 0C */	lwz r30, 0xc(r30)
lbl_802D1DEC:
/* 802D1DEC  28 1E 00 00 */	cmplwi r30, 0
/* 802D1DF0  40 82 FE FC */	bne lbl_802D1CEC
/* 802D1DF4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802D1DF8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802D1DFC  39 61 00 40 */	addi r11, r1, 0x40
/* 802D1E00  48 09 04 19 */	bl _restgpr_25
/* 802D1E04  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802D1E08  7C 08 03 A6 */	mtlr r0
/* 802D1E0C  38 21 00 50 */	addi r1, r1, 0x50
/* 802D1E10  4E 80 00 20 */	blr 
