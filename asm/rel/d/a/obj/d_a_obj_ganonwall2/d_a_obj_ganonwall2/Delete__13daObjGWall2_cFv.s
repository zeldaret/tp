lbl_80BF6004:
/* 80BF6004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF6008  7C 08 02 A6 */	mflr r0
/* 80BF600C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF6010  3C 80 80 BF */	lis r4, l_arcName@ha
/* 80BF6014  38 84 62 0C */	addi r4, r4, l_arcName@l
/* 80BF6018  80 84 00 00 */	lwz r4, 0(r4)
/* 80BF601C  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80BF6020  4B 43 6F E8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BF6024  38 60 00 01 */	li r3, 1
/* 80BF6028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF602C  7C 08 03 A6 */	mtlr r0
/* 80BF6030  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF6034  4E 80 00 20 */	blr 
