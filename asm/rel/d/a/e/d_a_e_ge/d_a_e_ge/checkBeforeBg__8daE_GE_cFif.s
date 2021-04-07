lbl_806C7CAC:
/* 806C7CAC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806C7CB0  7C 08 02 A6 */	mflr r0
/* 806C7CB4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806C7CB8  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 806C7CBC  7C 7F 1B 78 */	mr r31, r3
/* 806C7CC0  2C 04 00 00 */	cmpwi r4, 0
/* 806C7CC4  40 82 00 38 */	bne lbl_806C7CFC
/* 806C7CC8  D0 21 00 08 */	stfs f1, 8(r1)
/* 806C7CCC  3C 60 80 6D */	lis r3, lit_3905@ha /* 0x806CD004@ha */
/* 806C7CD0  C0 03 D0 04 */	lfs f0, lit_3905@l(r3)  /* 0x806CD004@l */
/* 806C7CD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806C7CD8  3C 60 80 6D */	lis r3, lit_3926@ha /* 0x806CD030@ha */
/* 806C7CDC  C0 03 D0 30 */	lfs f0, lit_3926@l(r3)  /* 0x806CD030@l */
/* 806C7CE0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806C7CE4  38 61 00 14 */	addi r3, r1, 0x14
/* 806C7CE8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806C7CEC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 806C7CF0  38 C1 00 08 */	addi r6, r1, 8
/* 806C7CF4  4B BA 90 CD */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806C7CF8  48 00 00 50 */	b lbl_806C7D48
lbl_806C7CFC:
/* 806C7CFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C7D00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C7D04  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 806C7D08  38 80 00 00 */	li r4, 0
/* 806C7D0C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806C7D10  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 806C7D14  7D 89 03 A6 */	mtctr r12
/* 806C7D18  4E 80 04 21 */	bctrl 
/* 806C7D1C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C7D20  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C7D24  4B C7 E7 8D */	bl PSMTXCopy
/* 806C7D28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C7D2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C7D30  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806C7D34  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806C7D38  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806C7D3C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806C7D40  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806C7D44  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_806C7D48:
/* 806C7D48  38 61 00 20 */	addi r3, r1, 0x20
/* 806C7D4C  4B 9A FF 1D */	bl __ct__11dBgS_LinChkFv
/* 806C7D50  38 61 00 20 */	addi r3, r1, 0x20
/* 806C7D54  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806C7D58  38 A1 00 14 */	addi r5, r1, 0x14
/* 806C7D5C  38 C0 00 00 */	li r6, 0
/* 806C7D60  4B 9B 00 05 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806C7D64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C7D68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C7D6C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806C7D70  38 81 00 20 */	addi r4, r1, 0x20
/* 806C7D74  4B 9A C6 41 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806C7D78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C7D7C  41 82 00 18 */	beq lbl_806C7D94
/* 806C7D80  38 61 00 20 */	addi r3, r1, 0x20
/* 806C7D84  38 80 FF FF */	li r4, -1
/* 806C7D88  4B 9A FF 55 */	bl __dt__11dBgS_LinChkFv
/* 806C7D8C  38 60 00 01 */	li r3, 1
/* 806C7D90  48 00 00 14 */	b lbl_806C7DA4
lbl_806C7D94:
/* 806C7D94  38 61 00 20 */	addi r3, r1, 0x20
/* 806C7D98  38 80 FF FF */	li r4, -1
/* 806C7D9C  4B 9A FF 41 */	bl __dt__11dBgS_LinChkFv
/* 806C7DA0  38 60 00 00 */	li r3, 0
lbl_806C7DA4:
/* 806C7DA4  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 806C7DA8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806C7DAC  7C 08 03 A6 */	mtlr r0
/* 806C7DB0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806C7DB4  4E 80 00 20 */	blr 
