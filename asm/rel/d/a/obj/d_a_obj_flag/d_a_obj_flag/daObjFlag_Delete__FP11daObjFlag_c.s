lbl_80BEC340:
/* 80BEC340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEC344  7C 08 02 A6 */	mflr r0
/* 80BEC348  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEC34C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEC350  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEC354  41 82 00 50 */	beq lbl_80BEC3A4
/* 80BEC358  38 7F 05 70 */	addi r3, r31, 0x570
/* 80BEC35C  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BEC360  38 84 C5 54 */	addi r4, r4, stringBase0@l
/* 80BEC364  38 84 00 16 */	addi r4, r4, 0x16
/* 80BEC368  4B 44 0C A0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BEC36C  7F E3 FB 78 */	mr r3, r31
/* 80BEC370  4B 44 55 00 */	b getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 80BEC374  7C 64 1B 78 */	mr r4, r3
/* 80BEC378  38 7F 05 78 */	addi r3, r31, 0x578
/* 80BEC37C  4B 44 0C 8C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BEC380  38 7F 05 80 */	addi r3, r31, 0x580
/* 80BEC384  3C 80 80 BF */	lis r4, __dt__11FlagJoint_cFv@ha
/* 80BEC388  38 84 C3 BC */	addi r4, r4, __dt__11FlagJoint_cFv@l
/* 80BEC38C  38 A0 00 14 */	li r5, 0x14
/* 80BEC390  38 C0 00 04 */	li r6, 4
/* 80BEC394  4B 77 59 54 */	b __destroy_arr
/* 80BEC398  7F E3 FB 78 */	mr r3, r31
/* 80BEC39C  38 80 00 00 */	li r4, 0
/* 80BEC3A0  4B 42 C8 EC */	b __dt__10fopAc_ac_cFv
lbl_80BEC3A4:
/* 80BEC3A4  38 60 00 01 */	li r3, 1
/* 80BEC3A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEC3AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEC3B0  7C 08 03 A6 */	mtlr r0
/* 80BEC3B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEC3B8  4E 80 00 20 */	blr 
