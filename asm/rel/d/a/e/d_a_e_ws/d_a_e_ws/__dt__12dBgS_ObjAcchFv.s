lbl_807E6CFC:
/* 807E6CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E6D00  7C 08 02 A6 */	mflr r0
/* 807E6D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E6D08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E6D0C  93 C1 00 08 */	stw r30, 8(r1)
/* 807E6D10  7C 7E 1B 79 */	or. r30, r3, r3
/* 807E6D14  7C 9F 23 78 */	mr r31, r4
/* 807E6D18  41 82 00 38 */	beq lbl_807E6D50
/* 807E6D1C  3C 80 80 7E */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 807E6D20  38 84 75 70 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 807E6D24  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807E6D28  38 04 00 0C */	addi r0, r4, 0xc
/* 807E6D2C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 807E6D30  38 04 00 18 */	addi r0, r4, 0x18
/* 807E6D34  90 1E 00 24 */	stw r0, 0x24(r30)
/* 807E6D38  38 80 00 00 */	li r4, 0
/* 807E6D3C  4B 88 F2 58 */	b __dt__9dBgS_AcchFv
/* 807E6D40  7F E0 07 35 */	extsh. r0, r31
/* 807E6D44  40 81 00 0C */	ble lbl_807E6D50
/* 807E6D48  7F C3 F3 78 */	mr r3, r30
/* 807E6D4C  4B AE 7F F0 */	b __dl__FPv
lbl_807E6D50:
/* 807E6D50  7F C3 F3 78 */	mr r3, r30
/* 807E6D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E6D58  83 C1 00 08 */	lwz r30, 8(r1)
/* 807E6D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E6D60  7C 08 03 A6 */	mtlr r0
/* 807E6D64  38 21 00 10 */	addi r1, r1, 0x10
/* 807E6D68  4E 80 00 20 */	blr 
