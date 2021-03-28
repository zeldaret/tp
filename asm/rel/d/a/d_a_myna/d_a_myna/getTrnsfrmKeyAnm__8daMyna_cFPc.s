lbl_809498F8:
/* 809498F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809498FC  7C 08 02 A6 */	mflr r0
/* 80949900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80949904  28 04 00 00 */	cmplwi r4, 0
/* 80949908  41 82 00 2C */	beq lbl_80949934
/* 8094990C  3C 60 80 95 */	lis r3, struct_8094B24C+0x0@ha
/* 80949910  38 63 B2 4C */	addi r3, r3, struct_8094B24C+0x0@l
/* 80949914  38 63 01 00 */	addi r3, r3, 0x100
/* 80949918  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8094991C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80949920  3C A5 00 02 */	addis r5, r5, 2
/* 80949924  38 C0 00 80 */	li r6, 0x80
/* 80949928  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8094992C  4B 6F 2A 50 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80949930  48 00 00 08 */	b lbl_80949938
lbl_80949934:
/* 80949934  38 60 00 00 */	li r3, 0
lbl_80949938:
/* 80949938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8094993C  7C 08 03 A6 */	mtlr r0
/* 80949940  38 21 00 10 */	addi r1, r1, 0x10
/* 80949944  4E 80 00 20 */	blr 
