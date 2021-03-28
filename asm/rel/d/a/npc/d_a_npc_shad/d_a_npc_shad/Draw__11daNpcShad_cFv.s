lbl_80AD9138:
/* 80AD9138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD913C  7C 08 02 A6 */	mflr r0
/* 80AD9140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD9144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD9148  7C 7F 1B 78 */	mr r31, r3
/* 80AD914C  88 03 0E 1E */	lbz r0, 0xe1e(r3)
/* 80AD9150  28 00 00 00 */	cmplwi r0, 0
/* 80AD9154  40 82 00 0C */	bne lbl_80AD9160
/* 80AD9158  38 60 00 01 */	li r3, 1
/* 80AD915C  48 00 01 10 */	b lbl_80AD926C
lbl_80AD9160:
/* 80AD9160  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80AD9164  80 84 00 04 */	lwz r4, 4(r4)
/* 80AD9168  80 84 00 04 */	lwz r4, 4(r4)
/* 80AD916C  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80AD9170  80 84 00 04 */	lwz r4, 4(r4)
/* 80AD9174  80 1F 0B E0 */	lwz r0, 0xbe0(r31)
/* 80AD9178  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80AD917C  38 80 00 00 */	li r4, 0
/* 80AD9180  38 A0 00 00 */	li r5, 0
/* 80AD9184  3C C0 80 AE */	lis r6, m__17daNpcShad_Param_c@ha
/* 80AD9188  38 C6 1F DC */	addi r6, r6, m__17daNpcShad_Param_c@l
/* 80AD918C  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80AD9190  38 C0 00 00 */	li r6, 0
/* 80AD9194  38 E0 00 00 */	li r7, 0
/* 80AD9198  4B 67 91 14 */	b draw__8daNpcF_cFiifP11_GXColorS10i
/* 80AD919C  80 9F 0B 48 */	lwz r4, 0xb48(r31)
/* 80AD91A0  28 04 00 00 */	cmplwi r4, 0
/* 80AD91A4  41 82 00 54 */	beq lbl_80AD91F8
/* 80AD91A8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80AD91AC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80AD91B0  80 84 00 04 */	lwz r4, 4(r4)
/* 80AD91B4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80AD91B8  4B 6C BB E8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80AD91BC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80AD91C0  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD91C4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AD91C8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AD91CC  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 80AD91D0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AD91D4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AD91D8  4B 86 D2 D8 */	b PSMTXCopy
/* 80AD91DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AD91E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AD91E4  80 9F 0B 48 */	lwz r4, 0xb48(r31)
/* 80AD91E8  38 84 00 24 */	addi r4, r4, 0x24
/* 80AD91EC  4B 86 D2 C4 */	b PSMTXCopy
/* 80AD91F0  80 7F 0B 48 */	lwz r3, 0xb48(r31)
/* 80AD91F4  4B 53 4A D0 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80AD91F8:
/* 80AD91F8  80 9F 0B 4C */	lwz r4, 0xb4c(r31)
/* 80AD91FC  28 04 00 00 */	cmplwi r4, 0
/* 80AD9200  41 82 00 68 */	beq lbl_80AD9268
/* 80AD9204  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80AD9208  2C 00 00 0B */	cmpwi r0, 0xb
/* 80AD920C  41 82 00 0C */	beq lbl_80AD9218
/* 80AD9210  2C 00 00 0C */	cmpwi r0, 0xc
/* 80AD9214  40 82 00 54 */	bne lbl_80AD9268
lbl_80AD9218:
/* 80AD9218  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80AD921C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80AD9220  80 84 00 04 */	lwz r4, 4(r4)
/* 80AD9224  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80AD9228  4B 6C BB 78 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80AD922C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80AD9230  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD9234  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AD9238  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AD923C  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 80AD9240  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AD9244  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AD9248  4B 86 D2 68 */	b PSMTXCopy
/* 80AD924C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AD9250  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AD9254  80 9F 0B 4C */	lwz r4, 0xb4c(r31)
/* 80AD9258  38 84 00 24 */	addi r4, r4, 0x24
/* 80AD925C  4B 86 D2 54 */	b PSMTXCopy
/* 80AD9260  80 7F 0B 4C */	lwz r3, 0xb4c(r31)
/* 80AD9264  4B 53 4A 60 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80AD9268:
/* 80AD9268  38 60 00 01 */	li r3, 1
lbl_80AD926C:
/* 80AD926C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD9270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD9274  7C 08 03 A6 */	mtlr r0
/* 80AD9278  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD927C  4E 80 00 20 */	blr 
