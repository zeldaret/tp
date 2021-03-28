lbl_80120DB0:
/* 80120DB0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80120DB4  7C 08 02 A6 */	mflr r0
/* 80120DB8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80120DBC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80120DC0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80120DC4  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80120DC8  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80120DCC  39 61 00 60 */	addi r11, r1, 0x60
/* 80120DD0  48 24 13 F1 */	bl _savegpr_22
/* 80120DD4  7C 78 1B 78 */	mr r24, r3
/* 80120DD8  3C 60 80 39 */	lis r3, lit_3757@ha
/* 80120DDC  3B A3 D6 58 */	addi r29, r3, lit_3757@l
/* 80120DE0  3B 20 00 00 */	li r25, 0
/* 80120DE4  3A E0 00 00 */	li r23, 0
/* 80120DE8  3C 60 80 3B */	lis r3, m_typeFourData__8dPaPoF_c@ha
/* 80120DEC  3B C3 86 D0 */	addi r30, r3, m_typeFourData__8dPaPoF_c@l
/* 80120DF0  3C 60 80 3B */	lis r3, m_emitterFourData__8dPaPoF_c@ha
/* 80120DF4  3B E3 87 48 */	addi r31, r3, m_emitterFourData__8dPaPoF_c@l
lbl_80120DF8:
/* 80120DF8  3B 40 00 00 */	li r26, 0
/* 80120DFC  7F 9E BA 14 */	add r28, r30, r23
/* 80120E00  7F 7F BA 14 */	add r27, r31, r23
lbl_80120E04:
/* 80120E04  38 78 2E 54 */	addi r3, r24, 0x2e54
/* 80120E08  7F 44 D3 78 */	mr r4, r26
/* 80120E0C  7F 8C E3 78 */	mr r12, r28
/* 80120E10  48 24 12 75 */	bl __ptmf_scall
/* 80120E14  60 00 00 00 */	nop 
/* 80120E18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80120E1C  40 82 00 A4 */	bne lbl_80120EC0
/* 80120E20  38 78 2E 54 */	addi r3, r24, 0x2e54
/* 80120E24  7F 44 D3 78 */	mr r4, r26
/* 80120E28  38 A0 00 00 */	li r5, 0
/* 80120E2C  7F 6C DB 78 */	mr r12, r27
/* 80120E30  48 24 12 55 */	bl __ptmf_scall
/* 80120E34  60 00 00 00 */	nop 
/* 80120E38  28 03 00 00 */	cmplwi r3, 0
/* 80120E3C  41 82 01 80 */	beq lbl_80120FBC
/* 80120E40  80 18 05 74 */	lwz r0, 0x574(r24)
/* 80120E44  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80120E48  41 82 00 38 */	beq lbl_80120E80
/* 80120E4C  38 9D 45 A8 */	addi r4, r29, 0x45a8
/* 80120E50  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 80120E54  C0 44 00 08 */	lfs f2, 8(r4)
/* 80120E58  F0 01 00 2C */	psq_st f0, 44(r1), 0, 0 /* qr0 */
/* 80120E5C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80120E60  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80120E64  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 80120E68  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80120E6C  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 80120E70  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 80120E74  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 80120E78  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 80120E7C  48 00 01 40 */	b lbl_80120FBC
lbl_80120E80:
/* 80120E80  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 80120E84  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80120E88  38 00 00 19 */	li r0, 0x19
/* 80120E8C  B0 03 00 54 */	sth r0, 0x54(r3)
/* 80120E90  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80120E94  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80120E98  38 9D 45 90 */	addi r4, r29, 0x4590
/* 80120E9C  E0 24 00 00 */	psq_l f1, 0(r4), 0, 0 /* qr0 */
/* 80120EA0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80120EA4  F0 21 00 20 */	psq_st f1, 32(r1), 0, 0 /* qr0 */
/* 80120EA8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80120EAC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80120EB0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80120EB4  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80120EB8  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 80120EBC  48 00 01 00 */	b lbl_80120FBC
lbl_80120EC0:
/* 80120EC0  28 00 00 01 */	cmplwi r0, 1
/* 80120EC4  40 82 00 84 */	bne lbl_80120F48
/* 80120EC8  38 78 2E 54 */	addi r3, r24, 0x2e54
/* 80120ECC  7F 44 D3 78 */	mr r4, r26
/* 80120ED0  38 A0 00 00 */	li r5, 0
/* 80120ED4  7F 6C DB 78 */	mr r12, r27
/* 80120ED8  48 24 11 AD */	bl __ptmf_scall
/* 80120EDC  60 00 00 00 */	nop 
/* 80120EE0  28 03 00 00 */	cmplwi r3, 0
/* 80120EE4  41 82 00 D8 */	beq lbl_80120FBC
/* 80120EE8  80 18 05 74 */	lwz r0, 0x574(r24)
/* 80120EEC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80120EF0  41 82 00 38 */	beq lbl_80120F28
/* 80120EF4  38 9D 45 A8 */	addi r4, r29, 0x45a8
/* 80120EF8  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 80120EFC  C0 44 00 08 */	lfs f2, 8(r4)
/* 80120F00  F0 01 00 14 */	psq_st f0, 20(r1), 0, 0 /* qr0 */
/* 80120F04  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80120F08  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80120F0C  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 80120F10  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80120F14  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 80120F18  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 80120F1C  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 80120F20  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 80120F24  48 00 00 98 */	b lbl_80120FBC
lbl_80120F28:
/* 80120F28  C0 22 93 8C */	lfs f1, lit_8783(r2)
/* 80120F2C  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80120F30  38 00 00 19 */	li r0, 0x19
/* 80120F34  B0 03 00 54 */	sth r0, 0x54(r3)
/* 80120F38  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80120F3C  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80120F40  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 80120F44  48 00 00 78 */	b lbl_80120FBC
lbl_80120F48:
/* 80120F48  28 00 00 02 */	cmplwi r0, 2
/* 80120F4C  40 82 00 70 */	bne lbl_80120FBC
/* 80120F50  80 18 05 74 */	lwz r0, 0x574(r24)
/* 80120F54  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80120F58  41 82 00 64 */	beq lbl_80120FBC
/* 80120F5C  3A C0 00 00 */	li r22, 0
/* 80120F60  38 7D 45 9C */	addi r3, r29, 0x459c
/* 80120F64  E3 C3 00 00 */	psq_l f30, 0(r3), 0, 0 /* qr0 */
/* 80120F68  C3 E3 00 08 */	lfs f31, 8(r3)
lbl_80120F6C:
/* 80120F6C  38 78 2E 54 */	addi r3, r24, 0x2e54
/* 80120F70  7F 44 D3 78 */	mr r4, r26
/* 80120F74  7E C5 B3 78 */	mr r5, r22
/* 80120F78  7F 6C DB 78 */	mr r12, r27
/* 80120F7C  48 24 11 09 */	bl __ptmf_scall
/* 80120F80  60 00 00 00 */	nop 
/* 80120F84  28 03 00 00 */	cmplwi r3, 0
/* 80120F88  41 82 00 34 */	beq lbl_80120FBC
/* 80120F8C  F3 C1 00 08 */	psq_st f30, 8(r1), 0, 0 /* qr0 */
/* 80120F90  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80120F94  C0 21 00 08 */	lfs f1, 8(r1)
/* 80120F98  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 80120F9C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80120FA0  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 80120FA4  D3 E3 00 A0 */	stfs f31, 0xa0(r3)
/* 80120FA8  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 80120FAC  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 80120FB0  3A D6 00 01 */	addi r22, r22, 1
/* 80120FB4  2C 16 00 04 */	cmpwi r22, 4
/* 80120FB8  41 80 FF B4 */	blt lbl_80120F6C
lbl_80120FBC:
/* 80120FBC  3B 5A 00 01 */	addi r26, r26, 1
/* 80120FC0  2C 1A 00 02 */	cmpwi r26, 2
/* 80120FC4  41 80 FE 40 */	blt lbl_80120E04
/* 80120FC8  3B 39 00 01 */	addi r25, r25, 1
/* 80120FCC  2C 19 00 05 */	cmpwi r25, 5
/* 80120FD0  3A F7 00 0C */	addi r23, r23, 0xc
/* 80120FD4  41 80 FE 24 */	blt lbl_80120DF8
/* 80120FD8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80120FDC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80120FE0  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80120FE4  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80120FE8  39 61 00 60 */	addi r11, r1, 0x60
/* 80120FEC  48 24 12 21 */	bl _restgpr_22
/* 80120FF0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80120FF4  7C 08 03 A6 */	mtlr r0
/* 80120FF8  38 21 00 80 */	addi r1, r1, 0x80
/* 80120FFC  4E 80 00 20 */	blr 
