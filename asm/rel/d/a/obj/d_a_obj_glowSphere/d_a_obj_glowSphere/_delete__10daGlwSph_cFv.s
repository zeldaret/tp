lbl_80BFA3EC:
/* 80BFA3EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFA3F0  7C 08 02 A6 */	mflr r0
/* 80BFA3F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFA3F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFA3FC  7C 7F 1B 78 */	mr r31, r3
/* 80BFA400  38 7F 05 68 */	addi r3, r31, 0x568
/* 80BFA404  3C 80 80 C0 */	lis r4, d_a_obj_glowSphere__stringBase0@ha /* 0x80BFA9C4@ha */
/* 80BFA408  38 84 A9 C4 */	addi r4, r4, d_a_obj_glowSphere__stringBase0@l /* 0x80BFA9C4@l */
/* 80BFA40C  4B 43 2B FD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BFA410  3C 60 80 C0 */	lis r3, mSphMng__10daGlwSph_c@ha /* 0x80BFAC0C@ha */
/* 80BFA414  38 63 AC 0C */	addi r3, r3, mSphMng__10daGlwSph_c@l /* 0x80BFAC0C@l */
/* 80BFA418  7F E4 FB 78 */	mr r4, r31
/* 80BFA41C  48 00 01 0D */	bl remove__12_GlSph_Mng_cFP10daGlwSph_c
/* 80BFA420  38 60 00 01 */	li r3, 1
/* 80BFA424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFA428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFA42C  7C 08 03 A6 */	mtlr r0
/* 80BFA430  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFA434  4E 80 00 20 */	blr 
