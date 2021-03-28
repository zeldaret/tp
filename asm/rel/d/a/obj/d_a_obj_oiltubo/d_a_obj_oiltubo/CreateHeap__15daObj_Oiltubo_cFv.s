lbl_80CA6B28:
/* 80CA6B28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA6B2C  7C 08 02 A6 */	mflr r0
/* 80CA6B30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA6B34  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA6B38  4B 6B B6 A0 */	b _savegpr_28
/* 80CA6B3C  7C 7C 1B 78 */	mr r28, r3
/* 80CA6B40  3C 80 80 CA */	lis r4, cNullVec__6Z2Calc@ha
/* 80CA6B44  3B C4 79 88 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80CA6B48  83 FE 00 24 */	lwz r31, 0x24(r30)
/* 80CA6B4C  48 00 04 9D */	bl getResName__15daObj_Oiltubo_cFv
/* 80CA6B50  7F E4 FB 78 */	mr r4, r31
/* 80CA6B54  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CA6B58  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CA6B5C  3F A5 00 02 */	addis r29, r5, 2
/* 80CA6B60  3B BD C2 F8 */	addi r29, r29, -15624
/* 80CA6B64  7F A5 EB 78 */	mr r5, r29
/* 80CA6B68  38 C0 00 80 */	li r6, 0x80
/* 80CA6B6C  4B 39 58 10 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CA6B70  3C 80 00 08 */	lis r4, 8
/* 80CA6B74  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CA6B78  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CA6B7C  4B 36 E0 D8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CA6B80  90 7C 05 70 */	stw r3, 0x570(r28)
/* 80CA6B84  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80CA6B88  28 00 00 00 */	cmplwi r0, 0
/* 80CA6B8C  40 82 00 0C */	bne lbl_80CA6B98
/* 80CA6B90  38 60 00 00 */	li r3, 0
/* 80CA6B94  48 00 00 B0 */	b lbl_80CA6C44
lbl_80CA6B98:
/* 80CA6B98  83 FE 00 28 */	lwz r31, 0x28(r30)
/* 80CA6B9C  7F 83 E3 78 */	mr r3, r28
/* 80CA6BA0  48 00 04 49 */	bl getResName__15daObj_Oiltubo_cFv
/* 80CA6BA4  7F E4 FB 78 */	mr r4, r31
/* 80CA6BA8  7F A5 EB 78 */	mr r5, r29
/* 80CA6BAC  38 C0 00 80 */	li r6, 0x80
/* 80CA6BB0  4B 39 57 CC */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CA6BB4  7C 7F 1B 78 */	mr r31, r3
/* 80CA6BB8  3C 80 00 08 */	lis r4, 8
/* 80CA6BBC  3C A0 19 00 */	lis r5, 0x1900 /* 0x19000284@ha */
/* 80CA6BC0  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x19000284@l */
/* 80CA6BC4  4B 36 E0 90 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CA6BC8  90 7C 05 74 */	stw r3, 0x574(r28)
/* 80CA6BCC  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 80CA6BD0  28 00 00 00 */	cmplwi r0, 0
/* 80CA6BD4  40 82 00 0C */	bne lbl_80CA6BE0
/* 80CA6BD8  38 60 00 00 */	li r3, 0
/* 80CA6BDC  48 00 00 68 */	b lbl_80CA6C44
lbl_80CA6BE0:
/* 80CA6BE0  83 DE 00 2C */	lwz r30, 0x2c(r30)
/* 80CA6BE4  7F 83 E3 78 */	mr r3, r28
/* 80CA6BE8  48 00 04 01 */	bl getResName__15daObj_Oiltubo_cFv
/* 80CA6BEC  7F C4 F3 78 */	mr r4, r30
/* 80CA6BF0  7F A5 EB 78 */	mr r5, r29
/* 80CA6BF4  38 C0 00 80 */	li r6, 0x80
/* 80CA6BF8  4B 39 57 84 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CA6BFC  7C 65 1B 78 */	mr r5, r3
/* 80CA6C00  38 7C 05 78 */	addi r3, r28, 0x578
/* 80CA6C04  38 9F 00 58 */	addi r4, r31, 0x58
/* 80CA6C08  38 C0 00 01 */	li r6, 1
/* 80CA6C0C  38 E0 00 02 */	li r7, 2
/* 80CA6C10  3D 00 80 CA */	lis r8, lit_3815@ha
/* 80CA6C14  C0 28 79 24 */	lfs f1, lit_3815@l(r8)
/* 80CA6C18  39 00 00 00 */	li r8, 0
/* 80CA6C1C  39 20 FF FF */	li r9, -1
/* 80CA6C20  4B 36 6A 1C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CA6C24  38 7C 0A A4 */	addi r3, r28, 0xaa4
/* 80CA6C28  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80CA6C2C  38 A0 00 01 */	li r5, 1
/* 80CA6C30  81 9C 0A B4 */	lwz r12, 0xab4(r28)
/* 80CA6C34  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CA6C38  7D 89 03 A6 */	mtctr r12
/* 80CA6C3C  4E 80 04 21 */	bctrl 
/* 80CA6C40  38 60 00 01 */	li r3, 1
lbl_80CA6C44:
/* 80CA6C44  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA6C48  4B 6B B5 DC */	b _restgpr_28
/* 80CA6C4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA6C50  7C 08 03 A6 */	mtlr r0
/* 80CA6C54  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA6C58  4E 80 00 20 */	blr 
