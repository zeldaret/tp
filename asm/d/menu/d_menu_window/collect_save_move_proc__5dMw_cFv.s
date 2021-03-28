lbl_801FB67C:
/* 801FB67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB680  7C 08 02 A6 */	mflr r0
/* 801FB684  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB68C  7C 7F 1B 78 */	mr r31, r3
/* 801FB690  80 63 01 20 */	lwz r3, 0x120(r3)
/* 801FB694  88 03 01 BA */	lbz r0, 0x1ba(r3)
/* 801FB698  28 00 00 02 */	cmplwi r0, 2
/* 801FB69C  40 82 00 08 */	bne lbl_801FB6A4
/* 801FB6A0  4B FF 59 A9 */	bl _move__12dMenu_save_cFv
lbl_801FB6A4:
/* 801FB6A4  80 7F 01 20 */	lwz r3, 0x120(r31)
/* 801FB6A8  88 03 01 BA */	lbz r0, 0x1ba(r3)
/* 801FB6AC  28 00 00 03 */	cmplwi r0, 3
/* 801FB6B0  41 82 00 0C */	beq lbl_801FB6BC
/* 801FB6B4  28 00 00 04 */	cmplwi r0, 4
/* 801FB6B8  40 82 00 0C */	bne lbl_801FB6C4
lbl_801FB6BC:
/* 801FB6BC  38 00 00 0F */	li r0, 0xf
/* 801FB6C0  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FB6C4:
/* 801FB6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB6CC  7C 08 03 A6 */	mtlr r0
/* 801FB6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB6D4  4E 80 00 20 */	blr 
