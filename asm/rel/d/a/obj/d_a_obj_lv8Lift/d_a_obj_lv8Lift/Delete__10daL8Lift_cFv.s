lbl_80C89DC8:
/* 80C89DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C89DCC  7C 08 02 A6 */	mflr r0
/* 80C89DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C89DD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C89DD8  7C 7F 1B 78 */	mr r31, r3
/* 80C89DDC  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C89DE0  3C 80 80 C9 */	lis r4, d_a_obj_lv8Lift__stringBase0@ha /* 0x80C89FFC@ha */
/* 80C89DE4  38 84 9F FC */	addi r4, r4, d_a_obj_lv8Lift__stringBase0@l /* 0x80C89FFC@l */
/* 80C89DE8  4B 3A 32 21 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C89DEC  88 1F 08 0D */	lbz r0, 0x80d(r31)
/* 80C89DF0  28 00 00 00 */	cmplwi r0, 0
/* 80C89DF4  41 82 00 0C */	beq lbl_80C89E00
/* 80C89DF8  38 7F 08 10 */	addi r3, r31, 0x810
/* 80C89DFC  4B 51 DB 31 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80C89E00:
/* 80C89E00  38 60 00 01 */	li r3, 1
/* 80C89E04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C89E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C89E0C  7C 08 03 A6 */	mtlr r0
/* 80C89E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C89E14  4E 80 00 20 */	blr 
