lbl_805A43EC:
/* 805A43EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A43F0  7C 08 02 A6 */	mflr r0
/* 805A43F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A43F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A43FC  7C 7F 1B 78 */	mr r31, r3
/* 805A4400  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A4404  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A4408  40 82 00 1C */	bne lbl_805A4424
/* 805A440C  28 1F 00 00 */	cmplwi r31, 0
/* 805A4410  41 82 00 08 */	beq lbl_805A4418
/* 805A4414  4B A7 47 51 */	bl __ct__10fopAc_ac_cFv
lbl_805A4418:
/* 805A4418  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805A441C  60 00 00 08 */	ori r0, r0, 8
/* 805A4420  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805A4424:
/* 805A4424  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 805A4428  3C 60 80 5A */	lis r3, lit_3782@ha /* 0x805A4B20@ha */
/* 805A442C  C0 23 4B 20 */	lfs f1, lit_3782@l(r3)  /* 0x805A4B20@l */
/* 805A4430  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A4434  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 805A4438  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 805A443C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A4440  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 805A4444  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 805A4448  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A444C  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 805A4450  3C 60 80 45 */	lis r3, m_top__12daTagHstop_c@ha /* 0x80450DF8@ha */
/* 805A4454  84 03 0D F8 */	lwzu r0, m_top__12daTagHstop_c@l(r3)  /* 0x80450DF8@l */
/* 805A4458  28 00 00 00 */	cmplwi r0, 0
/* 805A445C  41 82 00 28 */	beq lbl_805A4484
/* 805A4460  7C 03 03 78 */	mr r3, r0
/* 805A4464  48 00 00 08 */	b lbl_805A446C
lbl_805A4468:
/* 805A4468  7C 03 03 78 */	mr r3, r0
lbl_805A446C:
/* 805A446C  80 03 05 68 */	lwz r0, 0x568(r3)
/* 805A4470  28 00 00 00 */	cmplwi r0, 0
/* 805A4474  40 82 FF F4 */	bne lbl_805A4468
/* 805A4478  93 E3 05 68 */	stw r31, 0x568(r3)
/* 805A447C  90 7F 05 6C */	stw r3, 0x56c(r31)
/* 805A4480  48 00 00 08 */	b lbl_805A4488
lbl_805A4484:
/* 805A4484  93 E3 00 00 */	stw r31, 0(r3)
lbl_805A4488:
/* 805A4488  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A448C  98 1F 05 70 */	stb r0, 0x570(r31)
/* 805A4490  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A4494  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 805A4498  98 1F 05 72 */	stb r0, 0x572(r31)
/* 805A449C  88 1F 05 72 */	lbz r0, 0x572(r31)
/* 805A44A0  28 00 00 0F */	cmplwi r0, 0xf
/* 805A44A4  40 82 00 0C */	bne lbl_805A44B0
/* 805A44A8  38 00 00 00 */	li r0, 0
/* 805A44AC  98 1F 05 72 */	stb r0, 0x572(r31)
lbl_805A44B0:
/* 805A44B0  7F E3 FB 78 */	mr r3, r31
/* 805A44B4  48 00 02 05 */	bl setActive__12daTagHstop_cFv
/* 805A44B8  88 1F 05 72 */	lbz r0, 0x572(r31)
/* 805A44BC  28 00 00 02 */	cmplwi r0, 2
/* 805A44C0  40 82 00 F8 */	bne lbl_805A45B8
/* 805A44C4  4B BB B1 9D */	bl checkRoomRestartStart__9daPy_py_cFv
/* 805A44C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A44CC  41 82 00 B4 */	beq lbl_805A4580
/* 805A44D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A44D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A44D8  38 80 00 8A */	li r4, 0x8a
/* 805A44DC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A44E0  7C 05 07 74 */	extsb r5, r0
/* 805A44E4  4B A9 0E 7D */	bl isSwitch__10dSv_info_cCFii
/* 805A44E8  2C 03 00 00 */	cmpwi r3, 0
/* 805A44EC  40 82 00 20 */	bne lbl_805A450C
/* 805A44F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A44F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A44F8  38 80 00 8A */	li r4, 0x8a
/* 805A44FC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4500  7C 05 07 74 */	extsb r5, r0
/* 805A4504  4B A9 0C FD */	bl onSwitch__10dSv_info_cFii
/* 805A4508  48 00 00 78 */	b lbl_805A4580
lbl_805A450C:
/* 805A450C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A4510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A4514  38 80 00 8B */	li r4, 0x8b
/* 805A4518  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A451C  7C 05 07 74 */	extsb r5, r0
/* 805A4520  4B A9 0E 41 */	bl isSwitch__10dSv_info_cCFii
/* 805A4524  2C 03 00 00 */	cmpwi r3, 0
/* 805A4528  40 82 00 20 */	bne lbl_805A4548
/* 805A452C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A4530  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A4534  38 80 00 8B */	li r4, 0x8b
/* 805A4538  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A453C  7C 05 07 74 */	extsb r5, r0
/* 805A4540  4B A9 0C C1 */	bl onSwitch__10dSv_info_cFii
/* 805A4544  48 00 00 3C */	b lbl_805A4580
lbl_805A4548:
/* 805A4548  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A454C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A4550  38 80 00 8C */	li r4, 0x8c
/* 805A4554  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4558  7C 05 07 74 */	extsb r5, r0
/* 805A455C  4B A9 0E 05 */	bl isSwitch__10dSv_info_cCFii
/* 805A4560  2C 03 00 00 */	cmpwi r3, 0
/* 805A4564  40 82 00 1C */	bne lbl_805A4580
/* 805A4568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A456C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A4570  38 80 00 8C */	li r4, 0x8c
/* 805A4574  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4578  7C 05 07 74 */	extsb r5, r0
/* 805A457C  4B A9 0C 85 */	bl onSwitch__10dSv_info_cFii
lbl_805A4580:
/* 805A4580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A4584  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A4588  38 80 00 8C */	li r4, 0x8c
/* 805A458C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4590  7C 05 07 74 */	extsb r5, r0
/* 805A4594  4B A9 0D CD */	bl isSwitch__10dSv_info_cCFii
/* 805A4598  2C 03 00 00 */	cmpwi r3, 0
/* 805A459C  41 82 00 10 */	beq lbl_805A45AC
/* 805A45A0  38 00 00 00 */	li r0, 0
/* 805A45A4  90 1F 05 74 */	stw r0, 0x574(r31)
/* 805A45A8  48 00 00 18 */	b lbl_805A45C0
lbl_805A45AC:
/* 805A45AC  38 00 04 B0 */	li r0, 0x4b0
/* 805A45B0  90 1F 05 74 */	stw r0, 0x574(r31)
/* 805A45B4  48 00 00 0C */	b lbl_805A45C0
lbl_805A45B8:
/* 805A45B8  38 00 00 00 */	li r0, 0
/* 805A45BC  90 1F 05 74 */	stw r0, 0x574(r31)
lbl_805A45C0:
/* 805A45C0  38 60 00 04 */	li r3, 4
/* 805A45C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A45C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A45CC  7C 08 03 A6 */	mtlr r0
/* 805A45D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A45D4  4E 80 00 20 */	blr 
