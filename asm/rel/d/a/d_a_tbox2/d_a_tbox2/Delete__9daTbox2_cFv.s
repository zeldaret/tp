lbl_80497E6C:
/* 80497E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80497E70  7C 08 02 A6 */	mflr r0
/* 80497E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80497E78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80497E7C  7C 7F 1B 78 */	mr r31, r3
/* 80497E80  80 63 0A C8 */	lwz r3, 0xac8(r3)
/* 80497E84  28 03 00 00 */	cmplwi r3, 0
/* 80497E88  41 82 00 24 */	beq lbl_80497EAC
/* 80497E8C  4B DD 03 49 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80497E90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80497E94  41 82 00 18 */	beq lbl_80497EAC
/* 80497E98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80497E9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80497EA0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80497EA4  80 9F 0A C8 */	lwz r4, 0xac8(r31)
/* 80497EA8  4B BD C3 A9 */	bl Release__4cBgSFP9dBgW_Base
lbl_80497EAC:
/* 80497EAC  38 7F 07 1C */	addi r3, r31, 0x71c
/* 80497EB0  3C 80 80 4A */	lis r4, l_arcName@ha /* 0x8049827C@ha */
/* 80497EB4  38 84 82 7C */	addi r4, r4, l_arcName@l /* 0x8049827C@l */
/* 80497EB8  80 84 00 00 */	lwz r4, 0(r4)
/* 80497EBC  4B B9 51 4D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80497EC0  38 60 00 01 */	li r3, 1
/* 80497EC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80497EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80497ECC  7C 08 03 A6 */	mtlr r0
/* 80497ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80497ED4  4E 80 00 20 */	blr 
