lbl_80230D48:
/* 80230D48  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80230D4C  7C 08 02 A6 */	mflr r0
/* 80230D50  90 01 00 64 */	stw r0, 0x64(r1)
/* 80230D54  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80230D58  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80230D5C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80230D60  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80230D64  39 61 00 40 */	addi r11, r1, 0x40
/* 80230D68  48 13 14 75 */	bl _savegpr_29
/* 80230D6C  7C 7F 1B 78 */	mr r31, r3
/* 80230D70  7C 9D 23 78 */	mr r29, r4
/* 80230D74  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80230D78  83 C3 00 14 */	lwz r30, 0x14(r3)
/* 80230D7C  38 00 00 00 */	li r0, 0
/* 80230D80  2C 1D 00 81 */	cmpwi r29, 0x81
/* 80230D84  41 80 00 0C */	blt lbl_80230D90
/* 80230D88  2C 1D 00 9F */	cmpwi r29, 0x9f
/* 80230D8C  40 81 00 14 */	ble lbl_80230DA0
lbl_80230D90:
/* 80230D90  2C 1D 00 E0 */	cmpwi r29, 0xe0
/* 80230D94  41 80 00 10 */	blt lbl_80230DA4
/* 80230D98  2C 1D 00 FC */	cmpwi r29, 0xfc
/* 80230D9C  41 81 00 08 */	bgt lbl_80230DA4
lbl_80230DA0:
/* 80230DA0  38 00 00 01 */	li r0, 1
lbl_80230DA4:
/* 80230DA4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80230DA8  41 82 00 34 */	beq lbl_80230DDC
/* 80230DAC  7F A3 EB 78 */	mr r3, r29
/* 80230DB0  4B FF 7A F9 */	bl isOutfontKanjiCode__Fi
/* 80230DB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80230DB8  40 82 00 58 */	bne lbl_80230E10
/* 80230DBC  7F A3 EB 78 */	mr r3, r29
/* 80230DC0  4B FF 78 49 */	bl change1ByteTo2Bytes__Fi
/* 80230DC4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80230DC8  4B FF 7A 71 */	bl changeKataToHira__Fi
/* 80230DCC  7C 64 1B 78 */	mr r4, r3
/* 80230DD0  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230DD4  4B FF EC 5D */	bl addCharactor__26jmessage_string_tReferenceFUs
/* 80230DD8  48 00 00 38 */	b lbl_80230E10
lbl_80230DDC:
/* 80230DDC  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008800@ha */
/* 80230DE0  38 03 88 00 */	addi r0, r3, 0x8800 /* 0x00008800@l */
/* 80230DE4  7C 1D 00 00 */	cmpw r29, r0
/* 80230DE8  40 80 00 28 */	bge lbl_80230E10
/* 80230DEC  7F A3 EB 78 */	mr r3, r29
/* 80230DF0  4B FF 7A B9 */	bl isOutfontKanjiCode__Fi
/* 80230DF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80230DF8  40 82 00 18 */	bne lbl_80230E10
/* 80230DFC  7F A3 EB 78 */	mr r3, r29
/* 80230E00  4B FF 7A 39 */	bl changeKataToHira__Fi
/* 80230E04  7C 64 1B 78 */	mr r4, r3
/* 80230E08  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230E0C  4B FF EC 25 */	bl addCharactor__26jmessage_string_tReferenceFUs
lbl_80230E10:
/* 80230E10  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230E14  80 63 00 08 */	lwz r3, 8(r3)
/* 80230E18  28 03 00 00 */	cmplwi r3, 0
/* 80230E1C  41 82 00 10 */	beq lbl_80230E2C
/* 80230E20  C3 C3 01 14 */	lfs f30, 0x114(r3)
/* 80230E24  C3 E3 01 1C */	lfs f31, 0x11c(r3)
/* 80230E28  48 00 00 0C */	b lbl_80230E34
lbl_80230E2C:
/* 80230E2C  C3 C2 B0 60 */	lfs f30, lit_4027(r2)
/* 80230E30  C3 E2 B0 98 */	lfs f31, lit_7190(r2)
lbl_80230E34:
/* 80230E34  38 00 00 00 */	li r0, 0
/* 80230E38  98 01 00 0E */	stb r0, 0xe(r1)
/* 80230E3C  98 01 00 0D */	stb r0, 0xd(r1)
/* 80230E40  98 01 00 0C */	stb r0, 0xc(r1)
/* 80230E44  57 A3 04 2F */	rlwinm. r3, r29, 0, 0x10, 0x17
/* 80230E48  41 82 00 14 */	beq lbl_80230E5C
/* 80230E4C  7C 60 46 70 */	srawi r0, r3, 8
/* 80230E50  98 01 00 0C */	stb r0, 0xc(r1)
/* 80230E54  9B A1 00 0D */	stb r29, 0xd(r1)
/* 80230E58  48 00 00 0C */	b lbl_80230E64
lbl_80230E5C:
/* 80230E5C  9B A1 00 0C */	stb r29, 0xc(r1)
/* 80230E60  98 01 00 0D */	stb r0, 0xd(r1)
lbl_80230E64:
/* 80230E64  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80230E68  40 82 00 60 */	bne lbl_80230EC8
/* 80230E6C  7F E3 FB 78 */	mr r3, r31
/* 80230E70  38 81 00 0C */	addi r4, r1, 0xc
/* 80230E74  48 00 11 D1 */	bl do_strcat__35jmessage_string_tRenderingProcessorFPc
/* 80230E78  7F E3 FB 78 */	mr r3, r31
/* 80230E7C  38 81 00 0C */	addi r4, r1, 0xc
/* 80230E80  48 00 13 E1 */	bl do_rubystrcat__35jmessage_string_tRenderingProcessorFPc
/* 80230E84  A8 7F 05 52 */	lha r3, 0x552(r31)
/* 80230E88  38 03 00 01 */	addi r0, r3, 1
/* 80230E8C  B0 1F 05 52 */	sth r0, 0x552(r31)
/* 80230E90  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 80230E94  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80230E98  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80230E9C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230EA0  80 63 00 08 */	lwz r3, 8(r3)
/* 80230EA4  28 03 00 00 */	cmplwi r3, 0
/* 80230EA8  41 82 00 14 */	beq lbl_80230EBC
/* 80230EAC  C0 23 01 18 */	lfs f1, 0x118(r3)
/* 80230EB0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80230EB4  EC 00 08 2A */	fadds f0, f0, f1
/* 80230EB8  D0 1F 00 50 */	stfs f0, 0x50(r31)
lbl_80230EBC:
/* 80230EBC  7F E3 FB 78 */	mr r3, r31
/* 80230EC0  48 00 0E B1 */	bl do_widthcenter__35jmessage_string_tRenderingProcessorFv
/* 80230EC4  48 00 02 24 */	b lbl_802310E8
lbl_80230EC8:
/* 80230EC8  7F C3 F3 78 */	mr r3, r30
/* 80230ECC  7F A4 EB 78 */	mr r4, r29
/* 80230ED0  38 A1 00 08 */	addi r5, r1, 8
/* 80230ED4  81 9E 00 00 */	lwz r12, 0(r30)
/* 80230ED8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80230EDC  7D 89 03 A6 */	mtctr r12
/* 80230EE0  4E 80 04 21 */	bctrl 
/* 80230EE4  8B A1 00 09 */	lbz r29, 9(r1)
/* 80230EE8  7F C3 F3 78 */	mr r3, r30
/* 80230EEC  81 9E 00 00 */	lwz r12, 0(r30)
/* 80230EF0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80230EF4  7D 89 03 A6 */	mtctr r12
/* 80230EF8  4E 80 04 21 */	bctrl 
/* 80230EFC  C8 42 B0 70 */	lfd f2, lit_4198(r2)
/* 80230F00  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80230F04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80230F08  3C 60 43 30 */	lis r3, 0x4330
/* 80230F0C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80230F10  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80230F14  EC 20 10 28 */	fsubs f1, f0, f2
/* 80230F18  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 80230F1C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80230F20  90 61 00 28 */	stw r3, 0x28(r1)
/* 80230F24  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80230F28  EC 00 10 28 */	fsubs f0, f0, f2
/* 80230F2C  EC 00 08 24 */	fdivs f0, f0, f1
/* 80230F30  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80230F34  EC 3E 00 2A */	fadds f1, f30, f0
/* 80230F38  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80230F3C  EC 00 08 2A */	fadds f0, f0, f1
/* 80230F40  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80230F44  88 1F 05 54 */	lbz r0, 0x554(r31)
/* 80230F48  28 00 00 00 */	cmplwi r0, 0
/* 80230F4C  41 82 01 90 */	beq lbl_802310DC
/* 80230F50  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80230F54  EC 00 08 2A */	fadds f0, f0, f1
/* 80230F58  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80230F5C  88 7F 05 54 */	lbz r3, 0x554(r31)
/* 80230F60  38 03 FF FF */	addi r0, r3, -1
/* 80230F64  98 1F 05 54 */	stb r0, 0x554(r31)
/* 80230F68  88 1F 05 54 */	lbz r0, 0x554(r31)
/* 80230F6C  28 00 00 00 */	cmplwi r0, 0
/* 80230F70  40 82 01 6C */	bne lbl_802310DC
/* 80230F74  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80230F78  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80230F7C  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80230F80  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80230F84  C0 42 B0 5C */	lfs f2, lit_4026(r2)
/* 80230F88  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80230F8C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80230F90  EC 01 00 28 */	fsubs f0, f1, f0
/* 80230F94  EC 02 00 32 */	fmuls f0, f2, f0
/* 80230F98  EC 23 00 2A */	fadds f1, f3, f0
/* 80230F9C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80230FA0  EF C1 00 28 */	fsubs f30, f1, f0
/* 80230FA4  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 80230FA8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80230FAC  4C 41 13 82 */	cror 2, 1, 2
/* 80230FB0  40 82 00 3C */	bne lbl_80230FEC
/* 80230FB4  38 61 00 10 */	addi r3, r1, 0x10
/* 80230FB8  38 80 00 0F */	li r4, 0xf
/* 80230FBC  3C A0 80 3A */	lis r5, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 80230FC0  38 A5 96 10 */	addi r5, r5, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 80230FC4  38 A5 00 08 */	addi r5, r5, 8
/* 80230FC8  FC 00 F0 1E */	fctiwz f0, f30
/* 80230FCC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80230FD0  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 80230FD4  4C C6 31 82 */	crclr 6
/* 80230FD8  48 13 55 E5 */	bl snprintf
/* 80230FDC  7F E3 FB 78 */	mr r3, r31
/* 80230FE0  38 81 00 10 */	addi r4, r1, 0x10
/* 80230FE4  48 00 12 7D */	bl do_rubystrcat__35jmessage_string_tRenderingProcessorFPc
/* 80230FE8  48 00 00 54 */	b lbl_8023103C
lbl_80230FEC:
/* 80230FEC  C0 02 B0 78 */	lfs f0, lit_4291(r2)
/* 80230FF0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80230FF4  4C 40 13 82 */	cror 2, 0, 2
/* 80230FF8  40 82 00 40 */	bne lbl_80231038
/* 80230FFC  38 61 00 10 */	addi r3, r1, 0x10
/* 80231000  38 80 00 0F */	li r4, 0xf
/* 80231004  3C A0 80 3A */	lis r5, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 80231008  38 A5 96 10 */	addi r5, r5, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 8023100C  38 A5 00 42 */	addi r5, r5, 0x42
/* 80231010  FC 00 F0 50 */	fneg f0, f30
/* 80231014  FC 00 00 1E */	fctiwz f0, f0
/* 80231018  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8023101C  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 80231020  4C C6 31 82 */	crclr 6
/* 80231024  48 13 55 99 */	bl snprintf
/* 80231028  7F E3 FB 78 */	mr r3, r31
/* 8023102C  38 81 00 10 */	addi r4, r1, 0x10
/* 80231030  48 00 12 31 */	bl do_rubystrcat__35jmessage_string_tRenderingProcessorFPc
/* 80231034  48 00 00 08 */	b lbl_8023103C
lbl_80231038:
/* 80231038  C3 C2 B0 60 */	lfs f30, lit_4027(r2)
lbl_8023103C:
/* 8023103C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80231040  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80231044  28 03 00 00 */	cmplwi r3, 0
/* 80231048  41 82 00 4C */	beq lbl_80231094
/* 8023104C  C0 63 01 14 */	lfs f3, 0x114(r3)
/* 80231050  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80231054  FC 00 F0 1E */	fctiwz f0, f30
/* 80231058  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8023105C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80231060  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 80231064  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80231068  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023106C  3C 00 43 30 */	lis r0, 0x4330
/* 80231070  90 01 00 20 */	stw r0, 0x20(r1)
/* 80231074  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80231078  EC 20 08 28 */	fsubs f1, f0, f1
/* 8023107C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80231080  EC 01 00 2A */	fadds f0, f1, f0
/* 80231084  EC 00 18 2A */	fadds f0, f0, f3
/* 80231088  EC 02 00 2A */	fadds f0, f2, f0
/* 8023108C  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80231090  48 00 00 40 */	b lbl_802310D0
lbl_80231094:
/* 80231094  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80231098  FC 00 F0 1E */	fctiwz f0, f30
/* 8023109C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 802310A0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802310A4  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 802310A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802310AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802310B0  3C 00 43 30 */	lis r0, 0x4330
/* 802310B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 802310B8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802310BC  EC 20 08 28 */	fsubs f1, f0, f1
/* 802310C0  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 802310C4  EC 01 00 2A */	fadds f0, f1, f0
/* 802310C8  EC 02 00 2A */	fadds f0, f2, f0
/* 802310CC  D0 1F 00 48 */	stfs f0, 0x48(r31)
lbl_802310D0:
/* 802310D0  7F E3 FB 78 */	mr r3, r31
/* 802310D4  38 9F 04 54 */	addi r4, r31, 0x454
/* 802310D8  48 00 11 89 */	bl do_rubystrcat__35jmessage_string_tRenderingProcessorFPc
lbl_802310DC:
/* 802310DC  7F E3 FB 78 */	mr r3, r31
/* 802310E0  38 81 00 0C */	addi r4, r1, 0xc
/* 802310E4  48 00 0F 61 */	bl do_strcat__35jmessage_string_tRenderingProcessorFPc
lbl_802310E8:
/* 802310E8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 802310EC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 802310F0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 802310F4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 802310F8  39 61 00 40 */	addi r11, r1, 0x40
/* 802310FC  48 13 11 2D */	bl _restgpr_29
/* 80231100  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80231104  7C 08 03 A6 */	mtlr r0
/* 80231108  38 21 00 60 */	addi r1, r1, 0x60
/* 8023110C  4E 80 00 20 */	blr 
