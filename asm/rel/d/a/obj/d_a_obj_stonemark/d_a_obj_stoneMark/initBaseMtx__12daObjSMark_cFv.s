lbl_8059A018:
/* 8059A018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A01C  7C 08 02 A6 */	mflr r0
/* 8059A020  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A024  48 00 00 15 */	bl setBaseMtx__12daObjSMark_cFv
/* 8059A028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A02C  7C 08 03 A6 */	mtlr r0
/* 8059A030  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A034  4E 80 00 20 */	blr 
