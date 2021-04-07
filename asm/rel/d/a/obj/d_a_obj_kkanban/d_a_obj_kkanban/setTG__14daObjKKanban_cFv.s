lbl_80C46928:
/* 80C46928  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C4692C  7C 08 02 A6 */	mflr r0
/* 80C46930  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C46934  39 61 00 50 */	addi r11, r1, 0x50
/* 80C46938  4B 71 B8 99 */	bl _savegpr_26
/* 80C4693C  7C 7A 1B 78 */	mr r26, r3
/* 80C46940  3C 60 80 C4 */	lis r3, lit_3715@ha /* 0x80C46F54@ha */
/* 80C46944  38 63 6F 54 */	addi r3, r3, lit_3715@l /* 0x80C46F54@l */
/* 80C46948  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80C4694C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C46950  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C46954  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C46958  3B 81 00 14 */	addi r28, r1, 0x14
/* 80C4695C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C46960  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C46964  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C46968  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C4696C  3B A1 00 20 */	addi r29, r1, 0x20
/* 80C46970  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C46974  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80C46978  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C4697C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80C46980  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C46984  38 7A 05 6C */	addi r3, r26, 0x56c
/* 80C46988  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4698C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C46990  4B 6F FB 21 */	bl PSMTXCopy
/* 80C46994  3B 60 00 00 */	li r27, 0
/* 80C46998  3B E0 00 00 */	li r31, 0
/* 80C4699C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C469A0  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80C469A4:
/* 80C469A4  38 81 00 08 */	addi r4, r1, 8
/* 80C469A8  7C 84 FA 14 */	add r4, r4, r31
/* 80C469AC  7F C3 F3 78 */	mr r3, r30
/* 80C469B0  7C 85 23 78 */	mr r5, r4
/* 80C469B4  4B 70 03 B9 */	bl PSMTXMultVec
/* 80C469B8  3B 7B 00 01 */	addi r27, r27, 1
/* 80C469BC  2C 1B 00 03 */	cmpwi r27, 3
/* 80C469C0  3B FF 00 0C */	addi r31, r31, 0xc
/* 80C469C4  41 80 FF E0 */	blt lbl_80C469A4
/* 80C469C8  38 7A 07 0C */	addi r3, r26, 0x70c
/* 80C469CC  38 81 00 08 */	addi r4, r1, 8
/* 80C469D0  7F 85 E3 78 */	mr r5, r28
/* 80C469D4  7F A6 EB 78 */	mr r6, r29
/* 80C469D8  4B 62 8E 05 */	bl setPos__8cM3dGTriFPC3VecPC3VecPC3Vec
/* 80C469DC  39 61 00 50 */	addi r11, r1, 0x50
/* 80C469E0  4B 71 B8 3D */	bl _restgpr_26
/* 80C469E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C469E8  7C 08 03 A6 */	mtlr r0
/* 80C469EC  38 21 00 50 */	addi r1, r1, 0x50
/* 80C469F0  4E 80 00 20 */	blr 
