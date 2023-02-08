lbl_80C51088:
/* 80C51088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5108C  7C 08 02 A6 */	mflr r0
/* 80C51090  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C51094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C51098  7C 7F 1B 78 */	mr r31, r3
/* 80C5109C  48 00 00 5D */	bl setBaseMtx__10daObjLdy_cFv
/* 80C510A0  38 BF 07 20 */	addi r5, r31, 0x720
/* 80C510A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C510A8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C510AC  3C 60 80 C5 */	lis r3, lit_3782@ha /* 0x80C52050@ha */
/* 80C510B0  C0 03 20 50 */	lfs f0, lit_3782@l(r3)  /* 0x80C52050@l */
/* 80C510B4  38 00 00 03 */	li r0, 3
/* 80C510B8  7C 09 03 A6 */	mtctr r0
lbl_80C510BC:
/* 80C510BC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80C510C0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C510C4  7C 64 02 14 */	add r3, r4, r0
/* 80C510C8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80C510CC  C0 43 00 00 */	lfs f2, 0(r3)
/* 80C510D0  D0 45 00 24 */	stfs f2, 0x24(r5)
/* 80C510D4  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 80C510D8  D0 25 00 2C */	stfs f1, 0x2c(r5)
/* 80C510DC  38 A5 00 38 */	addi r5, r5, 0x38
/* 80C510E0  42 00 FF DC */	bdnz lbl_80C510BC
/* 80C510E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C510E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C510EC  7C 08 03 A6 */	mtlr r0
/* 80C510F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C510F4  4E 80 00 20 */	blr 
