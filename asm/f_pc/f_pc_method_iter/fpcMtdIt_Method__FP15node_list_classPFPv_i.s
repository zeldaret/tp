lbl_80023764:
/* 80023764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023768  7C 08 02 A6 */	mflr r0
/* 8002376C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023770  38 A0 00 00 */	li r5, 0
/* 80023774  48 24 28 ED */	bl cLsIt_Method__FP15node_list_classPFP10node_classPv_iPv
/* 80023778  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002377C  7C 08 03 A6 */	mtlr r0
/* 80023780  38 21 00 10 */	addi r1, r1, 0x10
/* 80023784  4E 80 00 20 */	blr 
