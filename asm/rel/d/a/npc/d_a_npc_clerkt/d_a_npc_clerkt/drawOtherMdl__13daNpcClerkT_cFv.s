lbl_8099B0D4:
/* 8099B0D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099B0D8  7C 08 02 A6 */	mflr r0
/* 8099B0DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099B0E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8099B0E4  7C 7F 1B 78 */	mr r31, r3
/* 8099B0E8  88 03 10 EA */	lbz r0, 0x10ea(r3)
/* 8099B0EC  28 00 00 00 */	cmplwi r0, 0
/* 8099B0F0  41 82 00 30 */	beq lbl_8099B120
/* 8099B0F4  4B 7F D8 5D */	bl itemRotate__13dShopSystem_cFv
/* 8099B0F8  3C 60 80 9A */	lis r3, lit_4123@ha /* 0x8099D2F0@ha */
/* 8099B0FC  C0 03 D2 F0 */	lfs f0, lit_4123@l(r3)  /* 0x8099D2F0@l */
/* 8099B100  D0 01 00 08 */	stfs f0, 8(r1)
/* 8099B104  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8099B108  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8099B10C  7F E3 FB 78 */	mr r3, r31
/* 8099B110  38 81 00 08 */	addi r4, r1, 8
/* 8099B114  4B 7F D9 19 */	bl itemZoom__13dShopSystem_cFP4cXyz
/* 8099B118  7F E3 FB 78 */	mr r3, r31
/* 8099B11C  4B 7F D7 5D */	bl drawCursor__13dShopSystem_cFv
lbl_8099B120:
/* 8099B120  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8099B124  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099B128  7C 08 03 A6 */	mtlr r0
/* 8099B12C  38 21 00 20 */	addi r1, r1, 0x20
/* 8099B130  4E 80 00 20 */	blr 
