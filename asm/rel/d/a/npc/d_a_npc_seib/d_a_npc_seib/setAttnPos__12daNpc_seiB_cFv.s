lbl_80AC5BC4:
/* 80AC5BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC5BC8  7C 08 02 A6 */	mflr r0
/* 80AC5BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC5BD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC5BD4  7C 7F 1B 78 */	mr r31, r3
/* 80AC5BD8  4B 68 35 B8 */	b setMtx__8daNpcT_cFv
/* 80AC5BDC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AC5BE0  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80AC5BE4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AC5BE8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80AC5BEC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AC5BF0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80AC5BF4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AC5BF8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80AC5BFC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AC5C00  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80AC5C04  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AC5C08  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80AC5C0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC5C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC5C14  7C 08 03 A6 */	mtlr r0
/* 80AC5C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC5C1C  4E 80 00 20 */	blr 
