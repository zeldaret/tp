lbl_80A255F0:
/* 80A255F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A255F4  7C 08 02 A6 */	mflr r0
/* 80A255F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A255FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A25600  93 C1 00 08 */	stw r30, 8(r1)
/* 80A25604  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A25608  7C 9F 23 78 */	mr r31, r4
/* 80A2560C  41 82 00 38 */	beq lbl_80A25644
/* 80A25610  3C 60 80 A2 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A25614  38 03 5F A4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A25618  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A2561C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A25620  38 80 FF FF */	li r4, -1
/* 80A25624  4B 84 98 F4 */	b __dt__8cM3dGCirFv
/* 80A25628  7F C3 F3 78 */	mr r3, r30
/* 80A2562C  38 80 00 00 */	li r4, 0
/* 80A25630  4B 84 2A 80 */	b __dt__13cBgS_PolyInfoFv
/* 80A25634  7F E0 07 35 */	extsh. r0, r31
/* 80A25638  40 81 00 0C */	ble lbl_80A25644
/* 80A2563C  7F C3 F3 78 */	mr r3, r30
/* 80A25640  4B 8A 96 FC */	b __dl__FPv
lbl_80A25644:
/* 80A25644  7F C3 F3 78 */	mr r3, r30
/* 80A25648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2564C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A25650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A25654  7C 08 03 A6 */	mtlr r0
/* 80A25658  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2565C  4E 80 00 20 */	blr 
