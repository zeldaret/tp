lbl_8072DDF4:
/* 8072DDF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8072DDF8  7C 08 02 A6 */	mflr r0
/* 8072DDFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072DE00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8072DE04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8072DE08  7C 7E 1B 78 */	mr r30, r3
/* 8072DE0C  A0 03 05 8E */	lhz r0, 0x58e(r3)
/* 8072DE10  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8072DE14  41 82 00 30 */	beq lbl_8072DE44
/* 8072DE18  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8072DE1C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8072DE20  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 8072DE24  38 00 00 00 */	li r0, 0
/* 8072DE28  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8072DE2C  38 80 00 09 */	li r4, 9
/* 8072DE30  38 A0 00 01 */	li r5, 1
/* 8072DE34  4B FF FE 89 */	bl setActionMode__8daE_OC_cFii
/* 8072DE38  7F C3 F3 78 */	mr r3, r30
/* 8072DE3C  4B FF FF 51 */	bl offTgSph__8daE_OC_cFv
/* 8072DE40  48 00 04 1C */	b lbl_8072E25C
lbl_8072DE44:
/* 8072DE44  A8 1E 06 CC */	lha r0, 0x6cc(r30)
/* 8072DE48  2C 00 00 00 */	cmpwi r0, 0
/* 8072DE4C  40 82 04 10 */	bne lbl_8072E25C
/* 8072DE50  38 7E 09 3C */	addi r3, r30, 0x93c
/* 8072DE54  4B 95 59 DD */	bl Move__10dCcD_GSttsFv
/* 8072DE58  3B E0 00 00 */	li r31, 0
/* 8072DE5C  38 7E 09 5C */	addi r3, r30, 0x95c
/* 8072DE60  4B 95 66 01 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8072DE64  28 03 00 00 */	cmplwi r3, 0
/* 8072DE68  41 82 00 2C */	beq lbl_8072DE94
/* 8072DE6C  38 7E 09 5C */	addi r3, r30, 0x95c
/* 8072DE70  4B 95 66 89 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8072DE74  90 7E 0E 3C */	stw r3, 0xe3c(r30)
/* 8072DE78  3B E0 00 01 */	li r31, 1
/* 8072DE7C  C0 1E 0A 30 */	lfs f0, 0xa30(r30)
/* 8072DE80  D0 01 00 08 */	stfs f0, 8(r1)
/* 8072DE84  C0 1E 0A 34 */	lfs f0, 0xa34(r30)
/* 8072DE88  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8072DE8C  C0 1E 0A 38 */	lfs f0, 0xa38(r30)
/* 8072DE90  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_8072DE94:
/* 8072DE94  38 7E 0A 94 */	addi r3, r30, 0xa94
/* 8072DE98  4B 95 65 C9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8072DE9C  28 03 00 00 */	cmplwi r3, 0
/* 8072DEA0  41 82 00 2C */	beq lbl_8072DECC
/* 8072DEA4  38 7E 0A 94 */	addi r3, r30, 0xa94
/* 8072DEA8  4B 95 66 51 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8072DEAC  90 7E 0E 3C */	stw r3, 0xe3c(r30)
/* 8072DEB0  3B E0 00 01 */	li r31, 1
/* 8072DEB4  C0 1E 0B 68 */	lfs f0, 0xb68(r30)
/* 8072DEB8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8072DEBC  C0 1E 0B 6C */	lfs f0, 0xb6c(r30)
/* 8072DEC0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8072DEC4  C0 1E 0B 70 */	lfs f0, 0xb70(r30)
/* 8072DEC8  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_8072DECC:
/* 8072DECC  2C 1F 00 00 */	cmpwi r31, 0
/* 8072DED0  41 82 03 8C */	beq lbl_8072E25C
/* 8072DED4  80 7E 0E 3C */	lwz r3, 0xe3c(r30)
/* 8072DED8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8072DEDC  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8072DEE0  41 82 00 10 */	beq lbl_8072DEF0
/* 8072DEE4  38 00 00 14 */	li r0, 0x14
/* 8072DEE8  B0 1E 06 CC */	sth r0, 0x6cc(r30)
/* 8072DEEC  48 00 00 0C */	b lbl_8072DEF8
lbl_8072DEF0:
/* 8072DEF0  38 00 00 0A */	li r0, 0xa
/* 8072DEF4  B0 1E 06 CC */	sth r0, 0x6cc(r30)
lbl_8072DEF8:
/* 8072DEF8  A0 1E 0E 58 */	lhz r0, 0xe58(r30)
/* 8072DEFC  28 00 00 01 */	cmplwi r0, 1
/* 8072DF00  41 81 00 0C */	bgt lbl_8072DF0C
/* 8072DF04  38 00 00 0A */	li r0, 0xa
/* 8072DF08  B0 1E 06 CC */	sth r0, 0x6cc(r30)
lbl_8072DF0C:
/* 8072DF0C  3B E0 00 02 */	li r31, 2
/* 8072DF10  80 7E 0E 3C */	lwz r3, 0xe3c(r30)
/* 8072DF14  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8072DF18  3C 60 04 00 */	lis r3, 0x0400 /* 0x04000002@ha */
/* 8072DF1C  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x04000002@l */
/* 8072DF20  7C 80 00 39 */	and. r0, r4, r0
/* 8072DF24  41 82 00 84 */	beq lbl_8072DFA8
/* 8072DF28  7F C3 F3 78 */	mr r3, r30
/* 8072DF2C  4B FF FD ED */	bl getCutType__8daE_OC_cFv
/* 8072DF30  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 8072DF34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072DF38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072DF3C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8072DF40  28 00 00 3F */	cmplwi r0, 0x3f
/* 8072DF44  40 82 00 08 */	bne lbl_8072DF4C
/* 8072DF48  3B E0 00 02 */	li r31, 2
lbl_8072DF4C:
/* 8072DF4C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8072DF50  28 00 00 02 */	cmplwi r0, 2
/* 8072DF54  41 81 00 30 */	bgt lbl_8072DF84
/* 8072DF58  A8 1E 06 D6 */	lha r0, 0x6d6(r30)
/* 8072DF5C  2C 00 00 00 */	cmpwi r0, 0
/* 8072DF60  41 82 00 18 */	beq lbl_8072DF78
/* 8072DF64  88 1E 06 DC */	lbz r0, 0x6dc(r30)
/* 8072DF68  68 00 00 01 */	xori r0, r0, 1
/* 8072DF6C  98 1E 06 DC */	stb r0, 0x6dc(r30)
/* 8072DF70  8B FE 06 DC */	lbz r31, 0x6dc(r30)
/* 8072DF74  48 00 00 08 */	b lbl_8072DF7C
lbl_8072DF78:
/* 8072DF78  9B FE 06 DC */	stb r31, 0x6dc(r30)
lbl_8072DF7C:
/* 8072DF7C  38 00 00 1E */	li r0, 0x1e
/* 8072DF80  B0 1E 06 D6 */	sth r0, 0x6d6(r30)
lbl_8072DF84:
/* 8072DF84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072DF88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072DF8C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8072DF90  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8072DF94  28 00 00 05 */	cmplwi r0, 5
/* 8072DF98  40 82 01 D4 */	bne lbl_8072E16C
/* 8072DF9C  38 00 00 00 */	li r0, 0
/* 8072DFA0  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8072DFA4  48 00 01 C8 */	b lbl_8072E16C
lbl_8072DFA8:
/* 8072DFA8  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8072DFAC  41 82 00 0C */	beq lbl_8072DFB8
/* 8072DFB0  3B E0 00 03 */	li r31, 3
/* 8072DFB4  48 00 01 B8 */	b lbl_8072E16C
lbl_8072DFB8:
/* 8072DFB8  54 80 04 A5 */	rlwinm. r0, r4, 0, 0x12, 0x12
/* 8072DFBC  41 82 00 28 */	beq lbl_8072DFE4
/* 8072DFC0  4B B3 98 AD */	bl cM_rnd__Fv
/* 8072DFC4  3C 60 80 73 */	lis r3, lit_4855@ha /* 0x80735BE0@ha */
/* 8072DFC8  C0 03 5B E0 */	lfs f0, lit_4855@l(r3)  /* 0x80735BE0@l */
/* 8072DFCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072DFD0  40 80 00 0C */	bge lbl_8072DFDC
/* 8072DFD4  3B E0 00 00 */	li r31, 0
/* 8072DFD8  48 00 01 94 */	b lbl_8072E16C
lbl_8072DFDC:
/* 8072DFDC  3B E0 00 01 */	li r31, 1
/* 8072DFE0  48 00 01 8C */	b lbl_8072E16C
lbl_8072DFE4:
/* 8072DFE4  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 8072DFE8  41 82 00 14 */	beq lbl_8072DFFC
/* 8072DFEC  3B E0 00 05 */	li r31, 5
/* 8072DFF0  38 00 00 00 */	li r0, 0
/* 8072DFF4  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8072DFF8  48 00 01 74 */	b lbl_8072E16C
lbl_8072DFFC:
/* 8072DFFC  54 80 02 53 */	rlwinm. r0, r4, 0, 9, 9
/* 8072E000  41 82 00 3C */	beq lbl_8072E03C
/* 8072E004  3B E0 00 05 */	li r31, 5
/* 8072E008  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072E00C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072E010  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8072E014  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8072E018  41 82 00 14 */	beq lbl_8072E02C
/* 8072E01C  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 8072E020  38 03 00 8C */	addi r0, r3, 0x8c
/* 8072E024  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8072E028  48 00 01 44 */	b lbl_8072E16C
lbl_8072E02C:
/* 8072E02C  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 8072E030  38 03 00 50 */	addi r0, r3, 0x50
/* 8072E034  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8072E038  48 00 01 34 */	b lbl_8072E16C
lbl_8072E03C:
/* 8072E03C  54 80 03 DF */	rlwinm. r0, r4, 0, 0xf, 0xf
/* 8072E040  41 82 00 0C */	beq lbl_8072E04C
/* 8072E044  3B E0 00 04 */	li r31, 4
/* 8072E048  48 00 01 24 */	b lbl_8072E16C
lbl_8072E04C:
/* 8072E04C  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 8072E050  41 82 00 14 */	beq lbl_8072E064
/* 8072E054  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 8072E058  38 03 00 0A */	addi r0, r3, 0xa
/* 8072E05C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8072E060  48 00 01 0C */	b lbl_8072E16C
lbl_8072E064:
/* 8072E064  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 8072E068  41 82 01 04 */	beq lbl_8072E16C
/* 8072E06C  80 9E 06 A4 */	lwz r4, 0x6a4(r30)
/* 8072E070  3C 60 80 73 */	lis r3, d_a_e_oc__stringBase0@ha /* 0x80735D0C@ha */
/* 8072E074  38 03 5D 0C */	addi r0, r3, d_a_e_oc__stringBase0@l /* 0x80735D0C@l */
/* 8072E078  7C 04 00 40 */	cmplw r4, r0
/* 8072E07C  40 82 00 A0 */	bne lbl_8072E11C
/* 8072E080  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 8072E084  38 03 FF FB */	addi r0, r3, -5
/* 8072E088  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8072E08C  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8072E090  2C 00 00 00 */	cmpwi r0, 0
/* 8072E094  40 80 00 D8 */	bge lbl_8072E16C
/* 8072E098  38 00 00 00 */	li r0, 0
/* 8072E09C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8072E0A0  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072E0A4  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040007@ha */
/* 8072E0A8  38 84 00 07 */	addi r4, r4, 0x0007 /* 0x00040007@l */
/* 8072E0AC  38 A0 00 20 */	li r5, 0x20
/* 8072E0B0  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072E0B4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8072E0B8  7D 89 03 A6 */	mtctr r12
/* 8072E0BC  4E 80 04 21 */	bctrl 
/* 8072E0C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072E0C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072E0C8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8072E0CC  38 80 00 03 */	li r4, 3
/* 8072E0D0  7F C5 F3 78 */	mr r5, r30
/* 8072E0D4  38 C1 00 08 */	addi r6, r1, 8
/* 8072E0D8  38 E0 00 00 */	li r7, 0
/* 8072E0DC  39 00 00 00 */	li r8, 0
/* 8072E0E0  39 20 00 00 */	li r9, 0
/* 8072E0E4  4B 91 E1 35 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8072E0E8  7F C3 F3 78 */	mr r3, r30
/* 8072E0EC  38 80 00 06 */	li r4, 6
/* 8072E0F0  38 A0 00 00 */	li r5, 0
/* 8072E0F4  4B FF FB C9 */	bl setActionMode__8daE_OC_cFii
/* 8072E0F8  7F C3 F3 78 */	mr r3, r30
/* 8072E0FC  4B FF FC 91 */	bl offTgSph__8daE_OC_cFv
/* 8072E100  7F C3 F3 78 */	mr r3, r30
/* 8072E104  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072E108  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072E10C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8072E110  4B 8E C6 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072E114  B0 7E 0E 4A */	sth r3, 0xe4a(r30)
/* 8072E118  48 00 01 44 */	b lbl_8072E25C
lbl_8072E11C:
/* 8072E11C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072E120  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040018@ha */
/* 8072E124  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x00040018@l */
/* 8072E128  38 A0 00 2D */	li r5, 0x2d
/* 8072E12C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072E130  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8072E134  7D 89 03 A6 */	mtctr r12
/* 8072E138  4E 80 04 21 */	bctrl 
/* 8072E13C  80 1E 06 A8 */	lwz r0, 0x6a8(r30)
/* 8072E140  2C 00 00 00 */	cmpwi r0, 0
/* 8072E144  41 82 00 14 */	beq lbl_8072E158
/* 8072E148  2C 00 00 01 */	cmpwi r0, 1
/* 8072E14C  41 82 00 0C */	beq lbl_8072E158
/* 8072E150  2C 00 00 02 */	cmpwi r0, 2
/* 8072E154  40 82 01 08 */	bne lbl_8072E25C
lbl_8072E158:
/* 8072E158  7F C3 F3 78 */	mr r3, r30
/* 8072E15C  38 80 00 03 */	li r4, 3
/* 8072E160  38 A0 00 01 */	li r5, 1
/* 8072E164  4B FF FB 59 */	bl setActionMode__8daE_OC_cFii
/* 8072E168  48 00 00 F4 */	b lbl_8072E25C
lbl_8072E16C:
/* 8072E16C  7F C3 F3 78 */	mr r3, r30
/* 8072E170  38 9E 0E 3C */	addi r4, r30, 0xe3c
/* 8072E174  4B 95 9A 91 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8072E178  80 7E 0E 3C */	lwz r3, 0xe3c(r30)
/* 8072E17C  88 03 00 77 */	lbz r0, 0x77(r3)
/* 8072E180  2C 00 00 01 */	cmpwi r0, 1
/* 8072E184  40 82 00 34 */	bne lbl_8072E1B8
/* 8072E188  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8072E18C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8072E190  41 82 00 18 */	beq lbl_8072E1A8
/* 8072E194  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072E198  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072E19C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8072E1A0  28 00 00 3F */	cmplwi r0, 0x3f
/* 8072E1A4  41 82 00 14 */	beq lbl_8072E1B8
lbl_8072E1A8:
/* 8072E1A8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8072E1AC  28 00 00 05 */	cmplwi r0, 5
/* 8072E1B0  40 80 00 08 */	bge lbl_8072E1B8
/* 8072E1B4  3B E0 00 05 */	li r31, 5
lbl_8072E1B8:
/* 8072E1B8  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8072E1BC  2C 00 00 01 */	cmpwi r0, 1
/* 8072E1C0  41 81 00 1C */	bgt lbl_8072E1DC
/* 8072E1C4  38 00 00 00 */	li r0, 0
/* 8072E1C8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8072E1CC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8072E1D0  28 00 00 05 */	cmplwi r0, 5
/* 8072E1D4  40 80 00 08 */	bge lbl_8072E1DC
/* 8072E1D8  3B E0 00 05 */	li r31, 5
lbl_8072E1DC:
/* 8072E1DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072E1E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072E1E4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8072E1E8  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8072E1EC  28 00 00 0A */	cmplwi r0, 0xa
/* 8072E1F0  40 82 00 38 */	bne lbl_8072E228
/* 8072E1F4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8072E1F8  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 8072E1FC  7D 89 03 A6 */	mtctr r12
/* 8072E200  4E 80 04 21 */	bctrl 
/* 8072E204  2C 03 00 00 */	cmpwi r3, 0
/* 8072E208  41 82 00 20 */	beq lbl_8072E228
/* 8072E20C  7F C3 F3 78 */	mr r3, r30
/* 8072E210  38 80 00 05 */	li r4, 5
/* 8072E214  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8072E218  4B FF FA A5 */	bl setActionMode__8daE_OC_cFii
/* 8072E21C  38 00 00 03 */	li r0, 3
/* 8072E220  B0 1E 06 CC */	sth r0, 0x6cc(r30)
/* 8072E224  48 00 00 38 */	b lbl_8072E25C
lbl_8072E228:
/* 8072E228  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8072E22C  28 05 00 05 */	cmplwi r5, 5
/* 8072E230  41 80 00 20 */	blt lbl_8072E250
/* 8072E234  7F C3 F3 78 */	mr r3, r30
/* 8072E238  38 80 00 06 */	li r4, 6
/* 8072E23C  38 A5 FF FB */	addi r5, r5, -5
/* 8072E240  4B FF FA 7D */	bl setActionMode__8daE_OC_cFii
/* 8072E244  7F C3 F3 78 */	mr r3, r30
/* 8072E248  4B FF FB 45 */	bl offTgSph__8daE_OC_cFv
/* 8072E24C  48 00 00 10 */	b lbl_8072E25C
lbl_8072E250:
/* 8072E250  7F C3 F3 78 */	mr r3, r30
/* 8072E254  38 80 00 05 */	li r4, 5
/* 8072E258  4B FF FA 65 */	bl setActionMode__8daE_OC_cFii
lbl_8072E25C:
/* 8072E25C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8072E260  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8072E264  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072E268  7C 08 03 A6 */	mtlr r0
/* 8072E26C  38 21 00 20 */	addi r1, r1, 0x20
/* 8072E270  4E 80 00 20 */	blr 
