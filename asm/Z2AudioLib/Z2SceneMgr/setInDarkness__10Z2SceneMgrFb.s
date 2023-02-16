lbl_802B68B0:
/* 802B68B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B68B4  7C 08 02 A6 */	mflr r0
/* 802B68B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B68BC  98 83 00 1E */	stb r4, 0x1e(r3)
/* 802B68C0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802B68C4  40 82 00 0C */	bne lbl_802B68D0
/* 802B68C8  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802B68CC  4B FF 3B 65 */	bl resetFilterAll__10Z2SoundMgrFv
lbl_802B68D0:
/* 802B68D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B68D4  7C 08 03 A6 */	mtlr r0
/* 802B68D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B68DC  4E 80 00 20 */	blr 
