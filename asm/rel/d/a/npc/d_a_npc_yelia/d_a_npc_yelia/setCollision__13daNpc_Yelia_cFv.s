lbl_80B4EE4C:
/* 80B4EE4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B4EE50  7C 08 02 A6 */	mflr r0
/* 80B4EE54  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B4EE58  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B4EE5C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B4EE60  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80B4EE64  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80B4EE68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B4EE6C  7C 7F 1B 78 */	mr r31, r3
/* 80B4EE70  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B4EE74  28 00 00 00 */	cmplwi r0, 0
/* 80B4EE78  40 82 00 E0 */	bne lbl_80B4EF58
/* 80B4EE7C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B4EE80  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B4EE84  38 80 00 1F */	li r4, 0x1f
/* 80B4EE88  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B4EE8C  28 00 00 00 */	cmplwi r0, 0
/* 80B4EE90  41 82 00 10 */	beq lbl_80B4EEA0
/* 80B4EE94  38 60 00 00 */	li r3, 0
/* 80B4EE98  38 80 00 00 */	li r4, 0
/* 80B4EE9C  48 00 00 18 */	b lbl_80B4EEB4
lbl_80B4EEA0:
/* 80B4EEA0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B4EEA4  2C 00 00 00 */	cmpwi r0, 0
/* 80B4EEA8  41 82 00 0C */	beq lbl_80B4EEB4
/* 80B4EEAC  38 60 00 00 */	li r3, 0
/* 80B4EEB0  38 80 00 00 */	li r4, 0
lbl_80B4EEB4:
/* 80B4EEB4  38 00 00 79 */	li r0, 0x79
/* 80B4EEB8  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B4EEBC  90 7F 0E 6C */	stw r3, 0xe6c(r31)
/* 80B4EEC0  90 9F 0E 5C */	stw r4, 0xe5c(r31)
/* 80B4EEC4  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80B4EEC8  60 00 00 04 */	ori r0, r0, 4
/* 80B4EECC  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80B4EED0  3C 60 80 B5 */	lis r3, lit_4330@ha /* 0x80B5237C@ha */
/* 80B4EED4  C0 03 23 7C */	lfs f0, lit_4330@l(r3)  /* 0x80B5237C@l */
/* 80B4EED8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B4EEDC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B4EEE0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B4EEE4  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80B4EEE8  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80B4EEEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B4EEF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B4EEF4  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80B4EEF8  4B 4B D4 E5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B4EEFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B4EF00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B4EF04  38 81 00 08 */	addi r4, r1, 8
/* 80B4EF08  7C 85 23 78 */	mr r5, r4
/* 80B4EF0C  4B 7F 7E 61 */	bl PSMTXMultVec
/* 80B4EF10  38 61 00 08 */	addi r3, r1, 8
/* 80B4EF14  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B4EF18  7C 65 1B 78 */	mr r5, r3
/* 80B4EF1C  4B 7F 81 75 */	bl PSVECAdd
/* 80B4EF20  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B4EF24  FC 20 F8 90 */	fmr f1, f31
/* 80B4EF28  4B 72 02 D1 */	bl SetH__8cM3dGCylFf
/* 80B4EF2C  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B4EF30  FC 20 F0 90 */	fmr f1, f30
/* 80B4EF34  4B 72 02 CD */	bl SetR__8cM3dGCylFf
/* 80B4EF38  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B4EF3C  38 81 00 08 */	addi r4, r1, 8
/* 80B4EF40  4B 72 02 9D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80B4EF44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4EF48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4EF4C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B4EF50  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80B4EF54  4B 71 5C 55 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80B4EF58:
/* 80B4EF58  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B4EF5C  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B4EF60  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B4EF64  7D 89 03 A6 */	mtctr r12
/* 80B4EF68  4E 80 04 21 */	bctrl 
/* 80B4EF6C  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B4EF70  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B4EF74  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B4EF78  7D 89 03 A6 */	mtctr r12
/* 80B4EF7C  4E 80 04 21 */	bctrl 
/* 80B4EF80  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B4EF84  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B4EF88  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80B4EF8C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80B4EF90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B4EF94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B4EF98  7C 08 03 A6 */	mtlr r0
/* 80B4EF9C  38 21 00 40 */	addi r1, r1, 0x40
/* 80B4EFA0  4E 80 00 20 */	blr 
