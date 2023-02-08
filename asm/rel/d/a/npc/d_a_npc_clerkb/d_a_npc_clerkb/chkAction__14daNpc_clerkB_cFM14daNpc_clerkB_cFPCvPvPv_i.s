lbl_80997CC0:
/* 80997CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80997CC4  7C 08 02 A6 */	mflr r0
/* 80997CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80997CCC  38 63 10 EC */	addi r3, r3, 0x10ec
/* 80997CD0  4B 9C A3 79 */	bl __ptmf_cmpr
/* 80997CD4  7C 60 00 34 */	cntlzw r0, r3
/* 80997CD8  54 03 D9 7E */	srwi r3, r0, 5
/* 80997CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80997CE0  7C 08 03 A6 */	mtlr r0
/* 80997CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80997CE8  4E 80 00 20 */	blr 
