lbl_80555B48:
/* 80555B48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80555B4C  7C 08 02 A6 */	mflr r0
/* 80555B50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80555B54  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80555B58  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80555B5C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80555B60  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80555B64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80555B68  7C 7F 1B 78 */	mr r31, r3
/* 80555B6C  3C 60 80 56 */	lis r3, m__19daNpc_Kolin_Param_c@ha /* 0x8055A5B4@ha */
/* 80555B70  38 83 A5 B4 */	addi r4, r3, m__19daNpc_Kolin_Param_c@l /* 0x8055A5B4@l */
/* 80555B74  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80555B78  28 00 00 00 */	cmplwi r0, 0
/* 80555B7C  40 82 01 1C */	bne lbl_80555C98
/* 80555B80  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80555B84  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80555B88  38 A0 00 1F */	li r5, 0x1f
/* 80555B8C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80555B90  28 00 00 00 */	cmplwi r0, 0
/* 80555B94  41 82 00 10 */	beq lbl_80555BA4
/* 80555B98  38 60 00 00 */	li r3, 0
/* 80555B9C  38 A0 00 00 */	li r5, 0
/* 80555BA0  48 00 00 18 */	b lbl_80555BB8
lbl_80555BA4:
/* 80555BA4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80555BA8  2C 00 00 00 */	cmpwi r0, 0
/* 80555BAC  41 82 00 0C */	beq lbl_80555BB8
/* 80555BB0  38 60 00 00 */	li r3, 0
/* 80555BB4  38 A0 00 00 */	li r5, 0
lbl_80555BB8:
/* 80555BB8  38 00 00 79 */	li r0, 0x79
/* 80555BBC  90 1F 0E 74 */	stw r0, 0xe74(r31)
/* 80555BC0  90 7F 0E 70 */	stw r3, 0xe70(r31)
/* 80555BC4  90 BF 0E 60 */	stw r5, 0xe60(r31)
/* 80555BC8  80 1F 0E E4 */	lwz r0, 0xee4(r31)
/* 80555BCC  60 00 00 04 */	ori r0, r0, 4
/* 80555BD0  90 1F 0E E4 */	stw r0, 0xee4(r31)
/* 80555BD4  C0 24 00 EC */	lfs f1, 0xec(r4)
/* 80555BD8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80555BDC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80555BE0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80555BE4  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80555BE8  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80555BEC  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80555BF0  28 00 00 0A */	cmplwi r0, 0xa
/* 80555BF4  40 82 00 1C */	bne lbl_80555C10
/* 80555BF8  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 80555BFC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80555C00  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80555C04  C0 04 01 18 */	lfs f0, 0x118(r4)
/* 80555C08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80555C0C  48 00 00 20 */	b lbl_80555C2C
lbl_80555C10:
/* 80555C10  28 00 00 04 */	cmplwi r0, 4
/* 80555C14  40 82 00 18 */	bne lbl_80555C2C
/* 80555C18  C0 04 01 48 */	lfs f0, 0x148(r4)
/* 80555C1C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80555C20  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80555C24  C0 04 01 4C */	lfs f0, 0x14c(r4)
/* 80555C28  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80555C2C:
/* 80555C2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80555C30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80555C34  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80555C38  4B AB 67 A5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80555C3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80555C40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80555C44  38 81 00 08 */	addi r4, r1, 8
/* 80555C48  7C 85 23 78 */	mr r5, r4
/* 80555C4C  4B DF 11 21 */	bl PSMTXMultVec
/* 80555C50  38 61 00 08 */	addi r3, r1, 8
/* 80555C54  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80555C58  7C 65 1B 78 */	mr r5, r3
/* 80555C5C  4B DF 14 35 */	bl PSVECAdd
/* 80555C60  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80555C64  FC 20 F8 90 */	fmr f1, f31
/* 80555C68  4B D1 95 91 */	bl SetH__8cM3dGCylFf
/* 80555C6C  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80555C70  FC 20 F0 90 */	fmr f1, f30
/* 80555C74  4B D1 95 8D */	bl SetR__8cM3dGCylFf
/* 80555C78  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80555C7C  38 81 00 08 */	addi r4, r1, 8
/* 80555C80  4B D1 95 5D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80555C84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80555C88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80555C8C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80555C90  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80555C94  4B D0 EF 15 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80555C98:
/* 80555C98  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80555C9C  81 9F 0E 84 */	lwz r12, 0xe84(r31)
/* 80555CA0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80555CA4  7D 89 03 A6 */	mtctr r12
/* 80555CA8  4E 80 04 21 */	bctrl 
/* 80555CAC  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80555CB0  81 9F 0E 84 */	lwz r12, 0xe84(r31)
/* 80555CB4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80555CB8  7D 89 03 A6 */	mtctr r12
/* 80555CBC  4E 80 04 21 */	bctrl 
/* 80555CC0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80555CC4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80555CC8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80555CCC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80555CD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80555CD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80555CD8  7C 08 03 A6 */	mtlr r0
/* 80555CDC  38 21 00 40 */	addi r1, r1, 0x40
/* 80555CE0  4E 80 00 20 */	blr 
