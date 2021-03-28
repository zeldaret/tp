lbl_80334244:
/* 80334244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80334248  7C 08 02 A6 */	mflr r0
/* 8033424C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80334250  39 61 00 20 */	addi r11, r1, 0x20
/* 80334254  48 02 DF 7D */	bl _savegpr_26
/* 80334258  7C 7A 1B 78 */	mr r26, r3
/* 8033425C  7C 9F 23 78 */	mr r31, r4
/* 80334260  38 60 00 28 */	li r3, 0x28
/* 80334264  4B F9 A9 E9 */	bl __nw__FUl
/* 80334268  7C 60 1B 79 */	or. r0, r3, r3
/* 8033426C  41 82 00 0C */	beq lbl_80334278
/* 80334270  4B FF 9F 89 */	bl __ct__13J3DDeformDataFv
/* 80334274  7C 60 1B 78 */	mr r0, r3
lbl_80334278:
/* 80334278  90 1A 00 04 */	stw r0, 4(r26)
/* 8033427C  3B 9F 00 20 */	addi r28, r31, 0x20
/* 80334280  3B 60 00 00 */	li r27, 0
/* 80334284  3C 60 43 4C */	lis r3, 0x434C /* 0x434C5331@ha */
/* 80334288  3B A3 53 31 */	addi r29, r3, 0x5331 /* 0x434C5331@l */
/* 8033428C  3C 60 80 3A */	lis r3, J3DClusterLoader__stringBase0@ha
/* 80334290  3B C3 20 98 */	addi r30, r3, J3DClusterLoader__stringBase0@l
/* 80334294  83 FF 00 0C */	lwz r31, 0xc(r31)
/* 80334298  48 00 00 3C */	b lbl_803342D4
lbl_8033429C:
/* 8033429C  80 1C 00 00 */	lwz r0, 0(r28)
/* 803342A0  7C 00 E8 00 */	cmpw r0, r29
/* 803342A4  41 82 00 08 */	beq lbl_803342AC
/* 803342A8  48 00 00 14 */	b lbl_803342BC
lbl_803342AC:
/* 803342AC  7F 43 D3 78 */	mr r3, r26
/* 803342B0  7F 84 E3 78 */	mr r4, r28
/* 803342B4  48 00 00 45 */	bl readCluster__20J3DClusterLoader_v15FPC15J3DClusterBlock
/* 803342B8  48 00 00 10 */	b lbl_803342C8
lbl_803342BC:
/* 803342BC  7F C3 F3 78 */	mr r3, r30
/* 803342C0  4C C6 31 82 */	crclr 6
/* 803342C4  4B CD 27 F9 */	bl OSReport
lbl_803342C8:
/* 803342C8  80 1C 00 04 */	lwz r0, 4(r28)
/* 803342CC  7F 9C 02 14 */	add r28, r28, r0
/* 803342D0  3B 7B 00 01 */	addi r27, r27, 1
lbl_803342D4:
/* 803342D4  7C 1B F8 40 */	cmplw r27, r31
/* 803342D8  41 80 FF C4 */	blt lbl_8033429C
/* 803342DC  80 7A 00 04 */	lwz r3, 4(r26)
/* 803342E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803342E4  48 02 DF 39 */	bl _restgpr_26
/* 803342E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803342EC  7C 08 03 A6 */	mtlr r0
/* 803342F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803342F4  4E 80 00 20 */	blr 
