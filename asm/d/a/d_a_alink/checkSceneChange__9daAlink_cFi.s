lbl_800BEAF8:
/* 800BEAF8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800BEAFC  7C 08 02 A6 */	mflr r0
/* 800BEB00  90 01 00 54 */	stw r0, 0x54(r1)
/* 800BEB04  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800BEB08  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800BEB0C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800BEB10  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 800BEB14  39 61 00 30 */	addi r11, r1, 0x30
/* 800BEB18  48 2A 36 BD */	bl _savegpr_27
/* 800BEB1C  7C 7C 1B 78 */	mr r28, r3
/* 800BEB20  38 60 00 00 */	li r3, 0
/* 800BEB24  A0 BC 2F E8 */	lhz r5, 0x2fe8(r28)
/* 800BEB28  28 05 01 51 */	cmplwi r5, 0x151
/* 800BEB2C  41 82 00 20 */	beq lbl_800BEB4C
/* 800BEB30  80 1C 31 74 */	lwz r0, 0x3174(r28)
/* 800BEB34  2C 00 00 09 */	cmpwi r0, 9
/* 800BEB38  41 82 00 10 */	beq lbl_800BEB48
/* 800BEB3C  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 800BEB40  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 800BEB44  41 82 00 08 */	beq lbl_800BEB4C
lbl_800BEB48:
/* 800BEB48  38 60 00 01 */	li r3, 1
lbl_800BEB4C:
/* 800BEB4C  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 800BEB50  80 7C 31 74 */	lwz r3, 0x3174(r28)
/* 800BEB54  2C 03 00 04 */	cmpwi r3, 4
/* 800BEB58  41 82 00 0C */	beq lbl_800BEB64
/* 800BEB5C  2C 03 00 0A */	cmpwi r3, 0xa
/* 800BEB60  40 82 00 08 */	bne lbl_800BEB68
lbl_800BEB64:
/* 800BEB64  38 80 00 3F */	li r4, 0x3f
lbl_800BEB68:
/* 800BEB68  2C 1F 00 00 */	cmpwi r31, 0
/* 800BEB6C  40 82 00 88 */	bne lbl_800BEBF4
/* 800BEB70  2C 04 00 3F */	cmpwi r4, 0x3f
/* 800BEB74  40 82 00 10 */	bne lbl_800BEB84
/* 800BEB78  A0 1C 31 12 */	lhz r0, 0x3112(r28)
/* 800BEB7C  28 00 00 3F */	cmplwi r0, 0x3f
/* 800BEB80  41 82 00 5C */	beq lbl_800BEBDC
lbl_800BEB84:
/* 800BEB84  80 9C 31 A0 */	lwz r4, 0x31a0(r28)
/* 800BEB88  54 80 03 5B */	rlwinm. r0, r4, 0, 0xd, 0xd
/* 800BEB8C  40 82 00 68 */	bne lbl_800BEBF4
/* 800BEB90  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 800BEB94  40 82 00 60 */	bne lbl_800BEBF4
/* 800BEB98  80 1C 19 9C */	lwz r0, 0x199c(r28)
/* 800BEB9C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800BEBA0  40 82 00 54 */	bne lbl_800BEBF4
/* 800BEBA4  28 05 00 B0 */	cmplwi r5, 0xb0
/* 800BEBA8  41 82 00 4C */	beq lbl_800BEBF4
/* 800BEBAC  28 05 01 4F */	cmplwi r5, 0x14f
/* 800BEBB0  41 82 00 44 */	beq lbl_800BEBF4
/* 800BEBB4  28 05 01 33 */	cmplwi r5, 0x133
/* 800BEBB8  41 82 00 3C */	beq lbl_800BEBF4
/* 800BEBBC  2C 03 00 05 */	cmpwi r3, 5
/* 800BEBC0  40 82 00 1C */	bne lbl_800BEBDC
/* 800BEBC4  C0 3C 33 C8 */	lfs f1, 0x33c8(r28)
/* 800BEBC8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 800BEBCC  EC 21 00 28 */	fsubs f1, f1, f0
/* 800BEBD0  C0 02 93 18 */	lfs f0, lit_7308(r2)
/* 800BEBD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BEBD8  41 81 00 1C */	bgt lbl_800BEBF4
lbl_800BEBDC:
/* 800BEBDC  A0 1C 31 12 */	lhz r0, 0x3112(r28)
/* 800BEBE0  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 800BEBE4  41 82 04 74 */	beq lbl_800BF058
/* 800BEBE8  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 800BEBEC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800BEBF0  41 82 04 68 */	beq lbl_800BF058
lbl_800BEBF4:
/* 800BEBF4  2C 03 00 05 */	cmpwi r3, 5
/* 800BEBF8  41 82 00 1C */	beq lbl_800BEC14
/* 800BEBFC  A0 1C 31 12 */	lhz r0, 0x3112(r28)
/* 800BEC00  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 800BEC04  41 82 00 1C */	beq lbl_800BEC20
/* 800BEC08  88 1C 2F AC */	lbz r0, 0x2fac(r28)
/* 800BEC0C  28 00 00 FF */	cmplwi r0, 0xff
/* 800BEC10  40 82 00 10 */	bne lbl_800BEC20
lbl_800BEC14:
/* 800BEC14  80 1C 19 9C */	lwz r0, 0x199c(r28)
/* 800BEC18  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800BEC1C  90 1C 19 9C */	stw r0, 0x199c(r28)
lbl_800BEC20:
/* 800BEC20  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800BEC24  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 800BEC28  41 82 00 0C */	beq lbl_800BEC34
/* 800BEC2C  38 60 00 01 */	li r3, 1
/* 800BEC30  48 00 04 2C */	b lbl_800BF05C
lbl_800BEC34:
/* 800BEC34  7F 83 E3 78 */	mr r3, r28
/* 800BEC38  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800BEC3C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800BEC40  7D 89 03 A6 */	mtctr r12
/* 800BEC44  4E 80 04 21 */	bctrl 
/* 800BEC48  28 03 00 00 */	cmplwi r3, 0
/* 800BEC4C  41 82 00 D0 */	beq lbl_800BED1C
/* 800BEC50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BEC54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BEC58  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800BEC5C  38 9C 1A 60 */	addi r4, r28, 0x1a60
/* 800BEC60  4B FB 60 0D */	bl GetHorseNoEntry__4dBgSFRC13cBgS_PolyInfo
/* 800BEC64  2C 03 00 00 */	cmpwi r3, 0
/* 800BEC68  41 82 00 0C */	beq lbl_800BEC74
/* 800BEC6C  38 60 00 00 */	li r3, 0
/* 800BEC70  48 00 03 EC */	b lbl_800BF05C
lbl_800BEC74:
/* 800BEC74  80 0D 88 78 */	lwz r0, m_top__12daTagHstop_c(r13)
/* 800BEC78  28 00 00 00 */	cmplwi r0, 0
/* 800BEC7C  41 82 00 A0 */	beq lbl_800BED1C
/* 800BEC80  7C 1D 03 78 */	mr r29, r0
/* 800BEC84  48 00 00 90 */	b lbl_800BED14
lbl_800BEC88:
/* 800BEC88  88 1D 05 71 */	lbz r0, 0x571(r29)
/* 800BEC8C  28 00 00 00 */	cmplwi r0, 0
/* 800BEC90  41 82 00 80 */	beq lbl_800BED10
/* 800BEC94  7F A3 EB 78 */	mr r3, r29
/* 800BEC98  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 800BEC9C  38 A1 00 08 */	addi r5, r1, 8
/* 800BECA0  4B F5 EC 61 */	bl fpoAcM_relativePos__FPC10fopAc_ac_cPC4cXyzP4cXyz
/* 800BECA4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 800BECA8  C0 02 97 40 */	lfs f0, lit_43531(r2)
/* 800BECAC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800BECB0  4C 41 13 82 */	cror 2, 1, 2
/* 800BECB4  40 82 00 5C */	bne lbl_800BED10
/* 800BECB8  C0 22 94 9C */	lfs f1, lit_16567(r2)
/* 800BECBC  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 800BECC0  EC 01 00 2A */	fadds f0, f1, f0
/* 800BECC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800BECC8  4C 40 13 82 */	cror 2, 0, 2
/* 800BECCC  40 82 00 44 */	bne lbl_800BED10
/* 800BECD0  C0 01 00 08 */	lfs f0, 8(r1)
/* 800BECD4  FC 00 02 10 */	fabs f0, f0
/* 800BECD8  FC 20 00 18 */	frsp f1, f0
/* 800BECDC  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 800BECE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BECE4  4C 40 13 82 */	cror 2, 0, 2
/* 800BECE8  40 82 00 28 */	bne lbl_800BED10
/* 800BECEC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800BECF0  FC 00 02 10 */	fabs f0, f0
/* 800BECF4  FC 20 00 18 */	frsp f1, f0
/* 800BECF8  C0 1D 04 F4 */	lfs f0, 0x4f4(r29)
/* 800BECFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BED00  4C 40 13 82 */	cror 2, 0, 2
/* 800BED04  40 82 00 0C */	bne lbl_800BED10
/* 800BED08  38 60 00 00 */	li r3, 0
/* 800BED0C  48 00 03 50 */	b lbl_800BF05C
lbl_800BED10:
/* 800BED10  83 BD 05 68 */	lwz r29, 0x568(r29)
lbl_800BED14:
/* 800BED14  28 1D 00 00 */	cmplwi r29, 0
/* 800BED18  40 82 FF 70 */	bne lbl_800BEC88
lbl_800BED1C:
/* 800BED1C  3B A0 00 00 */	li r29, 0
/* 800BED20  7F 83 E3 78 */	mr r3, r28
/* 800BED24  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800BED28  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800BED2C  7D 89 03 A6 */	mtctr r12
/* 800BED30  4E 80 04 21 */	bctrl 
/* 800BED34  28 03 00 00 */	cmplwi r3, 0
/* 800BED38  41 82 00 14 */	beq lbl_800BED4C
/* 800BED3C  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800BED40  28 00 00 3B */	cmplwi r0, 0x3b
/* 800BED44  41 82 00 08 */	beq lbl_800BED4C
/* 800BED48  3B A0 00 01 */	li r29, 1
lbl_800BED4C:
/* 800BED4C  57 BE 06 3F */	clrlwi. r30, r29, 0x18
/* 800BED50  41 82 00 38 */	beq lbl_800BED88
/* 800BED54  C0 3C 33 98 */	lfs f1, 0x3398(r28)
/* 800BED58  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 800BED5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BED60  40 80 00 10 */	bge lbl_800BED70
/* 800BED64  FF E0 00 90 */	fmr f31, f0
/* 800BED68  C3 C2 92 AC */	lfs f30, lit_6023(r2)
/* 800BED6C  48 00 00 94 */	b lbl_800BEE00
lbl_800BED70:
/* 800BED70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BED74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BED78  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800BED7C  C3 E3 17 8C */	lfs f31, 0x178c(r3)
/* 800BED80  C3 C2 92 B8 */	lfs f30, lit_6040(r2)
/* 800BED84  48 00 00 7C */	b lbl_800BEE00
lbl_800BED88:
/* 800BED88  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800BED8C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800BED90  41 82 00 3C */	beq lbl_800BEDCC
/* 800BED94  C0 3C 33 98 */	lfs f1, 0x3398(r28)
/* 800BED98  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 800BED9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BEDA0  41 80 00 0C */	blt lbl_800BEDAC
/* 800BEDA4  2C 1F 00 00 */	cmpwi r31, 0
/* 800BEDA8  41 82 00 10 */	beq lbl_800BEDB8
lbl_800BEDAC:
/* 800BEDAC  C3 E2 93 30 */	lfs f31, lit_7625(r2)
/* 800BEDB0  C3 C2 92 AC */	lfs f30, lit_6023(r2)
/* 800BEDB4  48 00 00 4C */	b lbl_800BEE00
lbl_800BEDB8:
/* 800BEDB8  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlMoveNoP_c0@ha /* 0x8038EF28@ha */
/* 800BEDBC  38 63 EF 28 */	addi r3, r3, m__23daAlinkHIO_wlMoveNoP_c0@l /* 0x8038EF28@l */
/* 800BEDC0  C3 E3 00 08 */	lfs f31, 8(r3)
/* 800BEDC4  C3 C2 92 B8 */	lfs f30, lit_6040(r2)
/* 800BEDC8  48 00 00 38 */	b lbl_800BEE00
lbl_800BEDCC:
/* 800BEDCC  C0 3C 33 98 */	lfs f1, 0x3398(r28)
/* 800BEDD0  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 800BEDD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BEDD8  41 80 00 0C */	blt lbl_800BEDE4
/* 800BEDDC  2C 1F 00 00 */	cmpwi r31, 0
/* 800BEDE0  41 82 00 10 */	beq lbl_800BEDF0
lbl_800BEDE4:
/* 800BEDE4  C3 E2 93 30 */	lfs f31, lit_7625(r2)
/* 800BEDE8  C3 C2 97 00 */	lfs f30, lit_41718(r2)
/* 800BEDEC  48 00 00 14 */	b lbl_800BEE00
lbl_800BEDF0:
/* 800BEDF0  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800BEDF4  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800BEDF8  C3 E3 00 30 */	lfs f31, 0x30(r3)
/* 800BEDFC  C3 C2 92 B8 */	lfs f30, lit_6040(r2)
lbl_800BEE00:
/* 800BEE00  2C 1E 00 00 */	cmpwi r30, 0
/* 800BEE04  41 82 00 0C */	beq lbl_800BEE10
/* 800BEE08  3B 60 00 01 */	li r27, 1
/* 800BEE0C  48 00 00 50 */	b lbl_800BEE5C
lbl_800BEE10:
/* 800BEE10  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 800BEE14  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800BEE18  41 82 00 2C */	beq lbl_800BEE44
/* 800BEE1C  C3 FC 33 A8 */	lfs f31, 0x33a8(r28)
/* 800BEE20  C0 3C 1F DC */	lfs f1, 0x1fdc(r28)
/* 800BEE24  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BEE28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BEE2C  4C 41 13 82 */	cror 2, 1, 2
/* 800BEE30  40 82 00 0C */	bne lbl_800BEE3C
/* 800BEE34  3B 60 00 02 */	li r27, 2
/* 800BEE38  48 00 00 24 */	b lbl_800BEE5C
lbl_800BEE3C:
/* 800BEE3C  3B 60 00 03 */	li r27, 3
/* 800BEE40  48 00 00 1C */	b lbl_800BEE5C
lbl_800BEE44:
/* 800BEE44  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800BEE48  28 00 01 33 */	cmplwi r0, 0x133
/* 800BEE4C  40 82 00 0C */	bne lbl_800BEE58
/* 800BEE50  3B 60 00 09 */	li r27, 9
/* 800BEE54  48 00 00 08 */	b lbl_800BEE5C
lbl_800BEE58:
/* 800BEE58  3B 60 00 00 */	li r27, 0
lbl_800BEE5C:
/* 800BEE5C  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 800BEE60  28 00 00 03 */	cmplwi r0, 3
/* 800BEE64  41 82 00 54 */	beq lbl_800BEEB8
/* 800BEE68  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800BEE6C  28 00 01 4F */	cmplwi r0, 0x14f
/* 800BEE70  41 82 00 48 */	beq lbl_800BEEB8
/* 800BEE74  28 00 01 32 */	cmplwi r0, 0x132
/* 800BEE78  41 82 00 40 */	beq lbl_800BEEB8
/* 800BEE7C  28 00 01 33 */	cmplwi r0, 0x133
/* 800BEE80  41 82 00 38 */	beq lbl_800BEEB8
/* 800BEE84  A0 1C 31 06 */	lhz r0, 0x3106(r28)
/* 800BEE88  28 00 00 00 */	cmplwi r0, 0
/* 800BEE8C  40 82 00 2C */	bne lbl_800BEEB8
/* 800BEE90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BEE94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BEE98  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800BEE9C  7F 84 E3 78 */	mr r4, r28
/* 800BEEA0  38 A0 00 00 */	li r5, 0
/* 800BEEA4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800BEEA8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800BEEAC  4B F8 42 C1 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800BEEB0  2C 03 00 00 */	cmpwi r3, 0
/* 800BEEB4  41 82 01 A4 */	beq lbl_800BF058
lbl_800BEEB8:
/* 800BEEB8  3B A0 00 00 */	li r29, 0
/* 800BEEBC  2C 1F 00 00 */	cmpwi r31, 0
/* 800BEEC0  41 82 00 18 */	beq lbl_800BEED8
/* 800BEEC4  38 00 00 03 */	li r0, 3
/* 800BEEC8  B0 1C 06 04 */	sth r0, 0x604(r28)
/* 800BEECC  38 00 00 34 */	li r0, 0x34
/* 800BEED0  90 1C 06 14 */	stw r0, 0x614(r28)
/* 800BEED4  48 00 00 C8 */	b lbl_800BEF9C
lbl_800BEED8:
/* 800BEED8  A0 1C 31 12 */	lhz r0, 0x3112(r28)
/* 800BEEDC  28 00 00 3F */	cmplwi r0, 0x3f
/* 800BEEE0  41 82 00 78 */	beq lbl_800BEF58
/* 800BEEE4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 800BEEE8  FC 20 F8 90 */	fmr f1, f31
/* 800BEEEC  7F 64 DB 78 */	mr r4, r27
/* 800BEEF0  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 800BEEF4  7C 05 07 74 */	extsb r5, r0
/* 800BEEF8  A8 DC 04 E6 */	lha r6, 0x4e6(r28)
/* 800BEEFC  38 E0 FF FF */	li r7, -1
/* 800BEF00  4B F6 82 71 */	bl dStage_changeScene__FifUlScsi
/* 800BEF04  7C 7D 1B 79 */	or. r29, r3, r3
/* 800BEF08  41 82 00 30 */	beq lbl_800BEF38
/* 800BEF0C  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 800BEF10  60 00 80 00 */	ori r0, r0, 0x8000
/* 800BEF14  90 1C 05 78 */	stw r0, 0x578(r28)
/* 800BEF18  80 7C 28 08 */	lwz r3, 0x2808(r28)
/* 800BEF1C  28 03 00 00 */	cmplwi r3, 0
/* 800BEF20  41 82 00 18 */	beq lbl_800BEF38
/* 800BEF24  A8 03 00 08 */	lha r0, 8(r3)
/* 800BEF28  2C 00 03 0C */	cmpwi r0, 0x30c
/* 800BEF2C  40 82 00 0C */	bne lbl_800BEF38
/* 800BEF30  38 00 00 01 */	li r0, 1
/* 800BEF34  98 03 05 99 */	stb r0, 0x599(r3)
lbl_800BEF38:
/* 800BEF38  88 7C 2F AC */	lbz r3, 0x2fac(r28)
/* 800BEF3C  28 03 00 FF */	cmplwi r3, 0xff
/* 800BEF40  41 82 00 5C */	beq lbl_800BEF9C
/* 800BEF44  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 800BEF48  7C 04 07 74 */	extsb r4, r0
/* 800BEF4C  4B F9 28 A1 */	bl dPath_GetRoomPath__Fii
/* 800BEF50  90 7C 2F 58 */	stw r3, 0x2f58(r28)
/* 800BEF54  48 00 00 48 */	b lbl_800BEF9C
lbl_800BEF58:
/* 800BEF58  38 7C 1A 60 */	addi r3, r28, 0x1a60
/* 800BEF5C  FC 20 F8 90 */	fmr f1, f31
/* 800BEF60  7F 64 DB 78 */	mr r4, r27
/* 800BEF64  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 800BEF68  7C 05 07 74 */	extsb r5, r0
/* 800BEF6C  A8 DC 04 E6 */	lha r6, 0x4e6(r28)
/* 800BEF70  4B F6 81 8D */	bl dStage_changeSceneExitId__FR13cBgS_PolyInfofUlScs
/* 800BEF74  7C 7D 1B 78 */	mr r29, r3
/* 800BEF78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BEF7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BEF80  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800BEF84  38 9C 1A 60 */	addi r4, r28, 0x1a60
/* 800BEF88  4B FB 60 59 */	bl GetRoomPathId__4dBgSFRC13cBgS_PolyInfo
/* 800BEF8C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 800BEF90  7C 04 07 74 */	extsb r4, r0
/* 800BEF94  4B F9 28 59 */	bl dPath_GetRoomPath__Fii
/* 800BEF98  90 7C 2F 58 */	stw r3, 0x2f58(r28)
lbl_800BEF9C:
/* 800BEF9C  2C 1D 00 00 */	cmpwi r29, 0
/* 800BEFA0  41 82 00 B8 */	beq lbl_800BF058
/* 800BEFA4  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800BEFA8  60 00 40 00 */	ori r0, r0, 0x4000
/* 800BEFAC  90 1C 05 70 */	stw r0, 0x570(r28)
/* 800BEFB0  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 800BEFB4  28 00 00 03 */	cmplwi r0, 3
/* 800BEFB8  41 82 00 98 */	beq lbl_800BF050
/* 800BEFBC  38 00 00 03 */	li r0, 3
/* 800BEFC0  B0 1C 06 04 */	sth r0, 0x604(r28)
/* 800BEFC4  7F 83 E3 78 */	mr r3, r28
/* 800BEFC8  4B FF BF B9 */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800BEFCC  2C 03 00 00 */	cmpwi r3, 0
/* 800BEFD0  41 82 00 14 */	beq lbl_800BEFE4
/* 800BEFD4  7F 83 E3 78 */	mr r3, r28
/* 800BEFD8  38 80 00 02 */	li r4, 2
/* 800BEFDC  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800BEFE0  4B FE E7 45 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800BEFE4:
/* 800BEFE4  80 1C 31 74 */	lwz r0, 0x3174(r28)
/* 800BEFE8  2C 00 00 05 */	cmpwi r0, 5
/* 800BEFEC  40 82 00 10 */	bne lbl_800BEFFC
/* 800BEFF0  38 00 00 11 */	li r0, 0x11
/* 800BEFF4  90 1C 06 14 */	stw r0, 0x614(r28)
/* 800BEFF8  48 00 00 10 */	b lbl_800BF008
lbl_800BEFFC:
/* 800BEFFC  38 00 00 1A */	li r0, 0x1a
/* 800BF000  90 1C 06 14 */	stw r0, 0x614(r28)
/* 800BF004  D3 DC 06 18 */	stfs f30, 0x618(r28)
lbl_800BF008:
/* 800BF008  7F 83 E3 78 */	mr r3, r28
/* 800BF00C  4B FF F9 C9 */	bl getSceneExitMoveAngle__9daAlink_cFv
/* 800BF010  B0 7C 06 06 */	sth r3, 0x606(r28)
/* 800BF014  2C 1E 00 00 */	cmpwi r30, 0
/* 800BF018  41 82 00 38 */	beq lbl_800BF050
/* 800BF01C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BF020  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BF024  80 83 5D B8 */	lwz r4, 0x5db8(r3)
/* 800BF028  38 00 00 03 */	li r0, 3
/* 800BF02C  98 04 16 B8 */	stb r0, 0x16b8(r4)
/* 800BF030  38 60 00 00 */	li r3, 0
/* 800BF034  90 64 17 28 */	stw r3, 0x1728(r4)
/* 800BF038  38 00 00 06 */	li r0, 6
/* 800BF03C  90 04 17 40 */	stw r0, 0x1740(r4)
/* 800BF040  90 64 17 28 */	stw r3, 0x1728(r4)
/* 800BF044  A8 1C 06 06 */	lha r0, 0x606(r28)
/* 800BF048  B0 04 16 FC */	sth r0, 0x16fc(r4)
/* 800BF04C  D3 C4 17 88 */	stfs f30, 0x1788(r4)
lbl_800BF050:
/* 800BF050  38 60 00 01 */	li r3, 1
/* 800BF054  48 00 00 08 */	b lbl_800BF05C
lbl_800BF058:
/* 800BF058  38 60 00 00 */	li r3, 0
lbl_800BF05C:
/* 800BF05C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800BF060  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800BF064  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 800BF068  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 800BF06C  39 61 00 30 */	addi r11, r1, 0x30
/* 800BF070  48 2A 31 B1 */	bl _restgpr_27
/* 800BF074  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800BF078  7C 08 03 A6 */	mtlr r0
/* 800BF07C  38 21 00 50 */	addi r1, r1, 0x50
/* 800BF080  4E 80 00 20 */	blr 
