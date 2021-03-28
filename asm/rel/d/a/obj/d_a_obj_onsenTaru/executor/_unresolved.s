lbl_80CA8538:
/* 80CA8538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA853C  7C 08 02 A6 */	mflr r0
/* 80CA8540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8544  4B 5B AB 4C */	b ModuleUnresolved
/* 80CA8548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA854C  7C 08 03 A6 */	mtlr r0
/* 80CA8550  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8554  4E 80 00 20 */	blr 
