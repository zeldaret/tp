lbl_80BA8DAC:
/* 80BA8DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA8DB0  7C 08 02 A6 */	mflr r0
/* 80BA8DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA8DB8  3C 60 80 BB */	lis r3, l_HIO@ha /* 0x80BA900C@ha */
/* 80BA8DBC  38 63 90 0C */	addi r3, r3, l_HIO@l /* 0x80BA900C@l */
/* 80BA8DC0  4B FF F1 ED */	bl __ct__19daObj_Balloon_HIO_cFv
/* 80BA8DC4  3C 80 80 BB */	lis r4, __dt__19daObj_Balloon_HIO_cFv@ha /* 0x80BA8D64@ha */
/* 80BA8DC8  38 84 8D 64 */	addi r4, r4, __dt__19daObj_Balloon_HIO_cFv@l /* 0x80BA8D64@l */
/* 80BA8DCC  3C A0 80 BB */	lis r5, lit_3651@ha /* 0x80BA9000@ha */
/* 80BA8DD0  38 A5 90 00 */	addi r5, r5, lit_3651@l /* 0x80BA9000@l */
/* 80BA8DD4  4B FF F1 65 */	bl __register_global_object
/* 80BA8DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA8DDC  7C 08 03 A6 */	mtlr r0
/* 80BA8DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA8DE4  4E 80 00 20 */	blr 
