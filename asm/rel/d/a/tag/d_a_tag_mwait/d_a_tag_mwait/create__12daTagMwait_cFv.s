lbl_80D5BE18:
/* 80D5BE18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D5BE1C  7C 08 02 A6 */	mflr r0
/* 80D5BE20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D5BE24  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5BE28  4B 60 63 B5 */	bl _savegpr_29
/* 80D5BE2C  7C 7E 1B 78 */	mr r30, r3
/* 80D5BE30  3C 80 80 D6 */	lis r4, lit_3841@ha /* 0x80D5C580@ha */
/* 80D5BE34  3B E4 C5 80 */	addi r31, r4, lit_3841@l /* 0x80D5C580@l */
/* 80D5BE38  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5BE3C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5BE40  40 82 00 28 */	bne lbl_80D5BE68
/* 80D5BE44  7F C0 F3 79 */	or. r0, r30, r30
/* 80D5BE48  41 82 00 14 */	beq lbl_80D5BE5C
/* 80D5BE4C  7C 1D 03 78 */	mr r29, r0
/* 80D5BE50  4B 2B CD 15 */	bl __ct__10fopAc_ac_cFv
/* 80D5BE54  38 7D 05 80 */	addi r3, r29, 0x580
/* 80D5BE58  4B 4E E0 A9 */	bl __ct__10dMsgFlow_cFv
lbl_80D5BE5C:
/* 80D5BE5C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D5BE60  60 00 00 08 */	ori r0, r0, 8
/* 80D5BE64  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D5BE68:
/* 80D5BE68  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D5BE6C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D5BE70  98 1E 05 69 */	stb r0, 0x569(r30)
/* 80D5BE74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5BE78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5BE7C  88 9E 05 69 */	lbz r4, 0x569(r30)
/* 80D5BE80  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D5BE84  7C 05 07 74 */	extsb r5, r0
/* 80D5BE88  4B 2D 94 D9 */	bl isSwitch__10dSv_info_cCFii
/* 80D5BE8C  2C 03 00 00 */	cmpwi r3, 0
/* 80D5BE90  41 82 00 0C */	beq lbl_80D5BE9C
/* 80D5BE94  38 60 00 05 */	li r3, 5
/* 80D5BE98  48 00 01 4C */	b lbl_80D5BFE4
lbl_80D5BE9C:
/* 80D5BE9C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D5BEA0  98 1E 05 68 */	stb r0, 0x568(r30)
/* 80D5BEA4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D5BEA8  54 00 86 3F */	rlwinm. r0, r0, 0x10, 0x18, 0x1f
/* 80D5BEAC  41 82 00 0C */	beq lbl_80D5BEB8
/* 80D5BEB0  28 00 00 FF */	cmplwi r0, 0xff
/* 80D5BEB4  40 82 00 10 */	bne lbl_80D5BEC4
lbl_80D5BEB8:
/* 80D5BEB8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D5BEBC  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 80D5BEC0  48 00 00 2C */	b lbl_80D5BEEC
lbl_80D5BEC4:
/* 80D5BEC4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80D5BEC8  7C 00 01 D6 */	mullw r0, r0, r0
/* 80D5BECC  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 80D5BED0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D5BED4  3C 00 43 30 */	lis r0, 0x4330
/* 80D5BED8  90 01 00 08 */	stw r0, 8(r1)
/* 80D5BEDC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D5BEE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D5BEE4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D5BEE8  D0 1E 05 70 */	stfs f0, 0x570(r30)
lbl_80D5BEEC:
/* 80D5BEEC  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80D5BEF0  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80D5BEF4  98 1E 05 6B */	stb r0, 0x56b(r30)
/* 80D5BEF8  88 1E 05 6B */	lbz r0, 0x56b(r30)
/* 80D5BEFC  28 00 00 02 */	cmplwi r0, 2
/* 80D5BF00  41 80 00 0C */	blt lbl_80D5BF0C
/* 80D5BF04  38 00 00 00 */	li r0, 0
/* 80D5BF08  98 1E 05 6B */	stb r0, 0x56b(r30)
lbl_80D5BF0C:
/* 80D5BF0C  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80D5BF10  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80D5BF14  98 1E 05 6D */	stb r0, 0x56d(r30)
/* 80D5BF18  88 1E 05 6D */	lbz r0, 0x56d(r30)
/* 80D5BF1C  28 00 00 02 */	cmplwi r0, 2
/* 80D5BF20  41 80 00 0C */	blt lbl_80D5BF2C
/* 80D5BF24  38 00 00 00 */	li r0, 0
/* 80D5BF28  98 1E 05 6D */	stb r0, 0x56d(r30)
lbl_80D5BF2C:
/* 80D5BF2C  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80D5BF30  7C 64 1B 78 */	mr r4, r3
/* 80D5BF34  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D5BF38  4B 5E B1 A1 */	bl PSVECScale
/* 80D5BF3C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D5BF40  54 00 46 3F */	rlwinm. r0, r0, 8, 0x18, 0x1f
/* 80D5BF44  41 82 00 0C */	beq lbl_80D5BF50
/* 80D5BF48  28 00 00 FF */	cmplwi r0, 0xff
/* 80D5BF4C  40 82 00 08 */	bne lbl_80D5BF54
lbl_80D5BF50:
/* 80D5BF50  38 00 00 00 */	li r0, 0
lbl_80D5BF54:
/* 80D5BF54  C0 9E 04 D8 */	lfs f4, 0x4d8(r30)
/* 80D5BF58  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80D5BF5C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80D5BF60  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 80D5BF64  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D5BF68  3C 00 43 30 */	lis r0, 0x4330
/* 80D5BF6C  90 01 00 08 */	stw r0, 8(r1)
/* 80D5BF70  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D5BF74  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D5BF78  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D5BF7C  EC 23 00 2A */	fadds f1, f3, f0
/* 80D5BF80  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D5BF84  D0 1E 05 74 */	stfs f0, 0x574(r30)
/* 80D5BF88  D0 3E 05 78 */	stfs f1, 0x578(r30)
/* 80D5BF8C  D0 9E 05 7C */	stfs f4, 0x57c(r30)
/* 80D5BF90  C0 5E 05 7C */	lfs f2, 0x57c(r30)
/* 80D5BF94  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80D5BF98  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 80D5BF9C  EC 21 00 2A */	fadds f1, f1, f0
/* 80D5BFA0  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 80D5BFA4  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80D5BFA8  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80D5BFAC  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 80D5BFB0  C0 5E 05 7C */	lfs f2, 0x57c(r30)
/* 80D5BFB4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80D5BFB8  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 80D5BFBC  EC 21 00 2A */	fadds f1, f1, f0
/* 80D5BFC0  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 80D5BFC4  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80D5BFC8  D0 3E 05 3C */	stfs f1, 0x53c(r30)
/* 80D5BFCC  D0 5E 05 40 */	stfs f2, 0x540(r30)
/* 80D5BFD0  38 00 00 36 */	li r0, 0x36
/* 80D5BFD4  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80D5BFD8  38 00 00 00 */	li r0, 0
/* 80D5BFDC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80D5BFE0  38 60 00 04 */	li r3, 4
lbl_80D5BFE4:
/* 80D5BFE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5BFE8  4B 60 62 41 */	bl _restgpr_29
/* 80D5BFEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D5BFF0  7C 08 03 A6 */	mtlr r0
/* 80D5BFF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D5BFF8  4E 80 00 20 */	blr 
