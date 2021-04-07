lbl_8026EB38:
/* 8026EB38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026EB3C  7C 08 02 A6 */	mflr r0
/* 8026EB40  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026EB44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8026EB48  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8026EB4C  7C BE 2B 78 */	mr r30, r5
/* 8026EB50  7C DF 33 78 */	mr r31, r6
/* 8026EB54  3C A0 80 3A */	lis r5, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026EB58  38 05 78 F8 */	addi r0, r5, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026EB5C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026EB60  38 A1 00 08 */	addi r5, r1, 8
/* 8026EB64  4B FF FB 8D */	bl cM3d_2PlaneCrossLine__FRC8cM3dGPlaRC8cM3dGPlaP8cM3dGLin
/* 8026EB68  2C 03 00 00 */	cmpwi r3, 0
/* 8026EB6C  40 82 00 18 */	bne lbl_8026EB84
/* 8026EB70  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026EB74  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026EB78  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026EB7C  38 60 00 00 */	li r3, 0
/* 8026EB80  48 00 00 24 */	b lbl_8026EBA4
lbl_8026EB84:
/* 8026EB84  38 61 00 08 */	addi r3, r1, 8
/* 8026EB88  7F C4 F3 78 */	mr r4, r30
/* 8026EB8C  7F E5 FB 78 */	mr r5, r31
/* 8026EB90  4B FF FD F1 */	bl cM3d_lineVsPosSuisenCross__FPC8cM3dGLinPC3VecP3Vec
/* 8026EB94  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026EB98  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026EB9C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026EBA0  38 60 00 01 */	li r3, 1
lbl_8026EBA4:
/* 8026EBA4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8026EBA8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8026EBAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026EBB0  7C 08 03 A6 */	mtlr r0
/* 8026EBB4  38 21 00 30 */	addi r1, r1, 0x30
/* 8026EBB8  4E 80 00 20 */	blr 
