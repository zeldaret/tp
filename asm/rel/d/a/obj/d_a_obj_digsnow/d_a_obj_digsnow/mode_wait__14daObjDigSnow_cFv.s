lbl_80BDCFB0:
/* 80BDCFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDCFB4  7C 08 02 A6 */	mflr r0
/* 80BDCFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDCFBC  88 03 09 3C */	lbz r0, 0x93c(r3)
/* 80BDCFC0  28 00 00 01 */	cmplwi r0, 1
/* 80BDCFC4  40 82 00 08 */	bne lbl_80BDCFCC
/* 80BDCFC8  48 00 00 15 */	bl mode_init_dig__14daObjDigSnow_cFv
lbl_80BDCFCC:
/* 80BDCFCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDCFD0  7C 08 03 A6 */	mtlr r0
/* 80BDCFD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDCFD8  4E 80 00 20 */	blr 
