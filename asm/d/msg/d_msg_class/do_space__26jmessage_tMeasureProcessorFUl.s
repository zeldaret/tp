lbl_8022B18C:
/* 8022B18C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022B190  7C 08 02 A6 */	mflr r0
/* 8022B194  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022B198  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8022B19C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8022B1A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022B1A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8022B1A8  7C 7E 1B 78 */	mr r30, r3
/* 8022B1AC  83 E3 00 04 */	lwz r31, 4(r3)
/* 8022B1B0  C3 E3 00 38 */	lfs f31, 0x38(r3)
/* 8022B1B4  88 03 00 44 */	lbz r0, 0x44(r3)
/* 8022B1B8  28 00 00 00 */	cmplwi r0, 0
/* 8022B1BC  40 82 01 B0 */	bne lbl_8022B36C
/* 8022B1C0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8022B1C4  38 C5 FF FF */	addi r6, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8022B1C8  54 83 02 1E */	rlwinm r3, r4, 0, 8, 0xf
/* 8022B1CC  3C 00 00 03 */	lis r0, 3
/* 8022B1D0  7C 03 00 00 */	cmpw r3, r0
/* 8022B1D4  41 82 01 04 */	beq lbl_8022B2D8
/* 8022B1D8  40 80 00 10 */	bge lbl_8022B1E8
/* 8022B1DC  2C 03 00 00 */	cmpwi r3, 0
/* 8022B1E0  41 82 00 18 */	beq lbl_8022B1F8
/* 8022B1E4  48 00 01 88 */	b lbl_8022B36C
lbl_8022B1E8:
/* 8022B1E8  3C 00 00 06 */	lis r0, 6
/* 8022B1EC  7C 03 00 00 */	cmpw r3, r0
/* 8022B1F0  41 82 01 5C */	beq lbl_8022B34C
/* 8022B1F4  48 00 01 78 */	b lbl_8022B36C
lbl_8022B1F8:
/* 8022B1F8  38 04 FF F6 */	addi r0, r4, -10
/* 8022B1FC  28 00 00 30 */	cmplwi r0, 0x30
/* 8022B200  41 81 00 C8 */	bgt lbl_8022B2C8
/* 8022B204  3C 60 80 3C */	lis r3, lit_5269@ha /* 0x803C0144@ha */
/* 8022B208  38 63 01 44 */	addi r3, r3, lit_5269@l /* 0x803C0144@l */
/* 8022B20C  54 00 10 3A */	slwi r0, r0, 2
/* 8022B210  7C 03 00 2E */	lwzx r0, r3, r0
/* 8022B214  7C 09 03 A6 */	mtctr r0
/* 8022B218  4E 80 04 20 */	bctr 
/* 8022B21C  38 C5 FF E0 */	addi r6, r5, -32
/* 8022B220  48 00 00 A8 */	b lbl_8022B2C8
/* 8022B224  38 C5 FF E1 */	addi r6, r5, -31
/* 8022B228  48 00 00 A0 */	b lbl_8022B2C8
/* 8022B22C  38 C5 FF E2 */	addi r6, r5, -30
/* 8022B230  48 00 00 98 */	b lbl_8022B2C8
/* 8022B234  38 C5 FF E3 */	addi r6, r5, -29
/* 8022B238  48 00 00 90 */	b lbl_8022B2C8
/* 8022B23C  38 C5 FF E4 */	addi r6, r5, -28
/* 8022B240  48 00 00 88 */	b lbl_8022B2C8
/* 8022B244  38 C5 FF E5 */	addi r6, r5, -27
/* 8022B248  48 00 00 80 */	b lbl_8022B2C8
/* 8022B24C  38 C5 FF E6 */	addi r6, r5, -26
/* 8022B250  48 00 00 78 */	b lbl_8022B2C8
/* 8022B254  38 C5 FF E7 */	addi r6, r5, -25
/* 8022B258  48 00 00 70 */	b lbl_8022B2C8
/* 8022B25C  38 C5 FF E8 */	addi r6, r5, -24
/* 8022B260  48 00 00 68 */	b lbl_8022B2C8
/* 8022B264  38 C5 FF E9 */	addi r6, r5, -23
/* 8022B268  48 00 00 60 */	b lbl_8022B2C8
/* 8022B26C  38 C5 FF EA */	addi r6, r5, -22
/* 8022B270  48 00 00 58 */	b lbl_8022B2C8
/* 8022B274  38 C5 FF EB */	addi r6, r5, -21
/* 8022B278  48 00 00 50 */	b lbl_8022B2C8
/* 8022B27C  38 C5 FF EC */	addi r6, r5, -20
/* 8022B280  48 00 00 48 */	b lbl_8022B2C8
/* 8022B284  38 C5 FF ED */	addi r6, r5, -19
/* 8022B288  48 00 00 40 */	b lbl_8022B2C8
/* 8022B28C  38 C5 FF EE */	addi r6, r5, -18
/* 8022B290  48 00 00 38 */	b lbl_8022B2C8
/* 8022B294  38 C5 FF F0 */	addi r6, r5, -16
/* 8022B298  48 00 00 30 */	b lbl_8022B2C8
/* 8022B29C  38 C5 FF F1 */	addi r6, r5, -15
/* 8022B2A0  48 00 00 28 */	b lbl_8022B2C8
/* 8022B2A4  38 C5 FF F2 */	addi r6, r5, -14
/* 8022B2A8  48 00 00 20 */	b lbl_8022B2C8
/* 8022B2AC  38 C5 FF F3 */	addi r6, r5, -13
/* 8022B2B0  48 00 00 18 */	b lbl_8022B2C8
/* 8022B2B4  38 C5 FF F4 */	addi r6, r5, -12
/* 8022B2B8  48 00 00 10 */	b lbl_8022B2C8
/* 8022B2BC  38 C5 FF F5 */	addi r6, r5, -11
/* 8022B2C0  48 00 00 08 */	b lbl_8022B2C8
/* 8022B2C4  38 C5 FF F6 */	addi r6, r5, -10
lbl_8022B2C8:
/* 8022B2C8  7F E3 FB 78 */	mr r3, r31
/* 8022B2CC  7C C4 33 78 */	mr r4, r6
/* 8022B2D0  4B FF E4 99 */	bl setCharactor__19jmessage_tReferenceFUs
/* 8022B2D4  48 00 00 98 */	b lbl_8022B36C
lbl_8022B2D8:
/* 8022B2D8  54 80 04 0E */	rlwinm r0, r4, 0, 0x10, 7
/* 8022B2DC  2C 00 00 08 */	cmpwi r0, 8
/* 8022B2E0  40 80 00 24 */	bge lbl_8022B304
/* 8022B2E4  2C 00 00 03 */	cmpwi r0, 3
/* 8022B2E8  40 80 00 10 */	bge lbl_8022B2F8
/* 8022B2EC  2C 00 00 01 */	cmpwi r0, 1
/* 8022B2F0  40 80 00 48 */	bge lbl_8022B338
/* 8022B2F4  48 00 00 78 */	b lbl_8022B36C
lbl_8022B2F8:
/* 8022B2F8  2C 00 00 06 */	cmpwi r0, 6
/* 8022B2FC  40 80 00 3C */	bge lbl_8022B338
/* 8022B300  48 00 00 18 */	b lbl_8022B318
lbl_8022B304:
/* 8022B304  2C 00 00 15 */	cmpwi r0, 0x15
/* 8022B308  40 80 00 64 */	bge lbl_8022B36C
/* 8022B30C  2C 00 00 10 */	cmpwi r0, 0x10
/* 8022B310  40 80 00 28 */	bge lbl_8022B338
/* 8022B314  48 00 00 14 */	b lbl_8022B328
lbl_8022B318:
/* 8022B318  7F E3 FB 78 */	mr r3, r31
/* 8022B31C  7C C4 33 78 */	mr r4, r6
/* 8022B320  4B FF E4 49 */	bl setCharactor__19jmessage_tReferenceFUs
/* 8022B324  48 00 00 48 */	b lbl_8022B36C
lbl_8022B328:
/* 8022B328  7F E3 FB 78 */	mr r3, r31
/* 8022B32C  7C C4 33 78 */	mr r4, r6
/* 8022B330  4B FF E4 39 */	bl setCharactor__19jmessage_tReferenceFUs
/* 8022B334  48 00 00 38 */	b lbl_8022B36C
lbl_8022B338:
/* 8022B338  7F E3 FB 78 */	mr r3, r31
/* 8022B33C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 8022B340  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 8022B344  4B FF E4 25 */	bl setCharactor__19jmessage_tReferenceFUs
/* 8022B348  48 00 00 24 */	b lbl_8022B36C
lbl_8022B34C:
/* 8022B34C  2C 04 00 0C */	cmpwi r4, 0xc
/* 8022B350  40 80 00 1C */	bge lbl_8022B36C
/* 8022B354  2C 04 00 0A */	cmpwi r4, 0xa
/* 8022B358  40 80 00 08 */	bge lbl_8022B360
/* 8022B35C  48 00 00 10 */	b lbl_8022B36C
lbl_8022B360:
/* 8022B360  7F E3 FB 78 */	mr r3, r31
/* 8022B364  7C C4 33 78 */	mr r4, r6
/* 8022B368  4B FF E4 01 */	bl setCharactor__19jmessage_tReferenceFUs
lbl_8022B36C:
/* 8022B36C  88 1E 00 49 */	lbz r0, 0x49(r30)
/* 8022B370  7C 00 07 75 */	extsb. r0, r0
/* 8022B374  41 82 00 0C */	beq lbl_8022B380
/* 8022B378  38 00 00 00 */	li r0, 0
/* 8022B37C  98 1E 00 49 */	stb r0, 0x49(r30)
lbl_8022B380:
/* 8022B380  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 8022B384  54 00 10 3A */	slwi r0, r0, 2
/* 8022B388  7C 7F 02 14 */	add r3, r31, r0
/* 8022B38C  C0 03 04 68 */	lfs f0, 0x468(r3)
/* 8022B390  EC 00 F8 2A */	fadds f0, f0, f31
/* 8022B394  D0 03 04 68 */	stfs f0, 0x468(r3)
/* 8022B398  C0 23 05 08 */	lfs f1, 0x508(r3)
/* 8022B39C  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022B3A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8022B3A4  D0 03 05 08 */	stfs f0, 0x508(r3)
/* 8022B3A8  88 7E 00 46 */	lbz r3, 0x46(r30)
/* 8022B3AC  28 03 00 00 */	cmplwi r3, 0
/* 8022B3B0  41 82 00 1C */	beq lbl_8022B3CC
/* 8022B3B4  38 03 FF FF */	addi r0, r3, -1
/* 8022B3B8  54 00 10 3A */	slwi r0, r0, 2
/* 8022B3BC  7C 7F 02 14 */	add r3, r31, r0
/* 8022B3C0  C0 03 05 A8 */	lfs f0, 0x5a8(r3)
/* 8022B3C4  EC 00 F8 2A */	fadds f0, f0, f31
/* 8022B3C8  D0 03 05 A8 */	stfs f0, 0x5a8(r3)
lbl_8022B3CC:
/* 8022B3CC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8022B3D0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8022B3D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022B3D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8022B3DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022B3E0  7C 08 03 A6 */	mtlr r0
/* 8022B3E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8022B3E8  4E 80 00 20 */	blr 
