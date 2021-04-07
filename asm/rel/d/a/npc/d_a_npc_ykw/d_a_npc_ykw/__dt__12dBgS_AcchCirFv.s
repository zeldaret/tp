lbl_80B67320:
/* 80B67320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B67324  7C 08 02 A6 */	mflr r0
/* 80B67328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6732C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B67330  93 C1 00 08 */	stw r30, 8(r1)
/* 80B67334  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B67338  7C 9F 23 78 */	mr r31, r4
/* 80B6733C  41 82 00 38 */	beq lbl_80B67374
/* 80B67340  3C 60 80 B7 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B68C24@ha */
/* 80B67344  38 03 8C 24 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B68C24@l */
/* 80B67348  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B6734C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B67350  38 80 FF FF */	li r4, -1
/* 80B67354  4B 70 7B C5 */	bl __dt__8cM3dGCirFv
/* 80B67358  7F C3 F3 78 */	mr r3, r30
/* 80B6735C  38 80 00 00 */	li r4, 0
/* 80B67360  4B 70 0D 51 */	bl __dt__13cBgS_PolyInfoFv
/* 80B67364  7F E0 07 35 */	extsh. r0, r31
/* 80B67368  40 81 00 0C */	ble lbl_80B67374
/* 80B6736C  7F C3 F3 78 */	mr r3, r30
/* 80B67370  4B 76 79 CD */	bl __dl__FPv
lbl_80B67374:
/* 80B67374  7F C3 F3 78 */	mr r3, r30
/* 80B67378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6737C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B67380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B67384  7C 08 03 A6 */	mtlr r0
/* 80B67388  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6738C  4E 80 00 20 */	blr 
