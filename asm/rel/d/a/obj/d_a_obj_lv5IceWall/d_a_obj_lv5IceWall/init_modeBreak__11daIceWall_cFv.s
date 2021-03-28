lbl_80C6C170:
/* 80C6C170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C174  7C 08 02 A6 */	mflr r0
/* 80C6C178  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C17C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6C180  7C 7F 1B 78 */	mr r31, r3
/* 80C6C184  88 83 08 67 */	lbz r4, 0x867(r3)
/* 80C6C188  28 04 00 FF */	cmplwi r4, 0xff
/* 80C6C18C  41 82 00 18 */	beq lbl_80C6C1A4
/* 80C6C190  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6C194  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6C198  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C6C19C  7C 05 07 74 */	extsb r5, r0
/* 80C6C1A0  4B 3C 90 60 */	b onSwitch__10dSv_info_cFii
lbl_80C6C1A4:
/* 80C6C1A4  38 00 00 01 */	li r0, 1
/* 80C6C1A8  98 1F 08 64 */	stb r0, 0x864(r31)
/* 80C6C1AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6C1B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C1B4  7C 08 03 A6 */	mtlr r0
/* 80C6C1B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C1BC  4E 80 00 20 */	blr 
