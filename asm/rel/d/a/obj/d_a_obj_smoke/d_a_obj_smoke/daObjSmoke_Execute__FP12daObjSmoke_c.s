lbl_80CDD0F8:
/* 80CDD0F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDD0FC  7C 08 02 A6 */	mflr r0
/* 80CDD100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDD104  4B FF FF 01 */	bl execute__12daObjSmoke_cFv
/* 80CDD108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDD10C  7C 08 03 A6 */	mtlr r0
/* 80CDD110  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDD114  4E 80 00 20 */	blr 
