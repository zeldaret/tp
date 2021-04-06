lbl_80BF67D0:
/* 80BF67D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF67D4  7C 08 02 A6 */	mflr r0
/* 80BF67D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF67DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF67E0  7C 7F 1B 78 */	mr r31, r3
/* 80BF67E4  38 7F 05 68 */	addi r3, r31, 0x568
/* 80BF67E8  3C 80 80 BF */	lis r4, d_a_obj_gb__stringBase0@ha /* 0x80BF6DEC@ha */
/* 80BF67EC  38 84 6D EC */	addi r4, r4, d_a_obj_gb__stringBase0@l /* 0x80BF6DEC@l */
/* 80BF67F0  38 84 00 08 */	addi r4, r4, 8
/* 80BF67F4  4B 43 68 15 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BF67F8  80 9F 06 B8 */	lwz r4, 0x6b8(r31)
/* 80BF67FC  28 04 00 00 */	cmplwi r4, 0
/* 80BF6800  41 82 00 14 */	beq lbl_80BF6814
/* 80BF6804  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF6808  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF680C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BF6810  4B 47 DA 41 */	bl Release__4cBgSFP9dBgW_Base
lbl_80BF6814:
/* 80BF6814  38 60 00 01 */	li r3, 1
/* 80BF6818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF681C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF6820  7C 08 03 A6 */	mtlr r0
/* 80BF6824  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF6828  4E 80 00 20 */	blr 
