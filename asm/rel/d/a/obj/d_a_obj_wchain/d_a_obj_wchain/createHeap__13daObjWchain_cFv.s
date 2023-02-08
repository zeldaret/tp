lbl_80D2FEF8:
/* 80D2FEF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2FEFC  7C 08 02 A6 */	mflr r0
/* 80D2FF00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2FF04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2FF08  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2FF0C  7C 7E 1B 78 */	mr r30, r3
/* 80D2FF10  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D31924@ha */
/* 80D2FF14  38 63 19 24 */	addi r3, r3, l_arcName@l /* 0x80D31924@l */
/* 80D2FF18  38 80 00 04 */	li r4, 4
/* 80D2FF1C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2FF20  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2FF24  3F E5 00 02 */	addis r31, r5, 2
/* 80D2FF28  3B FF C2 F8 */	addi r31, r31, -15624
/* 80D2FF2C  7F E5 FB 78 */	mr r5, r31
/* 80D2FF30  38 C0 00 80 */	li r6, 0x80
/* 80D2FF34  4B 30 C3 B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D2FF38  3C 80 00 08 */	lis r4, 8
/* 80D2FF3C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D2FF40  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D2FF44  4B 2E 4D 11 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D2FF48  90 7E 05 70 */	stw r3, 0x570(r30)
/* 80D2FF4C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80D2FF50  28 00 00 00 */	cmplwi r0, 0
/* 80D2FF54  40 82 00 0C */	bne lbl_80D2FF60
/* 80D2FF58  38 60 00 00 */	li r3, 0
/* 80D2FF5C  48 00 00 28 */	b lbl_80D2FF84
lbl_80D2FF60:
/* 80D2FF60  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D31924@ha */
/* 80D2FF64  38 63 19 24 */	addi r3, r3, l_arcName@l /* 0x80D31924@l */
/* 80D2FF68  38 80 00 03 */	li r4, 3
/* 80D2FF6C  7F E5 FB 78 */	mr r5, r31
/* 80D2FF70  38 C0 00 80 */	li r6, 0x80
/* 80D2FF74  4B 30 C3 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D2FF78  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80D2FF7C  93 DE 05 84 */	stw r30, 0x584(r30)
/* 80D2FF80  38 60 00 01 */	li r3, 1
lbl_80D2FF84:
/* 80D2FF84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2FF88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2FF8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2FF90  7C 08 03 A6 */	mtlr r0
/* 80D2FF94  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2FF98  4E 80 00 20 */	blr 
