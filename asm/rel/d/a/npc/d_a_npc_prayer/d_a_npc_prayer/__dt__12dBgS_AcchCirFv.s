lbl_80AB5520:
/* 80AB5520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB5524  7C 08 02 A6 */	mflr r0
/* 80AB5528  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB552C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB5530  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB5534  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB5538  7C 9F 23 78 */	mr r31, r4
/* 80AB553C  41 82 00 38 */	beq lbl_80AB5574
/* 80AB5540  3C 60 80 AB */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AB5B58@ha */
/* 80AB5544  38 03 5B 58 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AB5B58@l */
/* 80AB5548  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AB554C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AB5550  38 80 FF FF */	li r4, -1
/* 80AB5554  4B 7B 99 C5 */	bl __dt__8cM3dGCirFv
/* 80AB5558  7F C3 F3 78 */	mr r3, r30
/* 80AB555C  38 80 00 00 */	li r4, 0
/* 80AB5560  4B 7B 2B 51 */	bl __dt__13cBgS_PolyInfoFv
/* 80AB5564  7F E0 07 35 */	extsh. r0, r31
/* 80AB5568  40 81 00 0C */	ble lbl_80AB5574
/* 80AB556C  7F C3 F3 78 */	mr r3, r30
/* 80AB5570  4B 81 97 CD */	bl __dl__FPv
lbl_80AB5574:
/* 80AB5574  7F C3 F3 78 */	mr r3, r30
/* 80AB5578  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB557C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB5580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB5584  7C 08 03 A6 */	mtlr r0
/* 80AB5588  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB558C  4E 80 00 20 */	blr 
