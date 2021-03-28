lbl_8002CAF0:
/* 8002CAF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002CAF4  7C 08 02 A6 */	mflr r0
/* 8002CAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002CAFC  80 63 4E 08 */	lwz r3, 0x4e08(r3)
/* 8002CB00  28 03 00 00 */	cmplwi r3, 0
/* 8002CB04  41 82 00 18 */	beq lbl_8002CB1C
/* 8002CB08  48 01 C4 69 */	bl addModel__15dSmplMdl_draw_cFP12J3DModelDataiUc
/* 8002CB0C  2C 03 00 00 */	cmpwi r3, 0
/* 8002CB10  41 82 00 0C */	beq lbl_8002CB1C
/* 8002CB14  38 60 00 01 */	li r3, 1
/* 8002CB18  48 00 00 08 */	b lbl_8002CB20
lbl_8002CB1C:
/* 8002CB1C  38 60 FF FF */	li r3, -1
lbl_8002CB20:
/* 8002CB20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002CB24  7C 08 03 A6 */	mtlr r0
/* 8002CB28  38 21 00 10 */	addi r1, r1, 0x10
/* 8002CB2C  4E 80 00 20 */	blr 
