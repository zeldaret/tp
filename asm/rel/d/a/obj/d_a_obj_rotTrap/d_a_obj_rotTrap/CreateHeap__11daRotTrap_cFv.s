lbl_80CBF9D8:
/* 80CBF9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBF9DC  7C 08 02 A6 */	mflr r0
/* 80CBF9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBF9E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBF9E8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CBF9EC  7C 7E 1B 78 */	mr r30, r3
/* 80CBF9F0  3C 60 80 CC */	lis r3, d_a_obj_rotTrap__stringBase0@ha /* 0x80CC0858@ha */
/* 80CBF9F4  38 63 08 58 */	addi r3, r3, d_a_obj_rotTrap__stringBase0@l /* 0x80CC0858@l */
/* 80CBF9F8  38 80 00 04 */	li r4, 4
/* 80CBF9FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBFA00  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBFA04  3F E5 00 02 */	addis r31, r5, 2
/* 80CBFA08  3B FF C2 F8 */	addi r31, r31, -15624
/* 80CBFA0C  7F E5 FB 78 */	mr r5, r31
/* 80CBFA10  38 C0 00 80 */	li r6, 0x80
/* 80CBFA14  4B 37 C8 D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CBFA18  3C 80 00 08 */	lis r4, 8
/* 80CBFA1C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CBFA20  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CBFA24  4B 35 52 31 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CBFA28  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 80CBFA2C  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 80CBFA30  28 00 00 00 */	cmplwi r0, 0
/* 80CBFA34  40 82 00 0C */	bne lbl_80CBFA40
/* 80CBFA38  38 60 00 00 */	li r3, 0
/* 80CBFA3C  48 00 00 74 */	b lbl_80CBFAB0
lbl_80CBFA40:
/* 80CBFA40  38 60 00 C0 */	li r3, 0xc0
/* 80CBFA44  4B 60 F2 09 */	bl __nw__FUl
/* 80CBFA48  7C 60 1B 79 */	or. r0, r3, r3
/* 80CBFA4C  41 82 00 0C */	beq lbl_80CBFA58
/* 80CBFA50  4B 3B BF 21 */	bl __ct__4dBgWFv
/* 80CBFA54  7C 60 1B 78 */	mr r0, r3
lbl_80CBFA58:
/* 80CBFA58  90 1E 17 38 */	stw r0, 0x1738(r30)
/* 80CBFA5C  80 1E 17 38 */	lwz r0, 0x1738(r30)
/* 80CBFA60  28 00 00 00 */	cmplwi r0, 0
/* 80CBFA64  41 82 00 38 */	beq lbl_80CBFA9C
/* 80CBFA68  3C 60 80 CC */	lis r3, d_a_obj_rotTrap__stringBase0@ha /* 0x80CC0858@ha */
/* 80CBFA6C  38 63 08 58 */	addi r3, r3, d_a_obj_rotTrap__stringBase0@l /* 0x80CC0858@l */
/* 80CBFA70  38 80 00 08 */	li r4, 8
/* 80CBFA74  7F E5 FB 78 */	mr r5, r31
/* 80CBFA78  38 C0 00 80 */	li r6, 0x80
/* 80CBFA7C  4B 37 C8 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CBFA80  7C 64 1B 78 */	mr r4, r3
/* 80CBFA84  80 7E 17 38 */	lwz r3, 0x1738(r30)
/* 80CBFA88  38 A0 00 01 */	li r5, 1
/* 80CBFA8C  38 DE 05 6C */	addi r6, r30, 0x56c
/* 80CBFA90  4B 3B A4 A9 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80CBFA94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CBFA98  41 82 00 14 */	beq lbl_80CBFAAC
lbl_80CBFA9C:
/* 80CBFA9C  38 00 00 00 */	li r0, 0
/* 80CBFAA0  90 1E 17 38 */	stw r0, 0x1738(r30)
/* 80CBFAA4  38 60 00 00 */	li r3, 0
/* 80CBFAA8  48 00 00 08 */	b lbl_80CBFAB0
lbl_80CBFAAC:
/* 80CBFAAC  38 60 00 01 */	li r3, 1
lbl_80CBFAB0:
/* 80CBFAB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBFAB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CBFAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBFABC  7C 08 03 A6 */	mtlr r0
/* 80CBFAC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBFAC4  4E 80 00 20 */	blr 
