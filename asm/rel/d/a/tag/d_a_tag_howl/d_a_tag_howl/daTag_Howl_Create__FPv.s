lbl_8048DC74:
/* 8048DC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048DC78  7C 08 02 A6 */	mflr r0
/* 8048DC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048DC80  4B FF FC D9 */	bl create__12daTag_Howl_cFv
/* 8048DC84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048DC88  7C 08 03 A6 */	mtlr r0
/* 8048DC8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048DC90  4E 80 00 20 */	blr 
