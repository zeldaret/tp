lbl_801ADD38:
/* 801ADD38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADD3C  7C 08 02 A6 */	mflr r0
/* 801ADD40  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADD44  4B EA C4 31 */	bl dKyw_wether_draw__Fv
/* 801ADD48  38 60 00 01 */	li r3, 1
/* 801ADD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADD50  7C 08 03 A6 */	mtlr r0
/* 801ADD54  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADD58  4E 80 00 20 */	blr 
