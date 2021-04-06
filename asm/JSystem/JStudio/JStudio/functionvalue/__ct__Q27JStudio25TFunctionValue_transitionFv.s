lbl_802823EC:
/* 802823EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802823F0  7C 08 02 A6 */	mflr r0
/* 802823F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802823F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802823FC  7C 7F 1B 78 */	mr r31, r3
/* 80282400  4B FF F2 91 */	bl __ct__Q27JStudio14TFunctionValueFv
/* 80282404  38 7F 00 08 */	addi r3, r31, 8
/* 80282408  4B FF F9 11 */	bl __ct__Q27JStudio29TFunctionValueAttribute_rangeFv
/* 8028240C  38 00 00 00 */	li r0, 0
/* 80282410  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80282414  3C 60 80 3C */	lis r3, __vt__Q27JStudio25TFunctionValue_transition@ha /* 0x803C4940@ha */
/* 80282418  38 03 49 40 */	addi r0, r3, __vt__Q27JStudio25TFunctionValue_transition@l /* 0x803C4940@l */
/* 8028241C  90 1F 00 00 */	stw r0, 0(r31)
/* 80282420  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80282424  C0 03 0A E0 */	lfs f0, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80282428  D8 1F 00 48 */	stfd f0, 0x48(r31)
/* 8028242C  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80282430  D8 1F 00 50 */	stfd f0, 0x50(r31)
/* 80282434  7F E3 FB 78 */	mr r3, r31
/* 80282438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028243C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80282440  7C 08 03 A6 */	mtlr r0
/* 80282444  38 21 00 10 */	addi r1, r1, 0x10
/* 80282448  4E 80 00 20 */	blr 
