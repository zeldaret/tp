lbl_80D421C4:
/* 80D421C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D421C8  7C 08 02 A6 */	mflr r0
/* 80D421CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D421D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D421D4  7C 7F 1B 78 */	mr r31, r3
/* 80D421D8  38 7F 06 DC */	addi r3, r31, 0x6dc
/* 80D421DC  3C 80 80 D4 */	lis r4, stringBase0@ha
/* 80D421E0  38 84 24 34 */	addi r4, r4, stringBase0@l
/* 80D421E4  4B 2E AE 24 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D421E8  38 7F 09 18 */	addi r3, r31, 0x918
/* 80D421EC  4B 57 BE 0C */	b deleteObject__14Z2SoundObjBaseFv
/* 80D421F0  38 60 00 01 */	li r3, 1
/* 80D421F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D421F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D421FC  7C 08 03 A6 */	mtlr r0
/* 80D42200  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42204  4E 80 00 20 */	blr 
