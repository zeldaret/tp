lbl_80AFD5F0:
/* 80AFD5F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AFD5F4  7C 08 02 A6 */	mflr r0
/* 80AFD5F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AFD5FC  39 61 00 40 */	addi r11, r1, 0x40
/* 80AFD600  4B 86 4B D8 */	b _savegpr_28
/* 80AFD604  7C 7F 1B 78 */	mr r31, r3
/* 80AFD608  7C 9C 23 78 */	mr r28, r4
/* 80AFD60C  2C 05 00 00 */	cmpwi r5, 0
/* 80AFD610  3B A0 00 05 */	li r29, 5
/* 80AFD614  41 82 00 08 */	beq lbl_80AFD61C
/* 80AFD618  3B A0 00 08 */	li r29, 8
lbl_80AFD61C:
/* 80AFD61C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80AFD620  3C 60 80 B0 */	lis r3, lit_4424@ha
/* 80AFD624  38 63 0E 18 */	addi r3, r3, lit_4424@l
/* 80AFD628  38 83 FF FC */	addi r4, r3, -4
/* 80AFD62C  38 00 00 03 */	li r0, 3
/* 80AFD630  7C 09 03 A6 */	mtctr r0
lbl_80AFD634:
/* 80AFD634  80 64 00 04 */	lwz r3, 4(r4)
/* 80AFD638  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AFD63C  90 66 00 04 */	stw r3, 4(r6)
/* 80AFD640  94 06 00 08 */	stwu r0, 8(r6)
/* 80AFD644  42 00 FF F0 */	bdnz lbl_80AFD634
/* 80AFD648  2C 05 00 00 */	cmpwi r5, 0
/* 80AFD64C  3B C1 00 20 */	addi r30, r1, 0x20
/* 80AFD650  41 82 00 08 */	beq lbl_80AFD658
/* 80AFD654  3B C1 00 14 */	addi r30, r1, 0x14
lbl_80AFD658:
/* 80AFD658  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AFD65C  4B 51 3B 90 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80AFD660  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AFD664  80 63 00 04 */	lwz r3, 4(r3)
/* 80AFD668  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AFD66C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AFD670  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 80AFD674  7C 63 02 14 */	add r3, r3, r0
/* 80AFD678  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AFD67C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AFD680  4B 84 8E 30 */	b PSMTXCopy
/* 80AFD684  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80AFD688  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80AFD68C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80AFD690  4B 50 F7 0C */	b transM__14mDoMtx_stack_cFfff
/* 80AFD694  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AFD698  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AFD69C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80AFD6A0  D0 41 00 08 */	stfs f2, 8(r1)
/* 80AFD6A4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80AFD6A8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80AFD6AC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80AFD6B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AFD6B4  D0 5F 00 00 */	stfs f2, 0(r31)
/* 80AFD6B8  D0 3F 00 04 */	stfs f1, 4(r31)
/* 80AFD6BC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80AFD6C0  39 61 00 40 */	addi r11, r1, 0x40
/* 80AFD6C4  4B 86 4B 60 */	b _restgpr_28
/* 80AFD6C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AFD6CC  7C 08 03 A6 */	mtlr r0
/* 80AFD6D0  38 21 00 40 */	addi r1, r1, 0x40
/* 80AFD6D4  4E 80 00 20 */	blr 
