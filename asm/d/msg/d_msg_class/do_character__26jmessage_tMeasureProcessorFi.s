lbl_80229E3C:
/* 80229E3C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80229E40  7C 08 02 A6 */	mflr r0
/* 80229E44  90 01 00 54 */	stw r0, 0x54(r1)
/* 80229E48  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80229E4C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80229E50  39 61 00 40 */	addi r11, r1, 0x40
/* 80229E54  48 13 83 81 */	bl _savegpr_27
/* 80229E58  7C 7C 1B 78 */	mr r28, r3
/* 80229E5C  7C 9D 23 78 */	mr r29, r4
/* 80229E60  83 C3 00 04 */	lwz r30, 4(r3)
/* 80229E64  83 FE 05 C8 */	lwz r31, 0x5c8(r30)
/* 80229E68  88 03 00 44 */	lbz r0, 0x44(r3)
/* 80229E6C  28 00 00 00 */	cmplwi r0, 0
/* 80229E70  40 82 00 98 */	bne lbl_80229F08
/* 80229E74  38 00 00 00 */	li r0, 0
/* 80229E78  2C 1D 00 81 */	cmpwi r29, 0x81
/* 80229E7C  41 80 00 0C */	blt lbl_80229E88
/* 80229E80  2C 1D 00 9F */	cmpwi r29, 0x9f
/* 80229E84  40 81 00 14 */	ble lbl_80229E98
lbl_80229E88:
/* 80229E88  2C 1D 00 E0 */	cmpwi r29, 0xe0
/* 80229E8C  41 80 00 10 */	blt lbl_80229E9C
/* 80229E90  2C 1D 00 FC */	cmpwi r29, 0xfc
/* 80229E94  41 81 00 08 */	bgt lbl_80229E9C
lbl_80229E98:
/* 80229E98  38 00 00 01 */	li r0, 1
lbl_80229E9C:
/* 80229E9C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80229EA0  41 82 00 34 */	beq lbl_80229ED4
/* 80229EA4  7F A3 EB 78 */	mr r3, r29
/* 80229EA8  4B FF EA 01 */	bl isOutfontKanjiCode__Fi
/* 80229EAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80229EB0  40 82 00 58 */	bne lbl_80229F08
/* 80229EB4  7F A3 EB 78 */	mr r3, r29
/* 80229EB8  4B FF E7 51 */	bl change1ByteTo2Bytes__Fi
/* 80229EBC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80229EC0  4B FF E9 79 */	bl changeKataToHira__Fi
/* 80229EC4  7C 64 1B 78 */	mr r4, r3
/* 80229EC8  7F C3 F3 78 */	mr r3, r30
/* 80229ECC  4B FF F8 9D */	bl setCharactor__19jmessage_tReferenceFUs
/* 80229ED0  48 00 00 38 */	b lbl_80229F08
lbl_80229ED4:
/* 80229ED4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008800@ha */
/* 80229ED8  38 03 88 00 */	addi r0, r3, 0x8800 /* 0x00008800@l */
/* 80229EDC  7C 1D 00 00 */	cmpw r29, r0
/* 80229EE0  40 80 00 28 */	bge lbl_80229F08
/* 80229EE4  7F A3 EB 78 */	mr r3, r29
/* 80229EE8  4B FF E9 C1 */	bl isOutfontKanjiCode__Fi
/* 80229EEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80229EF0  40 82 00 18 */	bne lbl_80229F08
/* 80229EF4  7F A3 EB 78 */	mr r3, r29
/* 80229EF8  4B FF E9 41 */	bl changeKataToHira__Fi
/* 80229EFC  7C 64 1B 78 */	mr r4, r3
/* 80229F00  7F C3 F3 78 */	mr r3, r30
/* 80229F04  4B FF F8 65 */	bl setCharactor__19jmessage_tReferenceFUs
lbl_80229F08:
/* 80229F08  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80229F0C  40 82 01 58 */	bne lbl_8022A064
/* 80229F10  A8 7C 00 3C */	lha r3, 0x3c(r28)
/* 80229F14  38 03 00 01 */	addi r0, r3, 1
/* 80229F18  B0 1C 00 3C */	sth r0, 0x3c(r28)
/* 80229F1C  A8 7C 00 3E */	lha r3, 0x3e(r28)
/* 80229F20  38 03 00 01 */	addi r0, r3, 1
/* 80229F24  B0 1C 00 3E */	sth r0, 0x3e(r28)
/* 80229F28  88 1C 00 44 */	lbz r0, 0x44(r28)
/* 80229F2C  28 00 00 00 */	cmplwi r0, 0
/* 80229F30  41 82 00 20 */	beq lbl_80229F50
/* 80229F34  38 80 00 01 */	li r4, 1
/* 80229F38  A8 1C 00 3C */	lha r0, 0x3c(r28)
/* 80229F3C  7C 7E 02 14 */	add r3, r30, r0
/* 80229F40  98 83 12 1A */	stb r4, 0x121a(r3)
/* 80229F44  88 7C 00 44 */	lbz r3, 0x44(r28)
/* 80229F48  38 03 FF FF */	addi r0, r3, -1
/* 80229F4C  98 1C 00 44 */	stb r0, 0x44(r28)
lbl_80229F50:
/* 80229F50  38 00 00 00 */	li r0, 0
/* 80229F54  98 1C 00 48 */	stb r0, 0x48(r28)
/* 80229F58  88 7C 00 49 */	lbz r3, 0x49(r28)
/* 80229F5C  7C 60 07 75 */	extsb. r0, r3
/* 80229F60  41 82 00 10 */	beq lbl_80229F70
/* 80229F64  38 03 00 01 */	addi r0, r3, 1
/* 80229F68  98 1C 00 49 */	stb r0, 0x49(r28)
/* 80229F6C  48 00 00 0C */	b lbl_80229F78
lbl_80229F70:
/* 80229F70  38 00 00 01 */	li r0, 1
/* 80229F74  98 1C 00 49 */	stb r0, 0x49(r28)
lbl_80229F78:
/* 80229F78  88 1C 00 45 */	lbz r0, 0x45(r28)
/* 80229F7C  28 00 00 00 */	cmplwi r0, 0
/* 80229F80  40 82 02 C8 */	bne lbl_8022A248
/* 80229F84  A8 1C 00 3E */	lha r0, 0x3e(r28)
/* 80229F88  88 9C 00 4A */	lbz r4, 0x4a(r28)
/* 80229F8C  7C 84 07 74 */	extsb r4, r4
/* 80229F90  7C 00 20 00 */	cmpw r0, r4
/* 80229F94  41 80 02 B4 */	blt lbl_8022A248
/* 80229F98  88 7C 00 49 */	lbz r3, 0x49(r28)
/* 80229F9C  38 03 FF FF */	addi r0, r3, -1
/* 80229FA0  7C 80 20 50 */	subf r4, r0, r4
/* 80229FA4  A8 1C 00 40 */	lha r0, 0x40(r28)
/* 80229FA8  7C 7E 02 14 */	add r3, r30, r0
/* 80229FAC  98 83 11 A2 */	stb r4, 0x11a2(r3)
/* 80229FB0  A8 9C 00 3E */	lha r4, 0x3e(r28)
/* 80229FB4  A8 1C 00 40 */	lha r0, 0x40(r28)
/* 80229FB8  7C 7E 02 14 */	add r3, r30, r0
/* 80229FBC  98 83 11 CA */	stb r4, 0x11ca(r3)
/* 80229FC0  7F 83 E3 78 */	mr r3, r28
/* 80229FC4  88 1C 00 49 */	lbz r0, 0x49(r28)
/* 80229FC8  7C 04 07 74 */	extsb r4, r0
/* 80229FCC  38 84 FF FF */	addi r4, r4, -1
/* 80229FD0  88 1C 00 4A */	lbz r0, 0x4a(r28)
/* 80229FD4  7C 00 07 74 */	extsb r0, r0
/* 80229FD8  7C 84 00 50 */	subf r4, r4, r0
/* 80229FDC  48 00 14 11 */	bl do_pageType__26jmessage_tMeasureProcessorFi
/* 80229FE0  88 1C 00 46 */	lbz r0, 0x46(r28)
/* 80229FE4  28 00 00 00 */	cmplwi r0, 0
/* 80229FE8  40 82 00 10 */	bne lbl_80229FF8
/* 80229FEC  A8 7C 00 40 */	lha r3, 0x40(r28)
/* 80229FF0  38 03 00 01 */	addi r0, r3, 1
/* 80229FF4  B0 1C 00 40 */	sth r0, 0x40(r28)
lbl_80229FF8:
/* 80229FF8  38 00 00 00 */	li r0, 0
/* 80229FFC  B0 1C 00 3E */	sth r0, 0x3e(r28)
/* 8022A000  7F C3 F3 78 */	mr r3, r30
/* 8022A004  4B FF ED DD */	bl getLineMax__19jmessage_tReferenceFv
/* 8022A008  98 7C 00 4A */	stb r3, 0x4a(r28)
/* 8022A00C  38 00 00 00 */	li r0, 0
/* 8022A010  98 1C 00 49 */	stb r0, 0x49(r28)
/* 8022A014  88 1C 00 46 */	lbz r0, 0x46(r28)
/* 8022A018  28 00 00 00 */	cmplwi r0, 0
/* 8022A01C  40 82 02 2C */	bne lbl_8022A248
/* 8022A020  C0 3C 00 38 */	lfs f1, 0x38(r28)
/* 8022A024  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022A028  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022A02C  40 81 02 1C */	ble lbl_8022A248
/* 8022A030  88 1C 00 48 */	lbz r0, 0x48(r28)
/* 8022A034  28 00 00 00 */	cmplwi r0, 0
/* 8022A038  40 82 02 10 */	bne lbl_8022A248
/* 8022A03C  38 00 00 01 */	li r0, 1
/* 8022A040  98 1C 00 48 */	stb r0, 0x48(r28)
/* 8022A044  88 7C 00 4A */	lbz r3, 0x4a(r28)
/* 8022A048  38 03 FF FF */	addi r0, r3, -1
/* 8022A04C  98 1C 00 4A */	stb r0, 0x4a(r28)
/* 8022A050  38 80 00 02 */	li r4, 2
/* 8022A054  A8 1C 00 40 */	lha r0, 0x40(r28)
/* 8022A058  7C 7E 02 14 */	add r3, r30, r0
/* 8022A05C  98 83 11 F2 */	stb r4, 0x11f2(r3)
/* 8022A060  48 00 01 E8 */	b lbl_8022A248
lbl_8022A064:
/* 8022A064  88 1C 00 49 */	lbz r0, 0x49(r28)
/* 8022A068  7C 00 07 75 */	extsb. r0, r0
/* 8022A06C  41 82 00 0C */	beq lbl_8022A078
/* 8022A070  38 00 00 00 */	li r0, 0
/* 8022A074  98 1C 00 49 */	stb r0, 0x49(r28)
lbl_8022A078:
/* 8022A078  7F E3 FB 78 */	mr r3, r31
/* 8022A07C  7F A4 EB 78 */	mr r4, r29
/* 8022A080  38 A1 00 0C */	addi r5, r1, 0xc
/* 8022A084  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022A088  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8022A08C  7D 89 03 A6 */	mtctr r12
/* 8022A090  4E 80 04 21 */	bctrl 
/* 8022A094  8B 61 00 0D */	lbz r27, 0xd(r1)
/* 8022A098  7F E3 FB 78 */	mr r3, r31
/* 8022A09C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022A0A0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8022A0A4  7D 89 03 A6 */	mtctr r12
/* 8022A0A8  4E 80 04 21 */	bctrl 
/* 8022A0AC  C8 62 B0 70 */	lfd f3, lit_4198(r2)
/* 8022A0B0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8022A0B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022A0B8  3C 60 43 30 */	lis r3, 0x4330
/* 8022A0BC  90 61 00 10 */	stw r3, 0x10(r1)
/* 8022A0C0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8022A0C4  EC 40 18 28 */	fsubs f2, f0, f3
/* 8022A0C8  C0 3C 00 38 */	lfs f1, 0x38(r28)
/* 8022A0CC  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 8022A0D0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8022A0D4  90 61 00 18 */	stw r3, 0x18(r1)
/* 8022A0D8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8022A0DC  EC 00 18 28 */	fsubs f0, f0, f3
/* 8022A0E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022A0E4  EC 20 10 24 */	fdivs f1, f0, f2
/* 8022A0E8  A8 1C 00 3C */	lha r0, 0x3c(r28)
/* 8022A0EC  54 00 10 3A */	slwi r0, r0, 2
/* 8022A0F0  7C 7E 02 14 */	add r3, r30, r0
/* 8022A0F4  C0 03 04 68 */	lfs f0, 0x468(r3)
/* 8022A0F8  EC 00 08 2A */	fadds f0, f0, f1
/* 8022A0FC  D0 03 04 68 */	stfs f0, 0x468(r3)
/* 8022A100  C0 23 05 08 */	lfs f1, 0x508(r3)
/* 8022A104  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022A108  EC 01 00 2A */	fadds f0, f1, f0
/* 8022A10C  D0 03 05 08 */	stfs f0, 0x508(r3)
/* 8022A110  88 1C 00 46 */	lbz r0, 0x46(r28)
/* 8022A114  28 00 00 00 */	cmplwi r0, 0
/* 8022A118  41 82 00 A8 */	beq lbl_8022A1C0
/* 8022A11C  C3 FE 04 40 */	lfs f31, 0x440(r30)
/* 8022A120  7F E3 FB 78 */	mr r3, r31
/* 8022A124  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022A128  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8022A12C  7D 89 03 A6 */	mtctr r12
/* 8022A130  4E 80 04 21 */	bctrl 
/* 8022A134  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022A138  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8022A13C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8022A140  3C 00 43 30 */	lis r0, 0x4330
/* 8022A144  90 01 00 18 */	stw r0, 0x18(r1)
/* 8022A148  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8022A14C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022A150  EF FF 00 24 */	fdivs f31, f31, f0
/* 8022A154  7F E3 FB 78 */	mr r3, r31
/* 8022A158  7F A4 EB 78 */	mr r4, r29
/* 8022A15C  38 A1 00 08 */	addi r5, r1, 8
/* 8022A160  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022A164  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8022A168  7D 89 03 A6 */	mtctr r12
/* 8022A16C  4E 80 04 21 */	bctrl 
/* 8022A170  88 81 00 09 */	lbz r4, 9(r1)
/* 8022A174  88 7C 00 46 */	lbz r3, 0x46(r28)
/* 8022A178  38 03 FF FF */	addi r0, r3, -1
/* 8022A17C  54 00 10 3A */	slwi r0, r0, 2
/* 8022A180  7C 7E 02 14 */	add r3, r30, r0
/* 8022A184  C0 63 05 A8 */	lfs f3, 0x5a8(r3)
/* 8022A188  C0 5C 00 38 */	lfs f2, 0x38(r28)
/* 8022A18C  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022A190  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8022A194  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022A198  3C 00 43 30 */	lis r0, 0x4330
/* 8022A19C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8022A1A0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8022A1A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022A1A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8022A1AC  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8022A1B0  C0 1E 04 4C */	lfs f0, 0x44c(r30)
/* 8022A1B4  EC 01 00 2A */	fadds f0, f1, f0
/* 8022A1B8  EC 03 00 2A */	fadds f0, f3, f0
/* 8022A1BC  D0 03 05 A8 */	stfs f0, 0x5a8(r3)
lbl_8022A1C0:
/* 8022A1C0  C0 3C 00 38 */	lfs f1, 0x38(r28)
/* 8022A1C4  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022A1C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022A1CC  40 81 00 7C */	ble lbl_8022A248
/* 8022A1D0  A8 9C 00 3E */	lha r4, 0x3e(r28)
/* 8022A1D4  2C 04 00 01 */	cmpwi r4, 1
/* 8022A1D8  40 82 00 38 */	bne lbl_8022A210
/* 8022A1DC  A8 1C 00 40 */	lha r0, 0x40(r28)
/* 8022A1E0  7C 7E 02 14 */	add r3, r30, r0
/* 8022A1E4  88 03 11 F2 */	lbz r0, 0x11f2(r3)
/* 8022A1E8  28 00 00 02 */	cmplwi r0, 2
/* 8022A1EC  40 82 00 24 */	bne lbl_8022A210
/* 8022A1F0  38 00 00 04 */	li r0, 4
/* 8022A1F4  98 03 11 F2 */	stb r0, 0x11f2(r3)
/* 8022A1F8  A0 9E 05 E0 */	lhz r4, 0x5e0(r30)
/* 8022A1FC  A8 1C 00 3C */	lha r0, 0x3c(r28)
/* 8022A200  54 00 08 3C */	slwi r0, r0, 1
/* 8022A204  7C 7E 02 14 */	add r3, r30, r0
/* 8022A208  B0 83 05 E0 */	sth r4, 0x5e0(r3)
/* 8022A20C  48 00 00 3C */	b lbl_8022A248
lbl_8022A210:
/* 8022A210  2C 04 00 02 */	cmpwi r4, 2
/* 8022A214  40 82 00 34 */	bne lbl_8022A248
/* 8022A218  A8 1C 00 40 */	lha r0, 0x40(r28)
/* 8022A21C  7C 7E 02 14 */	add r3, r30, r0
/* 8022A220  88 03 11 F2 */	lbz r0, 0x11f2(r3)
/* 8022A224  28 00 00 04 */	cmplwi r0, 4
/* 8022A228  40 82 00 20 */	bne lbl_8022A248
/* 8022A22C  38 00 00 05 */	li r0, 5
/* 8022A230  98 03 11 F2 */	stb r0, 0x11f2(r3)
/* 8022A234  A0 9E 05 E0 */	lhz r4, 0x5e0(r30)
/* 8022A238  A8 1C 00 3C */	lha r0, 0x3c(r28)
/* 8022A23C  54 00 08 3C */	slwi r0, r0, 1
/* 8022A240  7C 7E 02 14 */	add r3, r30, r0
/* 8022A244  B0 83 05 E0 */	sth r4, 0x5e0(r3)
lbl_8022A248:
/* 8022A248  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8022A24C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8022A250  39 61 00 40 */	addi r11, r1, 0x40
/* 8022A254  48 13 7F CD */	bl _restgpr_27
/* 8022A258  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8022A25C  7C 08 03 A6 */	mtlr r0
/* 8022A260  38 21 00 50 */	addi r1, r1, 0x50
/* 8022A264  4E 80 00 20 */	blr 
