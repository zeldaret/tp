lbl_806A6D08:
/* 806A6D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A6D0C  7C 08 02 A6 */	mflr r0
/* 806A6D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A6D14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A6D18  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A6D1C  41 82 00 1C */	beq lbl_806A6D38
/* 806A6D20  3C A0 80 6A */	lis r5, __vt__12daE_DD_HIO_c@ha
/* 806A6D24  38 05 74 A0 */	addi r0, r5, __vt__12daE_DD_HIO_c@l
/* 806A6D28  90 1F 00 00 */	stw r0, 0(r31)
/* 806A6D2C  7C 80 07 35 */	extsh. r0, r4
/* 806A6D30  40 81 00 08 */	ble lbl_806A6D38
/* 806A6D34  4B C2 80 08 */	b __dl__FPv
lbl_806A6D38:
/* 806A6D38  7F E3 FB 78 */	mr r3, r31
/* 806A6D3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A6D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A6D44  7C 08 03 A6 */	mtlr r0
/* 806A6D48  38 21 00 10 */	addi r1, r1, 0x10
/* 806A6D4C  4E 80 00 20 */	blr 
