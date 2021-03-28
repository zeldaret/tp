lbl_80C3EF28:
/* 80C3EF28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3EF2C  7C 08 02 A6 */	mflr r0
/* 80C3EF30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3EF34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3EF38  93 C1 00 08 */	stw r30, 8(r1)
/* 80C3EF3C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C3EF40  7C 9F 23 78 */	mr r31, r4
/* 80C3EF44  41 82 00 38 */	beq lbl_80C3EF7C
/* 80C3EF48  3C 80 80 C4 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80C3EF4C  38 84 F1 DC */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80C3EF50  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C3EF54  38 04 00 0C */	addi r0, r4, 0xc
/* 80C3EF58  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C3EF5C  38 04 00 18 */	addi r0, r4, 0x18
/* 80C3EF60  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C3EF64  38 80 00 00 */	li r4, 0
/* 80C3EF68  4B 43 70 2C */	b __dt__9dBgS_AcchFv
/* 80C3EF6C  7F E0 07 35 */	extsh. r0, r31
/* 80C3EF70  40 81 00 0C */	ble lbl_80C3EF7C
/* 80C3EF74  7F C3 F3 78 */	mr r3, r30
/* 80C3EF78  4B 68 FD C4 */	b __dl__FPv
lbl_80C3EF7C:
/* 80C3EF7C  7F C3 F3 78 */	mr r3, r30
/* 80C3EF80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3EF84  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C3EF88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3EF8C  7C 08 03 A6 */	mtlr r0
/* 80C3EF90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3EF94  4E 80 00 20 */	blr 
