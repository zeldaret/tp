lbl_80D0C654:
/* 80D0C654  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D0C658  7C 08 02 A6 */	mflr r0
/* 80D0C65C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D0C660  39 61 00 30 */	addi r11, r1, 0x30
/* 80D0C664  4B 65 5B 69 */	bl _savegpr_25
/* 80D0C668  7C 7E 1B 78 */	mr r30, r3
/* 80D0C66C  3C 60 80 D1 */	lis r3, l_arcName@ha /* 0x80D0D334@ha */
/* 80D0C670  38 63 D3 34 */	addi r3, r3, l_arcName@l /* 0x80D0D334@l */
/* 80D0C674  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0C678  3C 80 80 D1 */	lis r4, d_a_obj_thashi__stringBase0@ha /* 0x80D0D2D0@ha */
/* 80D0C67C  38 84 D2 D0 */	addi r4, r4, d_a_obj_thashi__stringBase0@l /* 0x80D0D2D0@l */
/* 80D0C680  38 84 00 09 */	addi r4, r4, 9
/* 80D0C684  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0C688  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0C68C  3F E5 00 02 */	addis r31, r5, 2
/* 80D0C690  3B FF C2 F8 */	addi r31, r31, -15624
/* 80D0C694  7F E5 FB 78 */	mr r5, r31
/* 80D0C698  38 C0 00 80 */	li r6, 0x80
/* 80D0C69C  4B 32 FC E1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80D0C6A0  7C 7C 1B 78 */	mr r28, r3
/* 80D0C6A4  3C 60 80 D1 */	lis r3, l_arcName@ha /* 0x80D0D334@ha */
/* 80D0C6A8  38 63 D3 34 */	addi r3, r3, l_arcName@l /* 0x80D0D334@l */
/* 80D0C6AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0C6B0  3C 80 80 D1 */	lis r4, d_a_obj_thashi__stringBase0@ha /* 0x80D0D2D0@ha */
/* 80D0C6B4  38 84 D2 D0 */	addi r4, r4, d_a_obj_thashi__stringBase0@l /* 0x80D0D2D0@l */
/* 80D0C6B8  38 84 00 18 */	addi r4, r4, 0x18
/* 80D0C6BC  7F E5 FB 78 */	mr r5, r31
/* 80D0C6C0  38 C0 00 80 */	li r6, 0x80
/* 80D0C6C4  4B 32 FC B9 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80D0C6C8  7C 7D 1B 78 */	mr r29, r3
/* 80D0C6CC  7F 83 E3 78 */	mr r3, r28
/* 80D0C6D0  3C 80 00 08 */	lis r4, 8
/* 80D0C6D4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D0C6D8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D0C6DC  4B 30 85 79 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D0C6E0  90 7E 10 D4 */	stw r3, 0x10d4(r30)
/* 80D0C6E4  80 1E 10 D4 */	lwz r0, 0x10d4(r30)
/* 80D0C6E8  28 00 00 00 */	cmplwi r0, 0
/* 80D0C6EC  40 82 00 0C */	bne lbl_80D0C6F8
/* 80D0C6F0  38 60 00 00 */	li r3, 0
/* 80D0C6F4  48 00 01 A8 */	b lbl_80D0C89C
lbl_80D0C6F8:
/* 80D0C6F8  7F A3 EB 78 */	mr r3, r29
/* 80D0C6FC  3C 80 00 08 */	lis r4, 8
/* 80D0C700  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D0C704  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D0C708  4B 30 85 4D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D0C70C  90 7E 10 D8 */	stw r3, 0x10d8(r30)
/* 80D0C710  80 1E 10 D8 */	lwz r0, 0x10d8(r30)
/* 80D0C714  28 00 00 00 */	cmplwi r0, 0
/* 80D0C718  40 82 00 0C */	bne lbl_80D0C724
/* 80D0C71C  38 60 00 00 */	li r3, 0
/* 80D0C720  48 00 01 7C */	b lbl_80D0C89C
lbl_80D0C724:
/* 80D0C724  3C 60 80 D1 */	lis r3, l_arcName@ha /* 0x80D0D334@ha */
/* 80D0C728  38 63 D3 34 */	addi r3, r3, l_arcName@l /* 0x80D0D334@l */
/* 80D0C72C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0C730  3C 80 80 D1 */	lis r4, d_a_obj_thashi__stringBase0@ha /* 0x80D0D2D0@ha */
/* 80D0C734  38 84 D2 D0 */	addi r4, r4, d_a_obj_thashi__stringBase0@l /* 0x80D0D2D0@l */
/* 80D0C738  38 84 00 27 */	addi r4, r4, 0x27
/* 80D0C73C  7F E5 FB 78 */	mr r5, r31
/* 80D0C740  38 C0 00 80 */	li r6, 0x80
/* 80D0C744  4B 32 FC 39 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80D0C748  7C 7B 1B 78 */	mr r27, r3
/* 80D0C74C  3C 60 80 D1 */	lis r3, l_arcName@ha /* 0x80D0D334@ha */
/* 80D0C750  38 63 D3 34 */	addi r3, r3, l_arcName@l /* 0x80D0D334@l */
/* 80D0C754  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0C758  3C 80 80 D1 */	lis r4, d_a_obj_thashi__stringBase0@ha /* 0x80D0D2D0@ha */
/* 80D0C75C  38 84 D2 D0 */	addi r4, r4, d_a_obj_thashi__stringBase0@l /* 0x80D0D2D0@l */
/* 80D0C760  38 84 00 36 */	addi r4, r4, 0x36
/* 80D0C764  7F E5 FB 78 */	mr r5, r31
/* 80D0C768  38 C0 00 80 */	li r6, 0x80
/* 80D0C76C  4B 32 FC 11 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80D0C770  7C 7A 1B 78 */	mr r26, r3
/* 80D0C774  3B 20 00 00 */	li r25, 0
/* 80D0C778  3B A0 00 00 */	li r29, 0
/* 80D0C77C  3F 80 11 00 */	lis r28, 0x1100 /* 0x11000084@ha */
lbl_80D0C780:
/* 80D0C780  7F 63 DB 78 */	mr r3, r27
/* 80D0C784  3C 80 00 08 */	lis r4, 8
/* 80D0C788  38 BC 00 84 */	addi r5, r28, 0x0084 /* 0x11000084@l */
/* 80D0C78C  4B 30 84 C9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D0C790  38 1D 10 DC */	addi r0, r29, 0x10dc
/* 80D0C794  7C 7E 01 2E */	stwx r3, r30, r0
/* 80D0C798  7C 1E 00 2E */	lwzx r0, r30, r0
/* 80D0C79C  28 00 00 00 */	cmplwi r0, 0
/* 80D0C7A0  40 82 00 0C */	bne lbl_80D0C7AC
/* 80D0C7A4  38 60 00 00 */	li r3, 0
/* 80D0C7A8  48 00 00 F4 */	b lbl_80D0C89C
lbl_80D0C7AC:
/* 80D0C7AC  3B 39 00 01 */	addi r25, r25, 1
/* 80D0C7B0  2C 19 00 32 */	cmpwi r25, 0x32
/* 80D0C7B4  3B BD 00 04 */	addi r29, r29, 4
/* 80D0C7B8  41 80 FF C8 */	blt lbl_80D0C780
/* 80D0C7BC  7F 43 D3 78 */	mr r3, r26
/* 80D0C7C0  3C 80 00 08 */	lis r4, 8
/* 80D0C7C4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D0C7C8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D0C7CC  4B 30 84 89 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D0C7D0  90 7E 11 A4 */	stw r3, 0x11a4(r30)
/* 80D0C7D4  80 1E 11 A4 */	lwz r0, 0x11a4(r30)
/* 80D0C7D8  28 00 00 00 */	cmplwi r0, 0
/* 80D0C7DC  40 82 00 0C */	bne lbl_80D0C7E8
/* 80D0C7E0  38 60 00 00 */	li r3, 0
/* 80D0C7E4  48 00 00 B8 */	b lbl_80D0C89C
lbl_80D0C7E8:
/* 80D0C7E8  7F E3 FB 78 */	mr r3, r31
/* 80D0C7EC  3C 80 80 D1 */	lis r4, l_arcName@ha /* 0x80D0D334@ha */
/* 80D0C7F0  38 84 D3 34 */	addi r4, r4, l_arcName@l /* 0x80D0D334@l */
/* 80D0C7F4  80 84 00 00 */	lwz r4, 0(r4)
/* 80D0C7F8  3C A0 80 D1 */	lis r5, d_a_obj_thashi__stringBase0@ha /* 0x80D0D2D0@ha */
/* 80D0C7FC  38 A5 D2 D0 */	addi r5, r5, d_a_obj_thashi__stringBase0@l /* 0x80D0D2D0@l */
/* 80D0C800  38 A5 00 45 */	addi r5, r5, 0x45
/* 80D0C804  4B 32 FE B5 */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80D0C808  7C 79 1B 78 */	mr r25, r3
/* 80D0C80C  38 60 00 C0 */	li r3, 0xc0
/* 80D0C810  4B 5C 24 3D */	bl __nw__FUl
/* 80D0C814  7C 60 1B 79 */	or. r0, r3, r3
/* 80D0C818  41 82 00 0C */	beq lbl_80D0C824
/* 80D0C81C  4B 36 F1 55 */	bl __ct__4dBgWFv
/* 80D0C820  7C 60 1B 78 */	mr r0, r3
lbl_80D0C824:
/* 80D0C824  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80D0C828  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 80D0C82C  28 00 00 00 */	cmplwi r0, 0
/* 80D0C830  41 82 00 58 */	beq lbl_80D0C888
/* 80D0C834  3C 60 80 D1 */	lis r3, l_arcName@ha /* 0x80D0D334@ha */
/* 80D0C838  38 63 D3 34 */	addi r3, r3, l_arcName@l /* 0x80D0D334@l */
/* 80D0C83C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0C840  7F 24 CB 78 */	mr r4, r25
/* 80D0C844  7F E5 FB 78 */	mr r5, r31
/* 80D0C848  38 C0 00 80 */	li r6, 0x80
/* 80D0C84C  4B 32 FA A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D0C850  7C 64 1B 78 */	mr r4, r3
/* 80D0C854  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 80D0C858  38 A0 00 01 */	li r5, 1
/* 80D0C85C  38 DE 05 6C */	addi r6, r30, 0x56c
/* 80D0C860  4B 36 D6 D9 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D0C864  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0C868  40 82 00 20 */	bne lbl_80D0C888
/* 80D0C86C  3C 60 80 45 */	lis r3, m_set_func__16dBgS_MoveBgActor@ha /* 0x80450F78@ha */
/* 80D0C870  80 03 0F 78 */	lwz r0, m_set_func__16dBgS_MoveBgActor@l(r3)  /* 0x80450F78@l */
/* 80D0C874  28 00 00 00 */	cmplwi r0, 0
/* 80D0C878  41 82 00 20 */	beq lbl_80D0C898
/* 80D0C87C  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 80D0C880  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80D0C884  48 00 00 14 */	b lbl_80D0C898
lbl_80D0C888:
/* 80D0C888  38 00 00 00 */	li r0, 0
/* 80D0C88C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80D0C890  38 60 00 00 */	li r3, 0
/* 80D0C894  48 00 00 08 */	b lbl_80D0C89C
lbl_80D0C898:
/* 80D0C898  38 60 00 01 */	li r3, 1
lbl_80D0C89C:
/* 80D0C89C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D0C8A0  4B 65 59 79 */	bl _restgpr_25
/* 80D0C8A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D0C8A8  7C 08 03 A6 */	mtlr r0
/* 80D0C8AC  38 21 00 30 */	addi r1, r1, 0x30
/* 80D0C8B0  4E 80 00 20 */	blr 
