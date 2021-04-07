lbl_80BEA4A4:
/* 80BEA4A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEA4A8  7C 08 02 A6 */	mflr r0
/* 80BEA4AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEA4B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEA4B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BEA4B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BEA4BC  7C 9F 23 78 */	mr r31, r4
/* 80BEA4C0  41 82 00 38 */	beq lbl_80BEA4F8
/* 80BEA4C4  3C 60 80 BF */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80BEB67C@ha */
/* 80BEA4C8  38 03 B6 7C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80BEB67C@l */
/* 80BEA4CC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BEA4D0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BEA4D4  38 80 FF FF */	li r4, -1
/* 80BEA4D8  4B 68 4A 41 */	bl __dt__8cM3dGCirFv
/* 80BEA4DC  7F C3 F3 78 */	mr r3, r30
/* 80BEA4E0  38 80 00 00 */	li r4, 0
/* 80BEA4E4  4B 67 DB CD */	bl __dt__13cBgS_PolyInfoFv
/* 80BEA4E8  7F E0 07 35 */	extsh. r0, r31
/* 80BEA4EC  40 81 00 0C */	ble lbl_80BEA4F8
/* 80BEA4F0  7F C3 F3 78 */	mr r3, r30
/* 80BEA4F4  4B 6E 48 49 */	bl __dl__FPv
lbl_80BEA4F8:
/* 80BEA4F8  7F C3 F3 78 */	mr r3, r30
/* 80BEA4FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEA500  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BEA504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEA508  7C 08 03 A6 */	mtlr r0
/* 80BEA50C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEA510  4E 80 00 20 */	blr 
