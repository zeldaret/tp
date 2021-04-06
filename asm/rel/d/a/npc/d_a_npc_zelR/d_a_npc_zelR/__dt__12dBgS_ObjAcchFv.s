lbl_80B71450:
/* 80B71450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B71454  7C 08 02 A6 */	mflr r0
/* 80B71458  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7145C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B71460  93 C1 00 08 */	stw r30, 8(r1)
/* 80B71464  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B71468  7C 9F 23 78 */	mr r31, r4
/* 80B7146C  41 82 00 38 */	beq lbl_80B714A4
/* 80B71470  3C 80 80 B7 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80B71D44@ha */
/* 80B71474  38 84 1D 44 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80B71D44@l */
/* 80B71478  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B7147C  38 04 00 0C */	addi r0, r4, 0xc
/* 80B71480  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B71484  38 04 00 18 */	addi r0, r4, 0x18
/* 80B71488  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B7148C  38 80 00 00 */	li r4, 0
/* 80B71490  4B 50 4B 05 */	bl __dt__9dBgS_AcchFv
/* 80B71494  7F E0 07 35 */	extsh. r0, r31
/* 80B71498  40 81 00 0C */	ble lbl_80B714A4
/* 80B7149C  7F C3 F3 78 */	mr r3, r30
/* 80B714A0  4B 75 D8 9D */	bl __dl__FPv
lbl_80B714A4:
/* 80B714A4  7F C3 F3 78 */	mr r3, r30
/* 80B714A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B714AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B714B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B714B4  7C 08 03 A6 */	mtlr r0
/* 80B714B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B714BC  4E 80 00 20 */	blr 
