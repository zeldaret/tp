lbl_80BA53A8:
/* 80BA53A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA53AC  7C 08 02 A6 */	mflr r0
/* 80BA53B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA53B4  3C 60 80 BA */	lis r3, l_HIO@ha
/* 80BA53B8  38 63 55 F0 */	addi r3, r3, l_HIO@l
/* 80BA53BC  4B FF D2 D1 */	bl __ct__14daObj_AriHIO_cFv
/* 80BA53C0  3C 80 80 BA */	lis r4, __dt__14daObj_AriHIO_cFv@ha
/* 80BA53C4  38 84 53 60 */	addi r4, r4, __dt__14daObj_AriHIO_cFv@l
/* 80BA53C8  3C A0 80 BA */	lis r5, lit_3771@ha
/* 80BA53CC  38 A5 55 E4 */	addi r5, r5, lit_3771@l
/* 80BA53D0  4B FF D2 49 */	bl __register_global_object
/* 80BA53D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA53D8  7C 08 03 A6 */	mtlr r0
/* 80BA53DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA53E0  4E 80 00 20 */	blr 
