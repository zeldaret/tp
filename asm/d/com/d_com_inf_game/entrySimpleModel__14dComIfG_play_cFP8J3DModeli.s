lbl_8002CB68:
/* 8002CB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002CB6C  7C 08 02 A6 */	mflr r0
/* 8002CB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002CB74  80 63 4E 08 */	lwz r3, 0x4e08(r3)
/* 8002CB78  28 03 00 00 */	cmplwi r3, 0
/* 8002CB7C  41 82 00 08 */	beq lbl_8002CB84
/* 8002CB80  48 01 C3 3D */	bl entry__15dSmplMdl_draw_cFP8J3DModeli
lbl_8002CB84:
/* 8002CB84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002CB88  7C 08 03 A6 */	mtlr r0
/* 8002CB8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8002CB90  4E 80 00 20 */	blr 
