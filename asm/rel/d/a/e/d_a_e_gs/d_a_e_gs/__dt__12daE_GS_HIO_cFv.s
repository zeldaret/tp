lbl_806DFD5C:
/* 806DFD5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DFD60  7C 08 02 A6 */	mflr r0
/* 806DFD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DFD68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DFD6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806DFD70  41 82 00 1C */	beq lbl_806DFD8C
/* 806DFD74  3C A0 80 6E */	lis r5, __vt__12daE_GS_HIO_c@ha /* 0x806DFE84@ha */
/* 806DFD78  38 05 FE 84 */	addi r0, r5, __vt__12daE_GS_HIO_c@l /* 0x806DFE84@l */
/* 806DFD7C  90 1F 00 00 */	stw r0, 0(r31)
/* 806DFD80  7C 80 07 35 */	extsh. r0, r4
/* 806DFD84  40 81 00 08 */	ble lbl_806DFD8C
/* 806DFD88  4B BE EF B5 */	bl __dl__FPv
lbl_806DFD8C:
/* 806DFD8C  7F E3 FB 78 */	mr r3, r31
/* 806DFD90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DFD94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DFD98  7C 08 03 A6 */	mtlr r0
/* 806DFD9C  38 21 00 10 */	addi r1, r1, 0x10
/* 806DFDA0  4E 80 00 20 */	blr 
