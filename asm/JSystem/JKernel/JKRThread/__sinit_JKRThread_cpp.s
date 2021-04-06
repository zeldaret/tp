lbl_802D1E94:
/* 802D1E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1E98  7C 08 02 A6 */	mflr r0
/* 802D1E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1EA4  3C 60 80 43 */	lis r3, lit_481@ha /* 0x80434280@ha */
/* 802D1EA8  3B E3 42 80 */	addi r31, r3, lit_481@l /* 0x80434280@l */
/* 802D1EAC  38 7F 00 0C */	addi r3, r31, 0xc
/* 802D1EB0  38 80 00 00 */	li r4, 0
/* 802D1EB4  48 00 9F C1 */	bl __ct__10JSUPtrListFb
/* 802D1EB8  38 7F 00 0C */	addi r3, r31, 0xc
/* 802D1EBC  3C 80 80 2D */	lis r4, func_802D1F50@ha /* 0x802D1F50@ha */
/* 802D1EC0  38 84 1F 50 */	addi r4, r4, func_802D1F50@l /* 0x802D1F50@l */
/* 802D1EC4  38 BF 00 00 */	addi r5, r31, 0
/* 802D1EC8  48 08 FD 5D */	bl __register_global_object
/* 802D1ECC  38 7F 00 24 */	addi r3, r31, 0x24
/* 802D1ED0  48 00 A0 45 */	bl initiate__10JSUPtrListFv
/* 802D1ED4  38 7F 00 24 */	addi r3, r31, 0x24
/* 802D1ED8  3C 80 80 2D */	lis r4, func_802D1EFC@ha /* 0x802D1EFC@ha */
/* 802D1EDC  38 84 1E FC */	addi r4, r4, func_802D1EFC@l /* 0x802D1EFC@l */
/* 802D1EE0  38 BF 00 18 */	addi r5, r31, 0x18
/* 802D1EE4  48 08 FD 41 */	bl __register_global_object
/* 802D1EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1EF0  7C 08 03 A6 */	mtlr r0
/* 802D1EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1EF8  4E 80 00 20 */	blr 
