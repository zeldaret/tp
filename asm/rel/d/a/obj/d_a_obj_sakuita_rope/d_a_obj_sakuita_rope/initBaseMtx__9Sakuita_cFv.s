lbl_80CC5390:
/* 80CC5390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC5394  7C 08 02 A6 */	mflr r0
/* 80CC5398  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC539C  48 00 00 15 */	bl setBaseMtx__9Sakuita_cFv
/* 80CC53A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC53A4  7C 08 03 A6 */	mtlr r0
/* 80CC53A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC53AC  4E 80 00 20 */	blr 
