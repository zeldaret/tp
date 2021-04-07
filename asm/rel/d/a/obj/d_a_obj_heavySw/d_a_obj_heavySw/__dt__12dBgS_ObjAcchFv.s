lbl_80C1CEB0:
/* 80C1CEB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1CEB4  7C 08 02 A6 */	mflr r0
/* 80C1CEB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1CEBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1CEC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1CEC4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C1CEC8  7C 9F 23 78 */	mr r31, r4
/* 80C1CECC  41 82 00 38 */	beq lbl_80C1CF04
/* 80C1CED0  3C 80 80 C2 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80C1DBDC@ha */
/* 80C1CED4  38 84 DB DC */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80C1DBDC@l */
/* 80C1CED8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C1CEDC  38 04 00 0C */	addi r0, r4, 0xc
/* 80C1CEE0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C1CEE4  38 04 00 18 */	addi r0, r4, 0x18
/* 80C1CEE8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C1CEEC  38 80 00 00 */	li r4, 0
/* 80C1CEF0  4B 45 90 A5 */	bl __dt__9dBgS_AcchFv
/* 80C1CEF4  7F E0 07 35 */	extsh. r0, r31
/* 80C1CEF8  40 81 00 0C */	ble lbl_80C1CF04
/* 80C1CEFC  7F C3 F3 78 */	mr r3, r30
/* 80C1CF00  4B 6B 1E 3D */	bl __dl__FPv
lbl_80C1CF04:
/* 80C1CF04  7F C3 F3 78 */	mr r3, r30
/* 80C1CF08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1CF0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1CF10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1CF14  7C 08 03 A6 */	mtlr r0
/* 80C1CF18  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1CF1C  4E 80 00 20 */	blr 
