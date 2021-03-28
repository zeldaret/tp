lbl_8023C458:
/* 8023C458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C45C  7C 08 02 A6 */	mflr r0
/* 8023C460  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C464  80 63 00 08 */	lwz r3, 8(r3)
/* 8023C468  FC 40 08 90 */	fmr f2, f1
/* 8023C46C  48 01 81 CD */	bl paneScale__8CPaneMgrFff
/* 8023C470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C474  7C 08 03 A6 */	mtlr r0
/* 8023C478  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C47C  4E 80 00 20 */	blr 
