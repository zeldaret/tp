lbl_80D03B08:
/* 80D03B08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D03B0C  7C 08 02 A6 */	mflr r0
/* 80D03B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D03B14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D03B18  7C 7F 1B 78 */	mr r31, r3
/* 80D03B1C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80D03B20  3C 80 80 D0 */	lis r4, d_a_obj_syRock__stringBase0@ha /* 0x80D04030@ha */
/* 80D03B24  38 84 40 30 */	addi r4, r4, d_a_obj_syRock__stringBase0@l /* 0x80D04030@l */
/* 80D03B28  4B 32 94 E1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D03B2C  80 7F 09 98 */	lwz r3, 0x998(r31)
/* 80D03B30  28 03 00 00 */	cmplwi r3, 0
/* 80D03B34  41 82 00 24 */	beq lbl_80D03B58
/* 80D03B38  4B 56 46 9D */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D03B3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D03B40  41 82 00 18 */	beq lbl_80D03B58
/* 80D03B44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D03B48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D03B4C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D03B50  80 9F 09 98 */	lwz r4, 0x998(r31)
/* 80D03B54  4B 37 06 FD */	bl Release__4cBgSFP9dBgW_Base
lbl_80D03B58:
/* 80D03B58  38 60 00 01 */	li r3, 1
/* 80D03B5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D03B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D03B64  7C 08 03 A6 */	mtlr r0
/* 80D03B68  38 21 00 10 */	addi r1, r1, 0x10
/* 80D03B6C  4E 80 00 20 */	blr 
