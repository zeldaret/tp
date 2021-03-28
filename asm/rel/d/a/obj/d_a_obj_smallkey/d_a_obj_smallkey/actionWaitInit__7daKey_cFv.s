lbl_80CDA9AC:
/* 80CDA9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDA9B0  7C 08 02 A6 */	mflr r0
/* 80CDA9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDA9B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDA9BC  7C 7F 1B 78 */	mr r31, r3
/* 80CDA9C0  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80CDA9C4  60 00 00 01 */	ori r0, r0, 1
/* 80CDA9C8  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80CDA9CC  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 80CDA9D0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CDA9D4  90 03 08 0C */	stw r0, 0x80c(r3)
/* 80CDA9D8  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CDA9DC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CDA9E0  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CDA9E4  38 00 00 10 */	li r0, 0x10
/* 80CDA9E8  98 03 05 48 */	stb r0, 0x548(r3)
/* 80CDA9EC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CDA9F0  D0 03 05 50 */	stfs f0, 0x550(r3)
/* 80CDA9F4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CDA9F8  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 80CDA9FC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CDAA00  D0 03 05 58 */	stfs f0, 0x558(r3)
/* 80CDAA04  48 00 05 B1 */	bl effectSet__7daKey_cFv
/* 80CDAA08  38 00 00 02 */	li r0, 2
/* 80CDAA0C  98 1F 09 34 */	stb r0, 0x934(r31)
/* 80CDAA10  38 60 00 01 */	li r3, 1
/* 80CDAA14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDAA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDAA1C  7C 08 03 A6 */	mtlr r0
/* 80CDAA20  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDAA24  4E 80 00 20 */	blr 
