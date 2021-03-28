lbl_801F6390:
/* 801F6390  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F6394  7C 08 02 A6 */	mflr r0
/* 801F6398  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F639C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F63A0  48 16 BE 31 */	bl _savegpr_26
/* 801F63A4  7C 7A 1B 78 */	mr r26, r3
/* 801F63A8  3B 60 00 00 */	li r27, 0
/* 801F63AC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801F63B0  54 9C 15 BA */	rlwinm r28, r4, 2, 0x16, 0x1d
/* 801F63B4  7C 7A E2 14 */	add r3, r26, r28
/* 801F63B8  80 63 00 D4 */	lwz r3, 0xd4(r3)
/* 801F63BC  7F BA 02 14 */	add r29, r26, r0
/* 801F63C0  88 9D 01 0A */	lbz r4, 0x10a(r29)
/* 801F63C4  88 BD 01 04 */	lbz r5, 0x104(r29)
/* 801F63C8  88 DD 01 07 */	lbz r6, 0x107(r29)
/* 801F63CC  38 E0 00 00 */	li r7, 0
/* 801F63D0  48 05 F4 A9 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F63D4  7C 7E 1B 78 */	mr r30, r3
/* 801F63D8  7C 7A E2 14 */	add r3, r26, r28
/* 801F63DC  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 801F63E0  88 9D 01 0A */	lbz r4, 0x10a(r29)
/* 801F63E4  88 BD 01 04 */	lbz r5, 0x104(r29)
/* 801F63E8  88 DD 01 07 */	lbz r6, 0x107(r29)
/* 801F63EC  38 E0 00 00 */	li r7, 0
/* 801F63F0  48 05 F4 89 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F63F4  7C 7F 1B 78 */	mr r31, r3
/* 801F63F8  7C 7A E2 14 */	add r3, r26, r28
/* 801F63FC  80 63 00 EC */	lwz r3, 0xec(r3)
/* 801F6400  88 9D 01 0A */	lbz r4, 0x10a(r29)
/* 801F6404  88 BD 01 04 */	lbz r5, 0x104(r29)
/* 801F6408  88 DD 01 07 */	lbz r6, 0x107(r29)
/* 801F640C  38 E0 00 00 */	li r7, 0
/* 801F6410  48 05 F4 69 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F6414  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F6418  28 00 00 01 */	cmplwi r0, 1
/* 801F641C  40 82 00 20 */	bne lbl_801F643C
/* 801F6420  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F6424  28 00 00 01 */	cmplwi r0, 1
/* 801F6428  40 82 00 14 */	bne lbl_801F643C
/* 801F642C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F6430  28 00 00 01 */	cmplwi r0, 1
/* 801F6434  40 82 00 08 */	bne lbl_801F643C
/* 801F6438  3B 60 00 01 */	li r27, 1
lbl_801F643C:
/* 801F643C  7F 63 DB 78 */	mr r3, r27
/* 801F6440  39 61 00 20 */	addi r11, r1, 0x20
/* 801F6444  48 16 BD D9 */	bl _restgpr_26
/* 801F6448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F644C  7C 08 03 A6 */	mtlr r0
/* 801F6450  38 21 00 20 */	addi r1, r1, 0x20
/* 801F6454  4E 80 00 20 */	blr 
