lbl_8023907C:
/* 8023907C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80239080  7C 08 02 A6 */	mflr r0
/* 80239084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80239088  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8023908C  4B FF FC 09 */	bl __ct__10dMsgUnit_cFv
/* 80239090  3C 80 80 24 */	lis r4, __dt__10dMsgUnit_cFv@ha
/* 80239094  38 84 8C A4 */	addi r4, r4, __dt__10dMsgUnit_cFv@l
/* 80239098  3C A0 80 43 */	lis r5, lit_3640@ha
/* 8023909C  38 A5 06 B8 */	addi r5, r5, lit_3640@l
/* 802390A0  48 12 8B 85 */	bl __register_global_object
/* 802390A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802390A8  7C 08 03 A6 */	mtlr r0
/* 802390AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802390B0  4E 80 00 20 */	blr 
