lbl_80C38F08:
/* 80C38F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C38F0C  7C 08 02 A6 */	mflr r0
/* 80C38F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C38F14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C38F18  93 C1 00 08 */	stw r30, 8(r1)
/* 80C38F1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C38F20  7C 9F 23 78 */	mr r31, r4
/* 80C38F24  41 82 00 38 */	beq lbl_80C38F5C
/* 80C38F28  3C 80 80 C4 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80C38F2C  38 84 97 E8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80C38F30  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C38F34  38 04 00 0C */	addi r0, r4, 0xc
/* 80C38F38  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C38F3C  38 04 00 18 */	addi r0, r4, 0x18
/* 80C38F40  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C38F44  38 80 00 00 */	li r4, 0
/* 80C38F48  4B 43 D0 4C */	b __dt__9dBgS_AcchFv
/* 80C38F4C  7F E0 07 35 */	extsh. r0, r31
/* 80C38F50  40 81 00 0C */	ble lbl_80C38F5C
/* 80C38F54  7F C3 F3 78 */	mr r3, r30
/* 80C38F58  4B 69 5D E4 */	b __dl__FPv
lbl_80C38F5C:
/* 80C38F5C  7F C3 F3 78 */	mr r3, r30
/* 80C38F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C38F64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C38F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C38F6C  7C 08 03 A6 */	mtlr r0
/* 80C38F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C38F74  4E 80 00 20 */	blr 
