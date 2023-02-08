lbl_805F30A8:
/* 805F30A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F30AC  7C 08 02 A6 */	mflr r0
/* 805F30B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F30B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F30B8  7C 7F 1B 78 */	mr r31, r3
/* 805F30BC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 805F30C0  3C 80 80 5F */	lis r4, d_a_b_gm__stringBase0@ha /* 0x805F4388@ha */
/* 805F30C4  38 84 43 88 */	addi r4, r4, d_a_b_gm__stringBase0@l /* 0x805F4388@l */
/* 805F30C8  4B A3 9F 41 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805F30CC  88 1F 1D 04 */	lbz r0, 0x1d04(r31)
/* 805F30D0  28 00 00 00 */	cmplwi r0, 0
/* 805F30D4  41 82 00 10 */	beq lbl_805F30E4
/* 805F30D8  38 00 00 00 */	li r0, 0
/* 805F30DC  3C 60 80 5F */	lis r3, struct_805F47CC+0x1@ha /* 0x805F47CD@ha */
/* 805F30E0  98 03 47 CD */	stb r0, struct_805F47CC+0x1@l(r3)  /* 0x805F47CD@l */
lbl_805F30E4:
/* 805F30E4  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 805F30E8  28 00 00 00 */	cmplwi r0, 0
/* 805F30EC  41 82 00 14 */	beq lbl_805F3100
/* 805F30F0  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 805F30F4  4B A1 E2 1D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 805F30F8  38 7F 06 84 */	addi r3, r31, 0x684
/* 805F30FC  4B CC AE FD */	bl deleteObject__14Z2SoundObjBaseFv
lbl_805F3100:
/* 805F3100  38 60 00 01 */	li r3, 1
/* 805F3104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F3108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F310C  7C 08 03 A6 */	mtlr r0
/* 805F3110  38 21 00 10 */	addi r1, r1, 0x10
/* 805F3114  4E 80 00 20 */	blr 
