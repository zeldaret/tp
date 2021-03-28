lbl_801F19A8:
/* 801F19A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F19AC  7C 08 02 A6 */	mflr r0
/* 801F19B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F19B4  38 00 00 01 */	li r0, 1
/* 801F19B8  98 03 21 90 */	stb r0, 0x2190(r3)
/* 801F19BC  98 03 01 B6 */	stb r0, 0x1b6(r3)
/* 801F19C0  38 80 03 CE */	li r4, 0x3ce
/* 801F19C4  38 A0 00 01 */	li r5, 1
/* 801F19C8  48 00 1A F5 */	bl msgTxtSet__12dMenu_save_cFUsb
/* 801F19CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F19D0  7C 08 03 A6 */	mtlr r0
/* 801F19D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801F19D8  4E 80 00 20 */	blr 
