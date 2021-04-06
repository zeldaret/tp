lbl_8002CDB8:
/* 8002CDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002CDBC  7C 08 02 A6 */	mflr r0
/* 8002CDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002CDC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002CDC8  7C 7F 1B 78 */	mr r31, r3
/* 8002CDCC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002CDD0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002CDD4  3C 84 00 02 */	addis r4, r4, 2
/* 8002CDD8  38 A0 00 80 */	li r5, 0x80
/* 8002CDDC  3C C0 80 38 */	lis r6, d_com_d_com_inf_game__stringBase0@ha /* 0x80378F38@ha */
/* 8002CDE0  38 C6 8F 38 */	addi r6, r6, d_com_d_com_inf_game__stringBase0@l /* 0x80378F38@l */
/* 8002CDE4  38 C6 01 13 */	addi r6, r6, 0x113
/* 8002CDE8  38 E0 00 00 */	li r7, 0
/* 8002CDEC  39 00 00 00 */	li r8, 0
/* 8002CDF0  38 84 C2 F8 */	addi r4, r4, -15624
/* 8002CDF4  48 00 F2 85 */	bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 8002CDF8  2C 03 00 00 */	cmpwi r3, 0
/* 8002CDFC  40 82 00 24 */	bne lbl_8002CE20
/* 8002CE00  3C 60 80 38 */	lis r3, d_com_d_com_inf_game__stringBase0@ha /* 0x80378F38@ha */
/* 8002CE04  38 63 8F 38 */	addi r3, r3, d_com_d_com_inf_game__stringBase0@l /* 0x80378F38@l */
/* 8002CE08  38 63 01 20 */	addi r3, r3, 0x120
/* 8002CE0C  7F E4 FB 78 */	mr r4, r31
/* 8002CE10  4C C6 31 82 */	crclr 6
/* 8002CE14  4B FD 9D F9 */	bl OSReport_Error
/* 8002CE18  38 60 00 05 */	li r3, 5
/* 8002CE1C  48 00 00 08 */	b lbl_8002CE24
lbl_8002CE20:
/* 8002CE20  38 60 00 02 */	li r3, 2
lbl_8002CE24:
/* 8002CE24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002CE28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002CE2C  7C 08 03 A6 */	mtlr r0
/* 8002CE30  38 21 00 10 */	addi r1, r1, 0x10
/* 8002CE34  4E 80 00 20 */	blr 
