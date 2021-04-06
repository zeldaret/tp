lbl_802537AC:
/* 802537AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802537B0  7C 08 02 A6 */	mflr r0
/* 802537B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802537B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802537BC  7C 7F 1B 78 */	mr r31, r3
/* 802537C0  88 03 01 1F */	lbz r0, 0x11f(r3)
/* 802537C4  28 00 00 00 */	cmplwi r0, 0
/* 802537C8  40 82 00 A0 */	bne lbl_80253868
/* 802537CC  88 1F 01 1C */	lbz r0, 0x11c(r31)
/* 802537D0  28 00 00 00 */	cmplwi r0, 0
/* 802537D4  40 82 00 2C */	bne lbl_80253800
/* 802537D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802537DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802537E0  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 802537E4  38 83 02 3C */	addi r4, r3, 0x23c
/* 802537E8  38 A3 02 40 */	addi r5, r3, 0x240
/* 802537EC  38 DF 00 D8 */	addi r6, r31, 0xd8
/* 802537F0  4B E0 2F A5 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 802537F4  38 00 00 01 */	li r0, 1
/* 802537F8  98 1F 01 1C */	stb r0, 0x11c(r31)
/* 802537FC  48 00 00 6C */	b lbl_80253868
lbl_80253800:
/* 80253800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80253804  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80253808  88 03 5D 44 */	lbz r0, 0x5d44(r3)
/* 8025380C  2C 00 00 00 */	cmpwi r0, 0
/* 80253810  40 82 00 58 */	bne lbl_80253868
/* 80253814  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80253818  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8025381C  C0 22 B4 5C */	lfs f1, lit_3800(r2)
/* 80253820  FC 40 08 90 */	fmr f2, f1
/* 80253824  C0 62 B4 84 */	lfs f3, lit_3947(r2)
/* 80253828  48 0F 30 C1 */	bl PSMTXTrans
/* 8025382C  C0 22 B4 68 */	lfs f1, lit_3803(r2)
/* 80253830  FC 40 08 90 */	fmr f2, f1
/* 80253834  FC 60 08 90 */	fmr f3, f1
/* 80253838  4B DB 96 01 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8025383C  38 9F 00 E0 */	addi r4, r31, 0xe0
/* 80253840  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80253844  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80253848  48 0F 2C 69 */	bl PSMTXCopy
/* 8025384C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80253850  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80253854  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80253858  38 83 02 3C */	addi r4, r3, 0x23c
/* 8025385C  38 A3 02 40 */	addi r5, r3, 0x240
/* 80253860  38 DF 00 DC */	addi r6, r31, 0xdc
/* 80253864  4B E0 2F 31 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_80253868:
/* 80253868  38 60 00 01 */	li r3, 1
/* 8025386C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80253870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80253874  7C 08 03 A6 */	mtlr r0
/* 80253878  38 21 00 10 */	addi r1, r1, 0x10
/* 8025387C  4E 80 00 20 */	blr 
