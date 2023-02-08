lbl_806F0368:
/* 806F0368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F036C  7C 08 02 A6 */	mflr r0
/* 806F0370  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F0374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F0378  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F037C  41 82 00 1C */	beq lbl_806F0398
/* 806F0380  3C A0 80 6F */	lis r5, __vt__12daE_HZ_HIO_c@ha /* 0x806F0B18@ha */
/* 806F0384  38 05 0B 18 */	addi r0, r5, __vt__12daE_HZ_HIO_c@l /* 0x806F0B18@l */
/* 806F0388  90 1F 00 00 */	stw r0, 0(r31)
/* 806F038C  7C 80 07 35 */	extsh. r0, r4
/* 806F0390  40 81 00 08 */	ble lbl_806F0398
/* 806F0394  4B BD E9 A9 */	bl __dl__FPv
lbl_806F0398:
/* 806F0398  7F E3 FB 78 */	mr r3, r31
/* 806F039C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F03A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F03A4  7C 08 03 A6 */	mtlr r0
/* 806F03A8  38 21 00 10 */	addi r1, r1, 0x10
/* 806F03AC  4E 80 00 20 */	blr 
