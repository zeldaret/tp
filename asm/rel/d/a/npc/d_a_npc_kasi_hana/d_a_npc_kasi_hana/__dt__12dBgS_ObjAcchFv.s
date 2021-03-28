lbl_80A20DE0:
/* 80A20DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20DE4  7C 08 02 A6 */	mflr r0
/* 80A20DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A20DF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A20DF4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A20DF8  7C 9F 23 78 */	mr r31, r4
/* 80A20DFC  41 82 00 38 */	beq lbl_80A20E34
/* 80A20E00  3C 80 80 A2 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80A20E04  38 84 17 64 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80A20E08  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A20E0C  38 04 00 0C */	addi r0, r4, 0xc
/* 80A20E10  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A20E14  38 04 00 18 */	addi r0, r4, 0x18
/* 80A20E18  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A20E1C  38 80 00 00 */	li r4, 0
/* 80A20E20  4B 65 51 74 */	b __dt__9dBgS_AcchFv
/* 80A20E24  7F E0 07 35 */	extsh. r0, r31
/* 80A20E28  40 81 00 0C */	ble lbl_80A20E34
/* 80A20E2C  7F C3 F3 78 */	mr r3, r30
/* 80A20E30  4B 8A DF 0C */	b __dl__FPv
lbl_80A20E34:
/* 80A20E34  7F C3 F3 78 */	mr r3, r30
/* 80A20E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A20E3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A20E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A20E44  7C 08 03 A6 */	mtlr r0
/* 80A20E48  38 21 00 10 */	addi r1, r1, 0x10
/* 80A20E4C  4E 80 00 20 */	blr 
