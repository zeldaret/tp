lbl_800A2C24:
/* 800A2C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A2C28  7C 08 02 A6 */	mflr r0
/* 800A2C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A2C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A2C34  93 C1 00 08 */	stw r30, 8(r1)
/* 800A2C38  7C 7E 1B 78 */	mr r30, r3
/* 800A2C3C  7C 9F 23 78 */	mr r31, r4
/* 800A2C40  38 1E 2B A8 */	addi r0, r30, 0x2ba8
/* 800A2C44  7C 1F 00 40 */	cmplw r31, r0
/* 800A2C48  41 82 00 1C */	beq lbl_800A2C64
/* 800A2C4C  7F E3 FB 78 */	mr r3, r31
/* 800A2C50  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800A2C54  C0 62 97 B4 */	lfs f3, lit_52234(r2)
/* 800A2C58  C0 82 93 D8 */	lfs f4, lit_11470(r2)
/* 800A2C5C  48 1C CD 21 */	bl cLib_addCalc__FPfffff
/* 800A2C60  48 00 00 10 */	b lbl_800A2C70
lbl_800A2C64:
/* 800A2C64  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800A2C68  28 00 01 3D */	cmplwi r0, 0x13d
/* 800A2C6C  41 82 00 5C */	beq lbl_800A2CC8
lbl_800A2C70:
/* 800A2C70  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A2C74  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 800A2C78  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800A2C7C  EC 01 00 2A */	fadds f0, f1, f0
/* 800A2C80  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 800A2C84  C0 3E 2B D4 */	lfs f1, 0x2bd4(r30)
/* 800A2C88  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800A2C8C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800A2C90  D0 1E 2B D4 */	stfs f0, 0x2bd4(r30)
/* 800A2C94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A2C98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A2C9C  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 800A2CA0  4B F6 96 A5 */	bl mDoMtx_XrotS__FPA4_fs
/* 800A2CA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A2CA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A2CAC  38 9E 2B B8 */	addi r4, r30, 0x2bb8
/* 800A2CB0  7C 65 1B 78 */	mr r5, r3
/* 800A2CB4  48 2A 38 31 */	bl PSMTXConcat
/* 800A2CB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A2CBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A2CC0  38 9E 2B E8 */	addi r4, r30, 0x2be8
/* 800A2CC4  48 2A 37 ED */	bl PSMTXCopy
lbl_800A2CC8:
/* 800A2CC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A2CCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A2CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A2CD4  7C 08 03 A6 */	mtlr r0
/* 800A2CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 800A2CDC  4E 80 00 20 */	blr 
