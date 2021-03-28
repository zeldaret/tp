lbl_807FC168:
/* 807FC168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FC16C  7C 08 02 A6 */	mflr r0
/* 807FC170  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FC174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FC178  7C 7F 1B 79 */	or. r31, r3, r3
/* 807FC17C  41 82 00 1C */	beq lbl_807FC198
/* 807FC180  3C A0 80 80 */	lis r5, __vt__12daE_YG_HIO_c@ha
/* 807FC184  38 05 D0 0C */	addi r0, r5, __vt__12daE_YG_HIO_c@l
/* 807FC188  90 1F 00 00 */	stw r0, 0(r31)
/* 807FC18C  7C 80 07 35 */	extsh. r0, r4
/* 807FC190  40 81 00 08 */	ble lbl_807FC198
/* 807FC194  4B AD 2B A8 */	b __dl__FPv
lbl_807FC198:
/* 807FC198  7F E3 FB 78 */	mr r3, r31
/* 807FC19C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FC1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FC1A4  7C 08 03 A6 */	mtlr r0
/* 807FC1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 807FC1AC  4E 80 00 20 */	blr 
