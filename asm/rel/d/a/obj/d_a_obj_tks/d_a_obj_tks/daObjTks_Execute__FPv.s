lbl_80D115F8:
/* 80D115F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D115FC  7C 08 02 A6 */	mflr r0
/* 80D11600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D11604  4B FF E7 65 */	bl Execute__10daObjTks_cFv
/* 80D11608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1160C  7C 08 03 A6 */	mtlr r0
/* 80D11610  38 21 00 10 */	addi r1, r1, 0x10
/* 80D11614  4E 80 00 20 */	blr 
