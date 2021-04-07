lbl_80289194:
/* 80289194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80289198  7C 08 02 A6 */	mflr r0
/* 8028919C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802891A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802891A4  93 C1 00 08 */	stw r30, 8(r1)
/* 802891A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802891AC  7C 9F 23 78 */	mr r31, r4
/* 802891B0  41 82 00 5C */	beq lbl_8028920C
/* 802891B4  3C 60 80 3C */	lis r3, __vt__Q37JStudio3stb8TControl@ha /* 0x803C56D4@ha */
/* 802891B8  38 03 56 D4 */	addi r0, r3, __vt__Q37JStudio3stb8TControl@l /* 0x803C56D4@l */
/* 802891BC  90 1E 00 00 */	stw r0, 0(r30)
/* 802891C0  38 00 00 00 */	li r0, 0
/* 802891C4  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802891C8  34 1E 00 20 */	addic. r0, r30, 0x20
/* 802891CC  41 82 00 1C */	beq lbl_802891E8
/* 802891D0  3C 60 80 3C */	lis r3, __vt__Q37JStudio3stb15TObject_control@ha /* 0x803C56E0@ha */
/* 802891D4  38 03 56 E0 */	addi r0, r3, __vt__Q37JStudio3stb15TObject_control@l /* 0x803C56E0@l */
/* 802891D8  90 1E 00 28 */	stw r0, 0x28(r30)
/* 802891DC  38 7E 00 20 */	addi r3, r30, 0x20
/* 802891E0  38 80 00 00 */	li r4, 0
/* 802891E4  4B FF F9 4D */	bl __dt__Q37JStudio3stb7TObjectFv
lbl_802891E8:
/* 802891E8  34 1E 00 10 */	addic. r0, r30, 0x10
/* 802891EC  41 82 00 10 */	beq lbl_802891FC
/* 802891F0  38 7E 00 10 */	addi r3, r30, 0x10
/* 802891F4  38 80 00 00 */	li r4, 0
/* 802891F8  48 05 38 25 */	bl __dt__Q27JGadget13TNodeLinkListFv
lbl_802891FC:
/* 802891FC  7F E0 07 35 */	extsh. r0, r31
/* 80289200  40 81 00 0C */	ble lbl_8028920C
/* 80289204  7F C3 F3 78 */	mr r3, r30
/* 80289208  48 04 5B 35 */	bl __dl__FPv
lbl_8028920C:
/* 8028920C  7F C3 F3 78 */	mr r3, r30
/* 80289210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80289214  83 C1 00 08 */	lwz r30, 8(r1)
/* 80289218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028921C  7C 08 03 A6 */	mtlr r0
/* 80289220  38 21 00 10 */	addi r1, r1, 0x10
/* 80289224  4E 80 00 20 */	blr 
