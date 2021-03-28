lbl_8001E748:
/* 8001E748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E74C  7C 08 02 A6 */	mflr r0
/* 8001E750  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001E758  7C 7F 1B 78 */	mr r31, r3
/* 8001E75C  48 24 80 A5 */	bl cReq_Done__FP18request_base_class
/* 8001E760  A8 7F 00 02 */	lha r3, 2(r31)
/* 8001E764  38 03 FF FF */	addi r0, r3, -1
/* 8001E768  B0 1F 00 02 */	sth r0, 2(r31)
/* 8001E76C  7C 03 00 D0 */	neg r0, r3
/* 8001E770  7C 60 03 38 */	orc r0, r3, r0
/* 8001E774  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 8001E778  38 00 00 02 */	li r0, 2
/* 8001E77C  7C 03 18 38 */	and r3, r0, r3
/* 8001E780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001E784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E788  7C 08 03 A6 */	mtlr r0
/* 8001E78C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E790  4E 80 00 20 */	blr 
