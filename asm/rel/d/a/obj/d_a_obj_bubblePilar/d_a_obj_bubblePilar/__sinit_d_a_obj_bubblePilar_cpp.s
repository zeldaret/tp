lbl_80BC3FEC:
/* 80BC3FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC3FF0  7C 08 02 A6 */	mflr r0
/* 80BC3FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3FF8  3C 60 80 BC */	lis r3, l_HIO@ha
/* 80BC3FFC  38 63 42 24 */	addi r3, r3, l_HIO@l
/* 80BC4000  4B FF F3 ED */	bl __ct__17daBubbPilar_HIO_cFv
/* 80BC4004  3C 80 80 BC */	lis r4, __dt__17daBubbPilar_HIO_cFv@ha
/* 80BC4008  38 84 3F 90 */	addi r4, r4, __dt__17daBubbPilar_HIO_cFv@l
/* 80BC400C  3C A0 80 BC */	lis r5, lit_3623@ha
/* 80BC4010  38 A5 42 18 */	addi r5, r5, lit_3623@l
/* 80BC4014  4B FF F3 65 */	bl __register_global_object
/* 80BC4018  3C 60 80 BC */	lis r3, mCcDCyl__13daBubbPilar_c@ha
/* 80BC401C  38 63 40 DC */	addi r3, r3, mCcDCyl__13daBubbPilar_c@l
/* 80BC4020  38 A3 FF FC */	addi r5, r3, -4
/* 80BC4024  3C 60 80 BC */	lis r3, mCcDObjInfo__13daBubbPilar_c@ha
/* 80BC4028  38 63 40 70 */	addi r3, r3, mCcDObjInfo__13daBubbPilar_c@l
/* 80BC402C  38 83 FF FC */	addi r4, r3, -4
/* 80BC4030  38 00 00 06 */	li r0, 6
/* 80BC4034  7C 09 03 A6 */	mtctr r0
lbl_80BC4038:
/* 80BC4038  80 64 00 04 */	lwz r3, 4(r4)
/* 80BC403C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80BC4040  90 65 00 04 */	stw r3, 4(r5)
/* 80BC4044  94 05 00 08 */	stwu r0, 8(r5)
/* 80BC4048  42 00 FF F0 */	bdnz lbl_80BC4038
/* 80BC404C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC4050  7C 08 03 A6 */	mtlr r0
/* 80BC4054  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC4058  4E 80 00 20 */	blr 
