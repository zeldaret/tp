lbl_80A02C50:
/* 80A02C50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A02C54  7C 08 02 A6 */	mflr r0
/* 80A02C58  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A02C5C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A02C60  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A02C64  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A02C68  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80A02C6C  7C 7F 1B 78 */	mr r31, r3
/* 80A02C70  3C 60 80 A0 */	lis r3, m__17daNpc_Hoz_Param_c@ha /* 0x80A06650@ha */
/* 80A02C74  3B C3 66 50 */	addi r30, r3, m__17daNpc_Hoz_Param_c@l /* 0x80A06650@l */
/* 80A02C78  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80A02C7C  28 00 00 00 */	cmplwi r0, 0
/* 80A02C80  40 82 01 0C */	bne lbl_80A02D8C
/* 80A02C84  38 00 00 79 */	li r0, 0x79
/* 80A02C88  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80A02C8C  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80A02C90  28 00 00 04 */	cmplwi r0, 4
/* 80A02C94  40 82 00 A0 */	bne lbl_80A02D34
/* 80A02C98  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80A02C9C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A02CA0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A02CA4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A02CA8  38 63 00 30 */	addi r3, r3, 0x30
/* 80A02CAC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A02CB0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A02CB4  4B 94 37 FD */	bl PSMTXCopy
/* 80A02CB8  38 60 00 50 */	li r3, 0x50
/* 80A02CBC  4B 74 9D F1 */	bl daNpcT_chkEvtBit__FUl
/* 80A02CC0  2C 03 00 00 */	cmpwi r3, 0
/* 80A02CC4  41 82 00 30 */	beq lbl_80A02CF4
/* 80A02CC8  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80A02CCC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A02CD0  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80A02CD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A02CD8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A02CDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A02CE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A02CE4  38 81 00 08 */	addi r4, r1, 8
/* 80A02CE8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A02CEC  4B 94 40 81 */	bl PSMTXMultVec
/* 80A02CF0  48 00 00 24 */	b lbl_80A02D14
lbl_80A02CF4:
/* 80A02CF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A02CF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A02CFC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A02D00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A02D04  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A02D08  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A02D0C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A02D10  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80A02D14:
/* 80A02D14  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A02D18  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80A02D1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A02D20  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A02D24  38 7E 00 00 */	addi r3, r30, 0
/* 80A02D28  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80A02D2C  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 80A02D30  48 00 00 28 */	b lbl_80A02D58
lbl_80A02D34:
/* 80A02D34  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A02D38  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A02D3C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A02D40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A02D44  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A02D48  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A02D4C  38 7E 00 00 */	addi r3, r30, 0
/* 80A02D50  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80A02D54  C3 E3 00 1C */	lfs f31, 0x1c(r3)
lbl_80A02D58:
/* 80A02D58  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A02D5C  4B 86 C4 9D */	bl SetH__8cM3dGCylFf
/* 80A02D60  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A02D64  FC 20 F8 90 */	fmr f1, f31
/* 80A02D68  4B 86 C4 99 */	bl SetR__8cM3dGCylFf
/* 80A02D6C  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A02D70  38 81 00 14 */	addi r4, r1, 0x14
/* 80A02D74  4B 86 C4 69 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80A02D78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A02D7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A02D80  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A02D84  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80A02D88  4B 86 1E 21 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80A02D8C:
/* 80A02D8C  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A02D90  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A02D94  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80A02D98  7D 89 03 A6 */	mtctr r12
/* 80A02D9C  4E 80 04 21 */	bctrl 
/* 80A02DA0  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A02DA4  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A02DA8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A02DAC  7D 89 03 A6 */	mtctr r12
/* 80A02DB0  4E 80 04 21 */	bctrl 
/* 80A02DB4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A02DB8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A02DBC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A02DC0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80A02DC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A02DC8  7C 08 03 A6 */	mtlr r0
/* 80A02DCC  38 21 00 40 */	addi r1, r1, 0x40
/* 80A02DD0  4E 80 00 20 */	blr 
