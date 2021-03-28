lbl_80681F48:
/* 80681F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80681F4C  7C 08 02 A6 */	mflr r0
/* 80681F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80681F54  3C 60 80 68 */	lis r3, l_HIO@ha
/* 80681F58  38 63 26 48 */	addi r3, r3, l_HIO@l
/* 80681F5C  4B FF CD 91 */	bl __ct__12daE_BA_HIO_cFv
/* 80681F60  3C 80 80 68 */	lis r4, __dt__12daE_BA_HIO_cFv@ha
/* 80681F64  38 84 1F 00 */	addi r4, r4, __dt__12daE_BA_HIO_cFv@l
/* 80681F68  3C A0 80 68 */	lis r5, lit_3963@ha
/* 80681F6C  38 A5 26 3C */	addi r5, r5, lit_3963@l
/* 80681F70  4B FF CD 09 */	bl __register_global_object
/* 80681F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80681F78  7C 08 03 A6 */	mtlr r0
/* 80681F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80681F80  4E 80 00 20 */	blr 
