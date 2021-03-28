lbl_8002CE38:
/* 8002CE38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002CE3C  7C 08 02 A6 */	mflr r0
/* 8002CE40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002CE44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002CE48  7C 7F 1B 78 */	mr r31, r3
/* 8002CE4C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8002CE50  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8002CE54  3C 84 00 02 */	addis r4, r4, 2
/* 8002CE58  38 A0 00 80 */	li r5, 0x80
/* 8002CE5C  38 84 C2 F8 */	addi r4, r4, -15624
/* 8002CE60  48 00 F3 01 */	bl syncRes__14dRes_control_cFPCcP11dRes_info_ci
/* 8002CE64  2C 03 00 00 */	cmpwi r3, 0
/* 8002CE68  40 80 00 24 */	bge lbl_8002CE8C
/* 8002CE6C  3C 60 80 38 */	lis r3, d_com_d_com_inf_game__stringBase0@ha
/* 8002CE70  38 63 8F 38 */	addi r3, r3, d_com_d_com_inf_game__stringBase0@l
/* 8002CE74  38 63 01 36 */	addi r3, r3, 0x136
/* 8002CE78  7F E4 FB 78 */	mr r4, r31
/* 8002CE7C  4C C6 31 82 */	crclr 6
/* 8002CE80  4B FD 9D 8D */	bl OSReport_Error
/* 8002CE84  38 60 00 05 */	li r3, 5
/* 8002CE88  48 00 00 18 */	b lbl_8002CEA0
lbl_8002CE8C:
/* 8002CE8C  7C 03 00 D0 */	neg r0, r3
/* 8002CE90  7C 00 18 78 */	andc r0, r0, r3
/* 8002CE94  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 8002CE98  38 00 00 02 */	li r0, 2
/* 8002CE9C  7C 03 18 78 */	andc r3, r0, r3
lbl_8002CEA0:
/* 8002CEA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002CEA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002CEA8  7C 08 03 A6 */	mtlr r0
/* 8002CEAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8002CEB0  4E 80 00 20 */	blr 
