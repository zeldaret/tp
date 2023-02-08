lbl_80A7A610:
/* 80A7A610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7A614  7C 08 02 A6 */	mflr r0
/* 80A7A618  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7A61C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7A620  93 C1 00 08 */	stw r30, 8(r1)
/* 80A7A624  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A7A628  7C 9F 23 78 */	mr r31, r4
/* 80A7A62C  41 82 00 38 */	beq lbl_80A7A664
/* 80A7A630  3C 60 80 A8 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A7BE58@ha */
/* 80A7A634  38 03 BE 58 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A7BE58@l */
/* 80A7A638  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A7A63C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A7A640  38 80 FF FF */	li r4, -1
/* 80A7A644  4B 7F 48 D5 */	bl __dt__8cM3dGCirFv
/* 80A7A648  7F C3 F3 78 */	mr r3, r30
/* 80A7A64C  38 80 00 00 */	li r4, 0
/* 80A7A650  4B 7E DA 61 */	bl __dt__13cBgS_PolyInfoFv
/* 80A7A654  7F E0 07 35 */	extsh. r0, r31
/* 80A7A658  40 81 00 0C */	ble lbl_80A7A664
/* 80A7A65C  7F C3 F3 78 */	mr r3, r30
/* 80A7A660  4B 85 46 DD */	bl __dl__FPv
lbl_80A7A664:
/* 80A7A664  7F C3 F3 78 */	mr r3, r30
/* 80A7A668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7A66C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A7A670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7A674  7C 08 03 A6 */	mtlr r0
/* 80A7A678  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7A67C  4E 80 00 20 */	blr 
