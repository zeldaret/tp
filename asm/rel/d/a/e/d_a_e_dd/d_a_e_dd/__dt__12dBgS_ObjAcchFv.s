lbl_806A6BE0:
/* 806A6BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A6BE4  7C 08 02 A6 */	mflr r0
/* 806A6BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A6BEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A6BF0  93 C1 00 08 */	stw r30, 8(r1)
/* 806A6BF4  7C 7E 1B 79 */	or. r30, r3, r3
/* 806A6BF8  7C 9F 23 78 */	mr r31, r4
/* 806A6BFC  41 82 00 38 */	beq lbl_806A6C34
/* 806A6C00  3C 80 80 6A */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 806A6C04  38 84 74 70 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 806A6C08  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806A6C0C  38 04 00 0C */	addi r0, r4, 0xc
/* 806A6C10  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806A6C14  38 04 00 18 */	addi r0, r4, 0x18
/* 806A6C18  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806A6C1C  38 80 00 00 */	li r4, 0
/* 806A6C20  4B 9C F3 74 */	b __dt__9dBgS_AcchFv
/* 806A6C24  7F E0 07 35 */	extsh. r0, r31
/* 806A6C28  40 81 00 0C */	ble lbl_806A6C34
/* 806A6C2C  7F C3 F3 78 */	mr r3, r30
/* 806A6C30  4B C2 81 0C */	b __dl__FPv
lbl_806A6C34:
/* 806A6C34  7F C3 F3 78 */	mr r3, r30
/* 806A6C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A6C3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806A6C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A6C44  7C 08 03 A6 */	mtlr r0
/* 806A6C48  38 21 00 10 */	addi r1, r1, 0x10
/* 806A6C4C  4E 80 00 20 */	blr 
