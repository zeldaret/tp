lbl_809F2BD4:
/* 809F2BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F2BD8  7C 08 02 A6 */	mflr r0
/* 809F2BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F2BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F2BE4  93 C1 00 08 */	stw r30, 8(r1)
/* 809F2BE8  7C 7E 1B 79 */	or. r30, r3, r3
/* 809F2BEC  7C 9F 23 78 */	mr r31, r4
/* 809F2BF0  41 82 00 38 */	beq lbl_809F2C28
/* 809F2BF4  3C 80 80 9F */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x809F2F7C@ha */
/* 809F2BF8  38 84 2F 7C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x809F2F7C@l */
/* 809F2BFC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809F2C00  38 04 00 0C */	addi r0, r4, 0xc
/* 809F2C04  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809F2C08  38 04 00 18 */	addi r0, r4, 0x18
/* 809F2C0C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809F2C10  38 80 00 00 */	li r4, 0
/* 809F2C14  4B 68 33 81 */	bl __dt__9dBgS_AcchFv
/* 809F2C18  7F E0 07 35 */	extsh. r0, r31
/* 809F2C1C  40 81 00 0C */	ble lbl_809F2C28
/* 809F2C20  7F C3 F3 78 */	mr r3, r30
/* 809F2C24  4B 8D C1 19 */	bl __dl__FPv
lbl_809F2C28:
/* 809F2C28  7F C3 F3 78 */	mr r3, r30
/* 809F2C2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F2C30  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F2C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F2C38  7C 08 03 A6 */	mtlr r0
/* 809F2C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 809F2C40  4E 80 00 20 */	blr 
