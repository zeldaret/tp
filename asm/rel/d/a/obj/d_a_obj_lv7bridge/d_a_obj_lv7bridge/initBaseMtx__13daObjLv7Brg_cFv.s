lbl_80C86454:
/* 80C86454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C86458  7C 08 02 A6 */	mflr r0
/* 80C8645C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C86460  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80C86464  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80C86468  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80C8646C  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80C86470  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C86474  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80C86478  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80C8647C  80 83 0A 84 */	lwz r4, 0xa84(r3)
/* 80C86480  28 04 00 00 */	cmplwi r4, 0
/* 80C86484  41 82 00 1C */	beq lbl_80C864A0
/* 80C86488  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80C8648C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80C86490  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80C86494  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C86498  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80C8649C  D0 04 00 20 */	stfs f0, 0x20(r4)
lbl_80C864A0:
/* 80C864A0  48 00 00 15 */	bl setBaseMtx__13daObjLv7Brg_cFv
/* 80C864A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C864A8  7C 08 03 A6 */	mtlr r0
/* 80C864AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C864B0  4E 80 00 20 */	blr 
