lbl_802E5454:
/* 802E5454  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E5458  7C 08 02 A6 */	mflr r0
/* 802E545C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E5460  39 61 00 20 */	addi r11, r1, 0x20
/* 802E5464  48 07 CD 75 */	bl _savegpr_28
/* 802E5468  7C 7C 1B 78 */	mr r28, r3
/* 802E546C  7C DD 33 79 */	or. r29, r6, r6
/* 802E5470  7C FE 3B 78 */	mr r30, r7
/* 802E5474  40 82 00 08 */	bne lbl_802E547C
/* 802E5478  83 AD 8D F0 */	lwz r29, sSystemHeap__7JKRHeap(r13)
lbl_802E547C:
/* 802E547C  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 802E5480  38 03 00 0F */	addi r0, r3, 0xf
/* 802E5484  54 03 04 36 */	rlwinm r3, r0, 0, 0x10, 0x1b
/* 802E5488  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 802E548C  7C 03 01 D6 */	mullw r0, r3, r0
/* 802E5490  54 03 08 3C */	slwi r3, r0, 1
/* 802E5494  7C 7F 1B 78 */	mr r31, r3
/* 802E5498  7F A4 EB 78 */	mr r4, r29
/* 802E549C  38 A0 00 20 */	li r5, 0x20
/* 802E54A0  4B FE 98 71 */	bl __nwa__FUlP7JKRHeapi
/* 802E54A4  90 7C 00 00 */	stw r3, 0(r28)
/* 802E54A8  38 00 00 01 */	li r0, 1
/* 802E54AC  98 1C 00 0C */	stb r0, 0xc(r28)
/* 802E54B0  2C 1E 00 02 */	cmpwi r30, 2
/* 802E54B4  41 80 00 24 */	blt lbl_802E54D8
/* 802E54B8  7F E3 FB 78 */	mr r3, r31
/* 802E54BC  7F A4 EB 78 */	mr r4, r29
/* 802E54C0  38 A0 00 20 */	li r5, 0x20
/* 802E54C4  4B FE 98 4D */	bl __nwa__FUlP7JKRHeapi
/* 802E54C8  90 7C 00 04 */	stw r3, 4(r28)
/* 802E54CC  38 00 00 01 */	li r0, 1
/* 802E54D0  98 1C 00 0D */	stb r0, 0xd(r28)
/* 802E54D4  48 00 00 10 */	b lbl_802E54E4
lbl_802E54D8:
/* 802E54D8  38 00 00 00 */	li r0, 0
/* 802E54DC  90 1C 00 04 */	stw r0, 4(r28)
/* 802E54E0  98 1C 00 0D */	stb r0, 0xd(r28)
lbl_802E54E4:
/* 802E54E4  2C 1E 00 03 */	cmpwi r30, 3
/* 802E54E8  41 80 00 24 */	blt lbl_802E550C
/* 802E54EC  7F E3 FB 78 */	mr r3, r31
/* 802E54F0  7F A4 EB 78 */	mr r4, r29
/* 802E54F4  38 A0 00 20 */	li r5, 0x20
/* 802E54F8  4B FE 98 19 */	bl __nwa__FUlP7JKRHeapi
/* 802E54FC  90 7C 00 08 */	stw r3, 8(r28)
/* 802E5500  38 00 00 01 */	li r0, 1
/* 802E5504  98 1C 00 0E */	stb r0, 0xe(r28)
/* 802E5508  48 00 00 10 */	b lbl_802E5518
lbl_802E550C:
/* 802E550C  38 00 00 00 */	li r0, 0
/* 802E5510  90 1C 00 08 */	stw r0, 8(r28)
/* 802E5514  98 1C 00 0E */	stb r0, 0xe(r28)
lbl_802E5518:
/* 802E5518  39 61 00 20 */	addi r11, r1, 0x20
/* 802E551C  48 07 CD 09 */	bl _restgpr_28
/* 802E5520  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E5524  7C 08 03 A6 */	mtlr r0
/* 802E5528  38 21 00 20 */	addi r1, r1, 0x20
/* 802E552C  4E 80 00 20 */	blr 
