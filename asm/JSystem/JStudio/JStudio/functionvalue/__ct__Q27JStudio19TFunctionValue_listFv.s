lbl_802826BC:
/* 802826BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802826C0  7C 08 02 A6 */	mflr r0
/* 802826C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802826C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802826CC  7C 7F 1B 78 */	mr r31, r3
/* 802826D0  4B FF EF C1 */	bl __ct__Q27JStudio14TFunctionValueFv
/* 802826D4  38 7F 00 08 */	addi r3, r31, 8
/* 802826D8  4B FF F6 41 */	bl __ct__Q27JStudio29TFunctionValueAttribute_rangeFv
/* 802826DC  38 80 00 00 */	li r4, 0
/* 802826E0  90 9F 00 40 */	stw r4, 0x40(r31)
/* 802826E4  3C 60 80 3C */	lis r3, __vt__Q27JStudio19TFunctionValue_list@ha /* 0x803C4920@ha */
/* 802826E8  38 03 49 20 */	addi r0, r3, __vt__Q27JStudio19TFunctionValue_list@l /* 0x803C4920@l */
/* 802826EC  90 1F 00 00 */	stw r0, 0(r31)
/* 802826F0  90 9F 00 44 */	stw r4, 0x44(r31)
/* 802826F4  90 9F 00 48 */	stw r4, 0x48(r31)
/* 802826F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 802826FC  C0 03 0A E0 */	lfs f0, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80282700  D8 1F 00 50 */	stfd f0, 0x50(r31)
/* 80282704  90 9F 00 58 */	stw r4, 0x58(r31)
/* 80282708  7F E3 FB 78 */	mr r3, r31
/* 8028270C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80282710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80282714  7C 08 03 A6 */	mtlr r0
/* 80282718  38 21 00 10 */	addi r1, r1, 0x10
/* 8028271C  4E 80 00 20 */	blr 
