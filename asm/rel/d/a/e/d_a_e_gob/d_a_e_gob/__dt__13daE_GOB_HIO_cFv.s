lbl_806DECD0:
/* 806DECD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DECD4  7C 08 02 A6 */	mflr r0
/* 806DECD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DECDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DECE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806DECE4  41 82 00 1C */	beq lbl_806DED00
/* 806DECE8  3C A0 80 6E */	lis r5, __vt__13daE_GOB_HIO_c@ha /* 0x806DF270@ha */
/* 806DECEC  38 05 F2 70 */	addi r0, r5, __vt__13daE_GOB_HIO_c@l /* 0x806DF270@l */
/* 806DECF0  90 1F 00 00 */	stw r0, 0(r31)
/* 806DECF4  7C 80 07 35 */	extsh. r0, r4
/* 806DECF8  40 81 00 08 */	ble lbl_806DED00
/* 806DECFC  4B BF 00 41 */	bl __dl__FPv
lbl_806DED00:
/* 806DED00  7F E3 FB 78 */	mr r3, r31
/* 806DED04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DED08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DED0C  7C 08 03 A6 */	mtlr r0
/* 806DED10  38 21 00 10 */	addi r1, r1, 0x10
/* 806DED14  4E 80 00 20 */	blr 
