lbl_80BC7424:
/* 80BC7424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7428  7C 08 02 A6 */	mflr r0
/* 80BC742C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7430  80 A3 05 A8 */	lwz r5, 0x5a8(r3)
/* 80BC7434  38 05 00 24 */	addi r0, r5, 0x24
/* 80BC7438  90 04 00 00 */	stw r0, 0(r4)
/* 80BC743C  88 03 05 AE */	lbz r0, 0x5ae(r3)
/* 80BC7440  2C 00 00 01 */	cmpwi r0, 1
/* 80BC7444  41 82 00 1C */	beq lbl_80BC7460
/* 80BC7448  40 80 00 1C */	bge lbl_80BC7464
/* 80BC744C  2C 00 00 00 */	cmpwi r0, 0
/* 80BC7450  40 80 00 08 */	bge lbl_80BC7458
/* 80BC7454  48 00 00 10 */	b lbl_80BC7464
lbl_80BC7458:
/* 80BC7458  48 00 00 21 */	bl execCdoor__12daObjCdoor_cFv
/* 80BC745C  48 00 00 08 */	b lbl_80BC7464
lbl_80BC7460:
/* 80BC7460  48 00 01 D1 */	bl execWgate__12daObjCdoor_cFv
lbl_80BC7464:
/* 80BC7464  38 60 00 01 */	li r3, 1
/* 80BC7468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC746C  7C 08 03 A6 */	mtlr r0
/* 80BC7470  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7474  4E 80 00 20 */	blr 
