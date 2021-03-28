lbl_80CC4458:
/* 80CC4458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC445C  7C 08 02 A6 */	mflr r0
/* 80CC4460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4464  4B FF FA B9 */	bl create__10daSaidan_cFv
/* 80CC4468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC446C  7C 08 03 A6 */	mtlr r0
/* 80CC4470  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4474  4E 80 00 20 */	blr 
