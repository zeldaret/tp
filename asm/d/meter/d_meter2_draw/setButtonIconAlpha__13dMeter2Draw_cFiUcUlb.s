lbl_80219E98:
/* 80219E98  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80219E9C  7C 08 02 A6 */	mflr r0
/* 80219EA0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80219EA4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80219EA8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80219EAC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80219EB0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80219EB4  39 61 00 60 */	addi r11, r1, 0x60
/* 80219EB8  48 14 83 11 */	bl _savegpr_24
/* 80219EBC  7C 78 1B 78 */	mr r24, r3
/* 80219EC0  7C 99 23 78 */	mr r25, r4
/* 80219EC4  54 9F 10 3A */	slwi r31, r4, 2
/* 80219EC8  7F D8 FA 14 */	add r30, r24, r31
/* 80219ECC  80 7E 03 2C */	lwz r3, 0x32c(r30)
/* 80219ED0  48 03 B7 7D */	bl isVisible__13CPaneMgrAlphaFv
/* 80219ED4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80219ED8  40 82 00 24 */	bne lbl_80219EFC
/* 80219EDC  80 7E 03 1C */	lwz r3, 0x31c(r30)
/* 80219EE0  48 03 B7 6D */	bl isVisible__13CPaneMgrAlphaFv
/* 80219EE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80219EE8  40 82 00 14 */	bne lbl_80219EFC
/* 80219EEC  80 7E 03 0C */	lwz r3, 0x30c(r30)
/* 80219EF0  48 03 B7 5D */	bl isVisible__13CPaneMgrAlphaFv
/* 80219EF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80219EF8  41 82 03 7C */	beq lbl_8021A274
lbl_80219EFC:
/* 80219EFC  C3 C2 AE 84 */	lfs f30, lit_4183(r2)
/* 80219F00  3B 40 00 01 */	li r26, 1
/* 80219F04  80 7E 03 2C */	lwz r3, 0x32c(r30)
/* 80219F08  48 03 B7 45 */	bl isVisible__13CPaneMgrAlphaFv
/* 80219F0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80219F10  41 82 00 08 */	beq lbl_80219F18
/* 80219F14  3B 40 00 00 */	li r26, 0
lbl_80219F18:
/* 80219F18  2C 19 00 00 */	cmpwi r25, 0
/* 80219F1C  40 82 00 30 */	bne lbl_80219F4C
/* 80219F20  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80219F24  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80219F28  C0 43 01 48 */	lfs f2, 0x148(r3)
/* 80219F2C  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80219F30  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80219F34  EC 01 00 32 */	fmuls f0, f1, f0
/* 80219F38  EC 42 00 32 */	fmuls f2, f2, f0
/* 80219F3C  57 40 10 3A */	slwi r0, r26, 2
/* 80219F40  7C 63 02 14 */	add r3, r3, r0
/* 80219F44  C3 C3 02 58 */	lfs f30, 0x258(r3)
/* 80219F48  48 00 00 54 */	b lbl_80219F9C
lbl_80219F4C:
/* 80219F4C  2C 19 00 01 */	cmpwi r25, 1
/* 80219F50  40 82 00 30 */	bne lbl_80219F80
/* 80219F54  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80219F58  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80219F5C  C0 43 01 58 */	lfs f2, 0x158(r3)
/* 80219F60  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80219F64  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80219F68  EC 01 00 32 */	fmuls f0, f1, f0
/* 80219F6C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80219F70  57 40 10 3A */	slwi r0, r26, 2
/* 80219F74  7C 63 02 14 */	add r3, r3, r0
/* 80219F78  C3 C3 02 78 */	lfs f30, 0x278(r3)
/* 80219F7C  48 00 00 20 */	b lbl_80219F9C
lbl_80219F80:
/* 80219F80  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80219F84  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80219F88  C0 43 01 78 */	lfs f2, 0x178(r3)
/* 80219F8C  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80219F90  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80219F94  EC 01 00 32 */	fmuls f0, f1, f0
/* 80219F98  EC 42 00 32 */	fmuls f2, f2, f0
lbl_80219F9C:
/* 80219F9C  80 7E 03 2C */	lwz r3, 0x32c(r30)
/* 80219FA0  8B 83 00 18 */	lbz r28, 0x18(r3)
/* 80219FA4  7F B8 FA 14 */	add r29, r24, r31
/* 80219FA8  80 7D 03 1C */	lwz r3, 0x31c(r29)
/* 80219FAC  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80219FB0  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 80219FB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80219FB8  3C 00 43 30 */	lis r0, 0x4330
/* 80219FBC  90 01 00 08 */	stw r0, 8(r1)
/* 80219FC0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80219FC4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80219FC8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80219FCC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80219FD0  FC 00 00 1E */	fctiwz f0, f0
/* 80219FD4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80219FD8  83 61 00 14 */	lwz r27, 0x14(r1)
/* 80219FDC  80 7D 03 0C */	lwz r3, 0x30c(r29)
/* 80219FE0  88 63 00 18 */	lbz r3, 0x18(r3)
/* 80219FE4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80219FE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80219FEC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80219FF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80219FF4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80219FF8  FC 00 00 1E */	fctiwz f0, f0
/* 80219FFC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8021A000  83 41 00 24 */	lwz r26, 0x24(r1)
/* 8021A004  80 78 02 F8 */	lwz r3, 0x2f8(r24)
/* 8021A008  48 03 B8 21 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8021A00C  FF E0 08 90 */	fmr f31, f1
/* 8021A010  2C 19 00 00 */	cmpwi r25, 0
/* 8021A014  40 82 00 50 */	bne lbl_8021A064
/* 8021A018  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021A01C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021A020  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 8021A024  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8021A028  40 82 00 8C */	bne lbl_8021A0B4
/* 8021A02C  7F 03 C3 78 */	mr r3, r24
/* 8021A030  48 00 1B 3D */	bl getFishingType__13dMeter2Draw_cFv
/* 8021A034  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021A038  41 82 00 0C */	beq lbl_8021A044
/* 8021A03C  3B 80 00 00 */	li r28, 0
/* 8021A040  48 00 00 10 */	b lbl_8021A050
lbl_8021A044:
/* 8021A044  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021A048  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8021A04C  8B 83 04 2A */	lbz r28, 0x42a(r3)
lbl_8021A050:
/* 8021A050  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021A054  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8021A058  8B 63 04 2A */	lbz r27, 0x42a(r3)
/* 8021A05C  8B 43 04 2B */	lbz r26, 0x42b(r3)
/* 8021A060  48 00 00 54 */	b lbl_8021A0B4
lbl_8021A064:
/* 8021A064  2C 19 00 01 */	cmpwi r25, 1
/* 8021A068  40 82 00 4C */	bne lbl_8021A0B4
/* 8021A06C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021A070  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021A074  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 8021A078  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8021A07C  40 82 00 38 */	bne lbl_8021A0B4
/* 8021A080  7F 03 C3 78 */	mr r3, r24
/* 8021A084  48 00 1A E9 */	bl getFishingType__13dMeter2Draw_cFv
/* 8021A088  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021A08C  41 82 00 0C */	beq lbl_8021A098
/* 8021A090  3B 80 00 00 */	li r28, 0
/* 8021A094  48 00 00 10 */	b lbl_8021A0A4
lbl_8021A098:
/* 8021A098  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021A09C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8021A0A0  8B 83 04 2A */	lbz r28, 0x42a(r3)
lbl_8021A0A4:
/* 8021A0A4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021A0A8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8021A0AC  8B 63 04 2A */	lbz r27, 0x42a(r3)
/* 8021A0B0  8B 43 04 2B */	lbz r26, 0x42b(r3)
lbl_8021A0B4:
/* 8021A0B4  80 7E 03 2C */	lwz r3, 0x32c(r30)
/* 8021A0B8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8021A0BC  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 8021A0C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021A0C4  3C 00 43 30 */	lis r0, 0x4330
/* 8021A0C8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8021A0CC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8021A0D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8021A0D4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8021A0D8  FC 00 00 1E */	fctiwz f0, f0
/* 8021A0DC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8021A0E0  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8021A0E4  81 83 00 00 */	lwz r12, 0(r3)
/* 8021A0E8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8021A0EC  7D 89 03 A6 */	mtctr r12
/* 8021A0F0  4E 80 04 21 */	bctrl 
/* 8021A0F4  80 7D 03 1C */	lwz r3, 0x31c(r29)
/* 8021A0F8  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8021A0FC  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 8021A100  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021A104  3C 00 43 30 */	lis r0, 0x4330
/* 8021A108  90 01 00 10 */	stw r0, 0x10(r1)
/* 8021A10C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8021A110  EC 00 08 28 */	fsubs f0, f0, f1
/* 8021A114  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8021A118  FC 00 00 1E */	fctiwz f0, f0
/* 8021A11C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8021A120  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8021A124  81 83 00 00 */	lwz r12, 0(r3)
/* 8021A128  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8021A12C  7D 89 03 A6 */	mtctr r12
/* 8021A130  4E 80 04 21 */	bctrl 
/* 8021A134  80 7D 03 0C */	lwz r3, 0x30c(r29)
/* 8021A138  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 8021A13C  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 8021A140  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8021A144  3C 00 43 30 */	lis r0, 0x4330
/* 8021A148  90 01 00 28 */	stw r0, 0x28(r1)
/* 8021A14C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8021A150  EC 00 08 28 */	fsubs f0, f0, f1
/* 8021A154  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8021A158  FC 00 00 1E */	fctiwz f0, f0
/* 8021A15C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8021A160  80 81 00 34 */	lwz r4, 0x34(r1)
/* 8021A164  81 83 00 00 */	lwz r12, 0(r3)
/* 8021A168  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8021A16C  7D 89 03 A6 */	mtctr r12
/* 8021A170  4E 80 04 21 */	bctrl 
/* 8021A174  3B 40 00 01 */	li r26, 1
/* 8021A178  2C 19 00 00 */	cmpwi r25, 0
/* 8021A17C  40 82 00 20 */	bne lbl_8021A19C
/* 8021A180  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021A184  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021A188  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 8021A18C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8021A190  40 82 00 2C */	bne lbl_8021A1BC
/* 8021A194  3B 40 00 00 */	li r26, 0
/* 8021A198  48 00 00 24 */	b lbl_8021A1BC
lbl_8021A19C:
/* 8021A19C  2C 19 00 01 */	cmpwi r25, 1
/* 8021A1A0  40 82 00 1C */	bne lbl_8021A1BC
/* 8021A1A4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021A1A8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021A1AC  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 8021A1B0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8021A1B4  40 82 00 08 */	bne lbl_8021A1BC
/* 8021A1B8  3B 40 00 00 */	li r26, 0
lbl_8021A1BC:
/* 8021A1BC  3B A0 00 00 */	li r29, 0
/* 8021A1C0  3B 20 00 00 */	li r25, 0
/* 8021A1C4  7F 98 FA 14 */	add r28, r24, r31
/* 8021A1C8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021A1CC  3B 63 EB C8 */	addi r27, r3, g_drawHIO@l
/* 8021A1D0  CB C2 AE C0 */	lfd f30, lit_6293(r2)
/* 8021A1D4  3F 00 43 30 */	lis r24, 0x4330
lbl_8021A1D8:
/* 8021A1D8  38 19 00 E8 */	addi r0, r25, 0xe8
/* 8021A1DC  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8021A1E0  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8021A1E4  2C 1A 00 00 */	cmpwi r26, 0
/* 8021A1E8  40 82 00 48 */	bne lbl_8021A230
/* 8021A1EC  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 8021A1F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021A1F4  3C 80 43 30 */	lis r4, 0x4330
/* 8021A1F8  90 81 00 30 */	stw r4, 0x30(r1)
/* 8021A1FC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8021A200  EC 40 08 28 */	fsubs f2, f0, f1
/* 8021A204  88 1B 04 2C */	lbz r0, 0x42c(r27)
/* 8021A208  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8021A20C  90 81 00 28 */	stw r4, 0x28(r1)
/* 8021A210  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8021A214  EC 20 08 28 */	fsubs f1, f0, f1
/* 8021A218  C0 02 AE CC */	lfs f0, lit_8207(r2)
/* 8021A21C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8021A220  EC 02 00 32 */	fmuls f0, f2, f0
/* 8021A224  FC 00 00 1E */	fctiwz f0, f0
/* 8021A228  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8021A22C  80 01 00 24 */	lwz r0, 0x24(r1)
lbl_8021A230:
/* 8021A230  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8021A234  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8021A238  93 01 00 18 */	stw r24, 0x18(r1)
/* 8021A23C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8021A240  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8021A244  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8021A248  FC 00 00 1E */	fctiwz f0, f0
/* 8021A24C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8021A250  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8021A254  81 83 00 00 */	lwz r12, 0(r3)
/* 8021A258  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8021A25C  7D 89 03 A6 */	mtctr r12
/* 8021A260  4E 80 04 21 */	bctrl 
/* 8021A264  3B BD 00 01 */	addi r29, r29, 1
/* 8021A268  2C 1D 00 05 */	cmpwi r29, 5
/* 8021A26C  3B 39 00 0C */	addi r25, r25, 0xc
/* 8021A270  41 80 FF 68 */	blt lbl_8021A1D8
lbl_8021A274:
/* 8021A274  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8021A278  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8021A27C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8021A280  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8021A284  39 61 00 60 */	addi r11, r1, 0x60
/* 8021A288  48 14 7F 8D */	bl _restgpr_24
/* 8021A28C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8021A290  7C 08 03 A6 */	mtlr r0
/* 8021A294  38 21 00 80 */	addi r1, r1, 0x80
/* 8021A298  4E 80 00 20 */	blr 
