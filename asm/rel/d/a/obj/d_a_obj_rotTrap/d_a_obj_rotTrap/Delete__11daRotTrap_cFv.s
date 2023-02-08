lbl_80CC05EC:
/* 80CC05EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC05F0  7C 08 02 A6 */	mflr r0
/* 80CC05F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC05F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC05FC  7C 7F 1B 78 */	mr r31, r3
/* 80CC0600  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CC0604  3C 80 80 CC */	lis r4, d_a_obj_rotTrap__stringBase0@ha /* 0x80CC0858@ha */
/* 80CC0608  38 84 08 58 */	addi r4, r4, d_a_obj_rotTrap__stringBase0@l /* 0x80CC0858@l */
/* 80CC060C  4B 36 C9 FD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CC0610  80 7F 17 38 */	lwz r3, 0x1738(r31)
/* 80CC0614  28 03 00 00 */	cmplwi r3, 0
/* 80CC0618  41 82 00 24 */	beq lbl_80CC063C
/* 80CC061C  4B 5A 7B B9 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80CC0620  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CC0624  41 82 00 18 */	beq lbl_80CC063C
/* 80CC0628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC062C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC0630  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC0634  80 9F 17 38 */	lwz r4, 0x1738(r31)
/* 80CC0638  4B 3B 3C 19 */	bl Release__4cBgSFP9dBgW_Base
lbl_80CC063C:
/* 80CC063C  38 60 00 01 */	li r3, 1
/* 80CC0640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC0644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC0648  7C 08 03 A6 */	mtlr r0
/* 80CC064C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC0650  4E 80 00 20 */	blr 
