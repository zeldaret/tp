lbl_804DACF8:
/* 804DACF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DACFC  7C 08 02 A6 */	mflr r0
/* 804DAD00  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAD04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAD08  93 C1 00 08 */	stw r30, 8(r1)
/* 804DAD0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804DAD10  7C 9F 23 78 */	mr r31, r4
/* 804DAD14  41 82 00 38 */	beq lbl_804DAD4C
/* 804DAD18  3C 80 80 4E */	lis r4, __vt__13dBgS_LinkAcch@ha
/* 804DAD1C  38 84 D7 B4 */	addi r4, r4, __vt__13dBgS_LinkAcch@l
/* 804DAD20  90 9E 00 10 */	stw r4, 0x10(r30)
/* 804DAD24  38 04 00 0C */	addi r0, r4, 0xc
/* 804DAD28  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804DAD2C  38 04 00 18 */	addi r0, r4, 0x18
/* 804DAD30  90 1E 00 24 */	stw r0, 0x24(r30)
/* 804DAD34  38 80 00 00 */	li r4, 0
/* 804DAD38  4B B9 B2 5C */	b __dt__9dBgS_AcchFv
/* 804DAD3C  7F E0 07 35 */	extsh. r0, r31
/* 804DAD40  40 81 00 0C */	ble lbl_804DAD4C
/* 804DAD44  7F C3 F3 78 */	mr r3, r30
/* 804DAD48  4B DF 3F F4 */	b __dl__FPv
lbl_804DAD4C:
/* 804DAD4C  7F C3 F3 78 */	mr r3, r30
/* 804DAD50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DAD54  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DAD58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAD5C  7C 08 03 A6 */	mtlr r0
/* 804DAD60  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAD64  4E 80 00 20 */	blr 
