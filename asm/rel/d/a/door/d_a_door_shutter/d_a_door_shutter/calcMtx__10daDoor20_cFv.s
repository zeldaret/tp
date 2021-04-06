lbl_80462B58:
/* 80462B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80462B5C  7C 08 02 A6 */	mflr r0
/* 80462B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80462B64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80462B68  7C 7F 1B 78 */	mr r31, r3
/* 80462B6C  4B BD 76 1D */	bl getKind__13door_param2_cFP10fopAc_ac_c
/* 80462B70  28 03 00 0C */	cmplwi r3, 0xc
/* 80462B74  41 81 00 78 */	bgt lbl_80462BEC
/* 80462B78  3C 80 80 46 */	lis r4, lit_4875@ha /* 0x80466FD4@ha */
/* 80462B7C  38 84 6F D4 */	addi r4, r4, lit_4875@l /* 0x80466FD4@l */
/* 80462B80  54 60 10 3A */	slwi r0, r3, 2
/* 80462B84  7C 04 00 2E */	lwzx r0, r4, r0
/* 80462B88  7C 09 03 A6 */	mtctr r0
/* 80462B8C  4E 80 04 20 */	bctr 
lbl_80462B90:
/* 80462B90  7F E3 FB 78 */	mr r3, r31
/* 80462B94  4B FF FE C9 */	bl calcMtx_2__10daDoor20_cFv
/* 80462B98  48 00 00 80 */	b lbl_80462C18
lbl_80462B9C:
/* 80462B9C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80462BA0  4B BA A1 C5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80462BA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80462BA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80462BAC  A8 9F 06 70 */	lha r4, 0x670(r31)
/* 80462BB0  4B BA 98 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 80462BB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80462BB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80462BBC  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 80462BC0  38 84 00 24 */	addi r4, r4, 0x24
/* 80462BC4  4B EE 38 ED */	bl PSMTXCopy
/* 80462BC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80462BCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80462BD0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80462BD4  D0 1F 05 E0 */	stfs f0, 0x5e0(r31)
/* 80462BD8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80462BDC  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 80462BE0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80462BE4  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 80462BE8  48 00 00 30 */	b lbl_80462C18
lbl_80462BEC:
/* 80462BEC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80462BF0  4B BA A1 75 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80462BF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80462BF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80462BFC  A8 9F 06 70 */	lha r4, 0x670(r31)
/* 80462C00  4B BA 98 35 */	bl mDoMtx_YrotM__FPA4_fs
/* 80462C04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80462C08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80462C0C  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 80462C10  38 84 00 24 */	addi r4, r4, 0x24
/* 80462C14  4B EE 38 9D */	bl PSMTXCopy
lbl_80462C18:
/* 80462C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80462C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80462C20  7C 08 03 A6 */	mtlr r0
/* 80462C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80462C28  4E 80 00 20 */	blr 
