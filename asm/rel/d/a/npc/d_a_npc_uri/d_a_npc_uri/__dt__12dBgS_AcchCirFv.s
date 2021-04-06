lbl_80B2C5B4:
/* 80B2C5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2C5B8  7C 08 02 A6 */	mflr r0
/* 80B2C5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2C5C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2C5C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B2C5C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B2C5CC  7C 9F 23 78 */	mr r31, r4
/* 80B2C5D0  41 82 00 38 */	beq lbl_80B2C608
/* 80B2C5D4  3C 60 80 B3 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B2DBD0@ha */
/* 80B2C5D8  38 03 DB D0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B2DBD0@l */
/* 80B2C5DC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B2C5E0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B2C5E4  38 80 FF FF */	li r4, -1
/* 80B2C5E8  4B 74 29 31 */	bl __dt__8cM3dGCirFv
/* 80B2C5EC  7F C3 F3 78 */	mr r3, r30
/* 80B2C5F0  38 80 00 00 */	li r4, 0
/* 80B2C5F4  4B 73 BA BD */	bl __dt__13cBgS_PolyInfoFv
/* 80B2C5F8  7F E0 07 35 */	extsh. r0, r31
/* 80B2C5FC  40 81 00 0C */	ble lbl_80B2C608
/* 80B2C600  7F C3 F3 78 */	mr r3, r30
/* 80B2C604  4B 7A 27 39 */	bl __dl__FPv
lbl_80B2C608:
/* 80B2C608  7F C3 F3 78 */	mr r3, r30
/* 80B2C60C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2C610  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B2C614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2C618  7C 08 03 A6 */	mtlr r0
/* 80B2C61C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2C620  4E 80 00 20 */	blr 
