lbl_809CF274:
/* 809CF274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CF278  7C 08 02 A6 */	mflr r0
/* 809CF27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CF280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CF284  93 C1 00 08 */	stw r30, 8(r1)
/* 809CF288  7C 7E 1B 79 */	or. r30, r3, r3
/* 809CF28C  7C 9F 23 78 */	mr r31, r4
/* 809CF290  41 82 00 38 */	beq lbl_809CF2C8
/* 809CF294  3C 60 80 9D */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809CF298  38 03 FB 14 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809CF29C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809CF2A0  38 7E 00 14 */	addi r3, r30, 0x14
/* 809CF2A4  38 80 FF FF */	li r4, -1
/* 809CF2A8  4B 89 FC 70 */	b __dt__8cM3dGCirFv
/* 809CF2AC  7F C3 F3 78 */	mr r3, r30
/* 809CF2B0  38 80 00 00 */	li r4, 0
/* 809CF2B4  4B 89 8D FC */	b __dt__13cBgS_PolyInfoFv
/* 809CF2B8  7F E0 07 35 */	extsh. r0, r31
/* 809CF2BC  40 81 00 0C */	ble lbl_809CF2C8
/* 809CF2C0  7F C3 F3 78 */	mr r3, r30
/* 809CF2C4  4B 8F FA 78 */	b __dl__FPv
lbl_809CF2C8:
/* 809CF2C8  7F C3 F3 78 */	mr r3, r30
/* 809CF2CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CF2D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809CF2D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CF2D8  7C 08 03 A6 */	mtlr r0
/* 809CF2DC  38 21 00 10 */	addi r1, r1, 0x10
/* 809CF2E0  4E 80 00 20 */	blr 
