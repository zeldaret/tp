lbl_802B6104:
/* 802B6104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6108  7C 08 02 A6 */	mflr r0
/* 802B610C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B6110  48 00 00 AD */	bl isMovieDemo__11Z2StatusMgrFv
/* 802B6114  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B6118  40 82 00 14 */	bne lbl_802B612C
/* 802B611C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6120  4B FF CC 45 */	bl talkOutBgm__8Z2SeqMgrFv
/* 802B6124  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B6128  4B FF 7B 2D */	bl talkOutSe__7Z2SeMgrFv
lbl_802B612C:
/* 802B612C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B6130  7C 08 03 A6 */	mtlr r0
/* 802B6134  38 21 00 10 */	addi r1, r1, 0x10
/* 802B6138  4E 80 00 20 */	blr 
