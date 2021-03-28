lbl_80C9CAA0:
/* 80C9CAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9CAA4  7C 08 02 A6 */	mflr r0
/* 80C9CAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9CAAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9CAB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C9CAB4  41 82 00 1C */	beq lbl_80C9CAD0
/* 80C9CAB8  3C A0 80 CA */	lis r5, __vt__17daObj_Msima_HIO_c@ha
/* 80C9CABC  38 05 CE 54 */	addi r0, r5, __vt__17daObj_Msima_HIO_c@l
/* 80C9CAC0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C9CAC4  7C 80 07 35 */	extsh. r0, r4
/* 80C9CAC8  40 81 00 08 */	ble lbl_80C9CAD0
/* 80C9CACC  4B 63 22 70 */	b __dl__FPv
lbl_80C9CAD0:
/* 80C9CAD0  7F E3 FB 78 */	mr r3, r31
/* 80C9CAD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9CAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9CADC  7C 08 03 A6 */	mtlr r0
/* 80C9CAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9CAE4  4E 80 00 20 */	blr 
