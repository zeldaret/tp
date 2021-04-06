lbl_80D5F3F0:
/* 80D5F3F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5F3F4  7C 08 02 A6 */	mflr r0
/* 80D5F3F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5F3FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5F400  7C 7F 1B 78 */	mr r31, r3
/* 80D5F404  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D5F408  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D5F40C  28 04 00 FF */	cmplwi r4, 0xff
/* 80D5F410  41 82 00 28 */	beq lbl_80D5F438
/* 80D5F414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5F418  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5F41C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5F420  7C 05 07 74 */	extsb r5, r0
/* 80D5F424  4B 2D 5F 3D */	bl isSwitch__10dSv_info_cCFii
/* 80D5F428  2C 03 00 00 */	cmpwi r3, 0
/* 80D5F42C  41 82 00 0C */	beq lbl_80D5F438
/* 80D5F430  38 60 00 01 */	li r3, 1
/* 80D5F434  48 00 00 44 */	b lbl_80D5F478
lbl_80D5F438:
/* 80D5F438  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D5F43C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80D5F440  28 04 00 FF */	cmplwi r4, 0xff
/* 80D5F444  41 82 00 28 */	beq lbl_80D5F46C
/* 80D5F448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5F44C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5F450  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5F454  7C 05 07 74 */	extsb r5, r0
/* 80D5F458  4B 2D 5F 09 */	bl isSwitch__10dSv_info_cCFii
/* 80D5F45C  2C 03 00 00 */	cmpwi r3, 0
/* 80D5F460  40 82 00 0C */	bne lbl_80D5F46C
/* 80D5F464  38 60 00 01 */	li r3, 1
/* 80D5F468  48 00 00 10 */	b lbl_80D5F478
lbl_80D5F46C:
/* 80D5F46C  7F E3 FB 78 */	mr r3, r31
/* 80D5F470  48 00 00 1D */	bl event_proc_call__16daTagRiverBack_cFv
/* 80D5F474  38 60 00 01 */	li r3, 1
lbl_80D5F478:
/* 80D5F478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5F47C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5F480  7C 08 03 A6 */	mtlr r0
/* 80D5F484  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5F488  4E 80 00 20 */	blr 
