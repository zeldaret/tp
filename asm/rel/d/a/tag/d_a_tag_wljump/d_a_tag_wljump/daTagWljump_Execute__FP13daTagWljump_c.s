lbl_80D6587C:
/* 80D6587C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D65880  7C 08 02 A6 */	mflr r0
/* 80D65884  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D65888  4B FF F8 09 */	bl execute__13daTagWljump_cFv
/* 80D6588C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D65890  7C 08 03 A6 */	mtlr r0
/* 80D65894  38 21 00 10 */	addi r1, r1, 0x10
/* 80D65898  4E 80 00 20 */	blr 
