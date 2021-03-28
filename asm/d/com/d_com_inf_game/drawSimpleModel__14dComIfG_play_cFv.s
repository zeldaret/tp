lbl_8002CAC4:
/* 8002CAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002CAC8  7C 08 02 A6 */	mflr r0
/* 8002CACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002CAD0  80 63 4E 08 */	lwz r3, 0x4e08(r3)
/* 8002CAD4  28 03 00 00 */	cmplwi r3, 0
/* 8002CAD8  41 82 00 08 */	beq lbl_8002CAE0
/* 8002CADC  48 01 C3 31 */	bl draw__15dSmplMdl_draw_cFv
lbl_8002CAE0:
/* 8002CAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002CAE4  7C 08 03 A6 */	mtlr r0
/* 8002CAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002CAEC  4E 80 00 20 */	blr 
