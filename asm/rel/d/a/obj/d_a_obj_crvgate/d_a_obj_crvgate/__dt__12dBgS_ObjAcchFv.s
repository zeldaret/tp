lbl_80BD2E0C:
/* 80BD2E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD2E10  7C 08 02 A6 */	mflr r0
/* 80BD2E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD2E18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD2E1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BD2E20  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BD2E24  7C 9F 23 78 */	mr r31, r4
/* 80BD2E28  41 82 00 38 */	beq lbl_80BD2E60
/* 80BD2E2C  3C 80 80 BD */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BD2E30  38 84 32 6C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BD2E34  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BD2E38  38 04 00 0C */	addi r0, r4, 0xc
/* 80BD2E3C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BD2E40  38 04 00 18 */	addi r0, r4, 0x18
/* 80BD2E44  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BD2E48  38 80 00 00 */	li r4, 0
/* 80BD2E4C  4B 4A 31 48 */	b __dt__9dBgS_AcchFv
/* 80BD2E50  7F E0 07 35 */	extsh. r0, r31
/* 80BD2E54  40 81 00 0C */	ble lbl_80BD2E60
/* 80BD2E58  7F C3 F3 78 */	mr r3, r30
/* 80BD2E5C  4B 6F BE E0 */	b __dl__FPv
lbl_80BD2E60:
/* 80BD2E60  7F C3 F3 78 */	mr r3, r30
/* 80BD2E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD2E68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BD2E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD2E70  7C 08 03 A6 */	mtlr r0
/* 80BD2E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD2E78  4E 80 00 20 */	blr 
