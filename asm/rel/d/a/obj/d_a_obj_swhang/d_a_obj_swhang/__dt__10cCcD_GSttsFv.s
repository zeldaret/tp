lbl_80CFCF8C:
/* 80CFCF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFCF90  7C 08 02 A6 */	mflr r0
/* 80CFCF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFCF98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFCF9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CFCFA0  41 82 00 1C */	beq lbl_80CFCFBC
/* 80CFCFA4  3C A0 80 D0 */	lis r5, __vt__10cCcD_GStts@ha
/* 80CFCFA8  38 05 D4 3C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CFCFAC  90 1F 00 00 */	stw r0, 0(r31)
/* 80CFCFB0  7C 80 07 35 */	extsh. r0, r4
/* 80CFCFB4  40 81 00 08 */	ble lbl_80CFCFBC
/* 80CFCFB8  4B 5D 1D 84 */	b __dl__FPv
lbl_80CFCFBC:
/* 80CFCFBC  7F E3 FB 78 */	mr r3, r31
/* 80CFCFC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFCFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFCFC8  7C 08 03 A6 */	mtlr r0
/* 80CFCFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFCFD0  4E 80 00 20 */	blr 
