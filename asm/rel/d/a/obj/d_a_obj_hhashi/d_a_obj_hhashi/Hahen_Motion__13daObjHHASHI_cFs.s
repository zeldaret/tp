lbl_8058043C:
/* 8058043C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80580440  7C 08 02 A6 */	mflr r0
/* 80580444  90 01 00 54 */	stw r0, 0x54(r1)
/* 80580448  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8058044C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80580450  39 61 00 40 */	addi r11, r1, 0x40
/* 80580454  4B DE 1D 78 */	b _savegpr_25
/* 80580458  7C 79 1B 78 */	mr r25, r3
/* 8058045C  3C A0 80 58 */	lis r5, ccCylSrc@ha
/* 80580460  3B E5 14 AC */	addi r31, r5, ccCylSrc@l
/* 80580464  7C 9E 07 34 */	extsh r30, r4
/* 80580468  7F 59 F2 14 */	add r26, r25, r30
/* 8058046C  88 1A 0F 14 */	lbz r0, 0xf14(r26)
/* 80580470  28 00 00 01 */	cmplwi r0, 1
/* 80580474  41 82 01 60 */	beq lbl_805805D4
/* 80580478  4B FF FE E1 */	bl Wall_Check__13daObjHHASHI_cFs
/* 8058047C  1F BE 00 0C */	mulli r29, r30, 0xc
/* 80580480  7F 99 EA 14 */	add r28, r25, r29
/* 80580484  C0 3C 05 B4 */	lfs f1, 0x5b4(r28)
/* 80580488  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8058048C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80580490  40 80 00 CC */	bge lbl_8058055C
/* 80580494  C3 FC 08 0C */	lfs f31, 0x80c(r28)
/* 80580498  D0 1C 05 B4 */	stfs f0, 0x5b4(r28)
/* 8058049C  80 19 05 A4 */	lwz r0, 0x5a4(r25)
/* 805804A0  2C 00 00 02 */	cmpwi r0, 2
/* 805804A4  40 82 00 60 */	bne lbl_80580504
/* 805804A8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 805804AC  4B CE 74 A8 */	b cM_rndF__Ff
/* 805804B0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 805804B4  EC 00 08 2A */	fadds f0, f0, f1
/* 805804B8  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 805804BC  EC 01 00 2A */	fadds f0, f1, f0
/* 805804C0  FC 00 00 50 */	fneg f0, f0
/* 805804C4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 805804C8  D0 1C 08 0C */	stfs f0, 0x80c(r28)
/* 805804CC  7F 9B E3 78 */	mr r27, r28
/* 805804D0  4B CE 74 84 */	b cM_rndF__Ff
/* 805804D4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 805804D8  EC 20 08 2A */	fadds f1, f0, f1
/* 805804DC  C0 1B 08 08 */	lfs f0, 0x808(r27)
/* 805804E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805804E4  D0 1B 08 08 */	stfs f0, 0x808(r27)
/* 805804E8  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 805804EC  4B CE 74 68 */	b cM_rndF__Ff
/* 805804F0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 805804F4  EC 20 08 2A */	fadds f1, f0, f1
/* 805804F8  C0 1B 08 10 */	lfs f0, 0x810(r27)
/* 805804FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80580500  D0 1B 08 10 */	stfs f0, 0x810(r27)
lbl_80580504:
/* 80580504  C0 3C 08 0C */	lfs f1, 0x80c(r28)
/* 80580508  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8058050C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80580510  40 80 00 0C */	bge lbl_8058051C
/* 80580514  38 00 00 01 */	li r0, 1
/* 80580518  98 1A 0F 14 */	stb r0, 0xf14(r26)
lbl_8058051C:
/* 8058051C  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80580520  4B CE 74 6C */	b cM_rndFX__Ff
/* 80580524  FC 00 08 1E */	fctiwz f0, f1
/* 80580528  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058052C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80580530  1F 5E 00 06 */	mulli r26, r30, 6
/* 80580534  7C 79 D2 14 */	add r3, r25, r26
/* 80580538  B0 03 0D E8 */	sth r0, 0xde8(r3)
/* 8058053C  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80580540  4B CE 74 4C */	b cM_rndFX__Ff
/* 80580544  FC 00 08 1E */	fctiwz f0, f1
/* 80580548  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8058054C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580550  7C 79 D2 14 */	add r3, r25, r26
/* 80580554  B0 03 0D EA */	sth r0, 0xdea(r3)
/* 80580558  48 00 00 7C */	b lbl_805805D4
lbl_8058055C:
/* 8058055C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80580560  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80580564  4C 41 13 82 */	cror 2, 1, 2
/* 80580568  40 82 00 6C */	bne lbl_805805D4
/* 8058056C  C0 3C 08 0C */	lfs f1, 0x80c(r28)
/* 80580570  C0 19 05 30 */	lfs f0, 0x530(r25)
/* 80580574  EC 01 00 2A */	fadds f0, f1, f0
/* 80580578  D0 1C 08 0C */	stfs f0, 0x80c(r28)
/* 8058057C  C0 3C 05 B0 */	lfs f1, 0x5b0(r28)
/* 80580580  C0 1C 08 08 */	lfs f0, 0x808(r28)
/* 80580584  EC 01 00 2A */	fadds f0, f1, f0
/* 80580588  D0 1C 05 B0 */	stfs f0, 0x5b0(r28)
/* 8058058C  C0 3C 05 B4 */	lfs f1, 0x5b4(r28)
/* 80580590  C0 1C 08 0C */	lfs f0, 0x80c(r28)
/* 80580594  EC 01 00 2A */	fadds f0, f1, f0
/* 80580598  D0 1C 05 B4 */	stfs f0, 0x5b4(r28)
/* 8058059C  C0 3C 05 B8 */	lfs f1, 0x5b8(r28)
/* 805805A0  C0 1C 08 10 */	lfs f0, 0x810(r28)
/* 805805A4  EC 01 00 2A */	fadds f0, f1, f0
/* 805805A8  D0 1C 05 B8 */	stfs f0, 0x5b8(r28)
/* 805805AC  1C 1E 00 06 */	mulli r0, r30, 6
/* 805805B0  7C 99 02 14 */	add r4, r25, r0
/* 805805B4  A8 64 0C BC */	lha r3, 0xcbc(r4)
/* 805805B8  A8 04 0D E8 */	lha r0, 0xde8(r4)
/* 805805BC  7C 03 02 14 */	add r0, r3, r0
/* 805805C0  B0 04 0C BC */	sth r0, 0xcbc(r4)
/* 805805C4  A8 64 0C BE */	lha r3, 0xcbe(r4)
/* 805805C8  A8 04 0D EA */	lha r0, 0xdea(r4)
/* 805805CC  7C 03 02 14 */	add r0, r3, r0
/* 805805D0  B0 04 0C BE */	sth r0, 0xcbe(r4)
lbl_805805D4:
/* 805805D4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805805D8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805805DC  39 61 00 40 */	addi r11, r1, 0x40
/* 805805E0  4B DE 1C 38 */	b _restgpr_25
/* 805805E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805805E8  7C 08 03 A6 */	mtlr r0
/* 805805EC  38 21 00 50 */	addi r1, r1, 0x50
/* 805805F0  4E 80 00 20 */	blr 
