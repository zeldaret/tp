lbl_80CB5F18:
/* 80CB5F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB5F1C  7C 08 02 A6 */	mflr r0
/* 80CB5F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5F24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB5F28  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB5F2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CB5F30  7C 9F 23 78 */	mr r31, r4
/* 80CB5F34  41 82 00 38 */	beq lbl_80CB5F6C
/* 80CB5F38  3C 80 80 CC */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80CB8544@ha */
/* 80CB5F3C  38 84 85 44 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80CB8544@l */
/* 80CB5F40  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CB5F44  38 04 00 0C */	addi r0, r4, 0xc
/* 80CB5F48  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CB5F4C  38 04 00 18 */	addi r0, r4, 0x18
/* 80CB5F50  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CB5F54  38 80 00 00 */	li r4, 0
/* 80CB5F58  4B 3C 00 3D */	bl __dt__9dBgS_AcchFv
/* 80CB5F5C  7F E0 07 35 */	extsh. r0, r31
/* 80CB5F60  40 81 00 0C */	ble lbl_80CB5F6C
/* 80CB5F64  7F C3 F3 78 */	mr r3, r30
/* 80CB5F68  4B 61 8D D5 */	bl __dl__FPv
lbl_80CB5F6C:
/* 80CB5F6C  7F C3 F3 78 */	mr r3, r30
/* 80CB5F70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB5F74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB5F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB5F7C  7C 08 03 A6 */	mtlr r0
/* 80CB5F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB5F84  4E 80 00 20 */	blr 
