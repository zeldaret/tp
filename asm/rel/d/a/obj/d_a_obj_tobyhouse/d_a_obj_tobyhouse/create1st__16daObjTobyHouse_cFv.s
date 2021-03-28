lbl_80D163F0:
/* 80D163F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D163F4  7C 08 02 A6 */	mflr r0
/* 80D163F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D163FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D16400  7C 7F 1B 78 */	mr r31, r3
/* 80D16404  38 60 00 00 */	li r3, 0
/* 80D16408  4B 31 65 74 */	b getLayerNo__14dComIfG_play_cFi
/* 80D1640C  2C 03 00 0D */	cmpwi r3, 0xd
/* 80D16410  40 82 00 10 */	bne lbl_80D16420
/* 80D16414  38 00 00 01 */	li r0, 1
/* 80D16418  98 1F 05 E5 */	stb r0, 0x5e5(r31)
/* 80D1641C  48 00 00 0C */	b lbl_80D16428
lbl_80D16420:
/* 80D16420  38 00 00 00 */	li r0, 0
/* 80D16424  98 1F 05 E5 */	stb r0, 0x5e5(r31)
lbl_80D16428:
/* 80D16428  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D1642C  88 1F 05 E5 */	lbz r0, 0x5e5(r31)
/* 80D16430  54 00 10 3A */	slwi r0, r0, 2
/* 80D16434  3C 80 80 D1 */	lis r4, l_arcName@ha
/* 80D16438  38 84 78 78 */	addi r4, r4, l_arcName@l
/* 80D1643C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D16440  4B 31 6A 7C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D16444  7C 60 1B 78 */	mr r0, r3
/* 80D16448  2C 00 00 04 */	cmpwi r0, 4
/* 80D1644C  40 82 00 5C */	bne lbl_80D164A8
/* 80D16450  88 1F 05 E5 */	lbz r0, 0x5e5(r31)
/* 80D16454  28 00 00 00 */	cmplwi r0, 0
/* 80D16458  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010270@ha */
/* 80D1645C  38 E3 02 70 */	addi r7, r3, 0x0270 /* 0x00010270@l */
/* 80D16460  40 82 00 08 */	bne lbl_80D16468
/* 80D16464  38 E3 28 20 */	addi r7, r3, 0x2820
lbl_80D16468:
/* 80D16468  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80D1646C  7F E3 FB 78 */	mr r3, r31
/* 80D16470  3C 80 80 D1 */	lis r4, l_arcName@ha
/* 80D16474  38 84 78 78 */	addi r4, r4, l_arcName@l
/* 80D16478  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D1647C  3C A0 80 D1 */	lis r5, l_dzb@ha
/* 80D16480  38 A5 77 54 */	addi r5, r5, l_dzb@l
/* 80D16484  7C A5 00 2E */	lwzx r5, r5, r0
/* 80D16488  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80D1648C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80D16490  39 00 00 00 */	li r8, 0
/* 80D16494  4B 36 23 28 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D16498  7C 60 1B 78 */	mr r0, r3
/* 80D1649C  2C 00 00 05 */	cmpwi r0, 5
/* 80D164A0  40 82 00 08 */	bne lbl_80D164A8
/* 80D164A4  48 00 00 08 */	b lbl_80D164AC
lbl_80D164A8:
/* 80D164A8  7C 03 03 78 */	mr r3, r0
lbl_80D164AC:
/* 80D164AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D164B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D164B4  7C 08 03 A6 */	mtlr r0
/* 80D164B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D164BC  4E 80 00 20 */	blr 
