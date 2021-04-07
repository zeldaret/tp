lbl_805C8544:
/* 805C8544  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C8548  7C 08 02 A6 */	mflr r0
/* 805C854C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C8550  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805C8554  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C8558  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C855C  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 805C8560  7C 00 07 74 */	extsb r0, r0
/* 805C8564  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805C8568  7C 84 02 14 */	add r4, r4, r0
/* 805C856C  83 E4 5D 74 */	lwz r31, 0x5d74(r4)
/* 805C8570  C0 03 05 C8 */	lfs f0, 0x5c8(r3)
/* 805C8574  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C8578  C0 03 05 CC */	lfs f0, 0x5cc(r3)
/* 805C857C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C8580  C0 03 05 D0 */	lfs f0, 0x5d0(r3)
/* 805C8584  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C8588  C0 03 05 E0 */	lfs f0, 0x5e0(r3)
/* 805C858C  D0 01 00 08 */	stfs f0, 8(r1)
/* 805C8590  C0 03 05 E4 */	lfs f0, 0x5e4(r3)
/* 805C8594  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805C8598  C0 03 05 E8 */	lfs f0, 0x5e8(r3)
/* 805C859C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C85A0  38 7F 02 48 */	addi r3, r31, 0x248
/* 805C85A4  38 81 00 14 */	addi r4, r1, 0x14
/* 805C85A8  38 A1 00 08 */	addi r5, r1, 8
/* 805C85AC  4B BB 86 6D */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 805C85B0  38 7F 02 48 */	addi r3, r31, 0x248
/* 805C85B4  4B B9 8E F9 */	bl Start__9dCamera_cFv
/* 805C85B8  38 7F 02 48 */	addi r3, r31, 0x248
/* 805C85BC  38 80 00 00 */	li r4, 0
/* 805C85C0  4B B9 AA 4D */	bl SetTrimSize__9dCamera_cFl
/* 805C85C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C85C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C85CC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805C85D0  4B A7 9E 99 */	bl reset__14dEvt_control_cFv
/* 805C85D4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805C85D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C85DC  7C 08 03 A6 */	mtlr r0
/* 805C85E0  38 21 00 30 */	addi r1, r1, 0x30
/* 805C85E4  4E 80 00 20 */	blr 
