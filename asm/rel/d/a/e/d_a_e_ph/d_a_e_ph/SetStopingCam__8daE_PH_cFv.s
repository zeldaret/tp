lbl_8073D5C4:
/* 8073D5C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8073D5C8  7C 08 02 A6 */	mflr r0
/* 8073D5CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073D5D0  7C 66 1B 78 */	mr r6, r3
/* 8073D5D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073D5D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073D5DC  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8073D5E0  7C 00 07 74 */	extsb r0, r0
/* 8073D5E4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8073D5E8  7C 63 02 14 */	add r3, r3, r0
/* 8073D5EC  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8073D5F0  C0 06 05 D4 */	lfs f0, 0x5d4(r6)
/* 8073D5F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8073D5F8  C0 06 05 D8 */	lfs f0, 0x5d8(r6)
/* 8073D5FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8073D600  C0 06 05 DC */	lfs f0, 0x5dc(r6)
/* 8073D604  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8073D608  C0 06 05 BC */	lfs f0, 0x5bc(r6)
/* 8073D60C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8073D610  C0 06 05 C0 */	lfs f0, 0x5c0(r6)
/* 8073D614  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073D618  C0 06 05 C4 */	lfs f0, 0x5c4(r6)
/* 8073D61C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8073D620  38 63 02 48 */	addi r3, r3, 0x248
/* 8073D624  38 81 00 14 */	addi r4, r1, 0x14
/* 8073D628  38 A1 00 08 */	addi r5, r1, 8
/* 8073D62C  C0 26 05 F4 */	lfs f1, 0x5f4(r6)
/* 8073D630  38 C0 00 00 */	li r6, 0
/* 8073D634  4B A4 34 AD */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 8073D638  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8073D63C  7C 08 03 A6 */	mtlr r0
/* 8073D640  38 21 00 20 */	addi r1, r1, 0x20
/* 8073D644  4E 80 00 20 */	blr 
