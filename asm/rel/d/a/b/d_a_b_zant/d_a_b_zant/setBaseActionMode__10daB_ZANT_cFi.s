lbl_8064C1C0:
/* 8064C1C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8064C1C4  7C 08 02 A6 */	mflr r0
/* 8064C1C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8064C1CC  39 61 00 40 */	addi r11, r1, 0x40
/* 8064C1D0  4B D1 60 0D */	bl _savegpr_29
/* 8064C1D4  7C 7F 1B 78 */	mr r31, r3
/* 8064C1D8  3C A0 80 65 */	lis r5, lit_3757@ha /* 0x8064EB1C@ha */
/* 8064C1DC  3B C5 EB 1C */	addi r30, r5, lit_3757@l /* 0x8064EB1C@l */
/* 8064C1E0  88 03 06 FB */	lbz r0, 0x6fb(r3)
/* 8064C1E4  28 00 00 06 */	cmplwi r0, 6
/* 8064C1E8  41 81 03 A8 */	bgt lbl_8064C590
/* 8064C1EC  3C A0 80 65 */	lis r5, lit_9869@ha /* 0x8064F3AC@ha */
/* 8064C1F0  38 A5 F3 AC */	addi r5, r5, lit_9869@l /* 0x8064F3AC@l */
/* 8064C1F4  54 00 10 3A */	slwi r0, r0, 2
/* 8064C1F8  7C 05 00 2E */	lwzx r0, r5, r0
/* 8064C1FC  7C 09 03 A6 */	mtctr r0
/* 8064C200  4E 80 04 20 */	bctr 
lbl_8064C204:
/* 8064C204  2C 04 00 00 */	cmpwi r4, 0
/* 8064C208  40 82 00 30 */	bne lbl_8064C238
/* 8064C20C  88 1F 07 0C */	lbz r0, 0x70c(r31)
/* 8064C210  28 00 00 00 */	cmplwi r0, 0
/* 8064C214  40 82 00 14 */	bne lbl_8064C228
/* 8064C218  38 80 00 05 */	li r4, 5
/* 8064C21C  38 A0 00 00 */	li r5, 0
/* 8064C220  4B FF 24 A5 */	bl setActionMode__10daB_ZANT_cFii
/* 8064C224  48 00 03 6C */	b lbl_8064C590
lbl_8064C228:
/* 8064C228  38 80 00 06 */	li r4, 6
/* 8064C22C  38 A0 00 00 */	li r5, 0
/* 8064C230  4B FF 24 95 */	bl setActionMode__10daB_ZANT_cFii
/* 8064C234  48 00 03 5C */	b lbl_8064C590
lbl_8064C238:
/* 8064C238  2C 04 00 01 */	cmpwi r4, 1
/* 8064C23C  40 82 00 54 */	bne lbl_8064C290
/* 8064C240  38 C0 00 01 */	li r6, 1
/* 8064C244  98 DF 07 0B */	stb r6, 0x70b(r31)
/* 8064C248  38 00 00 00 */	li r0, 0
/* 8064C24C  98 1F 06 FE */	stb r0, 0x6fe(r31)
/* 8064C250  88 1F 06 FE */	lbz r0, 0x6fe(r31)
/* 8064C254  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8064C258  3C 80 80 65 */	lis r4, data_8064F66C@ha /* 0x8064F66C@ha */
/* 8064C25C  38 04 F6 6C */	addi r0, r4, data_8064F66C@l /* 0x8064F66C@l */
/* 8064C260  7C 80 2A 14 */	add r4, r0, r5
/* 8064C264  C0 04 00 00 */	lfs f0, 0(r4)
/* 8064C268  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 8064C26C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8064C270  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 8064C274  C0 04 00 08 */	lfs f0, 8(r4)
/* 8064C278  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 8064C27C  98 DF 07 11 */	stb r6, 0x711(r31)
/* 8064C280  38 80 00 01 */	li r4, 1
/* 8064C284  38 A0 00 01 */	li r5, 1
/* 8064C288  4B FF 24 3D */	bl setActionMode__10daB_ZANT_cFii
/* 8064C28C  48 00 03 04 */	b lbl_8064C590
lbl_8064C290:
/* 8064C290  38 00 00 00 */	li r0, 0
/* 8064C294  98 1F 07 0C */	stb r0, 0x70c(r31)
/* 8064C298  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8064C29C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8064C2A0  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 8064C2A4  4B C1 B6 B1 */	bl cM_rndF__Ff
/* 8064C2A8  88 1F 06 FE */	lbz r0, 0x6fe(r31)
/* 8064C2AC  C8 5E 00 70 */	lfd f2, 0x70(r30)
/* 8064C2B0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8064C2B4  3C 00 43 30 */	lis r0, 0x4330
/* 8064C2B8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8064C2BC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8064C2C0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8064C2C4  EC 20 08 2A */	fadds f1, f0, f1
/* 8064C2C8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8064C2CC  EC 00 08 2A */	fadds f0, f0, f1
/* 8064C2D0  FC 00 00 1E */	fctiwz f0, f0
/* 8064C2D4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8064C2D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8064C2DC  98 1F 06 FE */	stb r0, 0x6fe(r31)
/* 8064C2E0  88 9F 06 FE */	lbz r4, 0x6fe(r31)
/* 8064C2E4  38 60 00 03 */	li r3, 3
/* 8064C2E8  7C 04 1B D6 */	divw r0, r4, r3
/* 8064C2EC  7C 00 19 D6 */	mullw r0, r0, r3
/* 8064C2F0  7C 00 20 50 */	subf r0, r0, r4
/* 8064C2F4  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8064C2F8  3C 60 80 65 */	lis r3, data_8064F66C@ha /* 0x8064F66C@ha */
/* 8064C2FC  38 03 F6 6C */	addi r0, r3, data_8064F66C@l /* 0x8064F66C@l */
/* 8064C300  7C 60 22 14 */	add r3, r0, r4
/* 8064C304  C0 03 00 00 */	lfs f0, 0(r3)
/* 8064C308  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 8064C30C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8064C310  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 8064C314  C0 03 00 08 */	lfs f0, 8(r3)
/* 8064C318  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 8064C31C  38 00 00 02 */	li r0, 2
/* 8064C320  98 1F 07 11 */	stb r0, 0x711(r31)
/* 8064C324  7F E3 FB 78 */	mr r3, r31
/* 8064C328  38 80 00 01 */	li r4, 1
/* 8064C32C  38 A0 00 01 */	li r5, 1
/* 8064C330  4B FF 23 95 */	bl setActionMode__10daB_ZANT_cFii
/* 8064C334  48 00 02 5C */	b lbl_8064C590
lbl_8064C338:
/* 8064C338  2C 04 00 00 */	cmpwi r4, 0
/* 8064C33C  40 82 00 14 */	bne lbl_8064C350
/* 8064C340  38 80 00 0A */	li r4, 0xa
/* 8064C344  38 A0 00 00 */	li r5, 0
/* 8064C348  4B FF 23 7D */	bl setActionMode__10daB_ZANT_cFii
/* 8064C34C  48 00 02 44 */	b lbl_8064C590
lbl_8064C350:
/* 8064C350  2C 04 00 01 */	cmpwi r4, 1
/* 8064C354  40 82 00 4C */	bne lbl_8064C3A0
/* 8064C358  C0 1E 01 8C */	lfs f0, 0x18c(r30)
/* 8064C35C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8064C360  38 00 00 00 */	li r0, 0
/* 8064C364  98 1F 06 FE */	stb r0, 0x6fe(r31)
/* 8064C368  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8064C36C  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 8064C370  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 8064C374  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 8064C378  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 8064C37C  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 8064C380  38 00 80 00 */	li r0, -32768
/* 8064C384  B0 1F 06 B8 */	sth r0, 0x6b8(r31)
/* 8064C388  38 00 00 03 */	li r0, 3
/* 8064C38C  98 1F 07 11 */	stb r0, 0x711(r31)
/* 8064C390  38 80 00 01 */	li r4, 1
/* 8064C394  38 A0 00 00 */	li r5, 0
/* 8064C398  4B FF 23 2D */	bl setActionMode__10daB_ZANT_cFii
/* 8064C39C  48 00 01 F4 */	b lbl_8064C590
lbl_8064C3A0:
/* 8064C3A0  38 80 00 0A */	li r4, 0xa
/* 8064C3A4  38 A0 00 0B */	li r5, 0xb
/* 8064C3A8  4B FF 23 1D */	bl setActionMode__10daB_ZANT_cFii
/* 8064C3AC  48 00 01 E4 */	b lbl_8064C590
lbl_8064C3B0:
/* 8064C3B0  2C 04 00 00 */	cmpwi r4, 0
/* 8064C3B4  40 82 00 14 */	bne lbl_8064C3C8
/* 8064C3B8  38 80 00 0B */	li r4, 0xb
/* 8064C3BC  38 A0 00 64 */	li r5, 0x64
/* 8064C3C0  4B FF 23 05 */	bl setActionMode__10daB_ZANT_cFii
/* 8064C3C4  48 00 00 28 */	b lbl_8064C3EC
lbl_8064C3C8:
/* 8064C3C8  2C 04 00 01 */	cmpwi r4, 1
/* 8064C3CC  40 82 00 14 */	bne lbl_8064C3E0
/* 8064C3D0  38 80 00 0B */	li r4, 0xb
/* 8064C3D4  38 A0 00 00 */	li r5, 0
/* 8064C3D8  4B FF 22 ED */	bl setActionMode__10daB_ZANT_cFii
/* 8064C3DC  48 00 00 10 */	b lbl_8064C3EC
lbl_8064C3E0:
/* 8064C3E0  38 80 00 0E */	li r4, 0xe
/* 8064C3E4  38 A0 00 1E */	li r5, 0x1e
/* 8064C3E8  4B FF 22 DD */	bl setActionMode__10daB_ZANT_cFii
lbl_8064C3EC:
/* 8064C3EC  38 00 00 00 */	li r0, 0
/* 8064C3F0  90 1F 06 E8 */	stw r0, 0x6e8(r31)
/* 8064C3F4  48 00 01 9C */	b lbl_8064C590
lbl_8064C3F8:
/* 8064C3F8  2C 04 00 00 */	cmpwi r4, 0
/* 8064C3FC  40 82 00 14 */	bne lbl_8064C410
/* 8064C400  38 80 00 07 */	li r4, 7
/* 8064C404  38 A0 00 00 */	li r5, 0
/* 8064C408  4B FF 22 BD */	bl setActionMode__10daB_ZANT_cFii
/* 8064C40C  48 00 01 84 */	b lbl_8064C590
lbl_8064C410:
/* 8064C410  88 1F 07 28 */	lbz r0, 0x728(r31)
/* 8064C414  54 00 10 3A */	slwi r0, r0, 2
/* 8064C418  7C 7F 02 14 */	add r3, r31, r0
/* 8064C41C  80 63 07 2C */	lwz r3, 0x72c(r3)
/* 8064C420  38 81 00 08 */	addi r4, r1, 8
/* 8064C424  4B 9C D5 99 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8064C428  AB BF 04 E6 */	lha r29, 0x4e6(r31)
/* 8064C42C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8064C430  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8064C434  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8064C438  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8064C43C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8064C440  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8064C444  C0 1E 03 40 */	lfs f0, 0x340(r30)
/* 8064C448  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8064C44C  80 81 00 08 */	lwz r4, 8(r1)
/* 8064C450  28 04 00 00 */	cmplwi r4, 0
/* 8064C454  41 82 00 48 */	beq lbl_8064C49C
/* 8064C458  AB A4 04 E6 */	lha r29, 0x4e6(r4)
/* 8064C45C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8064C460  57 A0 04 38 */	rlwinm r0, r29, 0, 0x10, 0x1c
/* 8064C464  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8064C468  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8064C46C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8064C470  EC 01 00 32 */	fmuls f0, f1, f0
/* 8064C474  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8064C478  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8064C47C  7C 63 02 14 */	add r3, r3, r0
/* 8064C480  C0 03 00 04 */	lfs f0, 4(r3)
/* 8064C484  EC 01 00 32 */	fmuls f0, f1, f0
/* 8064C488  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8064C48C  38 61 00 0C */	addi r3, r1, 0xc
/* 8064C490  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8064C494  7C 65 1B 78 */	mr r5, r3
/* 8064C498  4B CF AB F9 */	bl PSVECAdd
lbl_8064C49C:
/* 8064C49C  38 00 00 00 */	li r0, 0
/* 8064C4A0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8064C4A4  B3 BF 06 B8 */	sth r29, 0x6b8(r31)
/* 8064C4A8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8064C4AC  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 8064C4B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8064C4B4  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 8064C4B8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8064C4BC  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 8064C4C0  38 00 00 01 */	li r0, 1
/* 8064C4C4  98 1F 07 05 */	stb r0, 0x705(r31)
/* 8064C4C8  98 1F 07 11 */	stb r0, 0x711(r31)
/* 8064C4CC  7F E3 FB 78 */	mr r3, r31
/* 8064C4D0  38 80 00 01 */	li r4, 1
/* 8064C4D4  38 A0 00 00 */	li r5, 0
/* 8064C4D8  4B FF 21 ED */	bl setActionMode__10daB_ZANT_cFii
/* 8064C4DC  48 00 00 B4 */	b lbl_8064C590
lbl_8064C4E0:
/* 8064C4E0  2C 04 00 00 */	cmpwi r4, 0
/* 8064C4E4  40 82 00 14 */	bne lbl_8064C4F8
/* 8064C4E8  38 80 00 0F */	li r4, 0xf
/* 8064C4EC  38 A0 00 00 */	li r5, 0
/* 8064C4F0  4B FF 21 D5 */	bl setActionMode__10daB_ZANT_cFii
/* 8064C4F4  48 00 00 9C */	b lbl_8064C590
lbl_8064C4F8:
/* 8064C4F8  2C 04 00 01 */	cmpwi r4, 1
/* 8064C4FC  40 82 00 14 */	bne lbl_8064C510
/* 8064C500  38 80 00 0F */	li r4, 0xf
/* 8064C504  38 A0 00 64 */	li r5, 0x64
/* 8064C508  4B FF 21 BD */	bl setActionMode__10daB_ZANT_cFii
/* 8064C50C  48 00 00 84 */	b lbl_8064C590
lbl_8064C510:
/* 8064C510  4B FF AE D5 */	bl setNearPillarPos__10daB_ZANT_cFv
/* 8064C514  38 00 00 00 */	li r0, 0
/* 8064C518  98 1F 07 11 */	stb r0, 0x711(r31)
/* 8064C51C  7F E3 FB 78 */	mr r3, r31
/* 8064C520  38 80 00 01 */	li r4, 1
/* 8064C524  38 A0 00 01 */	li r5, 1
/* 8064C528  4B FF 21 9D */	bl setActionMode__10daB_ZANT_cFii
/* 8064C52C  48 00 00 64 */	b lbl_8064C590
lbl_8064C530:
/* 8064C530  2C 04 00 00 */	cmpwi r4, 0
/* 8064C534  40 82 00 14 */	bne lbl_8064C548
/* 8064C538  38 80 00 13 */	li r4, 0x13
/* 8064C53C  88 BF 07 0F */	lbz r5, 0x70f(r31)
/* 8064C540  4B FF 21 85 */	bl setActionMode__10daB_ZANT_cFii
/* 8064C544  48 00 00 4C */	b lbl_8064C590
lbl_8064C548:
/* 8064C548  2C 04 00 01 */	cmpwi r4, 1
/* 8064C54C  40 82 00 44 */	bne lbl_8064C590
/* 8064C550  88 1F 07 18 */	lbz r0, 0x718(r31)
/* 8064C554  28 00 00 00 */	cmplwi r0, 0
/* 8064C558  40 82 00 14 */	bne lbl_8064C56C
/* 8064C55C  38 80 00 12 */	li r4, 0x12
/* 8064C560  38 A0 00 00 */	li r5, 0
/* 8064C564  4B FF 21 61 */	bl setActionMode__10daB_ZANT_cFii
/* 8064C568  48 00 00 28 */	b lbl_8064C590
lbl_8064C56C:
/* 8064C56C  38 80 00 00 */	li r4, 0
/* 8064C570  38 A0 00 00 */	li r5, 0
/* 8064C574  4B FF C2 05 */	bl setLastWarp__10daB_ZANT_cFii
/* 8064C578  48 00 00 18 */	b lbl_8064C590
lbl_8064C57C:
/* 8064C57C  38 80 00 04 */	li r4, 4
/* 8064C580  38 A0 00 00 */	li r5, 0
/* 8064C584  4B FF 21 41 */	bl setActionMode__10daB_ZANT_cFii
/* 8064C588  7F E3 FB 78 */	mr r3, r31
/* 8064C58C  4B FF 50 B5 */	bl executeOpening__10daB_ZANT_cFv
lbl_8064C590:
/* 8064C590  39 61 00 40 */	addi r11, r1, 0x40
/* 8064C594  4B D1 5C 95 */	bl _restgpr_29
/* 8064C598  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8064C59C  7C 08 03 A6 */	mtlr r0
/* 8064C5A0  38 21 00 40 */	addi r1, r1, 0x40
/* 8064C5A4  4E 80 00 20 */	blr 
