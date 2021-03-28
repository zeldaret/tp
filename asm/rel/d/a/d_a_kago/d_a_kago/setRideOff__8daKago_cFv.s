lbl_8084ABC8:
/* 8084ABC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084ABCC  7C 08 02 A6 */	mflr r0
/* 8084ABD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084ABD4  48 00 9F 0D */	bl getMidnaActor__9daPy_py_cFv
/* 8084ABD8  28 03 00 00 */	cmplwi r3, 0
/* 8084ABDC  41 82 00 20 */	beq lbl_8084ABFC
/* 8084ABE0  80 A3 08 90 */	lwz r5, 0x890(r3)
/* 8084ABE4  3C 80 78 00 */	lis r4, 0x7800 /* 0x77FFFBFF@ha */
/* 8084ABE8  38 04 FB FF */	addi r0, r4, 0xFBFF /* 0x77FFFBFF@l */
/* 8084ABEC  7C A0 00 38 */	and r0, r5, r0
/* 8084ABF0  90 03 08 90 */	stw r0, 0x890(r3)
/* 8084ABF4  38 00 00 00 */	li r0, 0
/* 8084ABF8  90 03 09 D0 */	stw r0, 0x9d0(r3)
lbl_8084ABFC:
/* 8084ABFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084AC00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084AC04  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8084AC08  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 8084AC0C  28 00 00 2C */	cmplwi r0, 0x2c
/* 8084AC10  40 82 00 0C */	bne lbl_8084AC1C
/* 8084AC14  38 00 00 00 */	li r0, 0
/* 8084AC18  98 03 05 6A */	stb r0, 0x56a(r3)
lbl_8084AC1C:
/* 8084AC1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084AC20  7C 08 03 A6 */	mtlr r0
/* 8084AC24  38 21 00 10 */	addi r1, r1, 0x10
/* 8084AC28  4E 80 00 20 */	blr 
