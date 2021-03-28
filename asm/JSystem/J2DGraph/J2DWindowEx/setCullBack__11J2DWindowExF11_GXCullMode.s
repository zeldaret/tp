lbl_80302D98:
/* 80302D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80302D9C  7C 08 02 A6 */	mflr r0
/* 80302DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80302DA4  98 83 00 B1 */	stb r4, 0xb1(r3)
/* 80302DA8  38 A0 00 00 */	li r5, 0
/* 80302DAC  38 00 00 04 */	li r0, 4
/* 80302DB0  7C 09 03 A6 */	mtctr r0
lbl_80302DB4:
/* 80302DB4  38 05 01 48 */	addi r0, r5, 0x148
/* 80302DB8  7C C3 00 2E */	lwzx r6, r3, r0
/* 80302DBC  28 06 00 00 */	cmplwi r6, 0
/* 80302DC0  41 82 00 08 */	beq lbl_80302DC8
/* 80302DC4  98 86 00 22 */	stb r4, 0x22(r6)
lbl_80302DC8:
/* 80302DC8  38 A5 00 04 */	addi r5, r5, 4
/* 80302DCC  42 00 FF E8 */	bdnz lbl_80302DB4
/* 80302DD0  80 A3 01 60 */	lwz r5, 0x160(r3)
/* 80302DD4  28 05 00 00 */	cmplwi r5, 0
/* 80302DD8  41 82 00 08 */	beq lbl_80302DE0
/* 80302DDC  98 85 00 22 */	stb r4, 0x22(r5)
lbl_80302DE0:
/* 80302DE0  4B FF 48 A1 */	bl setCullBack__7J2DPaneF11_GXCullMode
/* 80302DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80302DE8  7C 08 03 A6 */	mtlr r0
/* 80302DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80302DF0  4E 80 00 20 */	blr 
