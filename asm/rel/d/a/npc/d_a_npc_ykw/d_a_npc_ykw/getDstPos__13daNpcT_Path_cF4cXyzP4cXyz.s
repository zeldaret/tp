lbl_80B677C8:
/* 80B677C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B677CC  7C 08 02 A6 */	mflr r0
/* 80B677D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B677D4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80B677D8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B677DC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80B677E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B677E4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80B677E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B677EC  38 81 00 08 */	addi r4, r1, 8
/* 80B677F0  80 C3 00 00 */	lwz r6, 0(r3)
/* 80B677F4  A0 C6 00 00 */	lhz r6, 0(r6)
/* 80B677F8  4B 5D E6 41 */	bl getDstPos__13daNpcT_Path_cF4cXyzP4cXyzi
/* 80B677FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B67800  7C 08 03 A6 */	mtlr r0
/* 80B67804  38 21 00 20 */	addi r1, r1, 0x20
/* 80B67808  4E 80 00 20 */	blr 
