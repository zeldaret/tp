lbl_80028190:
/* 80028190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80028194  7C 08 02 A6 */	mflr r0
/* 80028198  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002819C  4B FF BD 29 */	bl dStage_SetErrorStage__Fv
/* 800281A0  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 800281A4  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 800281A8  38 63 03 DD */	addi r3, r3, 0x3dd
/* 800281AC  4C C6 31 82 */	crclr 6
/* 800281B0  4B FD E9 0D */	bl OSReport
/* 800281B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800281B8  7C 08 03 A6 */	mtlr r0
/* 800281BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800281C0  4E 80 00 20 */	blr 
