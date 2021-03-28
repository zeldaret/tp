lbl_8065D0B8:
/* 8065D0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8065D0BC  7C 08 02 A6 */	mflr r0
/* 8065D0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8065D0C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8065D0C8  7C 7F 1B 78 */	mr r31, r3
/* 8065D0CC  4B FF FE F1 */	bl isAngry__7daCow_cFv
/* 8065D0D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065D0D4  41 82 00 94 */	beq lbl_8065D168
/* 8065D0D8  A8 7F 0C 34 */	lha r3, 0xc34(r31)
/* 8065D0DC  3C 63 00 01 */	addis r3, r3, 1
/* 8065D0E0  38 03 80 00 */	addi r0, r3, -32768
/* 8065D0E4  B0 1F 0C 72 */	sth r0, 0xc72(r31)
/* 8065D0E8  3C 60 80 66 */	lis r3, lit_3998@ha
/* 8065D0EC  C0 03 2D C8 */	lfs f0, lit_3998@l(r3)
/* 8065D0F0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8065D0F4  A8 1F 0C 34 */	lha r0, 0xc34(r31)
/* 8065D0F8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8065D0FC  7F E3 FB 78 */	mr r3, r31
/* 8065D100  38 80 00 01 */	li r4, 1
/* 8065D104  4B FF B4 C9 */	bl calcRunAnime__7daCow_cFi
/* 8065D108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8065D10C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8065D110  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8065D114  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8065D118  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8065D11C  7D 89 03 A6 */	mtctr r12
/* 8065D120  4E 80 04 21 */	bctrl 
/* 8065D124  28 03 00 00 */	cmplwi r3, 0
/* 8065D128  40 82 00 1C */	bne lbl_8065D144
/* 8065D12C  48 00 5C 59 */	bl checkNowWolf__9daPy_py_cFv
/* 8065D130  28 03 00 00 */	cmplwi r3, 0
/* 8065D134  40 82 00 10 */	bne lbl_8065D144
/* 8065D138  38 00 00 03 */	li r0, 3
/* 8065D13C  98 1F 0C 9F */	stb r0, 0xc9f(r31)
/* 8065D140  48 00 00 28 */	b lbl_8065D168
lbl_8065D144:
/* 8065D144  38 00 00 04 */	li r0, 4
/* 8065D148  98 1F 0C 9F */	stb r0, 0xc9f(r31)
/* 8065D14C  38 00 00 1E */	li r0, 0x1e
/* 8065D150  90 1F 0C 90 */	stw r0, 0xc90(r31)
/* 8065D154  3C 60 80 66 */	lis r3, lit_3998@ha
/* 8065D158  C0 03 2D C8 */	lfs f0, lit_3998@l(r3)
/* 8065D15C  D0 1F 0C B0 */	stfs f0, 0xcb0(r31)
/* 8065D160  38 00 00 02 */	li r0, 2
/* 8065D164  98 1F 0C B4 */	stb r0, 0xcb4(r31)
lbl_8065D168:
/* 8065D168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8065D16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065D170  7C 08 03 A6 */	mtlr r0
/* 8065D174  38 21 00 10 */	addi r1, r1, 0x10
/* 8065D178  4E 80 00 20 */	blr 
