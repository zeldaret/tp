lbl_80D60380:
/* 80D60380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60384  7C 08 02 A6 */	mflr r0
/* 80D60388  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6038C  3C 60 80 D6 */	lis r3, data_80D607AC@ha
/* 80D60390  38 63 07 AC */	addi r3, r3, data_80D607AC@l
/* 80D60394  4B 50 2D B8 */	b ModuleConstructorsX
/* 80D60398  4B 50 2C F0 */	b ModuleProlog
/* 80D6039C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D603A0  7C 08 03 A6 */	mtlr r0
/* 80D603A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D603A8  4E 80 00 20 */	blr 
