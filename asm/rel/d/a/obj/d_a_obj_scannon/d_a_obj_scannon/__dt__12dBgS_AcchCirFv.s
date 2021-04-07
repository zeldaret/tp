lbl_80CC7194:
/* 80CC7194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC7198  7C 08 02 A6 */	mflr r0
/* 80CC719C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC71A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC71A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC71A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CC71AC  7C 9F 23 78 */	mr r31, r4
/* 80CC71B0  41 82 00 38 */	beq lbl_80CC71E8
/* 80CC71B4  3C 60 80 CD */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CC95B8@ha */
/* 80CC71B8  38 03 95 B8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CC95B8@l */
/* 80CC71BC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CC71C0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CC71C4  38 80 FF FF */	li r4, -1
/* 80CC71C8  4B 5A 7D 51 */	bl __dt__8cM3dGCirFv
/* 80CC71CC  7F C3 F3 78 */	mr r3, r30
/* 80CC71D0  38 80 00 00 */	li r4, 0
/* 80CC71D4  4B 5A 0E DD */	bl __dt__13cBgS_PolyInfoFv
/* 80CC71D8  7F E0 07 35 */	extsh. r0, r31
/* 80CC71DC  40 81 00 0C */	ble lbl_80CC71E8
/* 80CC71E0  7F C3 F3 78 */	mr r3, r30
/* 80CC71E4  4B 60 7B 59 */	bl __dl__FPv
lbl_80CC71E8:
/* 80CC71E8  7F C3 F3 78 */	mr r3, r30
/* 80CC71EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC71F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC71F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC71F8  7C 08 03 A6 */	mtlr r0
/* 80CC71FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC7200  4E 80 00 20 */	blr 
