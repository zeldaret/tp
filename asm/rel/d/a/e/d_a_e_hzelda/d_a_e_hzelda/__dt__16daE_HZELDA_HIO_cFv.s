lbl_806F546C:
/* 806F546C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F5470  7C 08 02 A6 */	mflr r0
/* 806F5474  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F5478  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F547C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F5480  41 82 00 1C */	beq lbl_806F549C
/* 806F5484  3C A0 80 6F */	lis r5, __vt__16daE_HZELDA_HIO_c@ha
/* 806F5488  38 05 59 10 */	addi r0, r5, __vt__16daE_HZELDA_HIO_c@l
/* 806F548C  90 1F 00 00 */	stw r0, 0(r31)
/* 806F5490  7C 80 07 35 */	extsh. r0, r4
/* 806F5494  40 81 00 08 */	ble lbl_806F549C
/* 806F5498  4B BD 98 A4 */	b __dl__FPv
lbl_806F549C:
/* 806F549C  7F E3 FB 78 */	mr r3, r31
/* 806F54A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F54A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F54A8  7C 08 03 A6 */	mtlr r0
/* 806F54AC  38 21 00 10 */	addi r1, r1, 0x10
/* 806F54B0  4E 80 00 20 */	blr 
