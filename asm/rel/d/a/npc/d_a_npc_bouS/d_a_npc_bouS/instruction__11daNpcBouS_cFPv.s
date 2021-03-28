lbl_80975930:
/* 80975930  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80975934  7C 08 02 A6 */	mflr r0
/* 80975938  90 01 00 74 */	stw r0, 0x74(r1)
/* 8097593C  39 61 00 70 */	addi r11, r1, 0x70
/* 80975940  4B 9E C8 98 */	b _savegpr_28
/* 80975944  7C 7F 1B 78 */	mr r31, r3
/* 80975948  3C 60 80 98 */	lis r3, m__17daNpcBouS_Param_c@ha
/* 8097594C  3B C3 84 10 */	addi r30, r3, m__17daNpcBouS_Param_c@l
/* 80975950  4B 80 BC F0 */	b dCam_getBody__Fv
/* 80975954  7C 7D 1B 78 */	mr r29, r3
/* 80975958  A0 1F 0D FC */	lhz r0, 0xdfc(r31)
/* 8097595C  2C 00 00 02 */	cmpwi r0, 2
/* 80975960  41 82 00 58 */	beq lbl_809759B8
/* 80975964  40 80 05 58 */	bge lbl_80975EBC
/* 80975968  2C 00 00 00 */	cmpwi r0, 0
/* 8097596C  41 82 00 0C */	beq lbl_80975978
/* 80975970  48 00 05 4C */	b lbl_80975EBC
/* 80975974  48 00 05 48 */	b lbl_80975EBC
lbl_80975978:
/* 80975978  A8 1F 0D F8 */	lha r0, 0xdf8(r31)
/* 8097597C  2C 00 00 02 */	cmpwi r0, 2
/* 80975980  41 82 00 0C */	beq lbl_8097598C
/* 80975984  38 00 00 02 */	li r0, 2
/* 80975988  B0 1F 0D F8 */	sth r0, 0xdf8(r31)
lbl_8097598C:
/* 8097598C  38 00 00 00 */	li r0, 0
/* 80975990  90 1F 0D EC */	stw r0, 0xdec(r31)
/* 80975994  38 00 00 14 */	li r0, 0x14
/* 80975998  90 1F 0D E8 */	stw r0, 0xde8(r31)
/* 8097599C  C0 3E 02 F8 */	lfs f1, 0x2f8(r30)
/* 809759A0  4B 69 27 30 */	b fadeOut__13mDoGph_gInf_cFf
/* 809759A4  7F A3 EB 78 */	mr r3, r29
/* 809759A8  4B 7E BB 28 */	b Stop__9dCamera_cFv
/* 809759AC  38 00 00 02 */	li r0, 2
/* 809759B0  B0 1F 0D FC */	sth r0, 0xdfc(r31)
/* 809759B4  48 00 05 08 */	b lbl_80975EBC
lbl_809759B8:
/* 809759B8  80 1F 0D EC */	lwz r0, 0xdec(r31)
/* 809759BC  2C 00 00 02 */	cmpwi r0, 2
/* 809759C0  41 82 02 B0 */	beq lbl_80975C70
/* 809759C4  40 80 00 14 */	bge lbl_809759D8
/* 809759C8  2C 00 00 00 */	cmpwi r0, 0
/* 809759CC  41 82 00 18 */	beq lbl_809759E4
/* 809759D0  40 80 02 3C */	bge lbl_80975C0C
/* 809759D4  48 00 04 E8 */	b lbl_80975EBC
lbl_809759D8:
/* 809759D8  2C 00 00 04 */	cmpwi r0, 4
/* 809759DC  40 80 04 E0 */	bge lbl_80975EBC
/* 809759E0  48 00 04 20 */	b lbl_80975E00
lbl_809759E4:
/* 809759E4  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 809759E8  28 00 00 02 */	cmplwi r0, 2
/* 809759EC  41 82 00 30 */	beq lbl_80975A1C
/* 809759F0  7F E3 FB 78 */	mr r3, r31
/* 809759F4  38 80 00 01 */	li r4, 1
/* 809759F8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 809759FC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80975A00  38 C0 00 00 */	li r6, 0
/* 80975A04  4B 6A 5F 04 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80975A08  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80975A0C  60 00 00 02 */	ori r0, r0, 2
/* 80975A10  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80975A14  38 60 00 00 */	li r3, 0
/* 80975A18  48 00 04 A8 */	b lbl_80975EC0
lbl_80975A1C:
/* 80975A1C  80 1F 0D E8 */	lwz r0, 0xde8(r31)
/* 80975A20  2C 00 00 00 */	cmpwi r0, 0
/* 80975A24  41 81 01 D8 */	bgt lbl_80975BFC
/* 80975A28  3C 60 80 97 */	lis r3, s_sub__FPvPv@ha
/* 80975A2C  38 63 49 98 */	addi r3, r3, s_sub__FPvPv@l
/* 80975A30  7F E4 FB 78 */	mr r4, r31
/* 80975A34  4B 6A B9 04 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80975A38  7C 64 1B 79 */	or. r4, r3, r3
/* 80975A3C  41 82 00 B4 */	beq lbl_80975AF0
/* 80975A40  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80975A44  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80975A48  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80975A4C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80975A50  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80975A54  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80975A58  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80975A5C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80975A60  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80975A64  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80975A68  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80975A6C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80975A70  7F E3 FB 78 */	mr r3, r31
/* 80975A74  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 80975A78  4B 7D E7 D8 */	b setAngle__8daNpcF_cFs
/* 80975A7C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80975A80  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80975A84  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80975A88  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80975A8C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80975A90  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80975A94  4B 69 72 D0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80975A98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80975A9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80975AA0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80975AA4  4B 69 69 90 */	b mDoMtx_YrotM__FPA4_fs
/* 80975AA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80975AAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80975AB0  38 81 00 18 */	addi r4, r1, 0x18
/* 80975AB4  7C 85 23 78 */	mr r5, r4
/* 80975AB8  4B 9D 12 B4 */	b PSMTXMultVec
/* 80975ABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80975AC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80975AC4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80975AC8  38 81 00 18 */	addi r4, r1, 0x18
/* 80975ACC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80975AD0  3C A5 00 01 */	addis r5, r5, 1
/* 80975AD4  38 05 80 00 */	addi r0, r5, -32768
/* 80975AD8  7C 05 07 34 */	extsh r5, r0
/* 80975ADC  38 C0 00 00 */	li r6, 0
/* 80975AE0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80975AE4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80975AE8  7D 89 03 A6 */	mtctr r12
/* 80975AEC  4E 80 04 21 */	bctrl 
lbl_80975AF0:
/* 80975AF0  38 7E 00 00 */	addi r3, r30, 0
/* 80975AF4  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 80975AF8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80975AFC  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 80975B00  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80975B04  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 80975B08  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80975B0C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80975B10  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80975B14  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80975B18  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 80975B1C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80975B20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80975B24  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80975B28  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80975B2C  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80975B30  4B 69 72 34 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80975B34  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80975B38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80975B3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80975B40  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 80975B44  4B 69 68 F0 */	b mDoMtx_YrotM__FPA4_fs
/* 80975B48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80975B4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80975B50  38 81 00 54 */	addi r4, r1, 0x54
/* 80975B54  7C 85 23 78 */	mr r5, r4
/* 80975B58  4B 9D 12 14 */	b PSMTXMultVec
/* 80975B5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80975B60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80975B64  38 9E 00 00 */	addi r4, r30, 0
/* 80975B68  A8 84 00 86 */	lha r4, 0x86(r4)
/* 80975B6C  4B 69 68 C8 */	b mDoMtx_YrotM__FPA4_fs
/* 80975B70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80975B74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80975B78  38 9E 00 00 */	addi r4, r30, 0
/* 80975B7C  A8 84 00 84 */	lha r4, 0x84(r4)
/* 80975B80  4B 69 68 1C */	b mDoMtx_XrotM__FPA4_fs
/* 80975B84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80975B88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80975B8C  38 81 00 48 */	addi r4, r1, 0x48
/* 80975B90  7C 85 23 78 */	mr r5, r4
/* 80975B94  4B 9D 11 D8 */	b PSMTXMultVec
/* 80975B98  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80975B9C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80975BA0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80975BA4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80975BA8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80975BAC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80975BB0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80975BB4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80975BB8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80975BBC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80975BC0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80975BC4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80975BC8  7F A3 EB 78 */	mr r3, r29
/* 80975BCC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80975BD0  38 A1 00 30 */	addi r5, r1, 0x30
/* 80975BD4  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 80975BD8  C0 1D 06 F4 */	lfs f0, 0x6f4(r29)
/* 80975BDC  EC 21 00 2A */	fadds f1, f1, f0
/* 80975BE0  38 C0 00 00 */	li r6, 0
/* 80975BE4  4B 80 AE FC */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80975BE8  38 00 00 10 */	li r0, 0x10
/* 80975BEC  90 1F 0D E8 */	stw r0, 0xde8(r31)
/* 80975BF0  80 7F 0D EC */	lwz r3, 0xdec(r31)
/* 80975BF4  38 03 00 01 */	addi r0, r3, 1
/* 80975BF8  90 1F 0D EC */	stw r0, 0xdec(r31)
lbl_80975BFC:
/* 80975BFC  80 7F 0D E8 */	lwz r3, 0xde8(r31)
/* 80975C00  38 03 FF FF */	addi r0, r3, -1
/* 80975C04  90 1F 0D E8 */	stw r0, 0xde8(r31)
/* 80975C08  48 00 02 B4 */	b lbl_80975EBC
lbl_80975C0C:
/* 80975C0C  80 7F 0D E8 */	lwz r3, 0xde8(r31)
/* 80975C10  38 03 FF FF */	addi r0, r3, -1
/* 80975C14  90 1F 0D E8 */	stw r0, 0xde8(r31)
/* 80975C18  2C 03 00 00 */	cmpwi r3, 0
/* 80975C1C  41 81 02 A0 */	bgt lbl_80975EBC
/* 80975C20  38 60 00 14 */	li r3, 0x14
/* 80975C24  4B 9E F4 AC */	b abs
/* 80975C28  90 7F 0D E8 */	stw r3, 0xde8(r31)
/* 80975C2C  C0 3E 02 FC */	lfs f1, 0x2fc(r30)
/* 80975C30  4B 69 24 A0 */	b fadeOut__13mDoGph_gInf_cFf
/* 80975C34  7F E3 FB 78 */	mr r3, r31
/* 80975C38  38 80 00 06 */	li r4, 6
/* 80975C3C  38 A0 00 00 */	li r5, 0
/* 80975C40  4B 7D E0 DC */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80975C44  7F E3 FB 78 */	mr r3, r31
/* 80975C48  38 80 00 07 */	li r4, 7
/* 80975C4C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80975C50  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80975C54  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80975C58  7D 89 03 A6 */	mtctr r12
/* 80975C5C  4E 80 04 21 */	bctrl 
/* 80975C60  80 7F 0D EC */	lwz r3, 0xdec(r31)
/* 80975C64  38 03 00 01 */	addi r0, r3, 1
/* 80975C68  90 1F 0D EC */	stw r0, 0xdec(r31)
/* 80975C6C  48 00 02 50 */	b lbl_80975EBC
lbl_80975C70:
/* 80975C70  7F E3 FB 78 */	mr r3, r31
/* 80975C74  38 80 00 00 */	li r4, 0
/* 80975C78  38 A0 00 01 */	li r5, 1
/* 80975C7C  38 C0 00 00 */	li r6, 0
/* 80975C80  4B 7D E1 04 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80975C84  2C 03 00 00 */	cmpwi r3, 0
/* 80975C88  41 82 00 84 */	beq lbl_80975D0C
/* 80975C8C  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80975C90  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80975C94  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80975C98  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80975C9C  4B 7D AA 20 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80975CA0  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 80975CA4  54 0A 06 7E */	clrlwi r10, r0, 0x19
/* 80975CA8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80975CAC  7C 07 07 74 */	extsb r7, r0
/* 80975CB0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80975CB4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80975CB8  7C 05 07 74 */	extsb r5, r0
/* 80975CBC  38 00 00 00 */	li r0, 0
/* 80975CC0  90 01 00 08 */	stw r0, 8(r1)
/* 80975CC4  38 60 02 4B */	li r3, 0x24b
/* 80975CC8  28 1F 00 00 */	cmplwi r31, 0
/* 80975CCC  41 82 00 0C */	beq lbl_80975CD8
/* 80975CD0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80975CD4  48 00 00 08 */	b lbl_80975CDC
lbl_80975CD8:
/* 80975CD8  38 80 FF FF */	li r4, -1
lbl_80975CDC:
/* 80975CDC  64 A5 02 00 */	oris r5, r5, 0x200
/* 80975CE0  60 A5 07 00 */	ori r5, r5, 0x700
/* 80975CE4  3C C0 80 98 */	lis r6, l_createPos@ha
/* 80975CE8  38 C6 8B C4 */	addi r6, r6, l_createPos@l
/* 80975CEC  39 00 00 00 */	li r8, 0
/* 80975CF0  39 20 00 00 */	li r9, 0
/* 80975CF4  4B 6A 41 FC */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80975CF8  90 7F 04 A4 */	stw r3, 0x4a4(r31)
/* 80975CFC  80 7F 0D EC */	lwz r3, 0xdec(r31)
/* 80975D00  38 03 00 01 */	addi r0, r3, 1
/* 80975D04  90 1F 0D EC */	stw r0, 0xdec(r31)
/* 80975D08  48 00 01 B4 */	b lbl_80975EBC
lbl_80975D0C:
/* 80975D0C  83 9F 09 50 */	lwz r28, 0x950(r31)
/* 80975D10  7F E3 FB 78 */	mr r3, r31
/* 80975D14  38 81 00 14 */	addi r4, r1, 0x14
/* 80975D18  38 A1 00 10 */	addi r5, r1, 0x10
/* 80975D1C  7F E6 FB 78 */	mr r6, r31
/* 80975D20  38 E0 00 00 */	li r7, 0
/* 80975D24  4B 7D D9 F4 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80975D28  2C 03 00 00 */	cmpwi r3, 0
/* 80975D2C  41 82 00 44 */	beq lbl_80975D70
/* 80975D30  7F E3 FB 78 */	mr r3, r31
/* 80975D34  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80975D38  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 80975D3C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80975D40  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80975D44  7D 89 03 A6 */	mtctr r12
/* 80975D48  4E 80 04 21 */	bctrl 
/* 80975D4C  7F E3 FB 78 */	mr r3, r31
/* 80975D50  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80975D54  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 80975D58  38 A0 00 00 */	li r5, 0
/* 80975D5C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80975D60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80975D64  7D 89 03 A6 */	mtctr r12
/* 80975D68  4E 80 04 21 */	bctrl 
/* 80975D6C  48 00 01 50 */	b lbl_80975EBC
lbl_80975D70:
/* 80975D70  2C 1C 00 00 */	cmpwi r28, 0
/* 80975D74  41 82 01 48 */	beq lbl_80975EBC
/* 80975D78  80 1F 09 50 */	lwz r0, 0x950(r31)
/* 80975D7C  2C 00 00 00 */	cmpwi r0, 0
/* 80975D80  40 82 01 3C */	bne lbl_80975EBC
/* 80975D84  A8 1F 09 DE */	lha r0, 0x9de(r31)
/* 80975D88  2C 00 00 04 */	cmpwi r0, 4
/* 80975D8C  41 82 00 34 */	beq lbl_80975DC0
/* 80975D90  40 80 00 50 */	bge lbl_80975DE0
/* 80975D94  2C 00 00 03 */	cmpwi r0, 3
/* 80975D98  40 80 00 08 */	bge lbl_80975DA0
/* 80975D9C  48 00 00 44 */	b lbl_80975DE0
lbl_80975DA0:
/* 80975DA0  7F E3 FB 78 */	mr r3, r31
/* 80975DA4  38 80 00 04 */	li r4, 4
/* 80975DA8  38 A0 00 01 */	li r5, 1
/* 80975DAC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80975DB0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80975DB4  7D 89 03 A6 */	mtctr r12
/* 80975DB8  4E 80 04 21 */	bctrl 
/* 80975DBC  48 00 01 00 */	b lbl_80975EBC
lbl_80975DC0:
/* 80975DC0  7F E3 FB 78 */	mr r3, r31
/* 80975DC4  38 80 00 06 */	li r4, 6
/* 80975DC8  38 A0 00 01 */	li r5, 1
/* 80975DCC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80975DD0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80975DD4  7D 89 03 A6 */	mtctr r12
/* 80975DD8  4E 80 04 21 */	bctrl 
/* 80975DDC  48 00 00 E0 */	b lbl_80975EBC
lbl_80975DE0:
/* 80975DE0  7F E3 FB 78 */	mr r3, r31
/* 80975DE4  38 80 00 05 */	li r4, 5
/* 80975DE8  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 80975DEC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80975DF0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80975DF4  7D 89 03 A6 */	mtctr r12
/* 80975DF8  4E 80 04 21 */	bctrl 
/* 80975DFC  48 00 00 C0 */	b lbl_80975EBC
lbl_80975E00:
/* 80975E00  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 80975E04  4B 6A B5 54 */	b fpcEx_SearchByID__FUi
/* 80975E08  28 03 00 00 */	cmplwi r3, 0
/* 80975E0C  41 82 00 B0 */	beq lbl_80975EBC
/* 80975E10  48 1B A3 AC */	b checkStartUp__15daNpcWrestler_cFv
/* 80975E14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80975E18  41 82 00 A4 */	beq lbl_80975EBC
/* 80975E1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80975E20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80975E24  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80975E28  4B 6C C6 40 */	b reset__14dEvt_control_cFv
/* 80975E2C  3C 60 80 98 */	lis r3, lit_5163@ha
/* 80975E30  38 83 8A 18 */	addi r4, r3, lit_5163@l
/* 80975E34  80 64 00 00 */	lwz r3, 0(r4)
/* 80975E38  80 04 00 04 */	lwz r0, 4(r4)
/* 80975E3C  90 61 00 24 */	stw r3, 0x24(r1)
/* 80975E40  90 01 00 28 */	stw r0, 0x28(r1)
/* 80975E44  80 04 00 08 */	lwz r0, 8(r4)
/* 80975E48  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80975E4C  38 00 00 03 */	li r0, 3
/* 80975E50  B0 1F 0D FC */	sth r0, 0xdfc(r31)
/* 80975E54  38 7F 0D C0 */	addi r3, r31, 0xdc0
/* 80975E58  4B 9E C1 C0 */	b __ptmf_test
/* 80975E5C  2C 03 00 00 */	cmpwi r3, 0
/* 80975E60  41 82 00 18 */	beq lbl_80975E78
/* 80975E64  7F E3 FB 78 */	mr r3, r31
/* 80975E68  38 80 00 00 */	li r4, 0
/* 80975E6C  39 9F 0D C0 */	addi r12, r31, 0xdc0
/* 80975E70  4B 9E C2 14 */	b __ptmf_scall
/* 80975E74  60 00 00 00 */	nop 
lbl_80975E78:
/* 80975E78  38 00 00 00 */	li r0, 0
/* 80975E7C  B0 1F 0D FC */	sth r0, 0xdfc(r31)
/* 80975E80  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80975E84  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80975E88  90 7F 0D C0 */	stw r3, 0xdc0(r31)
/* 80975E8C  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80975E90  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80975E94  90 1F 0D C8 */	stw r0, 0xdc8(r31)
/* 80975E98  38 7F 0D C0 */	addi r3, r31, 0xdc0
/* 80975E9C  4B 9E C1 7C */	b __ptmf_test
/* 80975EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80975EA4  41 82 00 18 */	beq lbl_80975EBC
/* 80975EA8  7F E3 FB 78 */	mr r3, r31
/* 80975EAC  38 80 00 00 */	li r4, 0
/* 80975EB0  39 9F 0D C0 */	addi r12, r31, 0xdc0
/* 80975EB4  4B 9E C1 D0 */	b __ptmf_scall
/* 80975EB8  60 00 00 00 */	nop 
lbl_80975EBC:
/* 80975EBC  38 60 00 01 */	li r3, 1
lbl_80975EC0:
/* 80975EC0  39 61 00 70 */	addi r11, r1, 0x70
/* 80975EC4  4B 9E C3 60 */	b _restgpr_28
/* 80975EC8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80975ECC  7C 08 03 A6 */	mtlr r0
/* 80975ED0  38 21 00 70 */	addi r1, r1, 0x70
/* 80975ED4  4E 80 00 20 */	blr 
