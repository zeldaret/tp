lbl_8033CCBC:
/* 8033CCBC  7C 08 02 A6 */	mflr r0
/* 8033CCC0  90 01 00 04 */	stw r0, 4(r1)
/* 8033CCC4  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033CCC8  3C A0 80 00 */	lis r5, 0x8000 /* 0x800030F0@ha */
/* 8033CCCC  80 85 30 F0 */	lwz r4, 0x30F0(r5)  /* 0x800030F0@l */
/* 8033CCD0  7C 05 20 40 */	cmplw r5, r4
/* 8033CCD4  41 81 00 10 */	bgt lbl_8033CCE4
/* 8033CCD8  38 A0 00 1C */	li r5, 0x1c
/* 8033CCDC  4B CC 68 65 */	bl memcpy
/* 8033CCE0  48 00 00 0C */	b lbl_8033CCEC
lbl_8033CCE4:
/* 8033CCE4  38 00 00 00 */	li r0, 0
/* 8033CCE8  90 03 00 00 */	stw r0, 0(r3)
lbl_8033CCEC:
/* 8033CCEC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033CCF0  38 21 00 08 */	addi r1, r1, 8
/* 8033CCF4  7C 08 03 A6 */	mtlr r0
/* 8033CCF8  4E 80 00 20 */	blr 
