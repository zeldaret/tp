lbl_8002CB30:
/* 8002CB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002CB34  7C 08 02 A6 */	mflr r0
/* 8002CB38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002CB3C  80 63 4E 08 */	lwz r3, 0x4e08(r3)
/* 8002CB40  28 03 00 00 */	cmplwi r3, 0
/* 8002CB44  41 82 00 10 */	beq lbl_8002CB54
/* 8002CB48  48 01 C5 11 */	bl removeModel__15dSmplMdl_draw_cFP12J3DModelDatai
/* 8002CB4C  38 60 00 01 */	li r3, 1
/* 8002CB50  48 00 00 08 */	b lbl_8002CB58
lbl_8002CB54:
/* 8002CB54  38 60 00 00 */	li r3, 0
lbl_8002CB58:
/* 8002CB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002CB5C  7C 08 03 A6 */	mtlr r0
/* 8002CB60  38 21 00 10 */	addi r1, r1, 0x10
/* 8002CB64  4E 80 00 20 */	blr 
