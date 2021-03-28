lbl_80D59C58:
/* 80D59C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D59C5C  7C 08 02 A6 */	mflr r0
/* 80D59C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59C64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D59C68  93 C1 00 08 */	stw r30, 8(r1)
/* 80D59C6C  7C 7F 1B 78 */	mr r31, r3
/* 80D59C70  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D59C74  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D59C78  40 82 00 28 */	bne lbl_80D59CA0
/* 80D59C7C  7F E0 FB 79 */	or. r0, r31, r31
/* 80D59C80  41 82 00 14 */	beq lbl_80D59C94
/* 80D59C84  7C 1E 03 78 */	mr r30, r0
/* 80D59C88  4B 2B EE DC */	b __ct__10fopAc_ac_cFv
/* 80D59C8C  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D59C90  4B 4F 02 70 */	b __ct__10dMsgFlow_cFv
lbl_80D59C94:
/* 80D59C94  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D59C98  60 00 00 08 */	ori r0, r0, 8
/* 80D59C9C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D59CA0:
/* 80D59CA0  38 60 00 00 */	li r3, 0
/* 80D59CA4  4B 2D 2C D8 */	b getLayerNo__14dComIfG_play_cFi
/* 80D59CA8  2C 03 00 0D */	cmpwi r3, 0xd
/* 80D59CAC  40 82 00 48 */	bne lbl_80D59CF4
/* 80D59CB0  38 00 00 04 */	li r0, 4
/* 80D59CB4  98 1F 05 F7 */	stb r0, 0x5f7(r31)
/* 80D59CB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D59CBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D59CC0  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 80D59CC4  7C 00 07 35 */	extsh. r0, r0
/* 80D59CC8  40 82 00 10 */	bne lbl_80D59CD8
/* 80D59CCC  38 00 00 00 */	li r0, 0
/* 80D59CD0  98 1F 05 F8 */	stb r0, 0x5f8(r31)
/* 80D59CD4  48 00 00 0C */	b lbl_80D59CE0
lbl_80D59CD8:
/* 80D59CD8  38 00 00 0C */	li r0, 0xc
/* 80D59CDC  98 1F 05 F8 */	stb r0, 0x5f8(r31)
lbl_80D59CE0:
/* 80D59CE0  7F E3 FB 78 */	mr r3, r31
/* 80D59CE4  38 80 00 00 */	li r4, 0
/* 80D59CE8  38 A0 00 00 */	li r5, 0
/* 80D59CEC  48 00 01 2D */	bl setActionMode__15daTagKagoFall_cFUcUc
/* 80D59CF0  48 00 00 A0 */	b lbl_80D59D90
lbl_80D59CF4:
/* 80D59CF4  38 60 00 00 */	li r3, 0
/* 80D59CF8  4B 2D 2C 84 */	b getLayerNo__14dComIfG_play_cFi
/* 80D59CFC  2C 03 00 0E */	cmpwi r3, 0xe
/* 80D59D00  40 82 00 90 */	bne lbl_80D59D90
/* 80D59D04  38 00 00 02 */	li r0, 2
/* 80D59D08  98 1F 05 F7 */	stb r0, 0x5f7(r31)
/* 80D59D0C  38 00 00 00 */	li r0, 0
/* 80D59D10  98 1F 05 F8 */	stb r0, 0x5f8(r31)
/* 80D59D14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D59D18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D59D1C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D59D20  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D59D24  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D59D28  4B 5E CB C0 */	b PSMTXTrans
/* 80D59D2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D59D30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D59D34  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D59D38  4B 2B 26 FC */	b mDoMtx_YrotM__FPA4_fs
/* 80D59D3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D59D40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D59D44  38 9F 05 B4 */	addi r4, r31, 0x5b4
/* 80D59D48  4B 5E C8 68 */	b PSMTXInverse
/* 80D59D4C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D59D50  3C 60 80 D6 */	lis r3, lit_3907@ha
/* 80D59D54  C0 23 A6 EC */	lfs f1, lit_3907@l(r3)
/* 80D59D58  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D59D5C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80D59D60  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80D59D64  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D59D68  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80D59D6C  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 80D59D70  3C 60 80 D6 */	lis r3, lit_3908@ha
/* 80D59D74  C0 03 A6 F0 */	lfs f0, lit_3908@l(r3)
/* 80D59D78  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D59D7C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80D59D80  7F E3 FB 78 */	mr r3, r31
/* 80D59D84  38 80 00 01 */	li r4, 1
/* 80D59D88  38 A0 00 00 */	li r5, 0
/* 80D59D8C  48 00 00 8D */	bl setActionMode__15daTagKagoFall_cFUcUc
lbl_80D59D90:
/* 80D59D90  3C 60 80 D6 */	lis r3, m_master_id@ha
/* 80D59D94  38 63 A7 10 */	addi r3, r3, m_master_id@l
/* 80D59D98  80 63 00 00 */	lwz r3, 0(r3)
/* 80D59D9C  3C 03 00 01 */	addis r0, r3, 1
/* 80D59DA0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D59DA4  40 82 00 20 */	bne lbl_80D59DC4
/* 80D59DA8  28 1F 00 00 */	cmplwi r31, 0
/* 80D59DAC  41 82 00 0C */	beq lbl_80D59DB8
/* 80D59DB0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80D59DB4  48 00 00 08 */	b lbl_80D59DBC
lbl_80D59DB8:
/* 80D59DB8  38 00 FF FF */	li r0, -1
lbl_80D59DBC:
/* 80D59DBC  3C 60 80 D6 */	lis r3, m_master_id@ha
/* 80D59DC0  90 03 A7 10 */	stw r0, m_master_id@l(r3)
lbl_80D59DC4:
/* 80D59DC4  38 60 00 04 */	li r3, 4
/* 80D59DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D59DCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D59DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D59DD4  7C 08 03 A6 */	mtlr r0
/* 80D59DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59DDC  4E 80 00 20 */	blr 
