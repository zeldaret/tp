lbl_80AB87B8:
/* 80AB87B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB87BC  7C 08 02 A6 */	mflr r0
/* 80AB87C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB87C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB87C8  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB87CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB87D0  7C 9F 23 78 */	mr r31, r4
/* 80AB87D4  41 82 00 38 */	beq lbl_80AB880C
/* 80AB87D8  3C 80 80 AC */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80AB93C4@ha */
/* 80AB87DC  38 84 93 C4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80AB93C4@l */
/* 80AB87E0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AB87E4  38 04 00 0C */	addi r0, r4, 0xc
/* 80AB87E8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AB87EC  38 04 00 18 */	addi r0, r4, 0x18
/* 80AB87F0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AB87F4  38 80 00 00 */	li r4, 0
/* 80AB87F8  4B 5B D7 9D */	bl __dt__9dBgS_AcchFv
/* 80AB87FC  7F E0 07 35 */	extsh. r0, r31
/* 80AB8800  40 81 00 0C */	ble lbl_80AB880C
/* 80AB8804  7F C3 F3 78 */	mr r3, r30
/* 80AB8808  4B 81 65 35 */	bl __dl__FPv
lbl_80AB880C:
/* 80AB880C  7F C3 F3 78 */	mr r3, r30
/* 80AB8810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB8814  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB8818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB881C  7C 08 03 A6 */	mtlr r0
/* 80AB8820  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB8824  4E 80 00 20 */	blr 
