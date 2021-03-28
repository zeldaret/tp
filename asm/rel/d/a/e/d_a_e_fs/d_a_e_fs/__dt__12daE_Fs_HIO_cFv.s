lbl_806BDF94:
/* 806BDF94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BDF98  7C 08 02 A6 */	mflr r0
/* 806BDF9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BDFA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BDFA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806BDFA8  41 82 00 1C */	beq lbl_806BDFC4
/* 806BDFAC  3C A0 80 6C */	lis r5, __vt__12daE_Fs_HIO_c@ha
/* 806BDFB0  38 05 E7 48 */	addi r0, r5, __vt__12daE_Fs_HIO_c@l
/* 806BDFB4  90 1F 00 00 */	stw r0, 0(r31)
/* 806BDFB8  7C 80 07 35 */	extsh. r0, r4
/* 806BDFBC  40 81 00 08 */	ble lbl_806BDFC4
/* 806BDFC0  4B C1 0D 7C */	b __dl__FPv
lbl_806BDFC4:
/* 806BDFC4  7F E3 FB 78 */	mr r3, r31
/* 806BDFC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BDFCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BDFD0  7C 08 03 A6 */	mtlr r0
/* 806BDFD4  38 21 00 10 */	addi r1, r1, 0x10
/* 806BDFD8  4E 80 00 20 */	blr 
