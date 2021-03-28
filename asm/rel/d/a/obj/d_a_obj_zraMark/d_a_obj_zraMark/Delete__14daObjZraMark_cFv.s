lbl_80D42C98:
/* 80D42C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D42C9C  7C 08 02 A6 */	mflr r0
/* 80D42CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D42CA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D42CA8  7C 7F 1B 78 */	mr r31, r3
/* 80D42CAC  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D42CB0  38 83 3F A4 */	addi r4, r3, l_arcName@l
/* 80D42CB4  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D42CB8  80 84 00 00 */	lwz r4, 0(r4)
/* 80D42CBC  4B 2E A3 4C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D42CC0  38 7F 07 34 */	addi r3, r31, 0x734
/* 80D42CC4  4B 57 B3 34 */	b deleteObject__14Z2SoundObjBaseFv
/* 80D42CC8  38 60 00 01 */	li r3, 1
/* 80D42CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D42CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D42CD4  7C 08 03 A6 */	mtlr r0
/* 80D42CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42CDC  4E 80 00 20 */	blr 
