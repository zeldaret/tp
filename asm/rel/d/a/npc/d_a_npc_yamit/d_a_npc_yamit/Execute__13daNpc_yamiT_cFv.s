lbl_80B4A45C:
/* 80B4A45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4A460  7C 08 02 A6 */	mflr r0
/* 80B4A464  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4A468  4B 5F E0 C5 */	bl execute__8daNpcT_cFv
/* 80B4A46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4A470  7C 08 03 A6 */	mtlr r0
/* 80B4A474  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4A478  4E 80 00 20 */	blr 
