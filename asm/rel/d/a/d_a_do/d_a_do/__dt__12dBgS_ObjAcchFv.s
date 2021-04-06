lbl_8066ECD0:
/* 8066ECD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066ECD4  7C 08 02 A6 */	mflr r0
/* 8066ECD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066ECDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8066ECE0  93 C1 00 08 */	stw r30, 8(r1)
/* 8066ECE4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8066ECE8  7C 9F 23 78 */	mr r31, r4
/* 8066ECEC  41 82 00 38 */	beq lbl_8066ED24
/* 8066ECF0  3C 80 80 67 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8066F234@ha */
/* 8066ECF4  38 84 F2 34 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8066F234@l */
/* 8066ECF8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8066ECFC  38 04 00 0C */	addi r0, r4, 0xc
/* 8066ED00  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8066ED04  38 04 00 18 */	addi r0, r4, 0x18
/* 8066ED08  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8066ED0C  38 80 00 00 */	li r4, 0
/* 8066ED10  4B A0 72 85 */	bl __dt__9dBgS_AcchFv
/* 8066ED14  7F E0 07 35 */	extsh. r0, r31
/* 8066ED18  40 81 00 0C */	ble lbl_8066ED24
/* 8066ED1C  7F C3 F3 78 */	mr r3, r30
/* 8066ED20  4B C6 00 1D */	bl __dl__FPv
lbl_8066ED24:
/* 8066ED24  7F C3 F3 78 */	mr r3, r30
/* 8066ED28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8066ED2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8066ED30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066ED34  7C 08 03 A6 */	mtlr r0
/* 8066ED38  38 21 00 10 */	addi r1, r1, 0x10
/* 8066ED3C  4E 80 00 20 */	blr 
