lbl_806F4754:
/* 806F4754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F4758  7C 08 02 A6 */	mflr r0
/* 806F475C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F4760  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F4764  7C 7F 1B 78 */	mr r31, r3
/* 806F4768  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806F476C  3C 80 80 6F */	lis r4, d_a_e_hzelda__stringBase0@ha /* 0x806F5654@ha */
/* 806F4770  38 84 56 54 */	addi r4, r4, d_a_e_hzelda__stringBase0@l /* 0x806F5654@l */
/* 806F4774  4B 93 88 95 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806F4778  88 1F 14 15 */	lbz r0, 0x1415(r31)
/* 806F477C  28 00 00 00 */	cmplwi r0, 0
/* 806F4780  41 82 00 10 */	beq lbl_806F4790
/* 806F4784  38 00 00 00 */	li r0, 0
/* 806F4788  3C 60 80 6F */	lis r3, data_806F5928@ha /* 0x806F5928@ha */
/* 806F478C  98 03 59 28 */	stb r0, data_806F5928@l(r3)  /* 0x806F5928@l */
lbl_806F4790:
/* 806F4790  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806F4794  28 00 00 00 */	cmplwi r0, 0
/* 806F4798  41 82 00 14 */	beq lbl_806F47AC
/* 806F479C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F47A0  4B 91 CB 71 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 806F47A4  38 7F 13 F0 */	addi r3, r31, 0x13f0
/* 806F47A8  4B BC 98 51 */	bl deleteObject__14Z2SoundObjBaseFv
lbl_806F47AC:
/* 806F47AC  38 60 00 01 */	li r3, 1
/* 806F47B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F47B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F47B8  7C 08 03 A6 */	mtlr r0
/* 806F47BC  38 21 00 10 */	addi r1, r1, 0x10
/* 806F47C0  4E 80 00 20 */	blr 
