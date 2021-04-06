lbl_808154A0:
/* 808154A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808154A4  7C 08 02 A6 */	mflr r0
/* 808154A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808154AC  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 808154B0  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 808154B4  4B FF 2C 79 */	bl __ct__12daE_YM_HIO_cFv
/* 808154B8  3C 80 80 81 */	lis r4, __dt__12daE_YM_HIO_cFv@ha /* 0x80815458@ha */
/* 808154BC  38 84 54 58 */	addi r4, r4, __dt__12daE_YM_HIO_cFv@l /* 0x80815458@l */
/* 808154C0  3C A0 80 81 */	lis r5, lit_3941@ha /* 0x80815D2C@ha */
/* 808154C4  38 A5 5D 2C */	addi r5, r5, lit_3941@l /* 0x80815D2C@l */
/* 808154C8  4B FF 2B F1 */	bl __register_global_object
/* 808154CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808154D0  7C 08 03 A6 */	mtlr r0
/* 808154D4  38 21 00 10 */	addi r1, r1, 0x10
/* 808154D8  4E 80 00 20 */	blr 
