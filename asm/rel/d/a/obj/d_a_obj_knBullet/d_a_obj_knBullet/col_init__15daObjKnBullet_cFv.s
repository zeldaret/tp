lbl_80C474E8:
/* 80C474E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C474EC  7C 08 02 A6 */	mflr r0
/* 80C474F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C474F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C474F8  7C 7F 1B 78 */	mr r31, r3
/* 80C474FC  38 7F 05 98 */	addi r3, r31, 0x598
/* 80C47500  38 80 00 FF */	li r4, 0xff
/* 80C47504  38 A0 00 FF */	li r5, 0xff
/* 80C47508  7F E6 FB 78 */	mr r6, r31
/* 80C4750C  4B 43 C3 54 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C47510  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80C47514  3C 80 80 C4 */	lis r4, l_sph_src@ha
/* 80C47518  38 84 79 5C */	addi r4, r4, l_sph_src@l
/* 80C4751C  4B 43 D5 18 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C47520  38 1F 05 98 */	addi r0, r31, 0x598
/* 80C47524  90 1F 06 18 */	stw r0, 0x618(r31)
/* 80C47528  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 80C4752C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C47530  4B 62 81 18 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C47534  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 80C47538  3C 80 80 C4 */	lis r4, l_DATA@ha
/* 80C4753C  C0 24 79 50 */	lfs f1, l_DATA@l(r4)
/* 80C47540  4B 62 81 C8 */	b SetR__8cM3dGSphFf
/* 80C47544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C47548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4754C  7C 08 03 A6 */	mtlr r0
/* 80C47550  38 21 00 10 */	addi r1, r1, 0x10
/* 80C47554  4E 80 00 20 */	blr 
