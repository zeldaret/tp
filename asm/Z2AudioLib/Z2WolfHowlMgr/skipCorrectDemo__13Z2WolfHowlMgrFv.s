lbl_802CBB58:
/* 802CBB58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CBB5C  7C 08 02 A6 */	mflr r0
/* 802CBB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CBB64  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802CBB68  4B FE 77 15 */	bl stopWolfHowlSong__8Z2SeqMgrFv
/* 802CBB6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CBB70  7C 08 03 A6 */	mtlr r0
/* 802CBB74  38 21 00 10 */	addi r1, r1, 0x10
/* 802CBB78  4E 80 00 20 */	blr 
