lbl_80D0EB64:
/* 80D0EB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0EB68  7C 08 02 A6 */	mflr r0
/* 80D0EB6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0EB70  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80D0EB74  4B 49 8D B8 */	b dKy_plight_cut__FP15LIGHT_INFLUENCE
/* 80D0EB78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0EB7C  7C 08 03 A6 */	mtlr r0
/* 80D0EB80  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0EB84  4E 80 00 20 */	blr 
