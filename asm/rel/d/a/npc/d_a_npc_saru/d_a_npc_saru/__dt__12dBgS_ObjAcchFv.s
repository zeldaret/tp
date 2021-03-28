lbl_80AC3DFC:
/* 80AC3DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC3E00  7C 08 02 A6 */	mflr r0
/* 80AC3E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3E08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC3E0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC3E10  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC3E14  7C 9F 23 78 */	mr r31, r4
/* 80AC3E18  41 82 00 38 */	beq lbl_80AC3E50
/* 80AC3E1C  3C 80 80 AC */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80AC3E20  38 84 4E 80 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80AC3E24  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AC3E28  38 04 00 0C */	addi r0, r4, 0xc
/* 80AC3E2C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AC3E30  38 04 00 18 */	addi r0, r4, 0x18
/* 80AC3E34  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AC3E38  38 80 00 00 */	li r4, 0
/* 80AC3E3C  4B 5B 21 58 */	b __dt__9dBgS_AcchFv
/* 80AC3E40  7F E0 07 35 */	extsh. r0, r31
/* 80AC3E44  40 81 00 0C */	ble lbl_80AC3E50
/* 80AC3E48  7F C3 F3 78 */	mr r3, r30
/* 80AC3E4C  4B 80 AE F0 */	b __dl__FPv
lbl_80AC3E50:
/* 80AC3E50  7F C3 F3 78 */	mr r3, r30
/* 80AC3E54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC3E58  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC3E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC3E60  7C 08 03 A6 */	mtlr r0
/* 80AC3E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3E68  4E 80 00 20 */	blr 
