lbl_80832848:
/* 80832848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8083284C  7C 08 02 A6 */	mflr r0
/* 80832850  90 01 00 14 */	stw r0, 0x14(r1)
/* 80832854  3C 60 80 83 */	lis r3, l_HIO@ha
/* 80832858  38 63 2F 90 */	addi r3, r3, l_HIO@l
/* 8083285C  4B FF D0 F1 */	bl __ct__12daE_ZM_HIO_cFv
/* 80832860  3C 80 80 83 */	lis r4, __dt__12daE_ZM_HIO_cFv@ha
/* 80832864  38 84 28 00 */	addi r4, r4, __dt__12daE_ZM_HIO_cFv@l
/* 80832868  3C A0 80 83 */	lis r5, lit_3805@ha
/* 8083286C  38 A5 2F 84 */	addi r5, r5, lit_3805@l
/* 80832870  4B FF D0 69 */	bl __register_global_object
/* 80832874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80832878  7C 08 03 A6 */	mtlr r0
/* 8083287C  38 21 00 10 */	addi r1, r1, 0x10
/* 80832880  4E 80 00 20 */	blr 
