lbl_80BE4948:
/* 80BE4948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE494C  7C 08 02 A6 */	mflr r0
/* 80BE4950  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE4954  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE4958  7C 7F 1B 78 */	mr r31, r3
/* 80BE495C  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 80BE4960  4B 6D 96 98 */	b deleteObject__14Z2SoundObjBaseFv
/* 80BE4964  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BE4968  3C 80 80 BE */	lis r4, l_arcName@ha
/* 80BE496C  38 84 4B 20 */	addi r4, r4, l_arcName@l
/* 80BE4970  80 84 00 00 */	lwz r4, 0(r4)
/* 80BE4974  4B 44 86 94 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BE4978  38 60 00 01 */	li r3, 1
/* 80BE497C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE4980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE4984  7C 08 03 A6 */	mtlr r0
/* 80BE4988  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE498C  4E 80 00 20 */	blr 
