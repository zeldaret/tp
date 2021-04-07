lbl_80C908E4:
/* 80C908E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C908E8  7C 08 02 A6 */	mflr r0
/* 80C908EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C908F0  3C 60 80 C9 */	lis r3, l_HIO@ha /* 0x80C90A60@ha */
/* 80C908F4  38 63 0A 60 */	addi r3, r3, l_HIO@l /* 0x80C90A60@l */
/* 80C908F8  4B FF F5 15 */	bl __ct__16daObj_Maki_HIO_cFv
/* 80C908FC  3C 80 80 C9 */	lis r4, __dt__16daObj_Maki_HIO_cFv@ha /* 0x80C9089C@ha */
/* 80C90900  38 84 08 9C */	addi r4, r4, __dt__16daObj_Maki_HIO_cFv@l /* 0x80C9089C@l */
/* 80C90904  3C A0 80 C9 */	lis r5, lit_3764@ha /* 0x80C90A54@ha */
/* 80C90908  38 A5 0A 54 */	addi r5, r5, lit_3764@l /* 0x80C90A54@l */
/* 80C9090C  4B FF F4 8D */	bl __register_global_object
/* 80C90910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C90914  7C 08 03 A6 */	mtlr r0
/* 80C90918  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9091C  4E 80 00 20 */	blr 
