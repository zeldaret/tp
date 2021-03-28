lbl_80C77810:
/* 80C77810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C77814  7C 08 02 A6 */	mflr r0
/* 80C77818  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7781C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C77820  7C 7F 1B 78 */	mr r31, r3
/* 80C77824  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C77828  3C 80 80 C7 */	lis r4, stringBase0@ha
/* 80C7782C  38 84 79 FC */	addi r4, r4, stringBase0@l
/* 80C77830  4B 3B 57 D8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C77834  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80C77838  28 03 00 00 */	cmplwi r3, 0
/* 80C7783C  41 82 00 24 */	beq lbl_80C77860
/* 80C77840  4B 5F 09 94 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C77844  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C77848  41 82 00 18 */	beq lbl_80C77860
/* 80C7784C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C77850  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C77854  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C77858  80 9F 06 1C */	lwz r4, 0x61c(r31)
/* 80C7785C  4B 3F C9 F4 */	b Release__4cBgSFP9dBgW_Base
lbl_80C77860:
/* 80C77860  38 60 00 01 */	li r3, 1
/* 80C77864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C77868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7786C  7C 08 03 A6 */	mtlr r0
/* 80C77870  38 21 00 10 */	addi r1, r1, 0x10
/* 80C77874  4E 80 00 20 */	blr 
