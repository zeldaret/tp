lbl_802D7858:
/* 802D7858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D785C  7C 08 02 A6 */	mflr r0
/* 802D7860  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D7864  38 04 00 1F */	addi r0, r4, 0x1f
/* 802D7868  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 802D786C  54 C8 00 34 */	rlwinm r8, r6, 0, 0, 0x1a
/* 802D7870  2C 07 00 00 */	cmpwi r7, 0
/* 802D7874  41 82 00 14 */	beq lbl_802D7888
/* 802D7878  41 80 00 6C */	blt lbl_802D78E4
/* 802D787C  2C 07 00 03 */	cmpwi r7, 3
/* 802D7880  40 80 00 64 */	bge lbl_802D78E4
/* 802D7884  48 00 00 38 */	b lbl_802D78BC
lbl_802D7888:
/* 802D7888  7C 00 40 40 */	cmplw r0, r8
/* 802D788C  40 81 00 08 */	ble lbl_802D7894
/* 802D7890  7D 00 43 78 */	mr r0, r8
lbl_802D7894:
/* 802D7894  7C A4 2B 78 */	mr r4, r5
/* 802D7898  7C 05 03 78 */	mr r5, r0
/* 802D789C  38 C0 00 00 */	li r6, 0
/* 802D78A0  7D 07 43 78 */	mr r7, r8
/* 802D78A4  39 00 00 00 */	li r8, 0
/* 802D78A8  39 20 FF FF */	li r9, -1
/* 802D78AC  39 41 00 08 */	addi r10, r1, 8
/* 802D78B0  4B FF AD 05 */	bl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 802D78B4  80 61 00 08 */	lwz r3, 8(r1)
/* 802D78B8  48 00 00 4C */	b lbl_802D7904
lbl_802D78BC:
/* 802D78BC  7C A4 2B 78 */	mr r4, r5
/* 802D78C0  7C 05 03 78 */	mr r5, r0
/* 802D78C4  38 C0 00 01 */	li r6, 1
/* 802D78C8  7D 07 43 78 */	mr r7, r8
/* 802D78CC  39 00 00 00 */	li r8, 0
/* 802D78D0  39 20 FF FF */	li r9, -1
/* 802D78D4  39 41 00 08 */	addi r10, r1, 8
/* 802D78D8  4B FF AC DD */	bl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 802D78DC  80 61 00 08 */	lwz r3, 8(r1)
/* 802D78E0  48 00 00 24 */	b lbl_802D7904
lbl_802D78E4:
/* 802D78E4  3C 60 80 3A */	lis r3, JKRAramArchive__stringBase0@ha /* 0x8039D188@ha */
/* 802D78E8  38 63 D1 88 */	addi r3, r3, JKRAramArchive__stringBase0@l /* 0x8039D188@l */
/* 802D78EC  38 80 02 8F */	li r4, 0x28f
/* 802D78F0  38 A3 00 13 */	addi r5, r3, 0x13
/* 802D78F4  38 C3 00 16 */	addi r6, r3, 0x16
/* 802D78F8  4C C6 31 82 */	crclr 6
/* 802D78FC  48 00 A9 01 */	bl panic_f__12JUTExceptionFPCciPCce
/* 802D7900  38 60 00 00 */	li r3, 0
lbl_802D7904:
/* 802D7904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D7908  7C 08 03 A6 */	mtlr r0
/* 802D790C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D7910  4E 80 00 20 */	blr 
