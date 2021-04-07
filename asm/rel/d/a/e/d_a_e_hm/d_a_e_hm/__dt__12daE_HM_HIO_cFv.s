lbl_806E53F8:
/* 806E53F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E53FC  7C 08 02 A6 */	mflr r0
/* 806E5400  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E5404  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E5408  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E540C  41 82 00 1C */	beq lbl_806E5428
/* 806E5410  3C A0 80 6E */	lis r5, __vt__12daE_HM_HIO_c@ha /* 0x806E5BC4@ha */
/* 806E5414  38 05 5B C4 */	addi r0, r5, __vt__12daE_HM_HIO_c@l /* 0x806E5BC4@l */
/* 806E5418  90 1F 00 00 */	stw r0, 0(r31)
/* 806E541C  7C 80 07 35 */	extsh. r0, r4
/* 806E5420  40 81 00 08 */	ble lbl_806E5428
/* 806E5424  4B BE 99 19 */	bl __dl__FPv
lbl_806E5428:
/* 806E5428  7F E3 FB 78 */	mr r3, r31
/* 806E542C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E5430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E5434  7C 08 03 A6 */	mtlr r0
/* 806E5438  38 21 00 10 */	addi r1, r1, 0x10
/* 806E543C  4E 80 00 20 */	blr 
