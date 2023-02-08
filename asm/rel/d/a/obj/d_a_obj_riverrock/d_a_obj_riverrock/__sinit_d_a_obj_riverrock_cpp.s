lbl_80CBDA0C:
/* 80CBDA0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBDA10  7C 08 02 A6 */	mflr r0
/* 80CBDA14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBDA18  3C 60 80 CC */	lis r3, l_HIO@ha /* 0x80CBDBF8@ha */
/* 80CBDA1C  38 63 DB F8 */	addi r3, r3, l_HIO@l /* 0x80CBDBF8@l */
/* 80CBDA20  4B FF EC AD */	bl __ct__20daObjRIVERROCK_HIO_cFv
/* 80CBDA24  3C 80 80 CC */	lis r4, __dt__20daObjRIVERROCK_HIO_cFv@ha /* 0x80CBD9C4@ha */
/* 80CBDA28  38 84 D9 C4 */	addi r4, r4, __dt__20daObjRIVERROCK_HIO_cFv@l /* 0x80CBD9C4@l */
/* 80CBDA2C  3C A0 80 CC */	lis r5, lit_3626@ha /* 0x80CBDBEC@ha */
/* 80CBDA30  38 A5 DB EC */	addi r5, r5, lit_3626@l /* 0x80CBDBEC@l */
/* 80CBDA34  4B FF EC 25 */	bl __register_global_object
/* 80CBDA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBDA3C  7C 08 03 A6 */	mtlr r0
/* 80CBDA40  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBDA44  4E 80 00 20 */	blr 
