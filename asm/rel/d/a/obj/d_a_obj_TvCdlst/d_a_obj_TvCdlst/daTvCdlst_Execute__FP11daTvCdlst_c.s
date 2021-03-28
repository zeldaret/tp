lbl_80B9F750:
/* 80B9F750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9F754  7C 08 02 A6 */	mflr r0
/* 80B9F758  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9F75C  4B FF FB A5 */	bl Execute__11daTvCdlst_cFv
/* 80B9F760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9F764  7C 08 03 A6 */	mtlr r0
/* 80B9F768  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9F76C  4E 80 00 20 */	blr 
