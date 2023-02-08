lbl_80CDFB70:
/* 80CDFB70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDFB74  7C 08 02 A6 */	mflr r0
/* 80CDFB78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDFB7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDFB80  7C 7F 1B 78 */	mr r31, r3
/* 80CDFB84  48 00 04 75 */	bl deleteSmkEmtCommon__15daObjSnowSoup_cFv
/* 80CDFB88  7F E3 FB 78 */	mr r3, r31
/* 80CDFB8C  88 9F 05 C0 */	lbz r4, 0x5c0(r31)
/* 80CDFB90  48 00 05 A5 */	bl deleteSmkEmtChange__15daObjSnowSoup_cFi
/* 80CDFB94  7F E3 FB 78 */	mr r3, r31
/* 80CDFB98  38 80 FF FF */	li r4, -1
/* 80CDFB9C  81 9F 05 70 */	lwz r12, 0x570(r31)
/* 80CDFBA0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CDFBA4  7D 89 03 A6 */	mtctr r12
/* 80CDFBA8  4E 80 04 21 */	bctrl 
/* 80CDFBAC  38 60 00 01 */	li r3, 1
/* 80CDFBB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDFBB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDFBB8  7C 08 03 A6 */	mtlr r0
/* 80CDFBBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDFBC0  4E 80 00 20 */	blr 
