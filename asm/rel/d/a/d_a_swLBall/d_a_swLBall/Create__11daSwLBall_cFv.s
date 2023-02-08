lbl_80D4EEAC:
/* 80D4EEAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4EEB0  7C 08 02 A6 */	mflr r0
/* 80D4EEB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4EEB8  38 80 00 00 */	li r4, 0
/* 80D4EEBC  38 A0 FF FF */	li r5, -1
/* 80D4EEC0  38 00 00 02 */	li r0, 2
/* 80D4EEC4  7C 09 03 A6 */	mtctr r0
lbl_80D4EEC8:
/* 80D4EEC8  38 04 05 68 */	addi r0, r4, 0x568
/* 80D4EECC  7C A3 01 2E */	stwx r5, r3, r0
/* 80D4EED0  38 84 00 04 */	addi r4, r4, 4
/* 80D4EED4  42 00 FF F4 */	bdnz lbl_80D4EEC8
/* 80D4EED8  38 00 00 00 */	li r0, 0
/* 80D4EEDC  98 03 05 71 */	stb r0, 0x571(r3)
/* 80D4EEE0  48 00 00 81 */	bl execute__11daSwLBall_cFv
/* 80D4EEE4  38 60 00 01 */	li r3, 1
/* 80D4EEE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4EEEC  7C 08 03 A6 */	mtlr r0
/* 80D4EEF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4EEF4  4E 80 00 20 */	blr 
