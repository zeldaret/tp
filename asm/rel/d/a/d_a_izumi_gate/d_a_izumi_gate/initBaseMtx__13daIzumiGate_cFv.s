lbl_80849098:
/* 80849098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084909C  7C 08 02 A6 */	mflr r0
/* 808490A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808490A4  48 00 00 15 */	bl setBaseMtx__13daIzumiGate_cFv
/* 808490A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808490AC  7C 08 03 A6 */	mtlr r0
/* 808490B0  38 21 00 10 */	addi r1, r1, 0x10
/* 808490B4  4E 80 00 20 */	blr 
