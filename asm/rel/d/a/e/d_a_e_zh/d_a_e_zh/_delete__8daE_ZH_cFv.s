lbl_8082E3E8:
/* 8082E3E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082E3EC  7C 08 02 A6 */	mflr r0
/* 8082E3F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082E3F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8082E3F8  7C 7F 1B 78 */	mr r31, r3
/* 8082E3FC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8082E400  3C 80 80 83 */	lis r4, d_a_e_zh__stringBase0@ha /* 0x8082F410@ha */
/* 8082E404  38 84 F4 10 */	addi r4, r4, d_a_e_zh__stringBase0@l /* 0x8082F410@l */
/* 8082E408  4B 7F EC 01 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8082E40C  88 1F 07 AB */	lbz r0, 0x7ab(r31)
/* 8082E410  28 00 00 02 */	cmplwi r0, 2
/* 8082E414  40 82 00 0C */	bne lbl_8082E420
/* 8082E418  38 60 00 01 */	li r3, 1
/* 8082E41C  48 00 00 94 */	b lbl_8082E4B0
lbl_8082E420:
/* 8082E420  80 1F 07 80 */	lwz r0, 0x780(r31)
/* 8082E424  2C 00 00 07 */	cmpwi r0, 7
/* 8082E428  40 82 00 4C */	bne lbl_8082E474
/* 8082E42C  88 9F 07 A9 */	lbz r4, 0x7a9(r31)
/* 8082E430  28 04 00 FF */	cmplwi r4, 0xff
/* 8082E434  41 82 00 40 */	beq lbl_8082E474
/* 8082E438  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082E43C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082E440  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8082E444  7C 05 07 74 */	extsb r5, r0
/* 8082E448  4B 80 6F 19 */	bl isSwitch__10dSv_info_cCFii
/* 8082E44C  2C 03 00 00 */	cmpwi r3, 0
/* 8082E450  40 82 00 24 */	bne lbl_8082E474
/* 8082E454  3C 60 80 83 */	lis r3, s_BallSearch__FPvPv@ha /* 0x80829460@ha */
/* 8082E458  38 63 94 60 */	addi r3, r3, s_BallSearch__FPvPv@l /* 0x80829460@l */
/* 8082E45C  7F E4 FB 78 */	mr r4, r31
/* 8082E460  4B 7F 2E D9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8082E464  28 03 00 00 */	cmplwi r3, 0
/* 8082E468  41 82 00 0C */	beq lbl_8082E474
/* 8082E46C  38 00 00 01 */	li r0, 1
/* 8082E470  98 03 0D BA */	stb r0, 0xdba(r3)
lbl_8082E474:
/* 8082E474  88 1F 0E 04 */	lbz r0, 0xe04(r31)
/* 8082E478  28 00 00 00 */	cmplwi r0, 0
/* 8082E47C  41 82 00 10 */	beq lbl_8082E48C
/* 8082E480  38 00 00 00 */	li r0, 0
/* 8082E484  3C 60 80 83 */	lis r3, struct_8082F724+0x1@ha /* 0x8082F725@ha */
/* 8082E488  98 03 F7 25 */	stb r0, struct_8082F724+0x1@l(r3)  /* 0x8082F725@l */
lbl_8082E48C:
/* 8082E48C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8082E490  28 00 00 00 */	cmplwi r0, 0
/* 8082E494  41 82 00 18 */	beq lbl_8082E4AC
/* 8082E498  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8082E49C  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 8082E4A0  81 8C 00 08 */	lwz r12, 8(r12)
/* 8082E4A4  7D 89 03 A6 */	mtctr r12
/* 8082E4A8  4E 80 04 21 */	bctrl 
lbl_8082E4AC:
/* 8082E4AC  38 60 00 01 */	li r3, 1
lbl_8082E4B0:
/* 8082E4B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082E4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082E4B8  7C 08 03 A6 */	mtlr r0
/* 8082E4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8082E4C0  4E 80 00 20 */	blr 
