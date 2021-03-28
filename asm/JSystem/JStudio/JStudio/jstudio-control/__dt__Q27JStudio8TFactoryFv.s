lbl_802854D0:
/* 802854D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802854D4  7C 08 02 A6 */	mflr r0
/* 802854D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802854DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802854E0  93 C1 00 08 */	stw r30, 8(r1)
/* 802854E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802854E8  7C 9F 23 78 */	mr r31, r4
/* 802854EC  41 82 00 58 */	beq lbl_80285544
/* 802854F0  3C 60 80 3C */	lis r3, __vt__Q27JStudio8TFactory@ha
/* 802854F4  38 03 4A E0 */	addi r0, r3, __vt__Q27JStudio8TFactory@l
/* 802854F8  90 1E 00 00 */	stw r0, 0(r30)
/* 802854FC  38 7E 00 14 */	addi r3, r30, 0x14
/* 80285500  38 80 FF FF */	li r4, -1
/* 80285504  4B FF BD 71 */	bl __dt__Q37JStudio3ctb8TFactoryFv
/* 80285508  38 7E 00 10 */	addi r3, r30, 0x10
/* 8028550C  38 80 FF FF */	li r4, -1
/* 80285510  4B FF F4 09 */	bl __dt__Q37JStudio3fvb8TFactoryFv
/* 80285514  34 1E 00 04 */	addic. r0, r30, 4
/* 80285518  41 82 00 10 */	beq lbl_80285528
/* 8028551C  38 7E 00 04 */	addi r3, r30, 4
/* 80285520  38 80 00 00 */	li r4, 0
/* 80285524  48 05 74 F9 */	bl __dt__Q27JGadget13TNodeLinkListFv
lbl_80285528:
/* 80285528  7F C3 F3 78 */	mr r3, r30
/* 8028552C  38 80 00 00 */	li r4, 0
/* 80285530  48 00 40 85 */	bl __dt__Q37JStudio3stb8TFactoryFv
/* 80285534  7F E0 07 35 */	extsh. r0, r31
/* 80285538  40 81 00 0C */	ble lbl_80285544
/* 8028553C  7F C3 F3 78 */	mr r3, r30
/* 80285540  48 04 97 FD */	bl __dl__FPv
lbl_80285544:
/* 80285544  7F C3 F3 78 */	mr r3, r30
/* 80285548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028554C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80285550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285554  7C 08 03 A6 */	mtlr r0
/* 80285558  38 21 00 10 */	addi r1, r1, 0x10
/* 8028555C  4E 80 00 20 */	blr 
