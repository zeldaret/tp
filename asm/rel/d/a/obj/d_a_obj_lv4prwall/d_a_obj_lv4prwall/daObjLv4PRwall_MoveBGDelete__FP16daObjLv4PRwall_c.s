lbl_80C69804:
/* 80C69804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C69808  7C 08 02 A6 */	mflr r0
/* 80C6980C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C69810  4B 40 F0 CD */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C69814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C69818  7C 08 03 A6 */	mtlr r0
/* 80C6981C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C69820  4E 80 00 20 */	blr 
