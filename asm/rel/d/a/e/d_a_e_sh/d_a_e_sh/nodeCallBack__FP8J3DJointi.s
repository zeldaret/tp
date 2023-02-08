lbl_8078E460:
/* 8078E460  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8078E464  7C 08 02 A6 */	mflr r0
/* 8078E468  90 01 00 24 */	stw r0, 0x24(r1)
/* 8078E46C  39 61 00 20 */	addi r11, r1, 0x20
/* 8078E470  4B BD 3D 69 */	bl _savegpr_28
/* 8078E474  2C 04 00 00 */	cmpwi r4, 0
/* 8078E478  40 82 02 24 */	bne lbl_8078E69C
/* 8078E47C  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8078E480  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8078E484  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8078E488  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8078E48C  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 8078E490  28 1C 00 00 */	cmplwi r28, 0
/* 8078E494  41 82 02 08 */	beq lbl_8078E69C
/* 8078E498  2C 1F 00 0D */	cmpwi r31, 0xd
/* 8078E49C  41 82 00 0C */	beq lbl_8078E4A8
/* 8078E4A0  2C 1F 00 0B */	cmpwi r31, 0xb
/* 8078E4A4  40 82 00 C8 */	bne lbl_8078E56C
lbl_8078E4A8:
/* 8078E4A8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8078E4AC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8078E4B0  1F BF 00 30 */	mulli r29, r31, 0x30
/* 8078E4B4  7C 60 EA 14 */	add r3, r0, r29
/* 8078E4B8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8078E4BC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8078E4C0  80 84 00 00 */	lwz r4, 0(r4)
/* 8078E4C4  4B BB 7F ED */	bl PSMTXCopy
/* 8078E4C8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E4CC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E4D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E4D4  A8 9C 06 AC */	lha r4, 0x6ac(r28)
/* 8078E4D8  4B 87 DF 5D */	bl mDoMtx_YrotM__FPA4_fs
/* 8078E4DC  2C 1F 00 0B */	cmpwi r31, 0xb
/* 8078E4E0  40 82 00 38 */	bne lbl_8078E518
/* 8078E4E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E4E8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E4EC  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E4F0  A8 1C 06 AC */	lha r0, 0x6ac(r28)
/* 8078E4F4  7C 00 00 D0 */	neg r0, r0
/* 8078E4F8  7C 04 07 34 */	extsh r4, r0
/* 8078E4FC  4B 87 DE A1 */	bl mDoMtx_XrotM__FPA4_fs
/* 8078E500  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E504  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E508  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E50C  A8 9C 06 AE */	lha r4, 0x6ae(r28)
/* 8078E510  4B 87 DF BD */	bl mDoMtx_ZrotM__FPA4_fs
/* 8078E514  48 00 00 24 */	b lbl_8078E538
lbl_8078E518:
/* 8078E518  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E51C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E520  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E524  A8 1C 06 AE */	lha r0, 0x6ae(r28)
/* 8078E528  7C 00 0E 70 */	srawi r0, r0, 1
/* 8078E52C  7C 00 01 94 */	addze r0, r0
/* 8078E530  7C 04 07 34 */	extsh r4, r0
/* 8078E534  4B 87 DF 99 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8078E538:
/* 8078E538  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E53C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E540  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E544  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8078E548  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8078E54C  7C 80 EA 14 */	add r4, r0, r29
/* 8078E550  4B BB 7F 61 */	bl PSMTXCopy
/* 8078E554  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E558  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E55C  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E560  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8078E564  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8078E568  4B BB 7F 49 */	bl PSMTXCopy
lbl_8078E56C:
/* 8078E56C  2C 1F 00 00 */	cmpwi r31, 0
/* 8078E570  40 82 00 94 */	bne lbl_8078E604
/* 8078E574  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8078E578  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8078E57C  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 8078E580  7C 60 E2 14 */	add r3, r0, r28
/* 8078E584  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8078E588  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8078E58C  80 84 00 00 */	lwz r4, 0(r4)
/* 8078E590  4B BB 7F 21 */	bl PSMTXCopy
/* 8078E594  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E598  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E59C  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E5A0  38 80 00 00 */	li r4, 0
/* 8078E5A4  4B 87 DE 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 8078E5A8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E5AC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E5B0  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E5B4  38 80 00 00 */	li r4, 0
/* 8078E5B8  4B 87 DD E5 */	bl mDoMtx_XrotM__FPA4_fs
/* 8078E5BC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E5C0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E5C4  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E5C8  38 80 00 00 */	li r4, 0
/* 8078E5CC  4B 87 DF 01 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8078E5D0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E5D4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E5D8  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E5DC  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8078E5E0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8078E5E4  7C 80 E2 14 */	add r4, r0, r28
/* 8078E5E8  4B BB 7E C9 */	bl PSMTXCopy
/* 8078E5EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E5F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E5F4  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E5F8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8078E5FC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8078E600  4B BB 7E B1 */	bl PSMTXCopy
lbl_8078E604:
/* 8078E604  2C 1F 00 00 */	cmpwi r31, 0
/* 8078E608  40 82 00 94 */	bne lbl_8078E69C
/* 8078E60C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8078E610  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8078E614  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 8078E618  7C 60 E2 14 */	add r3, r0, r28
/* 8078E61C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8078E620  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8078E624  80 84 00 00 */	lwz r4, 0(r4)
/* 8078E628  4B BB 7E 89 */	bl PSMTXCopy
/* 8078E62C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E630  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E634  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E638  38 80 00 00 */	li r4, 0
/* 8078E63C  4B 87 DD F9 */	bl mDoMtx_YrotM__FPA4_fs
/* 8078E640  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E644  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E648  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E64C  38 80 00 00 */	li r4, 0
/* 8078E650  4B 87 DD 4D */	bl mDoMtx_XrotM__FPA4_fs
/* 8078E654  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E658  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E65C  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E660  38 80 00 00 */	li r4, 0
/* 8078E664  4B 87 DE 69 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8078E668  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E66C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E670  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E674  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8078E678  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8078E67C  7C 80 E2 14 */	add r4, r0, r28
/* 8078E680  4B BB 7E 31 */	bl PSMTXCopy
/* 8078E684  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078E688  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078E68C  80 63 00 00 */	lwz r3, 0(r3)
/* 8078E690  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8078E694  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8078E698  4B BB 7E 19 */	bl PSMTXCopy
lbl_8078E69C:
/* 8078E69C  38 60 00 01 */	li r3, 1
/* 8078E6A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8078E6A4  4B BD 3B 81 */	bl _restgpr_28
/* 8078E6A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8078E6AC  7C 08 03 A6 */	mtlr r0
/* 8078E6B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8078E6B4  4E 80 00 20 */	blr 
