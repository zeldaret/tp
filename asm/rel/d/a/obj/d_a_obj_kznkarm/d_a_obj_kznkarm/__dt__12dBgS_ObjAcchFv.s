lbl_80C50B3C:
/* 80C50B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C50B40  7C 08 02 A6 */	mflr r0
/* 80C50B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C50B48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C50B4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C50B50  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C50B54  7C 9F 23 78 */	mr r31, r4
/* 80C50B58  41 82 00 38 */	beq lbl_80C50B90
/* 80C50B5C  3C 80 80 C5 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80C50EEC@ha */
/* 80C50B60  38 84 0E EC */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80C50EEC@l */
/* 80C50B64  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C50B68  38 04 00 0C */	addi r0, r4, 0xc
/* 80C50B6C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C50B70  38 04 00 18 */	addi r0, r4, 0x18
/* 80C50B74  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C50B78  38 80 00 00 */	li r4, 0
/* 80C50B7C  4B 42 54 19 */	bl __dt__9dBgS_AcchFv
/* 80C50B80  7F E0 07 35 */	extsh. r0, r31
/* 80C50B84  40 81 00 0C */	ble lbl_80C50B90
/* 80C50B88  7F C3 F3 78 */	mr r3, r30
/* 80C50B8C  4B 67 E1 B1 */	bl __dl__FPv
lbl_80C50B90:
/* 80C50B90  7F C3 F3 78 */	mr r3, r30
/* 80C50B94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C50B98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C50B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C50BA0  7C 08 03 A6 */	mtlr r0
/* 80C50BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C50BA8  4E 80 00 20 */	blr 
