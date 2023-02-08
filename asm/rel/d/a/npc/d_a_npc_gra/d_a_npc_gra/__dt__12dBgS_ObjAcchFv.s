lbl_809C99C4:
/* 809C99C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C99C8  7C 08 02 A6 */	mflr r0
/* 809C99CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C99D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C99D4  93 C1 00 08 */	stw r30, 8(r1)
/* 809C99D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 809C99DC  7C 9F 23 78 */	mr r31, r4
/* 809C99E0  41 82 00 38 */	beq lbl_809C9A18
/* 809C99E4  3C 80 80 9D */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x809CB254@ha */
/* 809C99E8  38 84 B2 54 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x809CB254@l */
/* 809C99EC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809C99F0  38 04 00 0C */	addi r0, r4, 0xc
/* 809C99F4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809C99F8  38 04 00 18 */	addi r0, r4, 0x18
/* 809C99FC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809C9A00  38 80 00 00 */	li r4, 0
/* 809C9A04  4B 6A C5 91 */	bl __dt__9dBgS_AcchFv
/* 809C9A08  7F E0 07 35 */	extsh. r0, r31
/* 809C9A0C  40 81 00 0C */	ble lbl_809C9A18
/* 809C9A10  7F C3 F3 78 */	mr r3, r30
/* 809C9A14  4B 90 53 29 */	bl __dl__FPv
lbl_809C9A18:
/* 809C9A18  7F C3 F3 78 */	mr r3, r30
/* 809C9A1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C9A20  83 C1 00 08 */	lwz r30, 8(r1)
/* 809C9A24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C9A28  7C 08 03 A6 */	mtlr r0
/* 809C9A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 809C9A30  4E 80 00 20 */	blr 
