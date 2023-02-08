lbl_80C50504:
/* 80C50504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C50508  7C 08 02 A6 */	mflr r0
/* 80C5050C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C50510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C50514  7C 7F 1B 78 */	mr r31, r3
/* 80C50518  A8 63 04 E4 */	lha r3, 0x4e4(r3)
/* 80C5051C  A8 1F 07 A8 */	lha r0, 0x7a8(r31)
/* 80C50520  7C 03 00 00 */	cmpw r3, r0
/* 80C50524  41 82 00 A8 */	beq lbl_80C505CC
/* 80C50528  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C5052C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80C50530  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C50534  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C50538  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C5053C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80C50540  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 80C50544  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80C50548  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80C5054C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C50550  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 80C50554  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80C50558  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C5055C  A8 9F 07 A8 */	lha r4, 0x7a8(r31)
/* 80C50560  38 A0 0C 00 */	li r5, 0xc00
/* 80C50564  4B 62 06 2D */	bl cLib_chaseAngleS__FPsss
/* 80C50568  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C5056C  4B 3B C7 F9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C50570  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C50574  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C50578  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C5057C  4B 3B BE B9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C50580  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C50584  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C50588  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80C5058C  4B 3B BF 41 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C50590  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C50594  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C50598  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C5059C  4B 3B BE 01 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C505A0  3C 60 80 C5 */	lis r3, M_attr__14daObjKznkarm_c@ha /* 0x80C50D08@ha */
/* 80C505A4  38 63 0D 08 */	addi r3, r3, M_attr__14daObjKznkarm_c@l /* 0x80C50D08@l */
/* 80C505A8  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80C505AC  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 80C505B0  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80C505B4  4B 3B C7 E9 */	bl transM__14mDoMtx_stack_cFfff
/* 80C505B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C505BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C505C0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C505C4  38 84 00 24 */	addi r4, r4, 0x24
/* 80C505C8  4B 6F 5E E9 */	bl PSMTXCopy
lbl_80C505CC:
/* 80C505CC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80C505D0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80C505D4  41 82 00 10 */	beq lbl_80C505E4
/* 80C505D8  7F E3 FB 78 */	mr r3, r31
/* 80C505DC  38 80 00 01 */	li r4, 1
/* 80C505E0  4B FF F2 79 */	bl setAction__14daObjKznkarm_cFQ214daObjKznkarm_c6Mode_e
lbl_80C505E4:
/* 80C505E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C505E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C505EC  7C 08 03 A6 */	mtlr r0
/* 80C505F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C505F4  4E 80 00 20 */	blr 
