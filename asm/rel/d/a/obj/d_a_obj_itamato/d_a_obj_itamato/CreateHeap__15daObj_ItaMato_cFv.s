lbl_80C29CD8:
/* 80C29CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C29CDC  7C 08 02 A6 */	mflr r0
/* 80C29CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C29CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C29CE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C29CEC  7C 7E 1B 78 */	mr r30, r3
/* 80C29CF0  48 00 09 31 */	bl getResName__15daObj_ItaMato_cFv
/* 80C29CF4  38 80 00 05 */	li r4, 5
/* 80C29CF8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C29CFC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C29D00  3F E5 00 02 */	addis r31, r5, 2
/* 80C29D04  3B FF C2 F8 */	addi r31, r31, -15624
/* 80C29D08  7F E5 FB 78 */	mr r5, r31
/* 80C29D0C  38 C0 00 80 */	li r6, 0x80
/* 80C29D10  4B 41 25 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C29D14  28 03 00 00 */	cmplwi r3, 0
/* 80C29D18  40 82 00 0C */	bne lbl_80C29D24
/* 80C29D1C  38 60 00 00 */	li r3, 0
/* 80C29D20  48 00 00 74 */	b lbl_80C29D94
lbl_80C29D24:
/* 80C29D24  3C 80 00 08 */	lis r4, 8
/* 80C29D28  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C29D2C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C29D30  4B 3E AF 24 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C29D34  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80C29D38  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80C29D3C  28 00 00 00 */	cmplwi r0, 0
/* 80C29D40  40 82 00 0C */	bne lbl_80C29D4C
/* 80C29D44  38 60 00 00 */	li r3, 0
/* 80C29D48  48 00 00 4C */	b lbl_80C29D94
lbl_80C29D4C:
/* 80C29D4C  7F C3 F3 78 */	mr r3, r30
/* 80C29D50  48 00 08 D1 */	bl getResName__15daObj_ItaMato_cFv
/* 80C29D54  38 80 00 04 */	li r4, 4
/* 80C29D58  7F E5 FB 78 */	mr r5, r31
/* 80C29D5C  38 C0 00 80 */	li r6, 0x80
/* 80C29D60  4B 41 25 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C29D64  28 03 00 00 */	cmplwi r3, 0
/* 80C29D68  40 82 00 0C */	bne lbl_80C29D74
/* 80C29D6C  38 60 00 00 */	li r3, 0
/* 80C29D70  48 00 00 24 */	b lbl_80C29D94
lbl_80C29D74:
/* 80C29D74  3C 80 00 08 */	lis r4, 8
/* 80C29D78  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C29D7C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C29D80  4B 3E AE D4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C29D84  90 7E 05 78 */	stw r3, 0x578(r30)
/* 80C29D88  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C29D8C  30 03 FF FF */	addic r0, r3, -1
/* 80C29D90  7C 60 19 10 */	subfe r3, r0, r3
lbl_80C29D94:
/* 80C29D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C29D98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C29D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C29DA0  7C 08 03 A6 */	mtlr r0
/* 80C29DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C29DA8  4E 80 00 20 */	blr 
