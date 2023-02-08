lbl_807BDC50:
/* 807BDC50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807BDC54  7C 08 02 A6 */	mflr r0
/* 807BDC58  90 01 00 24 */	stw r0, 0x24(r1)
/* 807BDC5C  39 61 00 20 */	addi r11, r1, 0x20
/* 807BDC60  4B BA 45 7D */	bl _savegpr_29
/* 807BDC64  7C 7D 1B 78 */	mr r29, r3
/* 807BDC68  A0 03 06 E8 */	lhz r0, 0x6e8(r3)
/* 807BDC6C  28 00 00 00 */	cmplwi r0, 0
/* 807BDC70  40 82 01 D4 */	bne lbl_807BDE44
/* 807BDC74  38 7D 09 30 */	addi r3, r29, 0x930
/* 807BDC78  4B 8C 5B B9 */	bl Move__10dCcD_GSttsFv
/* 807BDC7C  38 7D 09 50 */	addi r3, r29, 0x950
/* 807BDC80  4B 8C 67 E1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807BDC84  28 03 00 00 */	cmplwi r3, 0
/* 807BDC88  41 82 01 BC */	beq lbl_807BDE44
/* 807BDC8C  38 7D 09 50 */	addi r3, r29, 0x950
/* 807BDC90  4B 8C 68 69 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807BDC94  90 7D 0A 88 */	stw r3, 0xa88(r29)
/* 807BDC98  3B E0 00 02 */	li r31, 2
/* 807BDC9C  3B C0 00 0A */	li r30, 0xa
/* 807BDCA0  80 BD 0A 88 */	lwz r5, 0xa88(r29)
/* 807BDCA4  80 85 00 10 */	lwz r4, 0x10(r5)
/* 807BDCA8  54 80 04 A5 */	rlwinm. r0, r4, 0, 0x12, 0x12
/* 807BDCAC  41 82 00 10 */	beq lbl_807BDCBC
/* 807BDCB0  3B C0 00 28 */	li r30, 0x28
/* 807BDCB4  3B E0 00 05 */	li r31, 5
/* 807BDCB8  48 00 00 C0 */	b lbl_807BDD78
lbl_807BDCBC:
/* 807BDCBC  3C 60 00 40 */	lis r3, 0x0040 /* 0x00400020@ha */
/* 807BDCC0  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00400020@l */
/* 807BDCC4  7C 80 00 39 */	and. r0, r4, r0
/* 807BDCC8  41 82 00 10 */	beq lbl_807BDCD8
/* 807BDCCC  3B E0 00 06 */	li r31, 6
/* 807BDCD0  3B C0 00 28 */	li r30, 0x28
/* 807BDCD4  48 00 00 A4 */	b lbl_807BDD78
lbl_807BDCD8:
/* 807BDCD8  3C 60 04 00 */	lis r3, 0x0400 /* 0x04000002@ha */
/* 807BDCDC  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x04000002@l */
/* 807BDCE0  7C 80 00 39 */	and. r0, r4, r0
/* 807BDCE4  41 82 00 68 */	beq lbl_807BDD4C
/* 807BDCE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BDCEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BDCF0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807BDCF4  88 03 05 69 */	lbz r0, 0x569(r3)
/* 807BDCF8  28 00 00 04 */	cmplwi r0, 4
/* 807BDCFC  40 80 00 10 */	bge lbl_807BDD0C
/* 807BDD00  88 05 00 77 */	lbz r0, 0x77(r5)
/* 807BDD04  2C 00 00 01 */	cmpwi r0, 1
/* 807BDD08  40 82 00 0C */	bne lbl_807BDD14
lbl_807BDD0C:
/* 807BDD0C  3B E0 00 06 */	li r31, 6
/* 807BDD10  48 00 00 68 */	b lbl_807BDD78
lbl_807BDD14:
/* 807BDD14  88 1D 06 F4 */	lbz r0, 0x6f4(r29)
/* 807BDD18  28 00 00 00 */	cmplwi r0, 0
/* 807BDD1C  41 82 00 14 */	beq lbl_807BDD30
/* 807BDD20  88 1D 06 F5 */	lbz r0, 0x6f5(r29)
/* 807BDD24  68 00 00 01 */	xori r0, r0, 1
/* 807BDD28  98 1D 06 F5 */	stb r0, 0x6f5(r29)
/* 807BDD2C  48 00 00 10 */	b lbl_807BDD3C
lbl_807BDD30:
/* 807BDD30  7F A3 EB 78 */	mr r3, r29
/* 807BDD34  4B FF FE DD */	bl getCutType__8daE_TT_cFv
/* 807BDD38  98 7D 06 F5 */	stb r3, 0x6f5(r29)
lbl_807BDD3C:
/* 807BDD3C  8B FD 06 F5 */	lbz r31, 0x6f5(r29)
/* 807BDD40  38 00 00 1E */	li r0, 0x1e
/* 807BDD44  98 1D 06 F4 */	stb r0, 0x6f4(r29)
/* 807BDD48  48 00 00 30 */	b lbl_807BDD78
lbl_807BDD4C:
/* 807BDD4C  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 807BDD50  41 82 00 0C */	beq lbl_807BDD5C
/* 807BDD54  3B E0 00 03 */	li r31, 3
/* 807BDD58  48 00 00 20 */	b lbl_807BDD78
lbl_807BDD5C:
/* 807BDD5C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00014000@ha */
/* 807BDD60  38 03 40 00 */	addi r0, r3, 0x4000 /* 0x00014000@l */
/* 807BDD64  7C 80 00 39 */	and. r0, r4, r0
/* 807BDD68  41 82 00 10 */	beq lbl_807BDD78
/* 807BDD6C  38 00 00 00 */	li r0, 0
/* 807BDD70  98 05 00 14 */	stb r0, 0x14(r5)
/* 807BDD74  3B E0 00 04 */	li r31, 4
lbl_807BDD78:
/* 807BDD78  80 7D 0A 88 */	lwz r3, 0xa88(r29)
/* 807BDD7C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 807BDD80  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 807BDD84  41 81 00 08 */	bgt lbl_807BDD8C
/* 807BDD88  3B C0 00 00 */	li r30, 0
lbl_807BDD8C:
/* 807BDD8C  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 807BDD90  7C 00 F2 14 */	add r0, r0, r30
/* 807BDD94  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 807BDD98  38 00 00 64 */	li r0, 0x64
/* 807BDD9C  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 807BDDA0  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 807BDDA4  2C 00 00 28 */	cmpwi r0, 0x28
/* 807BDDA8  41 80 00 0C */	blt lbl_807BDDB4
/* 807BDDAC  38 00 00 00 */	li r0, 0
/* 807BDDB0  B0 1D 05 62 */	sth r0, 0x562(r29)
lbl_807BDDB4:
/* 807BDDB4  7F A3 EB 78 */	mr r3, r29
/* 807BDDB8  38 9D 0A 88 */	addi r4, r29, 0xa88
/* 807BDDBC  4B 8C 9E 49 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807BDDC0  80 7D 0A 88 */	lwz r3, 0xa88(r29)
/* 807BDDC4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807BDDC8  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 807BDDCC  41 82 00 10 */	beq lbl_807BDDDC
/* 807BDDD0  38 00 00 14 */	li r0, 0x14
/* 807BDDD4  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
/* 807BDDD8  48 00 00 0C */	b lbl_807BDDE4
lbl_807BDDDC:
/* 807BDDDC  38 00 00 0A */	li r0, 0xa
/* 807BDDE0  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
lbl_807BDDE4:
/* 807BDDE4  A0 1D 0A A4 */	lhz r0, 0xaa4(r29)
/* 807BDDE8  28 00 00 01 */	cmplwi r0, 1
/* 807BDDEC  41 81 00 0C */	bgt lbl_807BDDF8
/* 807BDDF0  38 00 00 0A */	li r0, 0xa
/* 807BDDF4  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
lbl_807BDDF8:
/* 807BDDF8  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807BDDFC  28 05 00 05 */	cmplwi r5, 5
/* 807BDE00  41 80 00 18 */	blt lbl_807BDE18
/* 807BDE04  7F A3 EB 78 */	mr r3, r29
/* 807BDE08  38 80 00 04 */	li r4, 4
/* 807BDE0C  38 A5 FF FB */	addi r5, r5, -5
/* 807BDE10  4B FF FD D5 */	bl setActionMode__8daE_TT_cFii
/* 807BDE14  48 00 00 30 */	b lbl_807BDE44
lbl_807BDE18:
/* 807BDE18  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 807BDE1C  2C 00 00 00 */	cmpwi r0, 0
/* 807BDE20  41 81 00 18 */	bgt lbl_807BDE38
/* 807BDE24  7F A3 EB 78 */	mr r3, r29
/* 807BDE28  38 80 00 04 */	li r4, 4
/* 807BDE2C  38 A0 00 02 */	li r5, 2
/* 807BDE30  4B FF FD B5 */	bl setActionMode__8daE_TT_cFii
/* 807BDE34  48 00 00 10 */	b lbl_807BDE44
lbl_807BDE38:
/* 807BDE38  7F A3 EB 78 */	mr r3, r29
/* 807BDE3C  38 80 00 03 */	li r4, 3
/* 807BDE40  4B FF FD A5 */	bl setActionMode__8daE_TT_cFii
lbl_807BDE44:
/* 807BDE44  39 61 00 20 */	addi r11, r1, 0x20
/* 807BDE48  4B BA 43 E1 */	bl _restgpr_29
/* 807BDE4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807BDE50  7C 08 03 A6 */	mtlr r0
/* 807BDE54  38 21 00 20 */	addi r1, r1, 0x20
/* 807BDE58  4E 80 00 20 */	blr 
