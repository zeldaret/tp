lbl_80D07668:
/* 80D07668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0766C  7C 08 02 A6 */	mflr r0
/* 80D07670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D07674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D07678  7C 7F 1B 78 */	mr r31, r3
/* 80D0767C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D07680  3C 80 80 D0 */	lis r4, stringBase0@ha
/* 80D07684  38 84 78 54 */	addi r4, r4, stringBase0@l
/* 80D07688  4B 32 59 80 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D0768C  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80D07690  28 03 00 00 */	cmplwi r3, 0
/* 80D07694  41 82 00 24 */	beq lbl_80D076B8
/* 80D07698  4B 56 0B 3C */	b ChkUsed__9cBgW_BgIdCFv
/* 80D0769C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D076A0  41 82 00 18 */	beq lbl_80D076B8
/* 80D076A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D076A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D076AC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D076B0  80 9F 06 28 */	lwz r4, 0x628(r31)
/* 80D076B4  4B 36 CB 9C */	b Release__4cBgSFP9dBgW_Base
lbl_80D076B8:
/* 80D076B8  38 60 00 01 */	li r3, 1
/* 80D076BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D076C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D076C4  7C 08 03 A6 */	mtlr r0
/* 80D076C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D076CC  4E 80 00 20 */	blr 
