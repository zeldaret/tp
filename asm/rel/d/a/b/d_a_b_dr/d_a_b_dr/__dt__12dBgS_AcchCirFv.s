lbl_805C6ABC:
/* 805C6ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C6AC0  7C 08 02 A6 */	mflr r0
/* 805C6AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C6AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C6ACC  93 C1 00 08 */	stw r30, 8(r1)
/* 805C6AD0  7C 7E 1B 79 */	or. r30, r3, r3
/* 805C6AD4  7C 9F 23 78 */	mr r31, r4
/* 805C6AD8  41 82 00 38 */	beq lbl_805C6B10
/* 805C6ADC  3C 60 80 5C */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x805C7834@ha */
/* 805C6AE0  38 03 78 34 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x805C7834@l */
/* 805C6AE4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 805C6AE8  38 7E 00 14 */	addi r3, r30, 0x14
/* 805C6AEC  38 80 FF FF */	li r4, -1
/* 805C6AF0  4B CA 84 29 */	bl __dt__8cM3dGCirFv
/* 805C6AF4  7F C3 F3 78 */	mr r3, r30
/* 805C6AF8  38 80 00 00 */	li r4, 0
/* 805C6AFC  4B CA 15 B5 */	bl __dt__13cBgS_PolyInfoFv
/* 805C6B00  7F E0 07 35 */	extsh. r0, r31
/* 805C6B04  40 81 00 0C */	ble lbl_805C6B10
/* 805C6B08  7F C3 F3 78 */	mr r3, r30
/* 805C6B0C  4B D0 82 31 */	bl __dl__FPv
lbl_805C6B10:
/* 805C6B10  7F C3 F3 78 */	mr r3, r30
/* 805C6B14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C6B18  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C6B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C6B20  7C 08 03 A6 */	mtlr r0
/* 805C6B24  38 21 00 10 */	addi r1, r1, 0x10
/* 805C6B28  4E 80 00 20 */	blr 
