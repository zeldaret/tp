lbl_807CBC00:
/* 807CBC00  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807CBC04  7C 08 02 A6 */	mflr r0
/* 807CBC08  90 01 00 54 */	stw r0, 0x54(r1)
/* 807CBC0C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 807CBC10  93 C1 00 48 */	stw r30, 0x48(r1)
/* 807CBC14  7C 7E 1B 78 */	mr r30, r3
/* 807CBC18  3C 60 80 7D */	lis r3, lit_3907@ha /* 0x807CECA8@ha */
/* 807CBC1C  3B E3 EC A8 */	addi r31, r3, lit_3907@l /* 0x807CECA8@l */
/* 807CBC20  80 1E 13 70 */	lwz r0, 0x1370(r30)
/* 807CBC24  2C 00 00 02 */	cmpwi r0, 2
/* 807CBC28  41 82 03 3C */	beq lbl_807CBF64
/* 807CBC2C  40 80 00 14 */	bge lbl_807CBC40
/* 807CBC30  2C 00 00 00 */	cmpwi r0, 0
/* 807CBC34  41 82 00 14 */	beq lbl_807CBC48
/* 807CBC38  40 80 01 24 */	bge lbl_807CBD5C
/* 807CBC3C  48 00 03 B0 */	b lbl_807CBFEC
lbl_807CBC40:
/* 807CBC40  2C 00 00 04 */	cmpwi r0, 4
/* 807CBC44  40 80 03 A8 */	bge lbl_807CBFEC
lbl_807CBC48:
/* 807CBC48  38 7E 13 78 */	addi r3, r30, 0x1378
/* 807CBC4C  38 80 00 00 */	li r4, 0
/* 807CBC50  38 A0 00 04 */	li r5, 4
/* 807CBC54  4B AA 4A 09 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBC58  38 7E 13 7A */	addi r3, r30, 0x137a
/* 807CBC5C  38 80 00 00 */	li r4, 0
/* 807CBC60  38 A0 00 04 */	li r5, 4
/* 807CBC64  4B AA 49 F9 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBC68  38 60 00 00 */	li r3, 0
/* 807CBC6C  98 7E 13 80 */	stb r3, 0x1380(r30)
/* 807CBC70  80 1E 13 70 */	lwz r0, 0x1370(r30)
/* 807CBC74  2C 00 00 03 */	cmpwi r0, 3
/* 807CBC78  40 82 00 14 */	bne lbl_807CBC8C
/* 807CBC7C  88 1E 13 78 */	lbz r0, 0x1378(r30)
/* 807CBC80  28 00 00 00 */	cmplwi r0, 0
/* 807CBC84  40 82 00 08 */	bne lbl_807CBC8C
/* 807CBC88  90 7E 13 70 */	stw r3, 0x1370(r30)
lbl_807CBC8C:
/* 807CBC8C  38 7E 13 7C */	addi r3, r30, 0x137c
/* 807CBC90  38 80 00 00 */	li r4, 0
/* 807CBC94  38 A0 00 08 */	li r5, 8
/* 807CBC98  4B AA 49 C5 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBC9C  38 7E 13 7D */	addi r3, r30, 0x137d
/* 807CBCA0  38 80 00 00 */	li r4, 0
/* 807CBCA4  38 A0 00 08 */	li r5, 8
/* 807CBCA8  4B AA 49 B5 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBCAC  38 7E 13 7E */	addi r3, r30, 0x137e
/* 807CBCB0  38 80 00 00 */	li r4, 0
/* 807CBCB4  38 A0 00 08 */	li r5, 8
/* 807CBCB8  4B AA 49 A5 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBCBC  80 1E 13 70 */	lwz r0, 0x1370(r30)
/* 807CBCC0  2C 00 00 00 */	cmpwi r0, 0
/* 807CBCC4  40 82 00 18 */	bne lbl_807CBCDC
/* 807CBCC8  38 7E 13 79 */	addi r3, r30, 0x1379
/* 807CBCCC  38 80 00 00 */	li r4, 0
/* 807CBCD0  38 A0 00 1B */	li r5, 0x1b
/* 807CBCD4  4B AA 49 89 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBCD8  48 00 00 34 */	b lbl_807CBD0C
lbl_807CBCDC:
/* 807CBCDC  88 1E 13 79 */	lbz r0, 0x1379(r30)
/* 807CBCE0  28 00 00 21 */	cmplwi r0, 0x21
/* 807CBCE4  40 80 00 18 */	bge lbl_807CBCFC
/* 807CBCE8  38 7E 13 79 */	addi r3, r30, 0x1379
/* 807CBCEC  38 80 00 00 */	li r4, 0
/* 807CBCF0  38 A0 00 01 */	li r5, 1
/* 807CBCF4  4B AA 49 69 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBCF8  48 00 00 14 */	b lbl_807CBD0C
lbl_807CBCFC:
/* 807CBCFC  38 7E 13 79 */	addi r3, r30, 0x1379
/* 807CBD00  38 80 00 00 */	li r4, 0
/* 807CBD04  38 A0 00 0A */	li r5, 0xa
/* 807CBD08  4B AA 49 55 */	bl cLib_chaseUC__FPUcUcUc
lbl_807CBD0C:
/* 807CBD0C  38 60 00 00 */	li r3, 0
/* 807CBD10  98 7E 13 8F */	stb r3, 0x138f(r30)
/* 807CBD14  80 1E 1B 90 */	lwz r0, 0x1b90(r30)
/* 807CBD18  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CBD1C  90 1E 1B 90 */	stw r0, 0x1b90(r30)
/* 807CBD20  38 00 00 03 */	li r0, 3
/* 807CBD24  7C 09 03 A6 */	mtctr r0
lbl_807CBD28:
/* 807CBD28  7C 9E 1A 14 */	add r4, r30, r3
/* 807CBD2C  80 04 1C DC */	lwz r0, 0x1cdc(r4)
/* 807CBD30  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CBD34  90 04 1C DC */	stw r0, 0x1cdc(r4)
/* 807CBD38  80 04 1C C8 */	lwz r0, 0x1cc8(r4)
/* 807CBD3C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CBD40  90 04 1C C8 */	stw r0, 0x1cc8(r4)
/* 807CBD44  80 04 1D 4C */	lwz r0, 0x1d4c(r4)
/* 807CBD48  60 00 00 04 */	ori r0, r0, 4
/* 807CBD4C  90 04 1D 4C */	stw r0, 0x1d4c(r4)
/* 807CBD50  38 63 01 3C */	addi r3, r3, 0x13c
/* 807CBD54  42 00 FF D4 */	bdnz lbl_807CBD28
/* 807CBD58  48 00 02 94 */	b lbl_807CBFEC
lbl_807CBD5C:
/* 807CBD5C  88 1E 13 7F */	lbz r0, 0x137f(r30)
/* 807CBD60  28 00 00 00 */	cmplwi r0, 0
/* 807CBD64  41 82 00 E0 */	beq lbl_807CBE44
/* 807CBD68  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807CBD6C  38 63 F4 C4 */	addi r3, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807CBD70  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 807CBD74  38 7E 13 7C */	addi r3, r30, 0x137c
/* 807CBD78  FC 00 08 1E */	fctiwz f0, f1
/* 807CBD7C  D8 01 00 08 */	stfd f0, 8(r1)
/* 807CBD80  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807CBD84  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 807CBD88  EC 01 00 24 */	fdivs f0, f1, f0
/* 807CBD8C  FC 00 00 1E */	fctiwz f0, f0
/* 807CBD90  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807CBD94  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 807CBD98  4B AA 48 C5 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBD9C  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807CBDA0  38 63 F4 C4 */	addi r3, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807CBDA4  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 807CBDA8  38 7E 13 7D */	addi r3, r30, 0x137d
/* 807CBDAC  FC 00 08 1E */	fctiwz f0, f1
/* 807CBDB0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807CBDB4  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 807CBDB8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 807CBDBC  EC 01 00 24 */	fdivs f0, f1, f0
/* 807CBDC0  FC 00 00 1E */	fctiwz f0, f0
/* 807CBDC4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807CBDC8  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 807CBDCC  4B AA 48 91 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBDD0  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807CBDD4  38 63 F4 C4 */	addi r3, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807CBDD8  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 807CBDDC  38 7E 13 7E */	addi r3, r30, 0x137e
/* 807CBDE0  FC 00 08 1E */	fctiwz f0, f1
/* 807CBDE4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807CBDE8  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 807CBDEC  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 807CBDF0  EC 01 00 24 */	fdivs f0, f1, f0
/* 807CBDF4  FC 00 00 1E */	fctiwz f0, f0
/* 807CBDF8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807CBDFC  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 807CBE00  4B AA 48 5D */	bl cLib_chaseUC__FPUcUcUc
/* 807CBE04  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807CBE08  38 63 F4 C4 */	addi r3, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807CBE0C  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 807CBE10  38 7E 13 78 */	addi r3, r30, 0x1378
/* 807CBE14  FC 00 08 1E */	fctiwz f0, f1
/* 807CBE18  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 807CBE1C  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 807CBE20  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 807CBE24  EC 21 00 28 */	fsubs f1, f1, f0
/* 807CBE28  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 807CBE2C  EC 01 00 24 */	fdivs f0, f1, f0
/* 807CBE30  FC 00 00 1E */	fctiwz f0, f0
/* 807CBE34  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 807CBE38  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 807CBE3C  4B AA 48 21 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBE40  48 00 00 98 */	b lbl_807CBED8
lbl_807CBE44:
/* 807CBE44  38 7E 13 7C */	addi r3, r30, 0x137c
/* 807CBE48  38 80 00 00 */	li r4, 0
/* 807CBE4C  3C A0 80 7D */	lis r5, l_HIO@ha /* 0x807CF4C4@ha */
/* 807CBE50  38 A5 F4 C4 */	addi r5, r5, l_HIO@l /* 0x807CF4C4@l */
/* 807CBE54  C0 25 00 30 */	lfs f1, 0x30(r5)
/* 807CBE58  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 807CBE5C  EC 01 00 24 */	fdivs f0, f1, f0
/* 807CBE60  FC 00 00 1E */	fctiwz f0, f0
/* 807CBE64  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 807CBE68  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 807CBE6C  4B AA 47 F1 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBE70  38 7E 13 7D */	addi r3, r30, 0x137d
/* 807CBE74  38 80 00 00 */	li r4, 0
/* 807CBE78  3C A0 80 7D */	lis r5, l_HIO@ha /* 0x807CF4C4@ha */
/* 807CBE7C  38 A5 F4 C4 */	addi r5, r5, l_HIO@l /* 0x807CF4C4@l */
/* 807CBE80  C0 25 00 34 */	lfs f1, 0x34(r5)
/* 807CBE84  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 807CBE88  EC 01 00 24 */	fdivs f0, f1, f0
/* 807CBE8C  FC 00 00 1E */	fctiwz f0, f0
/* 807CBE90  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 807CBE94  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 807CBE98  4B AA 47 C5 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBE9C  38 7E 13 7E */	addi r3, r30, 0x137e
/* 807CBEA0  38 80 00 00 */	li r4, 0
/* 807CBEA4  3C A0 80 7D */	lis r5, l_HIO@ha /* 0x807CF4C4@ha */
/* 807CBEA8  38 A5 F4 C4 */	addi r5, r5, l_HIO@l /* 0x807CF4C4@l */
/* 807CBEAC  C0 25 00 38 */	lfs f1, 0x38(r5)
/* 807CBEB0  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 807CBEB4  EC 01 00 24 */	fdivs f0, f1, f0
/* 807CBEB8  FC 00 00 1E */	fctiwz f0, f0
/* 807CBEBC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807CBEC0  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 807CBEC4  4B AA 47 99 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBEC8  38 7E 13 78 */	addi r3, r30, 0x1378
/* 807CBECC  38 80 00 80 */	li r4, 0x80
/* 807CBED0  38 A0 00 08 */	li r5, 8
/* 807CBED4  4B AA 47 89 */	bl cLib_chaseUC__FPUcUcUc
lbl_807CBED8:
/* 807CBED8  38 7E 13 7A */	addi r3, r30, 0x137a
/* 807CBEDC  38 80 00 00 */	li r4, 0
/* 807CBEE0  38 A0 00 04 */	li r5, 4
/* 807CBEE4  4B AA 47 79 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBEE8  38 00 00 00 */	li r0, 0
/* 807CBEEC  98 1E 13 80 */	stb r0, 0x1380(r30)
/* 807CBEF0  38 7E 13 79 */	addi r3, r30, 0x1379
/* 807CBEF4  38 80 00 B4 */	li r4, 0xb4
/* 807CBEF8  38 A0 00 08 */	li r5, 8
/* 807CBEFC  4B AA 47 61 */	bl cLib_chaseUC__FPUcUcUc
/* 807CBF00  80 1E 1B 90 */	lwz r0, 0x1b90(r30)
/* 807CBF04  60 00 00 01 */	ori r0, r0, 1
/* 807CBF08  90 1E 1B 90 */	stw r0, 0x1b90(r30)
/* 807CBF0C  80 1E 1C C8 */	lwz r0, 0x1cc8(r30)
/* 807CBF10  60 00 00 01 */	ori r0, r0, 1
/* 807CBF14  90 1E 1C C8 */	stw r0, 0x1cc8(r30)
/* 807CBF18  80 1E 1E 04 */	lwz r0, 0x1e04(r30)
/* 807CBF1C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CBF20  90 1E 1E 04 */	stw r0, 0x1e04(r30)
/* 807CBF24  80 1E 1F 40 */	lwz r0, 0x1f40(r30)
/* 807CBF28  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CBF2C  90 1E 1F 40 */	stw r0, 0x1f40(r30)
/* 807CBF30  38 60 00 00 */	li r3, 0
/* 807CBF34  38 00 00 03 */	li r0, 3
/* 807CBF38  7C 09 03 A6 */	mtctr r0
lbl_807CBF3C:
/* 807CBF3C  7C 9E 1A 14 */	add r4, r30, r3
/* 807CBF40  80 04 1C DC */	lwz r0, 0x1cdc(r4)
/* 807CBF44  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CBF48  90 04 1C DC */	stw r0, 0x1cdc(r4)
/* 807CBF4C  80 04 1D 4C */	lwz r0, 0x1d4c(r4)
/* 807CBF50  60 00 00 04 */	ori r0, r0, 4
/* 807CBF54  90 04 1D 4C */	stw r0, 0x1d4c(r4)
/* 807CBF58  38 63 01 3C */	addi r3, r3, 0x13c
/* 807CBF5C  42 00 FF E0 */	bdnz lbl_807CBF3C
/* 807CBF60  48 00 00 8C */	b lbl_807CBFEC
lbl_807CBF64:
/* 807CBF64  38 7E 13 78 */	addi r3, r30, 0x1378
/* 807CBF68  38 80 00 FF */	li r4, 0xff
/* 807CBF6C  38 A0 00 04 */	li r5, 4
/* 807CBF70  4B AA 46 ED */	bl cLib_chaseUC__FPUcUcUc
/* 807CBF74  38 7E 13 7A */	addi r3, r30, 0x137a
/* 807CBF78  38 80 00 FF */	li r4, 0xff
/* 807CBF7C  38 A0 00 08 */	li r5, 8
/* 807CBF80  4B AA 46 DD */	bl cLib_chaseUC__FPUcUcUc
/* 807CBF84  38 7E 13 80 */	addi r3, r30, 0x1380
/* 807CBF88  38 80 00 00 */	li r4, 0
/* 807CBF8C  38 A0 00 01 */	li r5, 1
/* 807CBF90  4B AA 46 CD */	bl cLib_chaseUC__FPUcUcUc
/* 807CBF94  38 7E 13 79 */	addi r3, r30, 0x1379
/* 807CBF98  38 80 00 FF */	li r4, 0xff
/* 807CBF9C  38 A0 00 04 */	li r5, 4
/* 807CBFA0  4B AA 46 BD */	bl cLib_chaseUC__FPUcUcUc
/* 807CBFA4  80 1E 1B 90 */	lwz r0, 0x1b90(r30)
/* 807CBFA8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CBFAC  90 1E 1B 90 */	stw r0, 0x1b90(r30)
/* 807CBFB0  38 60 00 00 */	li r3, 0
/* 807CBFB4  38 00 00 03 */	li r0, 3
/* 807CBFB8  7C 09 03 A6 */	mtctr r0
lbl_807CBFBC:
/* 807CBFBC  7C 9E 1A 14 */	add r4, r30, r3
/* 807CBFC0  80 04 1C DC */	lwz r0, 0x1cdc(r4)
/* 807CBFC4  60 00 00 01 */	ori r0, r0, 1
/* 807CBFC8  90 04 1C DC */	stw r0, 0x1cdc(r4)
/* 807CBFCC  80 04 1D 4C */	lwz r0, 0x1d4c(r4)
/* 807CBFD0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 807CBFD4  90 04 1D 4C */	stw r0, 0x1d4c(r4)
/* 807CBFD8  80 04 1C C8 */	lwz r0, 0x1cc8(r4)
/* 807CBFDC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CBFE0  90 04 1C C8 */	stw r0, 0x1cc8(r4)
/* 807CBFE4  38 63 01 3C */	addi r3, r3, 0x13c
/* 807CBFE8  42 00 FF D4 */	bdnz lbl_807CBFBC
lbl_807CBFEC:
/* 807CBFEC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 807CBFF0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 807CBFF4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807CBFF8  7C 08 03 A6 */	mtlr r0
/* 807CBFFC  38 21 00 50 */	addi r1, r1, 0x50
/* 807CC000  4E 80 00 20 */	blr 
