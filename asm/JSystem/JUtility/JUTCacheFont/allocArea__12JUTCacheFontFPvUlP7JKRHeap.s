lbl_802DD650:
/* 802DD650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DD654  7C 08 02 A6 */	mflr r0
/* 802DD658  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DD65C  39 61 00 20 */	addi r11, r1, 0x20
/* 802DD660  48 08 4B 79 */	bl _savegpr_28
/* 802DD664  7C 7C 1B 78 */	mr r28, r3
/* 802DD668  7C 9D 23 78 */	mr r29, r4
/* 802DD66C  7C BE 2B 78 */	mr r30, r5
/* 802DD670  7C DF 33 78 */	mr r31, r6
/* 802DD674  38 60 00 20 */	li r3, 0x20
/* 802DD678  7F E4 FB 78 */	mr r4, r31
/* 802DD67C  38 A0 00 00 */	li r5, 0
/* 802DD680  4B FF 16 19 */	bl __nw__FUlP7JKRHeapi
/* 802DD684  90 7C 00 4C */	stw r3, 0x4c(r28)
/* 802DD688  80 1C 00 4C */	lwz r0, 0x4c(r28)
/* 802DD68C  28 00 00 00 */	cmplwi r0, 0
/* 802DD690  40 82 00 0C */	bne lbl_802DD69C
/* 802DD694  38 60 00 00 */	li r3, 0
/* 802DD698  48 00 01 54 */	b lbl_802DD7EC
lbl_802DD69C:
/* 802DD69C  80 7C 00 70 */	lwz r3, 0x70(r28)
/* 802DD6A0  28 03 00 00 */	cmplwi r3, 0
/* 802DD6A4  41 82 00 28 */	beq lbl_802DD6CC
/* 802DD6A8  7F E4 FB 78 */	mr r4, r31
/* 802DD6AC  38 A0 00 00 */	li r5, 0
/* 802DD6B0  4B FF 16 61 */	bl __nwa__FUlP7JKRHeapi
/* 802DD6B4  90 7C 00 7C */	stw r3, 0x7c(r28)
/* 802DD6B8  80 1C 00 7C */	lwz r0, 0x7c(r28)
/* 802DD6BC  28 00 00 00 */	cmplwi r0, 0
/* 802DD6C0  40 82 00 0C */	bne lbl_802DD6CC
/* 802DD6C4  38 60 00 00 */	li r3, 0
/* 802DD6C8  48 00 01 24 */	b lbl_802DD7EC
lbl_802DD6CC:
/* 802DD6CC  A0 1C 00 62 */	lhz r0, 0x62(r28)
/* 802DD6D0  28 00 00 00 */	cmplwi r0, 0
/* 802DD6D4  41 82 00 64 */	beq lbl_802DD738
/* 802DD6D8  54 03 2A F4 */	rlwinm r3, r0, 5, 0xb, 0x1a
/* 802DD6DC  7F E4 FB 78 */	mr r4, r31
/* 802DD6E0  38 A0 00 00 */	li r5, 0
/* 802DD6E4  4B FF 16 2D */	bl __nwa__FUlP7JKRHeapi
/* 802DD6E8  90 7C 00 80 */	stw r3, 0x80(r28)
/* 802DD6EC  80 1C 00 80 */	lwz r0, 0x80(r28)
/* 802DD6F0  28 00 00 00 */	cmplwi r0, 0
/* 802DD6F4  40 82 00 0C */	bne lbl_802DD700
/* 802DD6F8  38 60 00 00 */	li r3, 0
/* 802DD6FC  48 00 00 F0 */	b lbl_802DD7EC
lbl_802DD700:
/* 802DD700  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 802DD704  80 63 00 94 */	lwz r3, 0x94(r3)
/* 802DD708  A0 1C 00 62 */	lhz r0, 0x62(r28)
/* 802DD70C  54 04 28 34 */	slwi r4, r0, 5
/* 802DD710  80 1C 00 74 */	lwz r0, 0x74(r28)
/* 802DD714  7C 84 00 50 */	subf r4, r4, r0
/* 802DD718  38 A0 00 00 */	li r5, 0
/* 802DD71C  4B FF 58 A1 */	bl alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
/* 802DD720  90 7C 00 AC */	stw r3, 0xac(r28)
/* 802DD724  80 1C 00 AC */	lwz r0, 0xac(r28)
/* 802DD728  28 00 00 00 */	cmplwi r0, 0
/* 802DD72C  40 82 00 0C */	bne lbl_802DD738
/* 802DD730  38 60 00 00 */	li r3, 0
/* 802DD734  48 00 00 B8 */	b lbl_802DD7EC
lbl_802DD738:
/* 802DD738  80 7C 00 78 */	lwz r3, 0x78(r28)
/* 802DD73C  28 03 00 00 */	cmplwi r3, 0
/* 802DD740  41 82 00 28 */	beq lbl_802DD768
/* 802DD744  7F E4 FB 78 */	mr r4, r31
/* 802DD748  38 A0 00 00 */	li r5, 0
/* 802DD74C  4B FF 15 C5 */	bl __nwa__FUlP7JKRHeapi
/* 802DD750  90 7C 00 84 */	stw r3, 0x84(r28)
/* 802DD754  80 1C 00 84 */	lwz r0, 0x84(r28)
/* 802DD758  28 00 00 00 */	cmplwi r0, 0
/* 802DD75C  40 82 00 0C */	bne lbl_802DD768
/* 802DD760  38 60 00 00 */	li r3, 0
/* 802DD764  48 00 00 88 */	b lbl_802DD7EC
lbl_802DD768:
/* 802DD768  80 7C 00 88 */	lwz r3, 0x88(r28)
/* 802DD76C  38 03 00 40 */	addi r0, r3, 0x40
/* 802DD770  90 1C 00 94 */	stw r0, 0x94(r28)
/* 802DD774  80 1C 00 94 */	lwz r0, 0x94(r28)
/* 802DD778  7C 1E 03 96 */	divwu r0, r30, r0
/* 802DD77C  90 1C 00 98 */	stw r0, 0x98(r28)
/* 802DD780  80 1C 00 94 */	lwz r0, 0x94(r28)
/* 802DD784  80 9C 00 98 */	lwz r4, 0x98(r28)
/* 802DD788  7C 60 21 D6 */	mullw r3, r0, r4
/* 802DD78C  28 04 00 00 */	cmplwi r4, 0
/* 802DD790  40 82 00 0C */	bne lbl_802DD79C
/* 802DD794  38 60 00 00 */	li r3, 0
/* 802DD798  48 00 00 54 */	b lbl_802DD7EC
lbl_802DD79C:
/* 802DD79C  28 1D 00 00 */	cmplwi r29, 0
/* 802DD7A0  41 82 00 14 */	beq lbl_802DD7B4
/* 802DD7A4  93 BC 00 90 */	stw r29, 0x90(r28)
/* 802DD7A8  38 00 00 00 */	li r0, 0
/* 802DD7AC  98 1C 00 B0 */	stb r0, 0xb0(r28)
/* 802DD7B0  48 00 00 30 */	b lbl_802DD7E0
lbl_802DD7B4:
/* 802DD7B4  7F E4 FB 78 */	mr r4, r31
/* 802DD7B8  38 A0 00 20 */	li r5, 0x20
/* 802DD7BC  4B FF 15 55 */	bl __nwa__FUlP7JKRHeapi
/* 802DD7C0  90 7C 00 90 */	stw r3, 0x90(r28)
/* 802DD7C4  80 1C 00 90 */	lwz r0, 0x90(r28)
/* 802DD7C8  28 00 00 00 */	cmplwi r0, 0
/* 802DD7CC  40 82 00 0C */	bne lbl_802DD7D8
/* 802DD7D0  38 60 00 00 */	li r3, 0
/* 802DD7D4  48 00 00 18 */	b lbl_802DD7EC
lbl_802DD7D8:
/* 802DD7D8  38 00 00 01 */	li r0, 1
/* 802DD7DC  98 1C 00 B0 */	stb r0, 0xb0(r28)
lbl_802DD7E0:
/* 802DD7E0  7F 83 E3 78 */	mr r3, r28
/* 802DD7E4  48 00 06 FD */	bl invalidiateAllCache__12JUTCacheFontFv
/* 802DD7E8  38 60 00 01 */	li r3, 1
lbl_802DD7EC:
/* 802DD7EC  39 61 00 20 */	addi r11, r1, 0x20
/* 802DD7F0  48 08 4A 35 */	bl _restgpr_28
/* 802DD7F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DD7F8  7C 08 03 A6 */	mtlr r0
/* 802DD7FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802DD800  4E 80 00 20 */	blr 
