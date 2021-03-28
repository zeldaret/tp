lbl_80C797B8:
/* 80C797B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C797BC  7C 08 02 A6 */	mflr r0
/* 80C797C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C797C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C797C8  7C 7F 1B 78 */	mr r31, r3
/* 80C797CC  38 7F 11 5C */	addi r3, r31, 0x115c
/* 80C797D0  4B 64 48 28 */	b deleteObject__14Z2SoundObjBaseFv
/* 80C797D4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C797D8  3C 80 80 C8 */	lis r4, stringBase0@ha
/* 80C797DC  38 84 9A E4 */	addi r4, r4, stringBase0@l
/* 80C797E0  4B 3B 38 28 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C797E4  38 60 00 01 */	li r3, 1
/* 80C797E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C797EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C797F0  7C 08 03 A6 */	mtlr r0
/* 80C797F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C797F8  4E 80 00 20 */	blr 
