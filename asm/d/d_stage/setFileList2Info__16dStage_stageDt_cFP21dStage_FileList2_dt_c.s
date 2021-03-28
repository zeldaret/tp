lbl_80028078:
/* 80028078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002807C  7C 08 02 A6 */	mflr r0
/* 80028080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80028084  4B FF BE 41 */	bl dStage_SetErrorStage__Fv
/* 80028088  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 8002808C  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80028090  38 63 03 A8 */	addi r3, r3, 0x3a8
/* 80028094  4C C6 31 82 */	crclr 6
/* 80028098  4B FD EA 25 */	bl OSReport
/* 8002809C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800280A0  7C 08 03 A6 */	mtlr r0
/* 800280A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800280A8  4E 80 00 20 */	blr 
