lbl_807E1028:
/* 807E1028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E102C  7C 08 02 A6 */	mflr r0
/* 807E1030  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E1034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E1038  7C 7F 1B 78 */	mr r31, r3
/* 807E103C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807E1040  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 807E1044  4B 84 BF C5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807E1048  88 1F 17 E0 */	lbz r0, 0x17e0(r31)
/* 807E104C  28 00 00 00 */	cmplwi r0, 0
/* 807E1050  41 82 00 10 */	beq lbl_807E1060
/* 807E1054  38 00 00 00 */	li r0, 0
/* 807E1058  3C 60 80 7E */	lis r3, data_807E35B8@ha /* 0x807E35B8@ha */
/* 807E105C  98 03 35 B8 */	stb r0, data_807E35B8@l(r3)  /* 0x807E35B8@l */
lbl_807E1060:
/* 807E1060  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807E1064  28 00 00 00 */	cmplwi r0, 0
/* 807E1068  41 82 00 0C */	beq lbl_807E1074
/* 807E106C  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807E1070  4B 83 02 A1 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_807E1074:
/* 807E1074  38 60 00 01 */	li r3, 1
/* 807E1078  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E107C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E1080  7C 08 03 A6 */	mtlr r0
/* 807E1084  38 21 00 10 */	addi r1, r1, 0x10
/* 807E1088  4E 80 00 20 */	blr 
