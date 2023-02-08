lbl_80D125C8:
/* 80D125C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D125CC  7C 08 02 A6 */	mflr r0
/* 80D125D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D125D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D125D8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D125DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D125E0  7C 9F 23 78 */	mr r31, r4
/* 80D125E4  41 82 00 38 */	beq lbl_80D1261C
/* 80D125E8  3C 80 80 D1 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80D12A6C@ha */
/* 80D125EC  38 84 2A 6C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80D12A6C@l */
/* 80D125F0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D125F4  38 04 00 0C */	addi r0, r4, 0xc
/* 80D125F8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D125FC  38 04 00 18 */	addi r0, r4, 0x18
/* 80D12600  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D12604  38 80 00 00 */	li r4, 0
/* 80D12608  4B 36 39 8D */	bl __dt__9dBgS_AcchFv
/* 80D1260C  7F E0 07 35 */	extsh. r0, r31
/* 80D12610  40 81 00 0C */	ble lbl_80D1261C
/* 80D12614  7F C3 F3 78 */	mr r3, r30
/* 80D12618  4B 5B C7 25 */	bl __dl__FPv
lbl_80D1261C:
/* 80D1261C  7F C3 F3 78 */	mr r3, r30
/* 80D12620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D12624  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D12628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1262C  7C 08 03 A6 */	mtlr r0
/* 80D12630  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12634  4E 80 00 20 */	blr 
