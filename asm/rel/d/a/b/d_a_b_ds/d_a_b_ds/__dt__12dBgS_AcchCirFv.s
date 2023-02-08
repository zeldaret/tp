lbl_805DC7C0:
/* 805DC7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC7C4  7C 08 02 A6 */	mflr r0
/* 805DC7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC7CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC7D0  93 C1 00 08 */	stw r30, 8(r1)
/* 805DC7D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 805DC7D8  7C 9F 23 78 */	mr r31, r4
/* 805DC7DC  41 82 00 38 */	beq lbl_805DC814
/* 805DC7E0  3C 60 80 5E */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x805DD9E4@ha */
/* 805DC7E4  38 03 D9 E4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x805DD9E4@l */
/* 805DC7E8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 805DC7EC  38 7E 00 14 */	addi r3, r30, 0x14
/* 805DC7F0  38 80 FF FF */	li r4, -1
/* 805DC7F4  4B C9 27 25 */	bl __dt__8cM3dGCirFv
/* 805DC7F8  7F C3 F3 78 */	mr r3, r30
/* 805DC7FC  38 80 00 00 */	li r4, 0
/* 805DC800  4B C8 B8 B1 */	bl __dt__13cBgS_PolyInfoFv
/* 805DC804  7F E0 07 35 */	extsh. r0, r31
/* 805DC808  40 81 00 0C */	ble lbl_805DC814
/* 805DC80C  7F C3 F3 78 */	mr r3, r30
/* 805DC810  4B CF 25 2D */	bl __dl__FPv
lbl_805DC814:
/* 805DC814  7F C3 F3 78 */	mr r3, r30
/* 805DC818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC81C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DC820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC824  7C 08 03 A6 */	mtlr r0
/* 805DC828  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC82C  4E 80 00 20 */	blr 
