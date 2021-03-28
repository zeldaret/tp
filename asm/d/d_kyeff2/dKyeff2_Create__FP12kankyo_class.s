lbl_801ADF34:
/* 801ADF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADF38  7C 08 02 A6 */	mflr r0
/* 801ADF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADF40  4B EA 9A AD */	bl dKyw_wether_init2__Fv
/* 801ADF44  38 60 00 04 */	li r3, 4
/* 801ADF48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADF4C  7C 08 03 A6 */	mtlr r0
/* 801ADF50  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADF54  4E 80 00 20 */	blr 
