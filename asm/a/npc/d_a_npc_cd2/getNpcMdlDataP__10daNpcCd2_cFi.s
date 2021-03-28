lbl_801598E8:
/* 801598E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801598EC  7C 08 02 A6 */	mflr r0
/* 801598F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801598F4  88 03 0A C6 */	lbz r0, 0xac6(r3)
/* 801598F8  28 00 00 00 */	cmplwi r0, 0
/* 801598FC  54 84 18 38 */	slwi r4, r4, 3
/* 80159900  3C 60 80 3B */	lis r3, l_bmdTbl@ha
/* 80159904  38 03 62 44 */	addi r0, r3, l_bmdTbl@l
/* 80159908  7C A0 22 14 */	add r5, r0, r4
/* 8015990C  41 82 00 10 */	beq lbl_8015991C
/* 80159910  3C 60 80 3B */	lis r3, l_bmdTWTbl@ha
/* 80159914  38 03 63 34 */	addi r0, r3, l_bmdTWTbl@l
/* 80159918  7C A0 22 14 */	add r5, r0, r4
lbl_8015991C:
/* 8015991C  80 65 00 00 */	lwz r3, 0(r5)
/* 80159920  80 85 00 04 */	lwz r4, 4(r5)
/* 80159924  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80159928  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8015992C  3C A5 00 02 */	addis r5, r5, 2
/* 80159930  38 C0 00 80 */	li r6, 0x80
/* 80159934  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80159938  4B EE 29 B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8015993C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80159940  7C 08 03 A6 */	mtlr r0
/* 80159944  38 21 00 10 */	addi r1, r1, 0x10
/* 80159948  4E 80 00 20 */	blr 
