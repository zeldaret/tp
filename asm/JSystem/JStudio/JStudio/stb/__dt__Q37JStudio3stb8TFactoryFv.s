lbl_802895B4:
/* 802895B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802895B8  7C 08 02 A6 */	mflr r0
/* 802895BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802895C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802895C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 802895C8  41 82 00 1C */	beq lbl_802895E4
/* 802895CC  3C A0 80 3C */	lis r5, __vt__Q37JStudio3stb8TFactory@ha /* 0x803C56C0@ha */
/* 802895D0  38 05 56 C0 */	addi r0, r5, __vt__Q37JStudio3stb8TFactory@l /* 0x803C56C0@l */
/* 802895D4  90 1F 00 00 */	stw r0, 0(r31)
/* 802895D8  7C 80 07 35 */	extsh. r0, r4
/* 802895DC  40 81 00 08 */	ble lbl_802895E4
/* 802895E0  48 04 57 5D */	bl __dl__FPv
lbl_802895E4:
/* 802895E4  7F E3 FB 78 */	mr r3, r31
/* 802895E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802895EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802895F0  7C 08 03 A6 */	mtlr r0
/* 802895F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802895F8  4E 80 00 20 */	blr 
