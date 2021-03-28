lbl_800F6394:
/* 800F6394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F6398  7C 08 02 A6 */	mflr r0
/* 800F639C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F63A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F63A4  7C 7F 1B 78 */	mr r31, r3
/* 800F63A8  4B FF E4 31 */	bl canoeCommon__9daAlink_cFv
/* 800F63AC  2C 03 00 00 */	cmpwi r3, 0
/* 800F63B0  41 82 00 0C */	beq lbl_800F63BC
/* 800F63B4  38 60 00 01 */	li r3, 1
/* 800F63B8  48 00 00 98 */	b lbl_800F6450
lbl_800F63BC:
/* 800F63BC  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800F63C0  2C 00 00 00 */	cmpwi r0, 0
/* 800F63C4  41 82 00 2C */	beq lbl_800F63F0
/* 800F63C8  7F E3 FB 78 */	mr r3, r31
/* 800F63CC  4B FC 2E 89 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800F63D0  2C 03 00 00 */	cmpwi r3, 0
/* 800F63D4  41 82 00 78 */	beq lbl_800F644C
/* 800F63D8  38 00 00 00 */	li r0, 0
/* 800F63DC  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800F63E0  7F E3 FB 78 */	mr r3, r31
/* 800F63E4  38 80 00 E4 */	li r4, 0xe4
/* 800F63E8  4B FB 6B 99 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F63EC  48 00 00 60 */	b lbl_800F644C
lbl_800F63F0:
/* 800F63F0  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 800F63F4  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800F63F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F63FC  4C 41 13 82 */	cror 2, 1, 2
/* 800F6400  40 82 00 4C */	bne lbl_800F644C
/* 800F6404  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F6408  80 03 14 64 */	lwz r0, 0x1464(r3)
/* 800F640C  90 1F 28 24 */	stw r0, 0x2824(r31)
/* 800F6410  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800F6414  48 06 88 35 */	bl setActor__16daPy_actorKeep_cFv
/* 800F6418  80 1F 28 28 */	lwz r0, 0x2828(r31)
/* 800F641C  28 00 00 00 */	cmplwi r0, 0
/* 800F6420  41 82 00 20 */	beq lbl_800F6440
/* 800F6424  7F E3 FB 78 */	mr r3, r31
/* 800F6428  4B FF D9 79 */	bl initFishingRodHand__9daAlink_cFv
/* 800F642C  38 00 01 05 */	li r0, 0x105
/* 800F6430  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800F6434  7F E3 FB 78 */	mr r3, r31
/* 800F6438  48 00 00 2D */	bl procCanoeFishingWaitInit__9daAlink_cFv
/* 800F643C  48 00 00 10 */	b lbl_800F644C
lbl_800F6440:
/* 800F6440  7F E3 FB 78 */	mr r3, r31
/* 800F6444  38 80 00 00 */	li r4, 0
/* 800F6448  4B FF ED 9D */	bl procCanoeWaitInit__9daAlink_cFi
lbl_800F644C:
/* 800F644C  38 60 00 01 */	li r3, 1
lbl_800F6450:
/* 800F6450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F6454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F6458  7C 08 03 A6 */	mtlr r0
/* 800F645C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F6460  4E 80 00 20 */	blr 
