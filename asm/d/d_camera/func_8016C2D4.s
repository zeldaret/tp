lbl_8016C2D4:
/* 8016C2D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016C2D8  7C 08 02 A6 */	mflr r0
/* 8016C2DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016C2E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8016C2E4  7C 7F 1B 78 */	mr r31, r3
/* 8016C2E8  C0 24 00 04 */	lfs f1, 4(r4)
/* 8016C2EC  C0 44 00 08 */	lfs f2, 8(r4)
/* 8016C2F0  48 0F B3 85 */	bl cM_atan2s__Fff
/* 8016C2F4  7C 64 1B 78 */	mr r4, r3
/* 8016C2F8  7F E3 FB 78 */	mr r3, r31
/* 8016C2FC  48 10 4C 9D */	bl __ct__7cSAngleFs
/* 8016C300  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8016C304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016C308  7C 08 03 A6 */	mtlr r0
/* 8016C30C  38 21 00 10 */	addi r1, r1, 0x10
/* 8016C310  4E 80 00 20 */	blr 
