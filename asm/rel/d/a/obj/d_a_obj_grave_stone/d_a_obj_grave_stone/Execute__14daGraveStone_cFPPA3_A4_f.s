lbl_80C13030:
/* 80C13030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C13034  7C 08 02 A6 */	mflr r0
/* 80C13038  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1303C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C13040  7C 7F 1B 78 */	mr r31, r3
/* 80C13044  38 1F 05 6C */	addi r0, r31, 0x56c
/* 80C13048  90 04 00 00 */	stw r0, 0(r4)
/* 80C1304C  4B FF F6 21 */	bl moveCalc__14daGraveStone_cFv
/* 80C13050  7F E3 FB 78 */	mr r3, r31
/* 80C13054  4B FF F5 A5 */	bl setBaseMtx__14daGraveStone_cFv
/* 80C13058  7F E3 FB 78 */	mr r3, r31
/* 80C1305C  4B FF F8 BD */	bl setPrtcl__14daGraveStone_cFv
/* 80C13060  38 60 00 01 */	li r3, 1
/* 80C13064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C13068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1306C  7C 08 03 A6 */	mtlr r0
/* 80C13070  38 21 00 10 */	addi r1, r1, 0x10
/* 80C13074  4E 80 00 20 */	blr 
