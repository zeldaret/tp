lbl_802B613C:
/* 802B613C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6140  7C 08 02 A6 */	mflr r0
/* 802B6144  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B6148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B614C  7C 7F 1B 78 */	mr r31, r3
/* 802B6150  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6154  4B FF CC 59 */	bl menuInBgm__8Z2SeqMgrFv
/* 802B6158  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B615C  4B FF 7B FD */	bl menuInSe__7Z2SeMgrFv
/* 802B6160  38 00 00 01 */	li r0, 1
/* 802B6164  98 1F 00 0C */	stb r0, 0xc(r31)
/* 802B6168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B616C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B6170  7C 08 03 A6 */	mtlr r0
/* 802B6174  38 21 00 10 */	addi r1, r1, 0x10
/* 802B6178  4E 80 00 20 */	blr 
