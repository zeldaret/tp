lbl_80652EC0:
/* 80652EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80652EC4  7C 08 02 A6 */	mflr r0
/* 80652EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80652ECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80652ED0  7C 7F 1B 78 */	mr r31, r3
/* 80652ED4  38 7F 05 68 */	addi r3, r31, 0x568
/* 80652ED8  3C 80 80 65 */	lis r4, d_a_b_zant_sima__stringBase0@ha /* 0x80653364@ha */
/* 80652EDC  38 84 33 64 */	addi r4, r4, d_a_b_zant_sima__stringBase0@l /* 0x80653364@l */
/* 80652EE0  4B 9D A1 29 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80652EE4  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 80652EE8  28 04 00 00 */	cmplwi r4, 0
/* 80652EEC  41 82 00 14 */	beq lbl_80652F00
/* 80652EF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80652EF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80652EF8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80652EFC  4B A2 13 55 */	bl Release__4cBgSFP9dBgW_Base
lbl_80652F00:
/* 80652F00  38 60 00 01 */	li r3, 1
/* 80652F04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80652F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80652F0C  7C 08 03 A6 */	mtlr r0
/* 80652F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80652F14  4E 80 00 20 */	blr 
