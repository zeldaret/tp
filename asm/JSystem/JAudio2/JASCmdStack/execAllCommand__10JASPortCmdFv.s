lbl_80291060:
/* 80291060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80291064  7C 08 02 A6 */	mflr r0
/* 80291068  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029106C  3C 60 80 43 */	lis r3, sCommandListOnce__10JASPortCmd@ha
/* 80291070  38 63 16 84 */	addi r3, r3, sCommandListOnce__10JASPortCmd@l
/* 80291074  48 00 00 21 */	bl execCommandOnce__Q210JASPortCmd9TPortHeadFv
/* 80291078  3C 60 80 43 */	lis r3, sCommandListStay__10JASPortCmd@ha
/* 8029107C  38 63 16 9C */	addi r3, r3, sCommandListStay__10JASPortCmd@l
/* 80291080  48 00 00 8D */	bl execCommandStay__Q210JASPortCmd9TPortHeadFv
/* 80291084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80291088  7C 08 03 A6 */	mtlr r0
/* 8029108C  38 21 00 10 */	addi r1, r1, 0x10
/* 80291090  4E 80 00 20 */	blr 
