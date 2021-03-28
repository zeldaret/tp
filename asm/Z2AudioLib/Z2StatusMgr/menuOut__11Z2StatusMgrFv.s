lbl_802B617C:
/* 802B617C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6180  7C 08 02 A6 */	mflr r0
/* 802B6184  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B6188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B618C  7C 7F 1B 78 */	mr r31, r3
/* 802B6190  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6194  4B FF CC 61 */	bl menuOutBgm__8Z2SeqMgrFv
/* 802B6198  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B619C  4B FF 7A B9 */	bl talkOutSe__7Z2SeMgrFv
/* 802B61A0  38 00 00 00 */	li r0, 0
/* 802B61A4  98 1F 00 0C */	stb r0, 0xc(r31)
/* 802B61A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B61AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B61B0  7C 08 03 A6 */	mtlr r0
/* 802B61B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802B61B8  4E 80 00 20 */	blr 
