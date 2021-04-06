lbl_80550ADC:
/* 80550ADC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80550AE0  7C 08 02 A6 */	mflr r0
/* 80550AE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80550AE8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80550AEC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80550AF0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80550AF4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80550AF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80550AFC  7C 7F 1B 78 */	mr r31, r3
/* 80550B00  3C 60 80 55 */	lis r3, m__18daNpc_Kkri_Param_c@ha /* 0x80553490@ha */
/* 80550B04  38 83 34 90 */	addi r4, r3, m__18daNpc_Kkri_Param_c@l /* 0x80553490@l */
/* 80550B08  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80550B0C  28 00 00 00 */	cmplwi r0, 0
/* 80550B10  40 82 01 44 */	bne lbl_80550C54
/* 80550B14  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80550B18  38 A3 FD FF */	addi r5, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80550B1C  38 C0 00 1F */	li r6, 0x1f
/* 80550B20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80550B24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80550B28  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80550B2C  28 00 00 00 */	cmplwi r0, 0
/* 80550B30  41 82 00 10 */	beq lbl_80550B40
/* 80550B34  38 A0 00 00 */	li r5, 0
/* 80550B38  38 C0 00 00 */	li r6, 0
/* 80550B3C  48 00 00 30 */	b lbl_80550B6C
lbl_80550B40:
/* 80550B40  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80550B44  28 00 00 00 */	cmplwi r0, 0
/* 80550B48  41 82 00 10 */	beq lbl_80550B58
/* 80550B4C  38 A0 00 00 */	li r5, 0
/* 80550B50  38 C0 00 00 */	li r6, 0
/* 80550B54  48 00 00 18 */	b lbl_80550B6C
lbl_80550B58:
/* 80550B58  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80550B5C  2C 00 00 00 */	cmpwi r0, 0
/* 80550B60  41 82 00 0C */	beq lbl_80550B6C
/* 80550B64  38 A0 00 00 */	li r5, 0
/* 80550B68  38 C0 00 00 */	li r6, 0
lbl_80550B6C:
/* 80550B6C  38 00 00 79 */	li r0, 0x79
/* 80550B70  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80550B74  90 BF 0E 6C */	stw r5, 0xe6c(r31)
/* 80550B78  90 DF 0E 5C */	stw r6, 0xe5c(r31)
/* 80550B7C  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80550B80  60 00 00 04 */	ori r0, r0, 4
/* 80550B84  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80550B88  C0 04 00 AC */	lfs f0, 0xac(r4)
/* 80550B8C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80550B90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80550B94  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80550B98  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80550B9C  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80550BA0  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80550BA4  28 00 00 00 */	cmplwi r0, 0
/* 80550BA8  40 82 00 20 */	bne lbl_80550BC8
/* 80550BAC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80550BB0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80550BB4  C0 04 00 D4 */	lfs f0, 0xd4(r4)
/* 80550BB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80550BBC  C3 E4 01 00 */	lfs f31, 0x100(r4)
/* 80550BC0  C3 C4 01 04 */	lfs f30, 0x104(r4)
/* 80550BC4  48 00 00 24 */	b lbl_80550BE8
lbl_80550BC8:
/* 80550BC8  28 00 00 01 */	cmplwi r0, 1
/* 80550BCC  40 82 00 1C */	bne lbl_80550BE8
/* 80550BD0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80550BD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80550BD8  C0 04 01 08 */	lfs f0, 0x108(r4)
/* 80550BDC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80550BE0  C3 E4 01 0C */	lfs f31, 0x10c(r4)
/* 80550BE4  C3 C4 01 04 */	lfs f30, 0x104(r4)
lbl_80550BE8:
/* 80550BE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80550BEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80550BF0  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80550BF4  4B AB B7 E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80550BF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80550BFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80550C00  38 81 00 08 */	addi r4, r1, 8
/* 80550C04  7C 85 23 78 */	mr r5, r4
/* 80550C08  4B DF 61 65 */	bl PSMTXMultVec
/* 80550C0C  38 61 00 08 */	addi r3, r1, 8
/* 80550C10  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80550C14  7C 65 1B 78 */	mr r5, r3
/* 80550C18  4B DF 64 79 */	bl PSVECAdd
/* 80550C1C  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80550C20  FC 20 F8 90 */	fmr f1, f31
/* 80550C24  4B D1 E5 D5 */	bl SetH__8cM3dGCylFf
/* 80550C28  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80550C2C  FC 20 F0 90 */	fmr f1, f30
/* 80550C30  4B D1 E5 D1 */	bl SetR__8cM3dGCylFf
/* 80550C34  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80550C38  38 81 00 08 */	addi r4, r1, 8
/* 80550C3C  4B D1 E5 A1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80550C40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80550C44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80550C48  38 63 23 3C */	addi r3, r3, 0x233c
/* 80550C4C  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80550C50  4B D1 3F 59 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80550C54:
/* 80550C54  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80550C58  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80550C5C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80550C60  7D 89 03 A6 */	mtctr r12
/* 80550C64  4E 80 04 21 */	bctrl 
/* 80550C68  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80550C6C  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80550C70  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80550C74  7D 89 03 A6 */	mtctr r12
/* 80550C78  4E 80 04 21 */	bctrl 
/* 80550C7C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80550C80  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80550C84  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80550C88  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80550C8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80550C90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80550C94  7C 08 03 A6 */	mtlr r0
/* 80550C98  38 21 00 40 */	addi r1, r1, 0x40
/* 80550C9C  4E 80 00 20 */	blr 
