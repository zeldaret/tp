lbl_802EF1E0:
/* 802EF1E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EF1E4  7C 08 02 A6 */	mflr r0
/* 802EF1E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EF1EC  39 61 00 20 */	addi r11, r1, 0x20
/* 802EF1F0  48 07 2F E9 */	bl _savegpr_28
/* 802EF1F4  7C 7C 1B 78 */	mr r28, r3
/* 802EF1F8  3B A0 00 00 */	li r29, 0
/* 802EF1FC  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 802EF200  48 00 00 88 */	b lbl_802EF288
lbl_802EF204:
/* 802EF204  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802EF208  28 00 00 08 */	cmplwi r0, 8
/* 802EF20C  41 80 00 0C */	blt lbl_802EF218
/* 802EF210  38 60 00 00 */	li r3, 0
/* 802EF214  48 00 00 84 */	b lbl_802EF298
lbl_802EF218:
/* 802EF218  57 A3 15 BA */	rlwinm r3, r29, 2, 0x16, 0x1d
/* 802EF21C  3B C3 00 DC */	addi r30, r3, 0xdc
/* 802EF220  7C 1C F0 2E */	lwzx r0, r28, r30
/* 802EF224  28 00 00 00 */	cmplwi r0, 0
/* 802EF228  40 82 00 5C */	bne lbl_802EF284
/* 802EF22C  38 60 00 40 */	li r3, 0x40
/* 802EF230  4B FD FA 1D */	bl __nw__FUl
/* 802EF234  28 03 00 00 */	cmplwi r3, 0
/* 802EF238  41 82 00 1C */	beq lbl_802EF254
/* 802EF23C  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 802EF240  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802EF244  98 03 00 3B */	stb r0, 0x3b(r3)
/* 802EF248  38 00 00 00 */	li r0, 0
/* 802EF24C  90 03 00 28 */	stw r0, 0x28(r3)
/* 802EF250  90 03 00 20 */	stw r0, 0x20(r3)
lbl_802EF254:
/* 802EF254  7C 7C F1 2E */	stwx r3, r28, r30
/* 802EF258  7C 1C F0 2E */	lwzx r0, r28, r30
/* 802EF25C  28 00 00 00 */	cmplwi r0, 0
/* 802EF260  40 82 00 0C */	bne lbl_802EF26C
/* 802EF264  38 60 00 00 */	li r3, 0
/* 802EF268  48 00 00 30 */	b lbl_802EF298
lbl_802EF26C:
/* 802EF26C  88 9C 01 20 */	lbz r4, 0x120(r28)
/* 802EF270  38 60 00 01 */	li r3, 1
/* 802EF274  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802EF278  7C 60 00 30 */	slw r0, r3, r0
/* 802EF27C  7C 80 03 78 */	or r0, r4, r0
/* 802EF280  98 1C 01 20 */	stb r0, 0x120(r28)
lbl_802EF284:
/* 802EF284  3B BD 00 01 */	addi r29, r29, 1
lbl_802EF288:
/* 802EF288  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802EF28C  7C 00 F8 40 */	cmplw r0, r31
/* 802EF290  41 80 FF 74 */	blt lbl_802EF204
/* 802EF294  38 60 00 01 */	li r3, 1
lbl_802EF298:
/* 802EF298  39 61 00 20 */	addi r11, r1, 0x20
/* 802EF29C  48 07 2F 89 */	bl _restgpr_28
/* 802EF2A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EF2A4  7C 08 03 A6 */	mtlr r0
/* 802EF2A8  38 21 00 20 */	addi r1, r1, 0x20
/* 802EF2AC  4E 80 00 20 */	blr 
