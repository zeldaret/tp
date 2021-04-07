lbl_80016574:
/* 80016574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80016578  7C 08 02 A6 */	mflr r0
/* 8001657C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80016580  3C 60 80 3E */	lis r3, l_param__9mDoDvdThd@ha /* 0x803DEC60@ha */
/* 80016584  38 63 EC 60 */	addi r3, r3, l_param__9mDoDvdThd@l /* 0x803DEC60@l */
/* 80016588  4B FF F3 BD */	bl __ct__17mDoDvdThd_param_cFv
/* 8001658C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80016590  7C 08 03 A6 */	mtlr r0
/* 80016594  38 21 00 10 */	addi r1, r1, 0x10
/* 80016598  4E 80 00 20 */	blr 
