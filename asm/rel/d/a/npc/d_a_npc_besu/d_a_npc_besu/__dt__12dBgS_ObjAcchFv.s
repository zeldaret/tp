lbl_8053DECC:
/* 8053DECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DED0  7C 08 02 A6 */	mflr r0
/* 8053DED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DEDC  93 C1 00 08 */	stw r30, 8(r1)
/* 8053DEE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8053DEE4  7C 9F 23 78 */	mr r31, r4
/* 8053DEE8  41 82 00 38 */	beq lbl_8053DF20
/* 8053DEEC  3C 80 80 54 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8053FD14@ha */
/* 8053DEF0  38 84 FD 14 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8053FD14@l */
/* 8053DEF4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8053DEF8  38 04 00 0C */	addi r0, r4, 0xc
/* 8053DEFC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8053DF00  38 04 00 18 */	addi r0, r4, 0x18
/* 8053DF04  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8053DF08  38 80 00 00 */	li r4, 0
/* 8053DF0C  4B B3 80 89 */	bl __dt__9dBgS_AcchFv
/* 8053DF10  7F E0 07 35 */	extsh. r0, r31
/* 8053DF14  40 81 00 0C */	ble lbl_8053DF20
/* 8053DF18  7F C3 F3 78 */	mr r3, r30
/* 8053DF1C  4B D9 0E 21 */	bl __dl__FPv
lbl_8053DF20:
/* 8053DF20  7F C3 F3 78 */	mr r3, r30
/* 8053DF24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DF28  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053DF2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DF30  7C 08 03 A6 */	mtlr r0
/* 8053DF34  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DF38  4E 80 00 20 */	blr 
