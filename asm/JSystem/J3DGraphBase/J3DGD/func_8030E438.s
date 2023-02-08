lbl_8030E438:
/* 8030E438  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030E43C  39 6D 83 8C */	la r11, J3DGDTexMode0Ids(r13) /* 8045090C-_SDA_BASE_ */
/* 8030E440  7C 0B 18 AE */	lbzx r0, r11, r3
/* 8030E444  54 00 C0 0E */	slwi r0, r0, 0x18
/* 8030E448  55 0C A8 D4 */	rlwinm r12, r8, 0x15, 3, 0xa
/* 8030E44C  55 4B 98 18 */	slwi r11, r10, 0x13
/* 8030E450  C0 02 C9 28 */	lfs f0, lit_1050(r2)
/* 8030E454  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8030E458  FC 00 00 1E */	fctiwz f0, f0
/* 8030E45C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8030E460  81 01 00 0C */	lwz r8, 0xc(r1)
/* 8030E464  55 0A 4B EC */	rlwinm r10, r8, 9, 0xf, 0x16
/* 8030E468  55 28 06 3E */	clrlwi r8, r9, 0x18
/* 8030E46C  7D 08 00 34 */	cntlzw r8, r8
/* 8030E470  55 09 1C 2E */	rlwinm r9, r8, 3, 0x10, 0x17
/* 8030E474  39 0D 83 B4 */	la r8, GX2HWFiltConv(r13) /* 80450934-_SDA_BASE_ */
/* 8030E478  7C C8 30 AE */	lbzx r6, r8, r6
/* 8030E47C  54 C8 28 34 */	slwi r8, r6, 5
/* 8030E480  20 C7 00 01 */	subfic r6, r7, 1
/* 8030E484  7C C6 00 34 */	cntlzw r6, r6
/* 8030E488  54 C6 FD 36 */	rlwinm r6, r6, 0x1f, 0x14, 0x1b
/* 8030E48C  54 A5 10 3A */	slwi r5, r5, 2
/* 8030E490  7C 84 2B 78 */	or r4, r4, r5
/* 8030E494  7C C4 23 78 */	or r4, r6, r4
/* 8030E498  7D 04 23 78 */	or r4, r8, r4
/* 8030E49C  7D 24 23 78 */	or r4, r9, r4
/* 8030E4A0  7D 44 23 78 */	or r4, r10, r4
/* 8030E4A4  7D 64 23 78 */	or r4, r11, r4
/* 8030E4A8  7D 84 23 78 */	or r4, r12, r4
/* 8030E4AC  7C 08 23 78 */	or r8, r0, r4
/* 8030E4B0  38 00 00 61 */	li r0, 0x61
/* 8030E4B4  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030E4B8  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030E4BC  38 85 00 01 */	addi r4, r5, 1
/* 8030E4C0  90 86 00 08 */	stw r4, 8(r6)
/* 8030E4C4  98 05 00 00 */	stb r0, 0(r5)
/* 8030E4C8  55 07 46 3E */	srwi r7, r8, 0x18
/* 8030E4CC  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030E4D0  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030E4D4  38 85 00 01 */	addi r4, r5, 1
/* 8030E4D8  90 86 00 08 */	stw r4, 8(r6)
/* 8030E4DC  98 E5 00 00 */	stb r7, 0(r5)
/* 8030E4E0  55 07 86 3E */	rlwinm r7, r8, 0x10, 0x18, 0x1f
/* 8030E4E4  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030E4E8  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030E4EC  38 85 00 01 */	addi r4, r5, 1
/* 8030E4F0  90 86 00 08 */	stw r4, 8(r6)
/* 8030E4F4  98 E5 00 00 */	stb r7, 0(r5)
/* 8030E4F8  55 07 C6 3E */	rlwinm r7, r8, 0x18, 0x18, 0x1f
/* 8030E4FC  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030E500  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030E504  38 85 00 01 */	addi r4, r5, 1
/* 8030E508  90 86 00 08 */	stw r4, 8(r6)
/* 8030E50C  98 E5 00 00 */	stb r7, 0(r5)
/* 8030E510  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8030E514  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030E518  38 85 00 01 */	addi r4, r5, 1
/* 8030E51C  90 86 00 08 */	stw r4, 8(r6)
/* 8030E520  99 05 00 00 */	stb r8, 0(r5)
/* 8030E524  38 8D 83 94 */	la r4, J3DGDTexMode1Ids(r13) /* 80450914-_SDA_BASE_ */
/* 8030E528  7C A4 18 AE */	lbzx r5, r4, r3
/* 8030E52C  C0 62 C9 2C */	lfs f3, lit_1051(r2)
/* 8030E530  EC 03 00 72 */	fmuls f0, f3, f1
/* 8030E534  FC 00 00 1E */	fctiwz f0, f0
/* 8030E538  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8030E53C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8030E540  EC 03 00 B2 */	fmuls f0, f3, f2
/* 8030E544  FC 00 00 1E */	fctiwz f0, f0
/* 8030E548  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8030E54C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8030E550  54 66 44 2E */	rlwinm r6, r3, 8, 0x10, 0x17
/* 8030E554  50 86 06 3E */	rlwimi r6, r4, 0, 0x18, 0x1f
/* 8030E558  50 A6 C0 0E */	rlwimi r6, r5, 0x18, 0, 7
/* 8030E55C  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030E560  80 85 00 08 */	lwz r4, 8(r5)
/* 8030E564  38 64 00 01 */	addi r3, r4, 1
/* 8030E568  90 65 00 08 */	stw r3, 8(r5)
/* 8030E56C  98 04 00 00 */	stb r0, 0(r4)
/* 8030E570  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8030E574  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E578  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E57C  38 03 00 01 */	addi r0, r3, 1
/* 8030E580  90 04 00 08 */	stw r0, 8(r4)
/* 8030E584  98 A3 00 00 */	stb r5, 0(r3)
/* 8030E588  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8030E58C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E590  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E594  38 03 00 01 */	addi r0, r3, 1
/* 8030E598  90 04 00 08 */	stw r0, 8(r4)
/* 8030E59C  98 A3 00 00 */	stb r5, 0(r3)
/* 8030E5A0  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8030E5A4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E5A8  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E5AC  38 03 00 01 */	addi r0, r3, 1
/* 8030E5B0  90 04 00 08 */	stw r0, 8(r4)
/* 8030E5B4  98 A3 00 00 */	stb r5, 0(r3)
/* 8030E5B8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E5BC  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E5C0  38 03 00 01 */	addi r0, r3, 1
/* 8030E5C4  90 04 00 08 */	stw r0, 8(r4)
/* 8030E5C8  98 C3 00 00 */	stb r6, 0(r3)
/* 8030E5CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8030E5D0  4E 80 00 20 */	blr 
