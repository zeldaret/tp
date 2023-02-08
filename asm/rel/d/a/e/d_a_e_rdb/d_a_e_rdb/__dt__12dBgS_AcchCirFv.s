lbl_8076AEAC:
/* 8076AEAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076AEB0  7C 08 02 A6 */	mflr r0
/* 8076AEB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076AEB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076AEBC  93 C1 00 08 */	stw r30, 8(r1)
/* 8076AEC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8076AEC4  7C 9F 23 78 */	mr r31, r4
/* 8076AEC8  41 82 00 38 */	beq lbl_8076AF00
/* 8076AECC  3C 60 80 77 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8076B944@ha */
/* 8076AED0  38 03 B9 44 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8076B944@l */
/* 8076AED4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8076AED8  38 7E 00 14 */	addi r3, r30, 0x14
/* 8076AEDC  38 80 FF FF */	li r4, -1
/* 8076AEE0  4B B0 40 39 */	bl __dt__8cM3dGCirFv
/* 8076AEE4  7F C3 F3 78 */	mr r3, r30
/* 8076AEE8  38 80 00 00 */	li r4, 0
/* 8076AEEC  4B AF D1 C5 */	bl __dt__13cBgS_PolyInfoFv
/* 8076AEF0  7F E0 07 35 */	extsh. r0, r31
/* 8076AEF4  40 81 00 0C */	ble lbl_8076AF00
/* 8076AEF8  7F C3 F3 78 */	mr r3, r30
/* 8076AEFC  4B B6 3E 41 */	bl __dl__FPv
lbl_8076AF00:
/* 8076AF00  7F C3 F3 78 */	mr r3, r30
/* 8076AF04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8076AF08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8076AF0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076AF10  7C 08 03 A6 */	mtlr r0
/* 8076AF14  38 21 00 10 */	addi r1, r1, 0x10
/* 8076AF18  4E 80 00 20 */	blr 
