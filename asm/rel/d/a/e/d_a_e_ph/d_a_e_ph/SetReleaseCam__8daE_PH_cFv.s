lbl_8073D7AC:
/* 8073D7AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073D7B0  7C 08 02 A6 */	mflr r0
/* 8073D7B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073D7B8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8073D7BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073D7C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073D7C4  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 8073D7C8  7C 00 07 74 */	extsb r0, r0
/* 8073D7CC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8073D7D0  7C 84 02 14 */	add r4, r4, r0
/* 8073D7D4  83 E4 5D 74 */	lwz r31, 0x5d74(r4)
/* 8073D7D8  C0 03 05 D4 */	lfs f0, 0x5d4(r3)
/* 8073D7DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8073D7E0  C0 03 05 D8 */	lfs f0, 0x5d8(r3)
/* 8073D7E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8073D7E8  C0 03 05 DC */	lfs f0, 0x5dc(r3)
/* 8073D7EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8073D7F0  C0 03 05 BC */	lfs f0, 0x5bc(r3)
/* 8073D7F4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8073D7F8  C0 03 05 C0 */	lfs f0, 0x5c0(r3)
/* 8073D7FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073D800  C0 03 05 C4 */	lfs f0, 0x5c4(r3)
/* 8073D804  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8073D808  38 7F 02 48 */	addi r3, r31, 0x248
/* 8073D80C  38 81 00 14 */	addi r4, r1, 0x14
/* 8073D810  38 A1 00 08 */	addi r5, r1, 8
/* 8073D814  4B A4 34 05 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 8073D818  38 7F 02 48 */	addi r3, r31, 0x248
/* 8073D81C  4B A2 3C 91 */	bl Start__9dCamera_cFv
/* 8073D820  38 7F 02 48 */	addi r3, r31, 0x248
/* 8073D824  38 80 00 00 */	li r4, 0
/* 8073D828  4B A2 57 E5 */	bl SetTrimSize__9dCamera_cFl
/* 8073D82C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073D830  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073D834  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8073D838  4B 90 4C 31 */	bl reset__14dEvt_control_cFv
/* 8073D83C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8073D840  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073D844  7C 08 03 A6 */	mtlr r0
/* 8073D848  38 21 00 30 */	addi r1, r1, 0x30
/* 8073D84C  4E 80 00 20 */	blr 
