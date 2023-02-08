lbl_80D1F878:
/* 80D1F878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F87C  7C 08 02 A6 */	mflr r0
/* 80D1F880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F884  3C 60 80 D2 */	lis r3, l_HIO@ha /* 0x80D1F99C@ha */
/* 80D1F888  38 63 F9 9C */	addi r3, r3, l_HIO@l /* 0x80D1F99C@l */
/* 80D1F88C  4B FF F8 41 */	bl __ct__14daTreeSh_HIO_cFv
/* 80D1F890  3C 80 80 D2 */	lis r4, __dt__14daTreeSh_HIO_cFv@ha /* 0x80D1F81C@ha */
/* 80D1F894  38 84 F8 1C */	addi r4, r4, __dt__14daTreeSh_HIO_cFv@l /* 0x80D1F81C@l */
/* 80D1F898  3C A0 80 D2 */	lis r5, lit_3618@ha /* 0x80D1F990@ha */
/* 80D1F89C  38 A5 F9 90 */	addi r5, r5, lit_3618@l /* 0x80D1F990@l */
/* 80D1F8A0  4B FF F7 B9 */	bl __register_global_object
/* 80D1F8A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F8A8  7C 08 03 A6 */	mtlr r0
/* 80D1F8AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F8B0  4E 80 00 20 */	blr 
