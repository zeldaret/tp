lbl_80D124FC:
/* 80D124FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12500  7C 08 02 A6 */	mflr r0
/* 80D12504  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1250C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D12510  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D12514  7C 9F 23 78 */	mr r31, r4
/* 80D12518  41 82 00 38 */	beq lbl_80D12550
/* 80D1251C  3C 60 80 D1 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80D12AA8@ha */
/* 80D12520  38 03 2A A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80D12AA8@l */
/* 80D12524  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80D12528  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D1252C  38 80 FF FF */	li r4, -1
/* 80D12530  4B 55 C9 E9 */	bl __dt__8cM3dGCirFv
/* 80D12534  7F C3 F3 78 */	mr r3, r30
/* 80D12538  38 80 00 00 */	li r4, 0
/* 80D1253C  4B 55 5B 75 */	bl __dt__13cBgS_PolyInfoFv
/* 80D12540  7F E0 07 35 */	extsh. r0, r31
/* 80D12544  40 81 00 0C */	ble lbl_80D12550
/* 80D12548  7F C3 F3 78 */	mr r3, r30
/* 80D1254C  4B 5B C7 F1 */	bl __dl__FPv
lbl_80D12550:
/* 80D12550  7F C3 F3 78 */	mr r3, r30
/* 80D12554  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D12558  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D1255C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D12560  7C 08 03 A6 */	mtlr r0
/* 80D12564  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12568  4E 80 00 20 */	blr 
