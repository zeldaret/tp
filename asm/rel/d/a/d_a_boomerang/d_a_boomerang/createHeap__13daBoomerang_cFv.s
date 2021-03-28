lbl_804A1EE4:
/* 804A1EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A1EE8  7C 08 02 A6 */	mflr r0
/* 804A1EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A1EF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A1EF4  93 C1 00 08 */	stw r30, 8(r1)
/* 804A1EF8  7C 7E 1B 78 */	mr r30, r3
/* 804A1EFC  38 7E 05 98 */	addi r3, r30, 0x598
/* 804A1F00  4B FF C1 B9 */	bl createHeap__19daBoomerang_sight_cFv
/* 804A1F04  2C 03 00 00 */	cmpwi r3, 0
/* 804A1F08  40 82 00 0C */	bne lbl_804A1F14
/* 804A1F0C  38 60 00 00 */	li r3, 0
/* 804A1F10  48 00 01 3C */	b lbl_804A204C
lbl_804A1F14:
/* 804A1F14  38 7E 05 98 */	addi r3, r30, 0x598
/* 804A1F18  4B FF C4 55 */	bl initialize__19daBoomerang_sight_cFv
/* 804A1F1C  4B BF B9 68 */	b getAlinkArcName__9daAlink_cFv
/* 804A1F20  38 80 00 1F */	li r4, 0x1f
/* 804A1F24  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804A1F28  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804A1F2C  3F E5 00 02 */	addis r31, r5, 2
/* 804A1F30  3B FF C2 F8 */	addi r31, r31, -15624
/* 804A1F34  7F E5 FB 78 */	mr r5, r31
/* 804A1F38  38 C0 00 80 */	li r6, 0x80
/* 804A1F3C  4B B9 A3 B0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804A1F40  3C 80 00 08 */	lis r4, 8
/* 804A1F44  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804A1F48  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804A1F4C  4B B7 2D 08 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804A1F50  90 7E 05 68 */	stw r3, 0x568(r30)
/* 804A1F54  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 804A1F58  28 00 00 00 */	cmplwi r0, 0
/* 804A1F5C  40 82 00 0C */	bne lbl_804A1F68
/* 804A1F60  38 60 00 00 */	li r3, 0
/* 804A1F64  48 00 00 E8 */	b lbl_804A204C
lbl_804A1F68:
/* 804A1F68  4B BF B9 1C */	b getAlinkArcName__9daAlink_cFv
/* 804A1F6C  38 80 00 34 */	li r4, 0x34
/* 804A1F70  7F E5 FB 78 */	mr r5, r31
/* 804A1F74  38 C0 00 80 */	li r6, 0x80
/* 804A1F78  4B B9 A3 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804A1F7C  38 80 00 00 */	li r4, 0
/* 804A1F80  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 804A1F84  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 804A1F88  4B B7 2C CC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804A1F8C  90 7E 05 6C */	stw r3, 0x56c(r30)
/* 804A1F90  80 1E 05 6C */	lwz r0, 0x56c(r30)
/* 804A1F94  28 00 00 00 */	cmplwi r0, 0
/* 804A1F98  40 82 00 0C */	bne lbl_804A1FA4
/* 804A1F9C  38 60 00 00 */	li r3, 0
/* 804A1FA0  48 00 00 AC */	b lbl_804A204C
lbl_804A1FA4:
/* 804A1FA4  4B BF B8 E0 */	b getAlinkArcName__9daAlink_cFv
/* 804A1FA8  38 80 00 13 */	li r4, 0x13
/* 804A1FAC  7F E5 FB 78 */	mr r5, r31
/* 804A1FB0  38 C0 00 80 */	li r6, 0x80
/* 804A1FB4  4B B9 A3 38 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804A1FB8  7C 64 1B 78 */	mr r4, r3
/* 804A1FBC  38 7E 05 74 */	addi r3, r30, 0x574
/* 804A1FC0  38 A0 00 00 */	li r5, 0
/* 804A1FC4  38 C0 00 02 */	li r6, 2
/* 804A1FC8  3C E0 80 4A */	lis r7, lit_4945@ha
/* 804A1FCC  C0 27 29 10 */	lfs f1, lit_4945@l(r7)
/* 804A1FD0  38 E0 00 00 */	li r7, 0
/* 804A1FD4  39 00 FF FF */	li r8, -1
/* 804A1FD8  39 20 00 00 */	li r9, 0
/* 804A1FDC  4B B6 B8 00 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804A1FE0  2C 03 00 00 */	cmpwi r3, 0
/* 804A1FE4  40 82 00 0C */	bne lbl_804A1FF0
/* 804A1FE8  38 60 00 00 */	li r3, 0
/* 804A1FEC  48 00 00 60 */	b lbl_804A204C
lbl_804A1FF0:
/* 804A1FF0  4B BF B8 94 */	b getAlinkArcName__9daAlink_cFv
/* 804A1FF4  38 80 00 19 */	li r4, 0x19
/* 804A1FF8  7F E5 FB 78 */	mr r5, r31
/* 804A1FFC  38 C0 00 80 */	li r6, 0x80
/* 804A2000  4B B9 A2 EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804A2004  38 80 00 00 */	li r4, 0
/* 804A2008  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 804A200C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 804A2010  4B B7 2C 44 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804A2014  90 7E 05 90 */	stw r3, 0x590(r30)
/* 804A2018  80 1E 05 90 */	lwz r0, 0x590(r30)
/* 804A201C  28 00 00 00 */	cmplwi r0, 0
/* 804A2020  40 82 00 0C */	bne lbl_804A202C
/* 804A2024  38 60 00 00 */	li r3, 0
/* 804A2028  48 00 00 24 */	b lbl_804A204C
lbl_804A202C:
/* 804A202C  38 7E 07 20 */	addi r3, r30, 0x720
/* 804A2030  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804A2034  38 A0 00 02 */	li r5, 2
/* 804A2038  81 9E 07 30 */	lwz r12, 0x730(r30)
/* 804A203C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804A2040  7D 89 03 A6 */	mtctr r12
/* 804A2044  4E 80 04 21 */	bctrl 
/* 804A2048  38 60 00 01 */	li r3, 1
lbl_804A204C:
/* 804A204C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A2050  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A2054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A2058  7C 08 03 A6 */	mtlr r0
/* 804A205C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2060  4E 80 00 20 */	blr 
