lbl_802B60CC:
/* 802B60CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B60D0  7C 08 02 A6 */	mflr r0
/* 802B60D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B60D8  48 00 00 E5 */	bl isMovieDemo__11Z2StatusMgrFv
/* 802B60DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B60E0  40 82 00 14 */	bne lbl_802B60F4
/* 802B60E4  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B60E8  4B FF CB BD */	bl talkInBgm__8Z2SeqMgrFv
/* 802B60EC  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B60F0  4B FF 7A 61 */	bl talkInSe__7Z2SeMgrFv
lbl_802B60F4:
/* 802B60F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B60F8  7C 08 03 A6 */	mtlr r0
/* 802B60FC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B6100  4E 80 00 20 */	blr 
