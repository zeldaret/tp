lbl_806A13D8:
/* 806A13D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A13DC  7C 08 02 A6 */	mflr r0
/* 806A13E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A13E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A13E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A13EC  41 82 00 1C */	beq lbl_806A1408
/* 806A13F0  3C A0 80 6A */	lis r5, __vt__12daE_DB_HIO_c@ha /* 0x806A1D84@ha */
/* 806A13F4  38 05 1D 84 */	addi r0, r5, __vt__12daE_DB_HIO_c@l /* 0x806A1D84@l */
/* 806A13F8  90 1F 00 00 */	stw r0, 0(r31)
/* 806A13FC  7C 80 07 35 */	extsh. r0, r4
/* 806A1400  40 81 00 08 */	ble lbl_806A1408
/* 806A1404  4B C2 D9 39 */	bl __dl__FPv
lbl_806A1408:
/* 806A1408  7F E3 FB 78 */	mr r3, r31
/* 806A140C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A1410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A1414  7C 08 03 A6 */	mtlr r0
/* 806A1418  38 21 00 10 */	addi r1, r1, 0x10
/* 806A141C  4E 80 00 20 */	blr 
