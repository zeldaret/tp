lbl_809BB31C:
/* 809BB31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BB320  7C 08 02 A6 */	mflr r0
/* 809BB324  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BB328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BB32C  93 C1 00 08 */	stw r30, 8(r1)
/* 809BB330  7C 7E 1B 79 */	or. r30, r3, r3
/* 809BB334  7C 9F 23 78 */	mr r31, r4
/* 809BB338  41 82 00 38 */	beq lbl_809BB370
/* 809BB33C  3C 60 80 9C */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809BB49C@ha */
/* 809BB340  38 03 B4 9C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809BB49C@l */
/* 809BB344  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809BB348  38 7E 00 14 */	addi r3, r30, 0x14
/* 809BB34C  38 80 FF FF */	li r4, -1
/* 809BB350  4B 8B 3B C9 */	bl __dt__8cM3dGCirFv
/* 809BB354  7F C3 F3 78 */	mr r3, r30
/* 809BB358  38 80 00 00 */	li r4, 0
/* 809BB35C  4B 8A CD 55 */	bl __dt__13cBgS_PolyInfoFv
/* 809BB360  7F E0 07 35 */	extsh. r0, r31
/* 809BB364  40 81 00 0C */	ble lbl_809BB370
/* 809BB368  7F C3 F3 78 */	mr r3, r30
/* 809BB36C  4B 91 39 D1 */	bl __dl__FPv
lbl_809BB370:
/* 809BB370  7F C3 F3 78 */	mr r3, r30
/* 809BB374  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BB378  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BB37C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BB380  7C 08 03 A6 */	mtlr r0
/* 809BB384  38 21 00 10 */	addi r1, r1, 0x10
/* 809BB388  4E 80 00 20 */	blr 
