lbl_806C1440:
/* 806C1440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C1444  7C 08 02 A6 */	mflr r0
/* 806C1448  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C144C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C1450  7C 7F 1B 79 */	or. r31, r3, r3
/* 806C1454  41 82 00 1C */	beq lbl_806C1470
/* 806C1458  3C A0 80 6C */	lis r5, __vt__12daE_FZ_HIO_c@ha /* 0x806C1B8C@ha */
/* 806C145C  38 05 1B 8C */	addi r0, r5, __vt__12daE_FZ_HIO_c@l /* 0x806C1B8C@l */
/* 806C1460  90 1F 00 00 */	stw r0, 0(r31)
/* 806C1464  7C 80 07 35 */	extsh. r0, r4
/* 806C1468  40 81 00 08 */	ble lbl_806C1470
/* 806C146C  4B C0 D8 D1 */	bl __dl__FPv
lbl_806C1470:
/* 806C1470  7F E3 FB 78 */	mr r3, r31
/* 806C1474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C1478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C147C  7C 08 03 A6 */	mtlr r0
/* 806C1480  38 21 00 10 */	addi r1, r1, 0x10
/* 806C1484  4E 80 00 20 */	blr 
