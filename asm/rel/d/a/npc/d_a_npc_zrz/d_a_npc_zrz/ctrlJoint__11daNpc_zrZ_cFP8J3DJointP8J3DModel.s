lbl_80B94E18:
/* 80B94E18  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B94E1C  7C 08 02 A6 */	mflr r0
/* 80B94E20  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B94E24  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B94E28  4B 7C D3 AD */	bl _savegpr_27
/* 80B94E2C  7C 7F 1B 78 */	mr r31, r3
/* 80B94E30  7C BD 2B 78 */	mr r29, r5
/* 80B94E34  3C 60 80 BA */	lis r3, m__17daNpc_zrZ_Param_c@ha /* 0x80B9AFEC@ha */
/* 80B94E38  3B 83 AF EC */	addi r28, r3, m__17daNpc_zrZ_Param_c@l /* 0x80B9AFEC@l */
/* 80B94E3C  A0 84 00 14 */	lhz r4, 0x14(r4)
/* 80B94E40  7C 9E 23 78 */	mr r30, r4
/* 80B94E44  80 7C 00 A8 */	lwz r3, 0xa8(r28)
/* 80B94E48  80 1C 00 AC */	lwz r0, 0xac(r28)
/* 80B94E4C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B94E50  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B94E54  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80B94E58  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B94E5C  2C 04 00 00 */	cmpwi r4, 0
/* 80B94E60  40 82 00 B0 */	bne lbl_80B94F10
/* 80B94E64  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B94E68  80 63 00 04 */	lwz r3, 4(r3)
/* 80B94E6C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B94E70  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B94E74  38 63 00 30 */	addi r3, r3, 0x30
/* 80B94E78  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B94E7C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B94E80  4B 7B 16 31 */	bl PSMTXCopy
/* 80B94E84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B94E88  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B94E8C  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80B94E90  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 80B94E94  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80B94E98  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 80B94E9C  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80B94EA0  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 80B94EA4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B94EA8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B94EAC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B94EB0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B94EB4  38 63 00 90 */	addi r3, r3, 0x90
/* 80B94EB8  7F 64 DB 78 */	mr r4, r27
/* 80B94EBC  4B 7B 15 F5 */	bl PSMTXCopy
/* 80B94EC0  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80B94EC4  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 80B94EC8  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80B94ECC  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 80B94ED0  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80B94ED4  D0 1F 08 68 */	stfs f0, 0x868(r31)
/* 80B94ED8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B94EDC  80 63 00 04 */	lwz r3, 4(r3)
/* 80B94EE0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B94EE4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B94EE8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B94EEC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B94EF0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B94EF4  4B 7B 15 BD */	bl PSMTXCopy
/* 80B94EF8  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80B94EFC  D0 1F 08 6C */	stfs f0, 0x86c(r31)
/* 80B94F00  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80B94F04  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 80B94F08  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80B94F0C  D0 1F 08 74 */	stfs f0, 0x874(r31)
lbl_80B94F10:
/* 80B94F10  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80B94F14  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B94F18  1F 7E 00 30 */	mulli r27, r30, 0x30
/* 80B94F1C  7C 60 DA 14 */	add r3, r0, r27
/* 80B94F20  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B94F24  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B94F28  4B 7B 15 89 */	bl PSMTXCopy
/* 80B94F2C  28 1E 00 1D */	cmplwi r30, 0x1d
/* 80B94F30  41 81 00 E8 */	bgt lbl_80B95018
/* 80B94F34  3C 60 80 BA */	lis r3, lit_4796@ha /* 0x80B9B4AC@ha */
/* 80B94F38  38 63 B4 AC */	addi r3, r3, lit_4796@l /* 0x80B9B4AC@l */
/* 80B94F3C  57 C0 10 3A */	slwi r0, r30, 2
/* 80B94F40  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B94F44  7C 09 03 A6 */	mtctr r0
/* 80B94F48  4E 80 04 20 */	bctr 
lbl_80B94F4C:
/* 80B94F4C  7F E3 FB 78 */	mr r3, r31
/* 80B94F50  7F C4 F3 78 */	mr r4, r30
/* 80B94F54  38 A1 00 14 */	addi r5, r1, 0x14
/* 80B94F58  38 DC 00 00 */	addi r6, r28, 0
/* 80B94F5C  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80B94F60  4B 5B E4 1D */	bl setLookatMtx__8daNpcF_cFiPif
/* 80B94F64  48 00 00 B4 */	b lbl_80B95018
lbl_80B94F68:
/* 80B94F68  2C 1E 00 1D */	cmpwi r30, 0x1d
/* 80B94F6C  40 82 00 0C */	bne lbl_80B94F78
/* 80B94F70  7F E3 FB 78 */	mr r3, r31
/* 80B94F74  48 00 54 0D */	bl himoCalc__11daNpc_zrZ_cFv
lbl_80B94F78:
/* 80B94F78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B94F7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B94F80  38 81 00 50 */	addi r4, r1, 0x50
/* 80B94F84  4B 7B 15 2D */	bl PSMTXCopy
/* 80B94F88  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80B94F8C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B94F90  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B94F94  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B94F98  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80B94F9C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B94FA0  C0 1C 00 98 */	lfs f0, 0x98(r28)
/* 80B94FA4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B94FA8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B94FAC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B94FB0  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 80B94FB4  4B 47 7F 59 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B94FB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B94FBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B94FC0  7C 64 1B 78 */	mr r4, r3
/* 80B94FC4  4B 7B 15 ED */	bl PSMTXInverse
/* 80B94FC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B94FCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B94FD0  38 81 00 20 */	addi r4, r1, 0x20
/* 80B94FD4  4B 7B 14 DD */	bl PSMTXCopy
/* 80B94FD8  38 61 00 08 */	addi r3, r1, 8
/* 80B94FDC  4B 47 7D 89 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B94FE0  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 80B94FE4  4B 47 7F 61 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B94FE8  38 7F 14 B8 */	addi r3, r31, 0x14b8
/* 80B94FEC  4B 47 7F 59 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B94FF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B94FF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B94FF8  38 81 00 20 */	addi r4, r1, 0x20
/* 80B94FFC  7C 65 1B 78 */	mr r5, r3
/* 80B95000  4B 7B 14 E5 */	bl PSMTXConcat
/* 80B95004  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B95008  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B9500C  38 81 00 50 */	addi r4, r1, 0x50
/* 80B95010  7C 65 1B 78 */	mr r5, r3
/* 80B95014  4B 7B 14 D1 */	bl PSMTXConcat
lbl_80B95018:
/* 80B95018  2C 1E 00 01 */	cmpwi r30, 1
/* 80B9501C  40 82 00 30 */	bne lbl_80B9504C
/* 80B95020  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B95024  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B95028  A8 9F 09 0C */	lha r4, 0x90c(r31)
/* 80B9502C  4B 47 74 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B95030  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B95034  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B95038  A8 1F 09 08 */	lha r0, 0x908(r31)
/* 80B9503C  7C 00 00 D0 */	neg r0, r0
/* 80B95040  7C 04 07 34 */	extsh r4, r0
/* 80B95044  4B 47 74 89 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80B95048  48 00 00 2C */	b lbl_80B95074
lbl_80B9504C:
/* 80B9504C  2C 1E 00 04 */	cmpwi r30, 4
/* 80B95050  40 82 00 24 */	bne lbl_80B95074
/* 80B95054  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B95058  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B9505C  A8 9F 09 18 */	lha r4, 0x918(r31)
/* 80B95060  4B 47 73 D5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B95064  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B95068  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B9506C  A8 9F 09 14 */	lha r4, 0x914(r31)
/* 80B95070  4B 47 74 5D */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80B95074:
/* 80B95074  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B95078  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B9507C  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 80B95080  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B95084  7C 80 DA 14 */	add r4, r0, r27
/* 80B95088  4B 7B 14 29 */	bl PSMTXCopy
/* 80B9508C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B95090  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B95094  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80B95098  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80B9509C  4B 7B 14 15 */	bl PSMTXCopy
/* 80B950A0  2C 1E 00 04 */	cmpwi r30, 4
/* 80B950A4  41 82 00 0C */	beq lbl_80B950B0
/* 80B950A8  2C 1E 00 0C */	cmpwi r30, 0xc
/* 80B950AC  40 82 00 2C */	bne lbl_80B950D8
lbl_80B950B0:
/* 80B950B0  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80B950B4  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B950B8  41 82 00 20 */	beq lbl_80B950D8
/* 80B950BC  83 7F 05 80 */	lwz r27, 0x580(r31)
/* 80B950C0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B950C4  80 83 00 08 */	lwz r4, 8(r3)
/* 80B950C8  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80B950CC  4B 47 88 C5 */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80B950D0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B950D4  93 63 00 08 */	stw r27, 8(r3)
lbl_80B950D8:
/* 80B950D8  38 60 00 01 */	li r3, 1
/* 80B950DC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B950E0  4B 7C D1 41 */	bl _restgpr_27
/* 80B950E4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B950E8  7C 08 03 A6 */	mtlr r0
/* 80B950EC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B950F0  4E 80 00 20 */	blr 
