lbl_806B5B0C:
/* 806B5B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B5B10  7C 08 02 A6 */	mflr r0
/* 806B5B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B5B18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B5B1C  93 C1 00 08 */	stw r30, 8(r1)
/* 806B5B20  7C 7E 1B 79 */	or. r30, r3, r3
/* 806B5B24  7C 9F 23 78 */	mr r31, r4
/* 806B5B28  41 82 00 38 */	beq lbl_806B5B60
/* 806B5B2C  3C 80 80 6B */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 806B5B30  38 84 62 18 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 806B5B34  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806B5B38  38 04 00 0C */	addi r0, r4, 0xc
/* 806B5B3C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806B5B40  38 04 00 18 */	addi r0, r4, 0x18
/* 806B5B44  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806B5B48  38 80 00 00 */	li r4, 0
/* 806B5B4C  4B 9C 04 48 */	b __dt__9dBgS_AcchFv
/* 806B5B50  7F E0 07 35 */	extsh. r0, r31
/* 806B5B54  40 81 00 0C */	ble lbl_806B5B60
/* 806B5B58  7F C3 F3 78 */	mr r3, r30
/* 806B5B5C  4B C1 91 E0 */	b __dl__FPv
lbl_806B5B60:
/* 806B5B60  7F C3 F3 78 */	mr r3, r30
/* 806B5B64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B5B68  83 C1 00 08 */	lwz r30, 8(r1)
/* 806B5B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B5B70  7C 08 03 A6 */	mtlr r0
/* 806B5B74  38 21 00 10 */	addi r1, r1, 0x10
/* 806B5B78  4E 80 00 20 */	blr 
