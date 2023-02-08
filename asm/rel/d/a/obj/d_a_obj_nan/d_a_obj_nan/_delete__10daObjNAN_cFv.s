lbl_80CA2904:
/* 80CA2904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA2908  7C 08 02 A6 */	mflr r0
/* 80CA290C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA2910  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA2914  7C 7F 1B 78 */	mr r31, r3
/* 80CA2918  38 7F 05 90 */	addi r3, r31, 0x590
/* 80CA291C  3C 80 80 CA */	lis r4, d_a_obj_nan__stringBase0@ha /* 0x80CA32A0@ha */
/* 80CA2920  38 84 32 A0 */	addi r4, r4, d_a_obj_nan__stringBase0@l /* 0x80CA32A0@l */
/* 80CA2924  4B 38 A6 E5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CA2928  88 1F 07 FD */	lbz r0, 0x7fd(r31)
/* 80CA292C  28 00 00 00 */	cmplwi r0, 0
/* 80CA2930  41 82 00 10 */	beq lbl_80CA2940
/* 80CA2934  38 00 00 00 */	li r0, 0
/* 80CA2938  3C 60 80 CA */	lis r3, data_80CA3498@ha /* 0x80CA3498@ha */
/* 80CA293C  98 03 34 98 */	stb r0, data_80CA3498@l(r3)  /* 0x80CA3498@l */
lbl_80CA2940:
/* 80CA2940  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80CA2944  28 00 00 00 */	cmplwi r0, 0
/* 80CA2948  41 82 00 0C */	beq lbl_80CA2954
/* 80CA294C  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80CA2950  4B 36 E9 C1 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80CA2954:
/* 80CA2954  38 60 00 01 */	li r3, 1
/* 80CA2958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA295C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA2960  7C 08 03 A6 */	mtlr r0
/* 80CA2964  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA2968  4E 80 00 20 */	blr 
