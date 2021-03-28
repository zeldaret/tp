lbl_801BEB0C:
/* 801BEB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BEB10  7C 08 02 A6 */	mflr r0
/* 801BEB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BEB18  88 03 01 7C */	lbz r0, 0x17c(r3)
/* 801BEB1C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801BEB20  3C 80 80 3C */	lis r4, itemInfo_subProcess@ha
/* 801BEB24  38 04 C9 18 */	addi r0, r4, itemInfo_subProcess@l
/* 801BEB28  7D 80 2A 14 */	add r12, r0, r5
/* 801BEB2C  48 1A 35 59 */	bl __ptmf_scall
/* 801BEB30  60 00 00 00 */	nop 
/* 801BEB34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BEB38  7C 08 03 A6 */	mtlr r0
/* 801BEB3C  38 21 00 10 */	addi r1, r1, 0x10
/* 801BEB40  4E 80 00 20 */	blr 
