lbl_80BF2720:
/* 80BF2720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF2724  7C 08 02 A6 */	mflr r0
/* 80BF2728  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF272C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF2730  7C 7F 1B 78 */	mr r31, r3
/* 80BF2734  38 7F 05 68 */	addi r3, r31, 0x568
/* 80BF2738  3C 80 80 BF */	lis r4, d_a_obj_fw__stringBase0@ha /* 0x80BF2BA4@ha */
/* 80BF273C  38 84 2B A4 */	addi r4, r4, d_a_obj_fw__stringBase0@l /* 0x80BF2BA4@l */
/* 80BF2740  4B 43 A8 C9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BF2744  88 1F 06 24 */	lbz r0, 0x624(r31)
/* 80BF2748  28 00 00 00 */	cmplwi r0, 0
/* 80BF274C  41 82 00 10 */	beq lbl_80BF275C
/* 80BF2750  38 00 00 00 */	li r0, 0
/* 80BF2754  3C 60 80 BF */	lis r3, data_80BF2C20@ha /* 0x80BF2C20@ha */
/* 80BF2758  98 03 2C 20 */	stb r0, data_80BF2C20@l(r3)  /* 0x80BF2C20@l */
lbl_80BF275C:
/* 80BF275C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF2760  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF2764  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BF2768  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80BF276C  4B 48 1A E5 */	bl Release__4cBgSFP9dBgW_Base
/* 80BF2770  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80BF2774  28 00 00 00 */	cmplwi r0, 0
/* 80BF2778  41 82 00 0C */	beq lbl_80BF2784
/* 80BF277C  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80BF2780  4B 6C B8 79 */	bl deleteObject__14Z2SoundObjBaseFv
lbl_80BF2784:
/* 80BF2784  38 60 00 01 */	li r3, 1
/* 80BF2788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF278C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF2790  7C 08 03 A6 */	mtlr r0
/* 80BF2794  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF2798  4E 80 00 20 */	blr 
