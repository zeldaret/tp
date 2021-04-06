lbl_80708150:
/* 80708150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80708154  7C 08 02 A6 */	mflr r0
/* 80708158  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070815C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80708160  7C 7F 1B 78 */	mr r31, r3
/* 80708164  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80708168  3C 80 80 71 */	lis r4, d_a_e_mb__stringBase0@ha /* 0x80708AE8@ha */
/* 8070816C  38 84 8A E8 */	addi r4, r4, d_a_e_mb__stringBase0@l /* 0x80708AE8@l */
/* 80708170  4B 92 4E 99 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80708174  88 1F 08 C9 */	lbz r0, 0x8c9(r31)
/* 80708178  28 00 00 00 */	cmplwi r0, 0
/* 8070817C  41 82 00 10 */	beq lbl_8070818C
/* 80708180  38 00 00 00 */	li r0, 0
/* 80708184  3C 60 80 71 */	lis r3, struct_80708C2C+0x1@ha /* 0x80708C2D@ha */
/* 80708188  98 03 8C 2D */	stb r0, struct_80708C2C+0x1@l(r3)  /* 0x80708C2D@l */
lbl_8070818C:
/* 8070818C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80708190  28 00 00 00 */	cmplwi r0, 0
/* 80708194  41 82 00 0C */	beq lbl_807081A0
/* 80708198  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8070819C  4B 90 91 75 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_807081A0:
/* 807081A0  38 60 00 01 */	li r3, 1
/* 807081A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807081A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807081AC  7C 08 03 A6 */	mtlr r0
/* 807081B0  38 21 00 10 */	addi r1, r1, 0x10
/* 807081B4  4E 80 00 20 */	blr 
