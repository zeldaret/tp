lbl_80BC51B8:
/* 80BC51B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC51BC  7C 08 02 A6 */	mflr r0
/* 80BC51C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC51C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC51C8  7C 7F 1B 78 */	mr r31, r3
/* 80BC51CC  38 60 00 00 */	li r3, 0
/* 80BC51D0  38 00 00 02 */	li r0, 2
/* 80BC51D4  7C 09 03 A6 */	mtctr r0
lbl_80BC51D8:
/* 80BC51D8  38 A3 05 98 */	addi r5, r3, 0x598
/* 80BC51DC  7C 9F 2A AE */	lhax r4, r31, r5
/* 80BC51E0  2C 04 00 00 */	cmpwi r4, 0
/* 80BC51E4  41 82 00 0C */	beq lbl_80BC51F0
/* 80BC51E8  38 04 FF FF */	addi r0, r4, -1
/* 80BC51EC  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80BC51F0:
/* 80BC51F0  38 63 00 02 */	addi r3, r3, 2
/* 80BC51F4  42 00 FF E4 */	bdnz lbl_80BC51D8
/* 80BC51F8  7F E3 FB 78 */	mr r3, r31
/* 80BC51FC  4B FF F9 B9 */	bl action__FP12obj_cb_class
/* 80BC5200  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BC5204  7C 03 07 74 */	extsb r3, r0
/* 80BC5208  4B 46 7E 65 */	bl dComIfGp_getReverb__Fi
/* 80BC520C  7C 65 1B 78 */	mr r5, r3
/* 80BC5210  38 7F 05 74 */	addi r3, r31, 0x574
/* 80BC5214  38 80 00 00 */	li r4, 0
/* 80BC5218  81 9F 05 84 */	lwz r12, 0x584(r31)
/* 80BC521C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BC5220  7D 89 03 A6 */	mtctr r12
/* 80BC5224  4E 80 04 21 */	bctrl 
/* 80BC5228  38 60 00 01 */	li r3, 1
/* 80BC522C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC5230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC5234  7C 08 03 A6 */	mtlr r0
/* 80BC5238  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC523C  4E 80 00 20 */	blr 
