lbl_809CF340:
/* 809CF340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CF344  7C 08 02 A6 */	mflr r0
/* 809CF348  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CF34C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CF350  93 C1 00 08 */	stw r30, 8(r1)
/* 809CF354  7C 7E 1B 79 */	or. r30, r3, r3
/* 809CF358  7C 9F 23 78 */	mr r31, r4
/* 809CF35C  41 82 00 38 */	beq lbl_809CF394
/* 809CF360  3C 80 80 9D */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x809CFAD8@ha */
/* 809CF364  38 84 FA D8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x809CFAD8@l */
/* 809CF368  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809CF36C  38 04 00 0C */	addi r0, r4, 0xc
/* 809CF370  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809CF374  38 04 00 18 */	addi r0, r4, 0x18
/* 809CF378  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809CF37C  38 80 00 00 */	li r4, 0
/* 809CF380  4B 6A 6C 15 */	bl __dt__9dBgS_AcchFv
/* 809CF384  7F E0 07 35 */	extsh. r0, r31
/* 809CF388  40 81 00 0C */	ble lbl_809CF394
/* 809CF38C  7F C3 F3 78 */	mr r3, r30
/* 809CF390  4B 8F F9 AD */	bl __dl__FPv
lbl_809CF394:
/* 809CF394  7F C3 F3 78 */	mr r3, r30
/* 809CF398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CF39C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809CF3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CF3A4  7C 08 03 A6 */	mtlr r0
/* 809CF3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 809CF3AC  4E 80 00 20 */	blr 
