lbl_80BF179C:
/* 80BF179C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF17A0  7C 08 02 A6 */	mflr r0
/* 80BF17A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF17A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF17AC  7C 7F 1B 78 */	mr r31, r3
/* 80BF17B0  38 7F 05 68 */	addi r3, r31, 0x568
/* 80BF17B4  3C 80 80 BF */	lis r4, d_a_obj_food__stringBase0@ha /* 0x80BF1E10@ha */
/* 80BF17B8  38 84 1E 10 */	addi r4, r4, d_a_obj_food__stringBase0@l /* 0x80BF1E10@l */
/* 80BF17BC  4B 43 B8 4D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BF17C0  88 1F 0A 8C */	lbz r0, 0xa8c(r31)
/* 80BF17C4  28 00 00 00 */	cmplwi r0, 0
/* 80BF17C8  41 82 00 10 */	beq lbl_80BF17D8
/* 80BF17CC  38 00 00 00 */	li r0, 0
/* 80BF17D0  3C 60 80 BF */	lis r3, data_80BF1F40@ha /* 0x80BF1F40@ha */
/* 80BF17D4  98 03 1F 40 */	stb r0, data_80BF1F40@l(r3)  /* 0x80BF1F40@l */
lbl_80BF17D8:
/* 80BF17D8  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80BF17DC  28 00 00 00 */	cmplwi r0, 0
/* 80BF17E0  41 82 00 0C */	beq lbl_80BF17EC
/* 80BF17E4  38 7F 05 98 */	addi r3, r31, 0x598
/* 80BF17E8  4B 6C C8 11 */	bl deleteObject__14Z2SoundObjBaseFv
lbl_80BF17EC:
/* 80BF17EC  38 60 00 01 */	li r3, 1
/* 80BF17F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF17F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF17F8  7C 08 03 A6 */	mtlr r0
/* 80BF17FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF1800  4E 80 00 20 */	blr 
