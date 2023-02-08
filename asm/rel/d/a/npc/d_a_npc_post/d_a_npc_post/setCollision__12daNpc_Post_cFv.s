lbl_80AAA570:
/* 80AAA570  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AAA574  7C 08 02 A6 */	mflr r0
/* 80AAA578  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AAA57C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80AAA580  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80AAA584  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80AAA588  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80AAA58C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AAA590  7C 7F 1B 78 */	mr r31, r3
/* 80AAA594  3C 60 80 AB */	lis r3, m__18daNpc_Post_Param_c@ha /* 0x80AAD1EC@ha */
/* 80AAA598  38 83 D1 EC */	addi r4, r3, m__18daNpc_Post_Param_c@l /* 0x80AAD1EC@l */
/* 80AAA59C  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80AAA5A0  28 00 00 00 */	cmplwi r0, 0
/* 80AAA5A4  40 82 01 24 */	bne lbl_80AAA6C8
/* 80AAA5A8  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80AAA5AC  38 A3 FD FF */	addi r5, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80AAA5B0  38 C0 00 1F */	li r6, 0x1f
/* 80AAA5B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AAA5B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AAA5BC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80AAA5C0  28 00 00 00 */	cmplwi r0, 0
/* 80AAA5C4  41 82 00 10 */	beq lbl_80AAA5D4
/* 80AAA5C8  38 A0 00 00 */	li r5, 0
/* 80AAA5CC  38 C0 00 00 */	li r6, 0
/* 80AAA5D0  48 00 00 30 */	b lbl_80AAA600
lbl_80AAA5D4:
/* 80AAA5D4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AAA5D8  28 00 00 00 */	cmplwi r0, 0
/* 80AAA5DC  41 82 00 10 */	beq lbl_80AAA5EC
/* 80AAA5E0  38 A0 00 00 */	li r5, 0
/* 80AAA5E4  38 C0 00 00 */	li r6, 0
/* 80AAA5E8  48 00 00 18 */	b lbl_80AAA600
lbl_80AAA5EC:
/* 80AAA5EC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AAA5F0  2C 00 00 00 */	cmpwi r0, 0
/* 80AAA5F4  41 82 00 0C */	beq lbl_80AAA600
/* 80AAA5F8  38 A0 00 00 */	li r5, 0
/* 80AAA5FC  38 C0 00 00 */	li r6, 0
lbl_80AAA600:
/* 80AAA600  38 00 00 79 */	li r0, 0x79
/* 80AAA604  90 1F 0E 7C */	stw r0, 0xe7c(r31)
/* 80AAA608  90 BF 0E 78 */	stw r5, 0xe78(r31)
/* 80AAA60C  90 DF 0E 68 */	stw r6, 0xe68(r31)
/* 80AAA610  80 1F 0E EC */	lwz r0, 0xeec(r31)
/* 80AAA614  60 00 00 04 */	ori r0, r0, 4
/* 80AAA618  90 1F 0E EC */	stw r0, 0xeec(r31)
/* 80AAA61C  C0 24 00 B4 */	lfs f1, 0xb4(r4)
/* 80AAA620  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AAA624  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80AAA628  C0 04 00 DC */	lfs f0, 0xdc(r4)
/* 80AAA62C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AAA630  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80AAA634  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80AAA638  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80AAA63C  28 00 00 02 */	cmplwi r0, 2
/* 80AAA640  40 82 00 1C */	bne lbl_80AAA65C
/* 80AAA644  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AAA648  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80AAA64C  C0 04 01 20 */	lfs f0, 0x120(r4)
/* 80AAA650  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AAA654  C3 E4 01 24 */	lfs f31, 0x124(r4)
/* 80AAA658  C3 C4 01 28 */	lfs f30, 0x128(r4)
lbl_80AAA65C:
/* 80AAA65C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AAA660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AAA664  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80AAA668  4B 56 1D 75 */	bl mDoMtx_YrotS__FPA4_fs
/* 80AAA66C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AAA670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AAA674  38 81 00 08 */	addi r4, r1, 8
/* 80AAA678  7C 85 23 78 */	mr r5, r4
/* 80AAA67C  4B 89 C6 F1 */	bl PSMTXMultVec
/* 80AAA680  38 61 00 08 */	addi r3, r1, 8
/* 80AAA684  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80AAA688  7C 65 1B 78 */	mr r5, r3
/* 80AAA68C  4B 89 CA 05 */	bl PSVECAdd
/* 80AAA690  38 7F 0F 74 */	addi r3, r31, 0xf74
/* 80AAA694  FC 20 F8 90 */	fmr f1, f31
/* 80AAA698  4B 7C 4B 61 */	bl SetH__8cM3dGCylFf
/* 80AAA69C  38 7F 0F 74 */	addi r3, r31, 0xf74
/* 80AAA6A0  FC 20 F0 90 */	fmr f1, f30
/* 80AAA6A4  4B 7C 4B 5D */	bl SetR__8cM3dGCylFf
/* 80AAA6A8  38 7F 0F 74 */	addi r3, r31, 0xf74
/* 80AAA6AC  38 81 00 08 */	addi r4, r1, 8
/* 80AAA6B0  4B 7C 4B 2D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80AAA6B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AAA6B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AAA6BC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AAA6C0  38 9F 0E 50 */	addi r4, r31, 0xe50
/* 80AAA6C4  4B 7B A4 E5 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80AAA6C8:
/* 80AAA6C8  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80AAA6CC  81 9F 0E 8C */	lwz r12, 0xe8c(r31)
/* 80AAA6D0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80AAA6D4  7D 89 03 A6 */	mtctr r12
/* 80AAA6D8  4E 80 04 21 */	bctrl 
/* 80AAA6DC  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80AAA6E0  81 9F 0E 8C */	lwz r12, 0xe8c(r31)
/* 80AAA6E4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AAA6E8  7D 89 03 A6 */	mtctr r12
/* 80AAA6EC  4E 80 04 21 */	bctrl 
/* 80AAA6F0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80AAA6F4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80AAA6F8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80AAA6FC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80AAA700  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AAA704  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AAA708  7C 08 03 A6 */	mtlr r0
/* 80AAA70C  38 21 00 40 */	addi r1, r1, 0x40
/* 80AAA710  4E 80 00 20 */	blr 
