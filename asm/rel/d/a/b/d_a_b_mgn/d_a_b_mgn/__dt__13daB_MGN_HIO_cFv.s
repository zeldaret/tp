lbl_8060F8D0:
/* 8060F8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060F8D4  7C 08 02 A6 */	mflr r0
/* 8060F8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060F8DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060F8E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8060F8E4  41 82 00 1C */	beq lbl_8060F900
/* 8060F8E8  3C A0 80 61 */	lis r5, __vt__13daB_MGN_HIO_c@ha
/* 8060F8EC  38 05 04 2C */	addi r0, r5, __vt__13daB_MGN_HIO_c@l
/* 8060F8F0  90 1F 00 00 */	stw r0, 0(r31)
/* 8060F8F4  7C 80 07 35 */	extsh. r0, r4
/* 8060F8F8  40 81 00 08 */	ble lbl_8060F900
/* 8060F8FC  4B CB F4 40 */	b __dl__FPv
lbl_8060F900:
/* 8060F900  7F E3 FB 78 */	mr r3, r31
/* 8060F904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060F908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060F90C  7C 08 03 A6 */	mtlr r0
/* 8060F910  38 21 00 10 */	addi r1, r1, 0x10
/* 8060F914  4E 80 00 20 */	blr 
