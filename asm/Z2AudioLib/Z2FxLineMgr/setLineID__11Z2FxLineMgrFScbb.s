lbl_802BAC28:
/* 802BAC28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BAC2C  7C 08 02 A6 */	mflr r0
/* 802BAC30  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BAC34  7C 80 07 75 */	extsb. r0, r4
/* 802BAC38  40 80 00 10 */	bge lbl_802BAC48
/* 802BAC3C  38 00 00 00 */	li r0, 0
/* 802BAC40  98 03 00 14 */	stb r0, 0x14(r3)
/* 802BAC44  48 00 00 08 */	b lbl_802BAC4C
lbl_802BAC48:
/* 802BAC48  98 83 00 14 */	stb r4, 0x14(r3)
lbl_802BAC4C:
/* 802BAC4C  80 83 00 00 */	lwz r4, 0(r3)
/* 802BAC50  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802BAC54  7C 00 07 74 */	extsb r0, r0
/* 802BAC58  1C 00 00 30 */	mulli r0, r0, 0x30
/* 802BAC5C  7C 84 02 14 */	add r4, r4, r0
/* 802BAC60  48 00 00 15 */	bl setLine__11Z2FxLineMgrFP14Z2FxLineConfigbb
/* 802BAC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BAC68  7C 08 03 A6 */	mtlr r0
/* 802BAC6C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BAC70  4E 80 00 20 */	blr 
