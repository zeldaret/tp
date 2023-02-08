lbl_80A6F560:
/* 80A6F560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6F564  7C 08 02 A6 */	mflr r0
/* 80A6F568  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6F56C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6F570  93 C1 00 08 */	stw r30, 8(r1)
/* 80A6F574  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A6F578  7C 9F 23 78 */	mr r31, r4
/* 80A6F57C  41 82 00 38 */	beq lbl_80A6F5B4
/* 80A6F580  3C 60 80 A7 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A70A1C@ha */
/* 80A6F584  38 03 0A 1C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A70A1C@l */
/* 80A6F588  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A6F58C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A6F590  38 80 FF FF */	li r4, -1
/* 80A6F594  4B 7F F9 85 */	bl __dt__8cM3dGCirFv
/* 80A6F598  7F C3 F3 78 */	mr r3, r30
/* 80A6F59C  38 80 00 00 */	li r4, 0
/* 80A6F5A0  4B 7F 8B 11 */	bl __dt__13cBgS_PolyInfoFv
/* 80A6F5A4  7F E0 07 35 */	extsh. r0, r31
/* 80A6F5A8  40 81 00 0C */	ble lbl_80A6F5B4
/* 80A6F5AC  7F C3 F3 78 */	mr r3, r30
/* 80A6F5B0  4B 85 F7 8D */	bl __dl__FPv
lbl_80A6F5B4:
/* 80A6F5B4  7F C3 F3 78 */	mr r3, r30
/* 80A6F5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6F5BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A6F5C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6F5C4  7C 08 03 A6 */	mtlr r0
/* 80A6F5C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6F5CC  4E 80 00 20 */	blr 
