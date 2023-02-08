lbl_80CDD138:
/* 80CDD138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDD13C  7C 08 02 A6 */	mflr r0
/* 80CDD140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDD144  4B FF FE 59 */	bl create__12daObjSmoke_cFv
/* 80CDD148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDD14C  7C 08 03 A6 */	mtlr r0
/* 80CDD150  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDD154  4E 80 00 20 */	blr 
