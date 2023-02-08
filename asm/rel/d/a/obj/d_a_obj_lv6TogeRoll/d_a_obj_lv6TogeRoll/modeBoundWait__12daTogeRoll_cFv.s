lbl_80C78C50:
/* 80C78C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C78C54  7C 08 02 A6 */	mflr r0
/* 80C78C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C78C5C  88 83 05 DB */	lbz r4, 0x5db(r3)
/* 80C78C60  28 04 00 00 */	cmplwi r4, 0
/* 80C78C64  41 82 00 10 */	beq lbl_80C78C74
/* 80C78C68  38 04 FF FF */	addi r0, r4, -1
/* 80C78C6C  98 03 05 DB */	stb r0, 0x5db(r3)
/* 80C78C70  48 00 00 28 */	b lbl_80C78C98
lbl_80C78C74:
/* 80C78C74  38 00 00 00 */	li r0, 0
/* 80C78C78  98 03 05 DC */	stb r0, 0x5dc(r3)
/* 80C78C7C  C0 03 05 BC */	lfs f0, 0x5bc(r3)
/* 80C78C80  D0 03 05 B0 */	stfs f0, 0x5b0(r3)
/* 80C78C84  C0 03 05 C0 */	lfs f0, 0x5c0(r3)
/* 80C78C88  D0 03 05 B4 */	stfs f0, 0x5b4(r3)
/* 80C78C8C  C0 03 05 C4 */	lfs f0, 0x5c4(r3)
/* 80C78C90  D0 03 05 B8 */	stfs f0, 0x5b8(r3)
/* 80C78C94  48 00 06 85 */	bl init_modeWait__12daTogeRoll_cFv
lbl_80C78C98:
/* 80C78C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C78C9C  7C 08 03 A6 */	mtlr r0
/* 80C78CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C78CA4  4E 80 00 20 */	blr 
