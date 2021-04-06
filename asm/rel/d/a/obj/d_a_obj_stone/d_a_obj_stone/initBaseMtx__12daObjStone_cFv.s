lbl_80CE93C4:
/* 80CE93C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE93C8  7C 08 02 A6 */	mflr r0
/* 80CE93CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE93D0  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80CE93D4  C4 04 0C F4 */	lfsu f0, Zero__4cXyz@l(r4)  /* 0x80430CF4@l */
/* 80CE93D8  D0 03 09 10 */	stfs f0, 0x910(r3)
/* 80CE93DC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80CE93E0  D0 03 09 14 */	stfs f0, 0x914(r3)
/* 80CE93E4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80CE93E8  D0 03 09 18 */	stfs f0, 0x918(r3)
/* 80CE93EC  38 00 00 00 */	li r0, 0
/* 80CE93F0  B0 03 09 1C */	sth r0, 0x91c(r3)
/* 80CE93F4  3C 80 80 3A */	lis r4, ZeroQuat@ha /* 0x803A7240@ha */
/* 80CE93F8  C4 04 72 40 */	lfsu f0, ZeroQuat@l(r4)  /* 0x803A7240@l */
/* 80CE93FC  D0 03 09 30 */	stfs f0, 0x930(r3)
/* 80CE9400  C0 04 00 04 */	lfs f0, 4(r4)
/* 80CE9404  D0 03 09 34 */	stfs f0, 0x934(r3)
/* 80CE9408  C0 04 00 08 */	lfs f0, 8(r4)
/* 80CE940C  D0 03 09 38 */	stfs f0, 0x938(r3)
/* 80CE9410  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80CE9414  D0 03 09 3C */	stfs f0, 0x93c(r3)
/* 80CE9418  C0 03 09 30 */	lfs f0, 0x930(r3)
/* 80CE941C  D0 03 09 20 */	stfs f0, 0x920(r3)
/* 80CE9420  C0 03 09 34 */	lfs f0, 0x934(r3)
/* 80CE9424  D0 03 09 24 */	stfs f0, 0x924(r3)
/* 80CE9428  C0 03 09 38 */	lfs f0, 0x938(r3)
/* 80CE942C  D0 03 09 28 */	stfs f0, 0x928(r3)
/* 80CE9430  C0 03 09 3C */	lfs f0, 0x93c(r3)
/* 80CE9434  D0 03 09 2C */	stfs f0, 0x92c(r3)
/* 80CE9438  80 83 05 70 */	lwz r4, 0x570(r3)
/* 80CE943C  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80CE9440  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80CE9444  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80CE9448  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80CE944C  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80CE9450  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80CE9454  48 00 00 15 */	bl setBaseMtx__12daObjStone_cFv
/* 80CE9458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE945C  7C 08 03 A6 */	mtlr r0
/* 80CE9460  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE9464  4E 80 00 20 */	blr 
