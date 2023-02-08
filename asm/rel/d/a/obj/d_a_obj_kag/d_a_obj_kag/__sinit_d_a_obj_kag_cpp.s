lbl_80C310A8:
/* 80C310A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C310AC  7C 08 02 A6 */	mflr r0
/* 80C310B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C310B4  3C 60 80 C3 */	lis r3, l_HIO@ha /* 0x80C31440@ha */
/* 80C310B8  38 63 14 40 */	addi r3, r3, l_HIO@l /* 0x80C31440@l */
/* 80C310BC  4B FF D3 51 */	bl __ct__14daObj_KagHIO_cFv
/* 80C310C0  3C 80 80 C3 */	lis r4, __dt__14daObj_KagHIO_cFv@ha /* 0x80C31060@ha */
/* 80C310C4  38 84 10 60 */	addi r4, r4, __dt__14daObj_KagHIO_cFv@l /* 0x80C31060@l */
/* 80C310C8  3C A0 80 C3 */	lis r5, lit_3769@ha /* 0x80C31434@ha */
/* 80C310CC  38 A5 14 34 */	addi r5, r5, lit_3769@l /* 0x80C31434@l */
/* 80C310D0  4B FF D2 C9 */	bl __register_global_object
/* 80C310D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C310D8  7C 08 03 A6 */	mtlr r0
/* 80C310DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C310E0  4E 80 00 20 */	blr 
