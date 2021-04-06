lbl_80CA5AE0:
/* 80CA5AE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA5AE4  7C 08 02 A6 */	mflr r0
/* 80CA5AE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA5AEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA5AF0  4B 6B C6 E5 */	bl _savegpr_27
/* 80CA5AF4  7C 7B 1B 78 */	mr r27, r3
/* 80CA5AF8  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80CA6584@ha */
/* 80CA5AFC  38 63 65 84 */	addi r3, r3, l_arcName@l /* 0x80CA6584@l */
/* 80CA5B00  80 63 00 00 */	lwz r3, 0(r3)
/* 80CA5B04  3C 80 80 CA */	lis r4, d_a_obj_octhashi__stringBase0@ha /* 0x80CA6550@ha */
/* 80CA5B08  38 84 65 50 */	addi r4, r4, d_a_obj_octhashi__stringBase0@l /* 0x80CA6550@l */
/* 80CA5B0C  38 84 00 09 */	addi r4, r4, 9
/* 80CA5B10  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA5B14  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA5B18  3C A5 00 02 */	addis r5, r5, 2
/* 80CA5B1C  38 C0 00 80 */	li r6, 0x80
/* 80CA5B20  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CA5B24  4B 39 68 59 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CA5B28  7C 7D 1B 78 */	mr r29, r3
/* 80CA5B2C  3B 80 00 00 */	li r28, 0
/* 80CA5B30  3B E0 00 00 */	li r31, 0
/* 80CA5B34  3F C0 11 00 */	lis r30, 0x1100
/* 80CA5B38  48 00 00 38 */	b lbl_80CA5B70
lbl_80CA5B3C:
/* 80CA5B3C  7F A3 EB 78 */	mr r3, r29
/* 80CA5B40  3C 80 00 08 */	lis r4, 8
/* 80CA5B44  38 BE 00 84 */	addi r5, r30, 0x84
/* 80CA5B48  4B 36 F1 0D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CA5B4C  38 1F 07 80 */	addi r0, r31, 0x780
/* 80CA5B50  7C 7B 01 2E */	stwx r3, r27, r0
/* 80CA5B54  7C 1B 00 2E */	lwzx r0, r27, r0
/* 80CA5B58  28 00 00 00 */	cmplwi r0, 0
/* 80CA5B5C  40 82 00 0C */	bne lbl_80CA5B68
/* 80CA5B60  38 60 00 00 */	li r3, 0
/* 80CA5B64  48 00 00 1C */	b lbl_80CA5B80
lbl_80CA5B68:
/* 80CA5B68  3B 9C 00 01 */	addi r28, r28, 1
/* 80CA5B6C  3B FF 00 04 */	addi r31, r31, 4
lbl_80CA5B70:
/* 80CA5B70  80 1B 06 E0 */	lwz r0, 0x6e0(r27)
/* 80CA5B74  7C 1C 00 00 */	cmpw r28, r0
/* 80CA5B78  41 80 FF C4 */	blt lbl_80CA5B3C
/* 80CA5B7C  38 60 00 01 */	li r3, 1
lbl_80CA5B80:
/* 80CA5B80  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA5B84  4B 6B C6 9D */	bl _restgpr_27
/* 80CA5B88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA5B8C  7C 08 03 A6 */	mtlr r0
/* 80CA5B90  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA5B94  4E 80 00 20 */	blr 
