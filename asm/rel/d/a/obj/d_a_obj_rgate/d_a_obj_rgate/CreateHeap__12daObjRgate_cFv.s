lbl_80CBA654:
/* 80CBA654  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBA658  7C 08 02 A6 */	mflr r0
/* 80CBA65C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBA660  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBA664  4B 6A 7B 75 */	bl _savegpr_28
/* 80CBA668  7C 7E 1B 78 */	mr r30, r3
/* 80CBA66C  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CBC4C0@ha */
/* 80CBA670  38 63 C4 C0 */	addi r3, r3, l_arcName@l /* 0x80CBC4C0@l */
/* 80CBA674  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBA678  38 80 00 05 */	li r4, 5
/* 80CBA67C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBA680  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBA684  3F E5 00 02 */	addis r31, r5, 2
/* 80CBA688  3B FF C2 F8 */	addi r31, r31, -15624
/* 80CBA68C  7F E5 FB 78 */	mr r5, r31
/* 80CBA690  38 C0 00 80 */	li r6, 0x80
/* 80CBA694  4B 38 1C 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CBA698  3C 80 00 08 */	lis r4, 8
/* 80CBA69C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CBA6A0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CBA6A4  4B 35 A5 B1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CBA6A8  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 80CBA6AC  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 80CBA6B0  28 00 00 00 */	cmplwi r0, 0
/* 80CBA6B4  40 82 00 0C */	bne lbl_80CBA6C0
/* 80CBA6B8  38 60 00 00 */	li r3, 0
/* 80CBA6BC  48 00 01 54 */	b lbl_80CBA810
lbl_80CBA6C0:
/* 80CBA6C0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CBA6C4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CBA6C8  28 00 00 FF */	cmplwi r0, 0xff
/* 80CBA6CC  41 82 00 D0 */	beq lbl_80CBA79C
/* 80CBA6D0  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CBC4C0@ha */
/* 80CBA6D4  38 63 C4 C0 */	addi r3, r3, l_arcName@l /* 0x80CBC4C0@l */
/* 80CBA6D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBA6DC  38 80 00 07 */	li r4, 7
/* 80CBA6E0  7F E5 FB 78 */	mr r5, r31
/* 80CBA6E4  38 C0 00 80 */	li r6, 0x80
/* 80CBA6E8  4B 38 1C 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CBA6EC  7C 7D 1B 78 */	mr r29, r3
/* 80CBA6F0  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CBC4C0@ha */
/* 80CBA6F4  38 63 C4 C0 */	addi r3, r3, l_arcName@l /* 0x80CBC4C0@l */
/* 80CBA6F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBA6FC  38 80 00 05 */	li r4, 5
/* 80CBA700  7F E5 FB 78 */	mr r5, r31
/* 80CBA704  38 C0 00 80 */	li r6, 0x80
/* 80CBA708  4B 38 1B E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CBA70C  7C 7C 1B 78 */	mr r28, r3
/* 80CBA710  7F A3 EB 78 */	mr r3, r29
/* 80CBA714  7F 84 E3 78 */	mr r4, r28
/* 80CBA718  4B 35 41 1D */	bl mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData
/* 80CBA71C  7F A3 EB 78 */	mr r3, r29
/* 80CBA720  3C 80 00 08 */	lis r4, 8
/* 80CBA724  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CBA728  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CBA72C  4B 35 A5 29 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CBA730  90 7E 05 AC */	stw r3, 0x5ac(r30)
/* 80CBA734  80 1E 05 AC */	lwz r0, 0x5ac(r30)
/* 80CBA738  28 00 00 00 */	cmplwi r0, 0
/* 80CBA73C  40 82 00 0C */	bne lbl_80CBA748
/* 80CBA740  38 60 00 00 */	li r3, 0
/* 80CBA744  48 00 00 CC */	b lbl_80CBA810
lbl_80CBA748:
/* 80CBA748  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CBC4C0@ha */
/* 80CBA74C  38 63 C4 C0 */	addi r3, r3, l_arcName@l /* 0x80CBC4C0@l */
/* 80CBA750  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBA754  38 80 00 06 */	li r4, 6
/* 80CBA758  7F E5 FB 78 */	mr r5, r31
/* 80CBA75C  38 C0 00 80 */	li r6, 0x80
/* 80CBA760  4B 38 1B 8D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CBA764  7C 7D 1B 78 */	mr r29, r3
/* 80CBA768  7F 84 E3 78 */	mr r4, r28
/* 80CBA76C  4B 35 40 C9 */	bl mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData
/* 80CBA770  7F A3 EB 78 */	mr r3, r29
/* 80CBA774  3C 80 00 08 */	lis r4, 8
/* 80CBA778  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CBA77C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CBA780  4B 35 A4 D5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CBA784  90 7E 05 B0 */	stw r3, 0x5b0(r30)
/* 80CBA788  80 1E 05 B0 */	lwz r0, 0x5b0(r30)
/* 80CBA78C  28 00 00 00 */	cmplwi r0, 0
/* 80CBA790  40 82 00 0C */	bne lbl_80CBA79C
/* 80CBA794  38 60 00 00 */	li r3, 0
/* 80CBA798  48 00 00 78 */	b lbl_80CBA810
lbl_80CBA79C:
/* 80CBA79C  38 60 00 C0 */	li r3, 0xc0
/* 80CBA7A0  4B 61 44 AD */	bl __nw__FUl
/* 80CBA7A4  7C 60 1B 79 */	or. r0, r3, r3
/* 80CBA7A8  41 82 00 0C */	beq lbl_80CBA7B4
/* 80CBA7AC  4B 3C 11 C5 */	bl __ct__4dBgWFv
/* 80CBA7B0  7C 60 1B 78 */	mr r0, r3
lbl_80CBA7B4:
/* 80CBA7B4  90 1E 0A E0 */	stw r0, 0xae0(r30)
/* 80CBA7B8  80 1E 0A E0 */	lwz r0, 0xae0(r30)
/* 80CBA7BC  28 00 00 00 */	cmplwi r0, 0
/* 80CBA7C0  41 82 00 3C */	beq lbl_80CBA7FC
/* 80CBA7C4  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CBC4C0@ha */
/* 80CBA7C8  38 63 C4 C0 */	addi r3, r3, l_arcName@l /* 0x80CBC4C0@l */
/* 80CBA7CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBA7D0  38 80 00 0A */	li r4, 0xa
/* 80CBA7D4  7F E5 FB 78 */	mr r5, r31
/* 80CBA7D8  38 C0 00 80 */	li r6, 0x80
/* 80CBA7DC  4B 38 1B 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CBA7E0  7C 64 1B 78 */	mr r4, r3
/* 80CBA7E4  80 7E 0A E0 */	lwz r3, 0xae0(r30)
/* 80CBA7E8  38 A0 00 01 */	li r5, 1
/* 80CBA7EC  38 DE 0A E4 */	addi r6, r30, 0xae4
/* 80CBA7F0  4B 3B F7 49 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80CBA7F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CBA7F8  41 82 00 14 */	beq lbl_80CBA80C
lbl_80CBA7FC:
/* 80CBA7FC  38 00 00 00 */	li r0, 0
/* 80CBA800  90 1E 0A E0 */	stw r0, 0xae0(r30)
/* 80CBA804  38 60 00 00 */	li r3, 0
/* 80CBA808  48 00 00 08 */	b lbl_80CBA810
lbl_80CBA80C:
/* 80CBA80C  38 60 00 01 */	li r3, 1
lbl_80CBA810:
/* 80CBA810  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBA814  4B 6A 7A 11 */	bl _restgpr_28
/* 80CBA818  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBA81C  7C 08 03 A6 */	mtlr r0
/* 80CBA820  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBA824  4E 80 00 20 */	blr 
