lbl_80C88494:
/* 80C88494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C88498  7C 08 02 A6 */	mflr r0
/* 80C8849C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C884A0  3C 60 80 C9 */	lis r3, l_HIO@ha
/* 80C884A4  38 63 86 1C */	addi r3, r3, l_HIO@l
/* 80C884A8  4B FF F8 05 */	bl __ct__17daKekaiTrap_HIO_cFv
/* 80C884AC  3C 80 80 C9 */	lis r4, __dt__17daKekaiTrap_HIO_cFv@ha
/* 80C884B0  38 84 84 38 */	addi r4, r4, __dt__17daKekaiTrap_HIO_cFv@l
/* 80C884B4  3C A0 80 C9 */	lis r5, lit_3645@ha
/* 80C884B8  38 A5 86 10 */	addi r5, r5, lit_3645@l
/* 80C884BC  4B FF F7 7D */	bl __register_global_object
/* 80C884C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C884C4  7C 08 03 A6 */	mtlr r0
/* 80C884C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C884CC  4E 80 00 20 */	blr 
