lbl_800ECF9C:
/* 800ECF9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECFA0  7C 08 02 A6 */	mflr r0
/* 800ECFA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECFA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECFAC  7C 7F 1B 78 */	mr r31, r3
/* 800ECFB0  38 80 00 CC */	li r4, 0xcc
/* 800ECFB4  3C A0 80 39 */	lis r5, m__19daAlinkHIO_horse_c0@ha
/* 800ECFB8  38 A5 E5 A4 */	addi r5, r5, m__19daAlinkHIO_horse_c0@l
/* 800ECFBC  C0 25 00 5C */	lfs f1, 0x5c(r5)
/* 800ECFC0  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 800ECFC4  4B FC 03 E5 */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800ECFC8  7F E3 FB 78 */	mr r3, r31
/* 800ECFCC  38 80 00 E8 */	li r4, 0xe8
/* 800ECFD0  38 A0 00 01 */	li r5, 1
/* 800ECFD4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800ECFD8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800ECFDC  4B FC 24 D5 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800ECFE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECFE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECFE8  7C 08 03 A6 */	mtlr r0
/* 800ECFEC  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECFF0  4E 80 00 20 */	blr 
