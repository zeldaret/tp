lbl_80A05F04:
/* 80A05F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A05F08  7C 08 02 A6 */	mflr r0
/* 80A05F0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A05F10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A05F14  93 C1 00 08 */	stw r30, 8(r1)
/* 80A05F18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A05F1C  7C 9F 23 78 */	mr r31, r4
/* 80A05F20  41 82 00 38 */	beq lbl_80A05F58
/* 80A05F24  3C 80 80 A0 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80A0778C@ha */
/* 80A05F28  38 84 77 8C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80A0778C@l */
/* 80A05F2C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A05F30  38 04 00 0C */	addi r0, r4, 0xc
/* 80A05F34  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A05F38  38 04 00 18 */	addi r0, r4, 0x18
/* 80A05F3C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A05F40  38 80 00 00 */	li r4, 0
/* 80A05F44  4B 67 00 51 */	bl __dt__9dBgS_AcchFv
/* 80A05F48  7F E0 07 35 */	extsh. r0, r31
/* 80A05F4C  40 81 00 0C */	ble lbl_80A05F58
/* 80A05F50  7F C3 F3 78 */	mr r3, r30
/* 80A05F54  4B 8C 8D E9 */	bl __dl__FPv
lbl_80A05F58:
/* 80A05F58  7F C3 F3 78 */	mr r3, r30
/* 80A05F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A05F60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A05F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A05F68  7C 08 03 A6 */	mtlr r0
/* 80A05F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A05F70  4E 80 00 20 */	blr 
