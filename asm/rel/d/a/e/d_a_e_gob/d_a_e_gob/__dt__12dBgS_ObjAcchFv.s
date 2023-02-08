lbl_806DEC60:
/* 806DEC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DEC64  7C 08 02 A6 */	mflr r0
/* 806DEC68  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DEC6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DEC70  93 C1 00 08 */	stw r30, 8(r1)
/* 806DEC74  7C 7E 1B 79 */	or. r30, r3, r3
/* 806DEC78  7C 9F 23 78 */	mr r31, r4
/* 806DEC7C  41 82 00 38 */	beq lbl_806DECB4
/* 806DEC80  3C 80 80 6E */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x806DF21C@ha */
/* 806DEC84  38 84 F2 1C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x806DF21C@l */
/* 806DEC88  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806DEC8C  38 04 00 0C */	addi r0, r4, 0xc
/* 806DEC90  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806DEC94  38 04 00 18 */	addi r0, r4, 0x18
/* 806DEC98  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806DEC9C  38 80 00 00 */	li r4, 0
/* 806DECA0  4B 99 72 F5 */	bl __dt__9dBgS_AcchFv
/* 806DECA4  7F E0 07 35 */	extsh. r0, r31
/* 806DECA8  40 81 00 0C */	ble lbl_806DECB4
/* 806DECAC  7F C3 F3 78 */	mr r3, r30
/* 806DECB0  4B BF 00 8D */	bl __dl__FPv
lbl_806DECB4:
/* 806DECB4  7F C3 F3 78 */	mr r3, r30
/* 806DECB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DECBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 806DECC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DECC4  7C 08 03 A6 */	mtlr r0
/* 806DECC8  38 21 00 10 */	addi r1, r1, 0x10
/* 806DECCC  4E 80 00 20 */	blr 
