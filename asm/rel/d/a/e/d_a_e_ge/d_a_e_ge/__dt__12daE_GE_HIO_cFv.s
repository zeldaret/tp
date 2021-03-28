lbl_806CCA58:
/* 806CCA58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CCA5C  7C 08 02 A6 */	mflr r0
/* 806CCA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CCA64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CCA68  7C 7F 1B 79 */	or. r31, r3, r3
/* 806CCA6C  41 82 00 1C */	beq lbl_806CCA88
/* 806CCA70  3C A0 80 6D */	lis r5, __vt__12daE_GE_HIO_c@ha
/* 806CCA74  38 05 D3 44 */	addi r0, r5, __vt__12daE_GE_HIO_c@l
/* 806CCA78  90 1F 00 00 */	stw r0, 0(r31)
/* 806CCA7C  7C 80 07 35 */	extsh. r0, r4
/* 806CCA80  40 81 00 08 */	ble lbl_806CCA88
/* 806CCA84  4B C0 22 B8 */	b __dl__FPv
lbl_806CCA88:
/* 806CCA88  7F E3 FB 78 */	mr r3, r31
/* 806CCA8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CCA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CCA94  7C 08 03 A6 */	mtlr r0
/* 806CCA98  38 21 00 10 */	addi r1, r1, 0x10
/* 806CCA9C  4E 80 00 20 */	blr 
