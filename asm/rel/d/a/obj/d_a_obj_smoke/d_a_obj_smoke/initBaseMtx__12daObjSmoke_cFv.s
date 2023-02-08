lbl_80CDCE78:
/* 80CDCE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDCE7C  7C 08 02 A6 */	mflr r0
/* 80CDCE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDCE84  48 00 00 15 */	bl setBaseMtx__12daObjSmoke_cFv
/* 80CDCE88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDCE8C  7C 08 03 A6 */	mtlr r0
/* 80CDCE90  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDCE94  4E 80 00 20 */	blr 
