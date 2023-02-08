lbl_806C6D34:
/* 806C6D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C6D38  7C 08 02 A6 */	mflr r0
/* 806C6D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C6D40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C6D44  93 C1 00 08 */	stw r30, 8(r1)
/* 806C6D48  7C 7E 1B 79 */	or. r30, r3, r3
/* 806C6D4C  7C 9F 23 78 */	mr r31, r4
/* 806C6D50  41 82 00 38 */	beq lbl_806C6D88
/* 806C6D54  3C 80 80 6C */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x806C78C0@ha */
/* 806C6D58  38 84 78 C0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x806C78C0@l */
/* 806C6D5C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806C6D60  38 04 00 0C */	addi r0, r4, 0xc
/* 806C6D64  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806C6D68  38 04 00 18 */	addi r0, r4, 0x18
/* 806C6D6C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806C6D70  38 80 00 00 */	li r4, 0
/* 806C6D74  4B 9A F2 21 */	bl __dt__9dBgS_AcchFv
/* 806C6D78  7F E0 07 35 */	extsh. r0, r31
/* 806C6D7C  40 81 00 0C */	ble lbl_806C6D88
/* 806C6D80  7F C3 F3 78 */	mr r3, r30
/* 806C6D84  4B C0 7F B9 */	bl __dl__FPv
lbl_806C6D88:
/* 806C6D88  7F C3 F3 78 */	mr r3, r30
/* 806C6D8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C6D90  83 C1 00 08 */	lwz r30, 8(r1)
/* 806C6D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C6D98  7C 08 03 A6 */	mtlr r0
/* 806C6D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 806C6DA0  4E 80 00 20 */	blr 
