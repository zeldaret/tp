lbl_809A9BBC:
/* 809A9BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A9BC0  7C 08 02 A6 */	mflr r0
/* 809A9BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A9BC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A9BCC  93 C1 00 08 */	stw r30, 8(r1)
/* 809A9BD0  7C 7E 1B 79 */	or. r30, r3, r3
/* 809A9BD4  7C 9F 23 78 */	mr r31, r4
/* 809A9BD8  41 82 00 38 */	beq lbl_809A9C10
/* 809A9BDC  3C 60 80 9B */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809AA988@ha */
/* 809A9BE0  38 03 A9 88 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809AA988@l */
/* 809A9BE4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809A9BE8  38 7E 00 14 */	addi r3, r30, 0x14
/* 809A9BEC  38 80 FF FF */	li r4, -1
/* 809A9BF0  4B 8C 53 29 */	bl __dt__8cM3dGCirFv
/* 809A9BF4  7F C3 F3 78 */	mr r3, r30
/* 809A9BF8  38 80 00 00 */	li r4, 0
/* 809A9BFC  4B 8B E4 B5 */	bl __dt__13cBgS_PolyInfoFv
/* 809A9C00  7F E0 07 35 */	extsh. r0, r31
/* 809A9C04  40 81 00 0C */	ble lbl_809A9C10
/* 809A9C08  7F C3 F3 78 */	mr r3, r30
/* 809A9C0C  4B 92 51 31 */	bl __dl__FPv
lbl_809A9C10:
/* 809A9C10  7F C3 F3 78 */	mr r3, r30
/* 809A9C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A9C18  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A9C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A9C20  7C 08 03 A6 */	mtlr r0
/* 809A9C24  38 21 00 10 */	addi r1, r1, 0x10
/* 809A9C28  4E 80 00 20 */	blr 
