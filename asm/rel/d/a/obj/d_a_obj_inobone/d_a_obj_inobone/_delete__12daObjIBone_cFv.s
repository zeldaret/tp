lbl_80C28050:
/* 80C28050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C28054  7C 08 02 A6 */	mflr r0
/* 80C28058  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2805C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C28060  7C 7F 1B 78 */	mr r31, r3
/* 80C28064  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80C28068  4B 69 5F 91 */	bl deleteObject__14Z2SoundObjBaseFv
/* 80C2806C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C28070  3C 80 80 C3 */	lis r4, l_arcName@ha /* 0x80C281F8@ha */
/* 80C28074  38 84 81 F8 */	addi r4, r4, l_arcName@l /* 0x80C281F8@l */
/* 80C28078  80 84 00 00 */	lwz r4, 0(r4)
/* 80C2807C  4B 40 4F 8D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C28080  38 60 00 01 */	li r3, 1
/* 80C28084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C28088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2808C  7C 08 03 A6 */	mtlr r0
/* 80C28090  38 21 00 10 */	addi r1, r1, 0x10
/* 80C28094  4E 80 00 20 */	blr 
