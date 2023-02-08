lbl_8059EEF4:
/* 8059EEF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059EEF8  7C 08 02 A6 */	mflr r0
/* 8059EEFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059EF00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059EF04  7C 7F 1B 78 */	mr r31, r3
/* 8059EF08  3C 80 80 5A */	lis r4, lit_3722@ha /* 0x8059F47C@ha */
/* 8059EF0C  C0 24 F4 7C */	lfs f1, lit_3722@l(r4)  /* 0x8059F47C@l */
/* 8059EF10  FC 40 08 90 */	fmr f2, f1
/* 8059EF14  FC 60 08 90 */	fmr f3, f1
/* 8059EF18  FC 80 08 90 */	fmr f4, f1
/* 8059EF1C  FC A0 08 90 */	fmr f5, f1
/* 8059EF20  FC C0 08 90 */	fmr f6, f1
/* 8059EF24  4B BA 61 19 */	bl animPlay__12daItemBase_cFffffff
/* 8059EF28  7F E3 FB 78 */	mr r3, r31
/* 8059EF2C  4B FF FE 2D */	bl set_mtx__12daShopItem_cFv
/* 8059EF30  38 60 00 01 */	li r3, 1
/* 8059EF34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059EF38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059EF3C  7C 08 03 A6 */	mtlr r0
/* 8059EF40  38 21 00 10 */	addi r1, r1, 0x10
/* 8059EF44  4E 80 00 20 */	blr 
