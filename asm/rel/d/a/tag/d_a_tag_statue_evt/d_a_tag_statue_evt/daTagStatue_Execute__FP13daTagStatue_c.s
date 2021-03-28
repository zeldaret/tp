lbl_805A8080:
/* 805A8080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8084  7C 08 02 A6 */	mflr r0
/* 805A8088  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A808C  4B FF F4 89 */	bl execute__13daTagStatue_cFv
/* 805A8090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8094  7C 08 03 A6 */	mtlr r0
/* 805A8098  38 21 00 10 */	addi r1, r1, 0x10
/* 805A809C  4E 80 00 20 */	blr 
