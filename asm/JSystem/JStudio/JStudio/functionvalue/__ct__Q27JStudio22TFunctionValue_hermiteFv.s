lbl_802832C4:
/* 802832C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802832C8  7C 08 02 A6 */	mflr r0
/* 802832CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802832D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802832D4  7C 7F 1B 78 */	mr r31, r3
/* 802832D8  4B FF E3 B9 */	bl __ct__Q27JStudio14TFunctionValueFv
/* 802832DC  38 7F 00 08 */	addi r3, r31, 8
/* 802832E0  4B FF EA 39 */	bl __ct__Q27JStudio29TFunctionValueAttribute_rangeFv
/* 802832E4  3C 60 80 3C */	lis r3, __vt__Q27JStudio22TFunctionValue_hermite@ha /* 0x803C48E0@ha */
/* 802832E8  38 03 48 E0 */	addi r0, r3, __vt__Q27JStudio22TFunctionValue_hermite@l /* 0x803C48E0@l */
/* 802832EC  90 1F 00 00 */	stw r0, 0(r31)
/* 802832F0  38 00 00 00 */	li r0, 0
/* 802832F4  90 1F 00 40 */	stw r0, 0x40(r31)
/* 802832F8  90 1F 00 44 */	stw r0, 0x44(r31)
/* 802832FC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80283300  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80283304  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80283308  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8028330C  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80283310  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80283314  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 80283318  90 1F 00 58 */	stw r0, 0x58(r31)
/* 8028331C  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80283320  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 80283324  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 80283328  90 1F 00 60 */	stw r0, 0x60(r31)
/* 8028332C  7F E3 FB 78 */	mr r3, r31
/* 80283330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80283334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80283338  7C 08 03 A6 */	mtlr r0
/* 8028333C  38 21 00 10 */	addi r1, r1, 0x10
/* 80283340  4E 80 00 20 */	blr 
