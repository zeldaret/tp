lbl_800274B0:
/* 800274B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800274B4  7C 08 02 A6 */	mflr r0
/* 800274B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800274BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800274C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800274C4  7C 7E 1B 78 */	mr r30, r3
/* 800274C8  7C 87 23 78 */	mr r7, r4
/* 800274CC  90 A1 00 08 */	stw r5, 8(r1)
/* 800274D0  38 00 00 00 */	li r0, 0
/* 800274D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800274D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800274DC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 800274E0  38 7F 4E 00 */	addi r3, r31, 0x4e00
/* 800274E4  38 80 FF FF */	li r4, -1
/* 800274E8  88 1F 0D B4 */	lbz r0, 0xdb4(r31)
/* 800274EC  7C 05 07 74 */	extsb r5, r0
/* 800274F0  38 C0 FF FF */	li r6, -1
/* 800274F4  C0 22 82 90 */	lfs f1, lit_4270(r2)
/* 800274F8  39 00 00 00 */	li r8, 0
/* 800274FC  39 20 00 00 */	li r9, 0
/* 80027500  39 40 00 00 */	li r10, 0
/* 80027504  48 00 5D F9 */	bl dComIfGp_setNextStage__FPCcsScScfUliScsii
/* 80027508  93 DF 0D C8 */	stw r30, 0xdc8(r31)
/* 8002750C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80027510  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80027514  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80027518  7C 08 03 A6 */	mtlr r0
/* 8002751C  38 21 00 20 */	addi r1, r1, 0x20
/* 80027520  4E 80 00 20 */	blr 
