lbl_80180D24:
/* 80180D24  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80180D28  7C 08 02 A6 */	mflr r0
/* 80180D2C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80180D30  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80180D34  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80180D38  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80180D3C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80180D40  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80180D44  7C 7F 1B 78 */	mr r31, r3
/* 80180D48  C3 E2 9C A0 */	lfs f31, lit_5656(r2)
/* 80180D4C  80 A3 06 C8 */	lwz r5, 0x6c8(r3)
/* 80180D50  80 03 06 C4 */	lwz r0, 0x6c4(r3)
/* 80180D54  7C 05 00 00 */	cmpw r5, r0
/* 80180D58  40 80 02 14 */	bge lbl_80180F6C
/* 80180D5C  7C A0 1E 70 */	srawi r0, r5, 3
/* 80180D60  7C 9F 02 14 */	add r4, r31, r0
/* 80180D64  88 64 06 BC */	lbz r3, 0x6bc(r4)
/* 80180D68  88 C4 06 BD */	lbz r6, 0x6bd(r4)
/* 80180D6C  50 66 44 2E */	rlwimi r6, r3, 8, 0x10, 0x17
/* 80180D70  38 60 00 01 */	li r3, 1
/* 80180D74  54 A0 07 7E */	clrlwi r0, r5, 0x1d
/* 80180D78  20 00 00 0F */	subfic r0, r0, 0xf
/* 80180D7C  7C 65 00 30 */	slw r5, r3, r0
/* 80180D80  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 80180D84  38 80 00 00 */	li r4, 0
/* 80180D88  3C 60 80 39 */	lis r3, wave@ha
/* 80180D8C  38 63 3F 58 */	addi r3, r3, wave@l
/* 80180D90  C0 02 9F 08 */	lfs f0, lit_17253(r2)
/* 80180D94  38 00 00 04 */	li r0, 4
/* 80180D98  7C 09 03 A6 */	mtctr r0
lbl_80180D9C:
/* 80180D9C  7C A0 30 39 */	and. r0, r5, r6
/* 80180DA0  41 82 00 10 */	beq lbl_80180DB0
/* 80180DA4  7C 23 24 2E */	lfsx f1, r3, r4
/* 80180DA8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80180DAC  EF FF 08 2A */	fadds f31, f31, f1
lbl_80180DB0:
/* 80180DB0  2C 00 00 00 */	cmpwi r0, 0
/* 80180DB4  40 82 00 08 */	bne lbl_80180DBC
/* 80180DB8  EC 42 00 32 */	fmuls f2, f2, f0
lbl_80180DBC:
/* 80180DBC  7C A5 0E 70 */	srawi r5, r5, 1
/* 80180DC0  38 84 00 04 */	addi r4, r4, 4
/* 80180DC4  42 00 FF D8 */	bdnz lbl_80180D9C
/* 80180DC8  80 7F 06 C8 */	lwz r3, 0x6c8(r31)
/* 80180DCC  38 03 00 01 */	addi r0, r3, 1
/* 80180DD0  90 1F 06 C8 */	stw r0, 0x6c8(r31)
/* 80180DD4  C0 22 9C E8 */	lfs f1, lit_6630(r2)
/* 80180DD8  48 0E 6B B5 */	bl cM_rndFX__Ff
/* 80180DDC  C0 02 9D 00 */	lfs f0, lit_8018(r2)
/* 80180DE0  EC 00 08 2A */	fadds f0, f0, f1
/* 80180DE4  EF FF 00 32 */	fmuls f31, f31, f0
/* 80180DE8  FF C0 F8 90 */	fmr f30, f31
/* 80180DEC  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 80180DF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80180DF4  41 82 00 08 */	beq lbl_80180DFC
/* 80180DF8  FF E0 F8 50 */	fneg f31, f31
lbl_80180DFC:
/* 80180DFC  C0 1F 06 D0 */	lfs f0, 0x6d0(r31)
/* 80180E00  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80180E04  C0 1F 06 D4 */	lfs f0, 0x6d4(r31)
/* 80180E08  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80180E0C  C0 1F 06 D8 */	lfs f0, 0x6d8(r31)
/* 80180E10  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80180E14  C0 22 9F 0C */	lfs f1, lit_17254(r2)
/* 80180E18  48 0E 6B 75 */	bl cM_rndFX__Ff
/* 80180E1C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80180E20  EC 00 08 2A */	fadds f0, f0, f1
/* 80180E24  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80180E28  C0 22 9F 0C */	lfs f1, lit_17254(r2)
/* 80180E2C  48 0E 6B 61 */	bl cM_rndFX__Ff
/* 80180E30  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80180E34  EC 00 08 2A */	fadds f0, f0, f1
/* 80180E38  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80180E3C  38 61 00 40 */	addi r3, r1, 0x40
/* 80180E40  38 81 00 4C */	addi r4, r1, 0x4c
/* 80180E44  FC 20 F8 90 */	fmr f1, f31
/* 80180E48  48 0E 5D 3D */	bl __ml__4cXyzCFf
/* 80180E4C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80180E50  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80180E54  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80180E58  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80180E5C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80180E60  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80180E64  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 80180E68  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80180E6C  41 82 00 44 */	beq lbl_80180EB0
/* 80180E70  38 61 00 34 */	addi r3, r1, 0x34
/* 80180E74  38 81 00 4C */	addi r4, r1, 0x4c
/* 80180E78  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 80180E7C  48 0E 5D 09 */	bl __ml__4cXyzCFf
/* 80180E80  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80180E84  D0 1F 06 E8 */	stfs f0, 0x6e8(r31)
/* 80180E88  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80180E8C  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 80180E90  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80180E94  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
/* 80180E98  C0 1F 06 E8 */	lfs f0, 0x6e8(r31)
/* 80180E9C  D0 1F 06 DC */	stfs f0, 0x6dc(r31)
/* 80180EA0  C0 1F 06 EC */	lfs f0, 0x6ec(r31)
/* 80180EA4  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 80180EA8  C0 1F 06 F0 */	lfs f0, 0x6f0(r31)
/* 80180EAC  D0 1F 06 E4 */	stfs f0, 0x6e4(r31)
lbl_80180EB0:
/* 80180EB0  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 80180EB4  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80180EB8  41 82 00 44 */	beq lbl_80180EFC
/* 80180EBC  38 61 00 28 */	addi r3, r1, 0x28
/* 80180EC0  38 81 00 4C */	addi r4, r1, 0x4c
/* 80180EC4  C0 22 9C E4 */	lfs f1, lit_6629(r2)
/* 80180EC8  48 0E 5C BD */	bl __ml__4cXyzCFf
/* 80180ECC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80180ED0  D0 1F 06 E8 */	stfs f0, 0x6e8(r31)
/* 80180ED4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80180ED8  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 80180EDC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80180EE0  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
/* 80180EE4  C0 1F 06 E8 */	lfs f0, 0x6e8(r31)
/* 80180EE8  D0 1F 06 DC */	stfs f0, 0x6dc(r31)
/* 80180EEC  C0 1F 06 EC */	lfs f0, 0x6ec(r31)
/* 80180EF0  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 80180EF4  C0 1F 06 F0 */	lfs f0, 0x6f0(r31)
/* 80180EF8  D0 1F 06 E4 */	stfs f0, 0x6e4(r31)
lbl_80180EFC:
/* 80180EFC  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 80180F00  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80180F04  41 82 00 14 */	beq lbl_80180F18
/* 80180F08  C0 22 9F 10 */	lfs f1, lit_17255(r2)
/* 80180F0C  48 0E 6A 81 */	bl cM_rndFX__Ff
/* 80180F10  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80180F14  D0 1F 06 F4 */	stfs f0, 0x6f4(r31)
lbl_80180F18:
/* 80180F18  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 80180F1C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80180F20  41 82 00 20 */	beq lbl_80180F40
/* 80180F24  C0 22 9D 94 */	lfs f1, lit_10560(r2)
/* 80180F28  48 0E 6A 65 */	bl cM_rndFX__Ff
/* 80180F2C  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80180F30  38 61 00 0C */	addi r3, r1, 0xc
/* 80180F34  48 0F 00 95 */	bl __ct__7cSAngleFf
/* 80180F38  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80180F3C  B0 1F 06 F8 */	sth r0, 0x6f8(r31)
lbl_80180F40:
/* 80180F40  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 80180F44  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80180F48  41 82 00 90 */	beq lbl_80180FD8
/* 80180F4C  C0 02 9D 18 */	lfs f0, lit_8127(r2)
/* 80180F50  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80180F54  FC 00 00 1E */	fctiwz f0, f0
/* 80180F58  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80180F5C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80180F60  98 0D 86 65 */	stb r0, struct_80450BE4+0x1(r13)
/* 80180F64  4B E8 71 15 */	bl onBlure__13mDoGph_gInf_cFv
/* 80180F68  48 00 00 70 */	b lbl_80180FD8
lbl_80180F6C:
/* 80180F6C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80180F70  38 9F 06 DC */	addi r4, r31, 0x6dc
/* 80180F74  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 80180F78  48 0E 5C 0D */	bl __ml__4cXyzCFf
/* 80180F7C  38 7F 06 DC */	addi r3, r31, 0x6dc
/* 80180F80  38 81 00 1C */	addi r4, r1, 0x1c
/* 80180F84  7C 65 1B 78 */	mr r5, r3
/* 80180F88  48 1C 61 2D */	bl PSVECSubtract
/* 80180F8C  38 61 00 10 */	addi r3, r1, 0x10
/* 80180F90  38 9F 06 E8 */	addi r4, r31, 0x6e8
/* 80180F94  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 80180F98  48 0E 5B ED */	bl __ml__4cXyzCFf
/* 80180F9C  38 7F 06 E8 */	addi r3, r31, 0x6e8
/* 80180FA0  38 81 00 10 */	addi r4, r1, 0x10
/* 80180FA4  7C 65 1B 78 */	mr r5, r3
/* 80180FA8  48 1C 61 0D */	bl PSVECSubtract
/* 80180FAC  C0 5F 06 F4 */	lfs f2, 0x6f4(r31)
/* 80180FB0  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 80180FB4  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80180FB8  EC 02 00 28 */	fsubs f0, f2, f0
/* 80180FBC  D0 1F 06 F4 */	stfs f0, 0x6f4(r31)
/* 80180FC0  38 61 00 08 */	addi r3, r1, 8
/* 80180FC4  38 9F 06 F8 */	addi r4, r31, 0x6f8
/* 80180FC8  48 0F 02 9D */	bl __ml__7cSAngleCFf
/* 80180FCC  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 80180FD0  38 81 00 08 */	addi r4, r1, 8
/* 80180FD4  48 0F 02 15 */	bl __ami__7cSAngleFRC7cSAngle
lbl_80180FD8:
/* 80180FD8  FC 20 F8 90 */	fmr f1, f31
/* 80180FDC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80180FE0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80180FE4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80180FE8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80180FEC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80180FF0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80180FF4  7C 08 03 A6 */	mtlr r0
/* 80180FF8  38 21 00 90 */	addi r1, r1, 0x90
/* 80180FFC  4E 80 00 20 */	blr 
