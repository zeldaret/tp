lbl_80BC3300:
/* 80BC3300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC3304  7C 08 02 A6 */	mflr r0
/* 80BC3308  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC330C  3C 60 80 BC */	lis r3, data_80BC405C@ha
/* 80BC3310  38 63 40 5C */	addi r3, r3, data_80BC405C@l
/* 80BC3314  4B 69 FE 38 */	b ModuleConstructorsX
/* 80BC3318  4B 69 FD 70 */	b ModuleProlog
/* 80BC331C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3320  7C 08 03 A6 */	mtlr r0
/* 80BC3324  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3328  4E 80 00 20 */	blr 
