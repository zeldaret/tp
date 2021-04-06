lbl_80C76490:
/* 80C76490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C76494  7C 08 02 A6 */	mflr r0
/* 80C76498  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7649C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C764A0  7C 7F 1B 78 */	mr r31, r3
/* 80C764A4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C764A8  3C 80 80 C7 */	lis r4, d_a_obj_lv6SzGate__stringBase0@ha /* 0x80C7665C@ha */
/* 80C764AC  38 84 66 5C */	addi r4, r4, d_a_obj_lv6SzGate__stringBase0@l /* 0x80C7665C@l */
/* 80C764B0  4B 3B 6B 59 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C764B4  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80C764B8  28 03 00 00 */	cmplwi r3, 0
/* 80C764BC  41 82 00 24 */	beq lbl_80C764E0
/* 80C764C0  4B 5F 1D 15 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C764C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C764C8  41 82 00 18 */	beq lbl_80C764E0
/* 80C764CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C764D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C764D4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C764D8  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80C764DC  4B 3F DD 75 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C764E0:
/* 80C764E0  38 60 00 01 */	li r3, 1
/* 80C764E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C764E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C764EC  7C 08 03 A6 */	mtlr r0
/* 80C764F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C764F4  4E 80 00 20 */	blr 
