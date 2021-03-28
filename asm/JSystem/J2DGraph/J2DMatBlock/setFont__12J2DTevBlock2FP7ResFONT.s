lbl_802ED2F0:
/* 802ED2F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802ED2F4  7C 08 02 A6 */	mflr r0
/* 802ED2F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ED2FC  39 61 00 20 */	addi r11, r1, 0x20
/* 802ED300  48 07 4E DD */	bl _savegpr_29
/* 802ED304  7C 7D 1B 78 */	mr r29, r3
/* 802ED308  7C 9E 23 79 */	or. r30, r4, r4
/* 802ED30C  40 82 00 0C */	bne lbl_802ED318
/* 802ED310  38 60 00 00 */	li r3, 0
/* 802ED314  48 00 00 78 */	b lbl_802ED38C
lbl_802ED318:
/* 802ED318  38 60 00 70 */	li r3, 0x70
/* 802ED31C  4B FE 19 31 */	bl __nw__FUl
/* 802ED320  7C 7F 1B 79 */	or. r31, r3, r3
/* 802ED324  41 82 00 14 */	beq lbl_802ED338
/* 802ED328  7F C4 F3 78 */	mr r4, r30
/* 802ED32C  38 A0 00 00 */	li r5, 0
/* 802ED330  4B FF 1C 65 */	bl __ct__10JUTResFontFPC7ResFONTP7JKRHeap
/* 802ED334  7C 7F 1B 78 */	mr r31, r3
lbl_802ED338:
/* 802ED338  28 1F 00 00 */	cmplwi r31, 0
/* 802ED33C  40 82 00 0C */	bne lbl_802ED348
/* 802ED340  38 60 00 00 */	li r3, 0
/* 802ED344  48 00 00 48 */	b lbl_802ED38C
lbl_802ED348:
/* 802ED348  88 1D 00 78 */	lbz r0, 0x78(r29)
/* 802ED34C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802ED350  41 82 00 24 */	beq lbl_802ED374
/* 802ED354  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 802ED358  28 03 00 00 */	cmplwi r3, 0
/* 802ED35C  41 82 00 18 */	beq lbl_802ED374
/* 802ED360  38 80 00 01 */	li r4, 1
/* 802ED364  81 83 00 00 */	lwz r12, 0(r3)
/* 802ED368  81 8C 00 08 */	lwz r12, 8(r12)
/* 802ED36C  7D 89 03 A6 */	mtctr r12
/* 802ED370  4E 80 04 21 */	bctrl 
lbl_802ED374:
/* 802ED374  93 FD 00 74 */	stw r31, 0x74(r29)
/* 802ED378  88 1D 00 78 */	lbz r0, 0x78(r29)
/* 802ED37C  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802ED380  60 00 00 80 */	ori r0, r0, 0x80
/* 802ED384  98 1D 00 78 */	stb r0, 0x78(r29)
/* 802ED388  38 60 00 01 */	li r3, 1
lbl_802ED38C:
/* 802ED38C  39 61 00 20 */	addi r11, r1, 0x20
/* 802ED390  48 07 4E 99 */	bl _restgpr_29
/* 802ED394  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ED398  7C 08 03 A6 */	mtlr r0
/* 802ED39C  38 21 00 20 */	addi r1, r1, 0x20
/* 802ED3A0  4E 80 00 20 */	blr 
