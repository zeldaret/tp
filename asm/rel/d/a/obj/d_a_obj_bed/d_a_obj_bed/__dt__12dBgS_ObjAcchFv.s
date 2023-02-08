lbl_80BADB00:
/* 80BADB00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BADB04  7C 08 02 A6 */	mflr r0
/* 80BADB08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BADB0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BADB10  93 C1 00 08 */	stw r30, 8(r1)
/* 80BADB14  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BADB18  7C 9F 23 78 */	mr r31, r4
/* 80BADB1C  41 82 00 38 */	beq lbl_80BADB54
/* 80BADB20  3C 80 80 BB */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80BAE1EC@ha */
/* 80BADB24  38 84 E1 EC */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80BAE1EC@l */
/* 80BADB28  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BADB2C  38 04 00 0C */	addi r0, r4, 0xc
/* 80BADB30  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BADB34  38 04 00 18 */	addi r0, r4, 0x18
/* 80BADB38  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BADB3C  38 80 00 00 */	li r4, 0
/* 80BADB40  4B 4C 84 55 */	bl __dt__9dBgS_AcchFv
/* 80BADB44  7F E0 07 35 */	extsh. r0, r31
/* 80BADB48  40 81 00 0C */	ble lbl_80BADB54
/* 80BADB4C  7F C3 F3 78 */	mr r3, r30
/* 80BADB50  4B 72 11 ED */	bl __dl__FPv
lbl_80BADB54:
/* 80BADB54  7F C3 F3 78 */	mr r3, r30
/* 80BADB58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BADB5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BADB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BADB64  7C 08 03 A6 */	mtlr r0
/* 80BADB68  38 21 00 10 */	addi r1, r1, 0x10
/* 80BADB6C  4E 80 00 20 */	blr 
