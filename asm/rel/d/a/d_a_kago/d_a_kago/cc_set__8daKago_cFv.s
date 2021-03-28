lbl_80853FB0:
/* 80853FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80853FB4  7C 08 02 A6 */	mflr r0
/* 80853FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80853FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80853FC0  7C 7F 1B 78 */	mr r31, r3
/* 80853FC4  88 03 06 DE */	lbz r0, 0x6de(r3)
/* 80853FC8  28 00 00 00 */	cmplwi r0, 0
/* 80853FCC  41 82 00 78 */	beq lbl_80854044
/* 80853FD0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80853FD4  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80853FD8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80853FDC  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80853FE0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80853FE4  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80853FE8  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80853FEC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80853FF0  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80853FF4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80853FF8  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80853FFC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80854000  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80854004  3C 60 80 85 */	lis r3, lit_4270@ha
/* 80854008  C0 03 4B 78 */	lfs f0, lit_4270@l(r3)
/* 8085400C  EC 01 00 2A */	fadds f0, f1, f0
/* 80854010  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80854014  38 7F 0A F0 */	addi r3, r31, 0xaf0
/* 80854018  38 9F 05 38 */	addi r4, r31, 0x538
/* 8085401C  4B A1 B6 2C */	b SetC__8cM3dGSphFRC4cXyz
/* 80854020  38 7F 0A F0 */	addi r3, r31, 0xaf0
/* 80854024  3C 80 80 85 */	lis r4, lit_6550@ha
/* 80854028  C0 24 4C 70 */	lfs f1, lit_6550@l(r4)
/* 8085402C  4B A1 B6 DC */	b SetR__8cM3dGSphFf
/* 80854030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80854034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80854038  38 63 23 3C */	addi r3, r3, 0x233c
/* 8085403C  38 9F 09 CC */	addi r4, r31, 0x9cc
/* 80854040  4B A1 0B 68 */	b Set__4cCcSFP8cCcD_Obj
lbl_80854044:
/* 80854044  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80854048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085404C  7C 08 03 A6 */	mtlr r0
/* 80854050  38 21 00 10 */	addi r1, r1, 0x10
/* 80854054  4E 80 00 20 */	blr 
