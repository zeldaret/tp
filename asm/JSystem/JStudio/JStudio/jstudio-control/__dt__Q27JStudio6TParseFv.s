lbl_802856A8:
/* 802856A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802856AC  7C 08 02 A6 */	mflr r0
/* 802856B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802856B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802856B8  93 C1 00 08 */	stw r30, 8(r1)
/* 802856BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802856C0  7C 9F 23 78 */	mr r31, r4
/* 802856C4  41 82 00 28 */	beq lbl_802856EC
/* 802856C8  3C 80 80 3C */	lis r4, __vt__Q27JStudio6TParse@ha /* 0x803C4AC0@ha */
/* 802856CC  38 04 4A C0 */	addi r0, r4, __vt__Q27JStudio6TParse@l /* 0x803C4AC0@l */
/* 802856D0  90 1E 00 00 */	stw r0, 0(r30)
/* 802856D4  38 80 00 00 */	li r4, 0
/* 802856D8  48 00 3F 89 */	bl __dt__Q37JStudio3stb6TParseFv
/* 802856DC  7F E0 07 35 */	extsh. r0, r31
/* 802856E0  40 81 00 0C */	ble lbl_802856EC
/* 802856E4  7F C3 F3 78 */	mr r3, r30
/* 802856E8  48 04 96 55 */	bl __dl__FPv
lbl_802856EC:
/* 802856EC  7F C3 F3 78 */	mr r3, r30
/* 802856F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802856F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802856F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802856FC  7C 08 03 A6 */	mtlr r0
/* 80285700  38 21 00 10 */	addi r1, r1, 0x10
/* 80285704  4E 80 00 20 */	blr 
