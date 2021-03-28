lbl_80BED44C:
/* 80BED44C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BED450  7C 08 02 A6 */	mflr r0
/* 80BED454  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BED458  7C 64 1B 78 */	mr r4, r3
/* 80BED45C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BED460  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BED464  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BED468  38 84 05 B8 */	addi r4, r4, 0x5b8
/* 80BED46C  4B 67 77 3C */	b Set__4cCcSFP8cCcD_Obj
/* 80BED470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BED474  7C 08 03 A6 */	mtlr r0
/* 80BED478  38 21 00 10 */	addi r1, r1, 0x10
/* 80BED47C  4E 80 00 20 */	blr 
