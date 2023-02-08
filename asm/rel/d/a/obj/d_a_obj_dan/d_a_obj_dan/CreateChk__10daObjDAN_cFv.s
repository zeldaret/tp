lbl_80BDBB0C:
/* 80BDBB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDBB10  7C 08 02 A6 */	mflr r0
/* 80BDBB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDBB18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDBB1C  7C 7F 1B 78 */	mr r31, r3
/* 80BDBB20  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BDBB24  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80BDBB28  7C 03 03 78 */	mr r3, r0
/* 80BDBB2C  28 00 00 0F */	cmplwi r0, 0xf
/* 80BDBB30  40 82 00 08 */	bne lbl_80BDBB38
/* 80BDBB34  38 60 00 00 */	li r3, 0
lbl_80BDBB38:
/* 80BDBB38  88 1F 07 A8 */	lbz r0, 0x7a8(r31)
/* 80BDBB3C  28 00 00 02 */	cmplwi r0, 2
/* 80BDBB40  41 82 01 60 */	beq lbl_80BDBCA0
/* 80BDBB44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BDBB48  41 82 00 6C */	beq lbl_80BDBBB4
/* 80BDBB4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDBB50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDBB54  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80BDBB58  7F E3 FB 78 */	mr r3, r31
/* 80BDBB5C  3C 80 80 BE */	lis r4, l_musiya_num@ha /* 0x80BDC460@ha */
/* 80BDBB60  A0 04 C4 60 */	lhz r0, l_musiya_num@l(r4)  /* 0x80BDC460@l */
/* 80BDBB64  54 00 08 3C */	slwi r0, r0, 1
/* 80BDBB68  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BDBB6C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BDBB70  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BDBB74  4B 45 8E 49 */	bl isEventBit__11dSv_event_cCFUs
/* 80BDBB78  2C 03 00 00 */	cmpwi r3, 0
/* 80BDBB7C  41 82 00 30 */	beq lbl_80BDBBAC
/* 80BDBB80  7F E3 FB 78 */	mr r3, r31
/* 80BDBB84  3C 80 80 BE */	lis r4, l_musiya_num@ha /* 0x80BDC460@ha */
/* 80BDBB88  38 84 C4 60 */	addi r4, r4, l_musiya_num@l /* 0x80BDC460@l */
/* 80BDBB8C  A0 04 00 02 */	lhz r0, 2(r4)
/* 80BDBB90  54 00 08 3C */	slwi r0, r0, 1
/* 80BDBB94  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BDBB98  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BDBB9C  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BDBBA0  4B 45 8E 1D */	bl isEventBit__11dSv_event_cCFUs
/* 80BDBBA4  2C 03 00 00 */	cmpwi r3, 0
/* 80BDBBA8  40 82 00 F8 */	bne lbl_80BDBCA0
lbl_80BDBBAC:
/* 80BDBBAC  38 60 00 00 */	li r3, 0
/* 80BDBBB0  48 00 00 F4 */	b lbl_80BDBCA4
lbl_80BDBBB4:
/* 80BDBBB4  3C 60 80 BE */	lis r3, d_a_obj_dan__stringBase0@ha /* 0x80BDC46C@ha */
/* 80BDBBB8  38 63 C4 6C */	addi r3, r3, d_a_obj_dan__stringBase0@l /* 0x80BDC46C@l */
/* 80BDBBBC  38 63 00 06 */	addi r3, r3, 6
/* 80BDBBC0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDBBC4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDBBC8  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80BDBBCC  4B 78 CD C9 */	bl strcmp
/* 80BDBBD0  2C 03 00 00 */	cmpwi r3, 0
/* 80BDBBD4  40 82 00 CC */	bne lbl_80BDBCA0
/* 80BDBBD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDBBDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDBBE0  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80BDBBE4  2C 00 00 03 */	cmpwi r0, 3
/* 80BDBBE8  40 82 00 B8 */	bne lbl_80BDBCA0
/* 80BDBBEC  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80BDBBF0  3C 60 80 BE */	lis r3, l_dan_itemno@ha /* 0x80BDC42C@ha */
/* 80BDBBF4  38 63 C4 2C */	addi r3, r3, l_dan_itemno@l /* 0x80BDC42C@l */
/* 80BDBBF8  7C 63 00 AE */	lbzx r3, r3, r0
/* 80BDBBFC  4B 5F E3 41 */	bl isCatchNotGiveInsect__14dMenu_Insect_cFUc
/* 80BDBC00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BDBC04  41 82 00 0C */	beq lbl_80BDBC10
/* 80BDBC08  38 60 00 00 */	li r3, 0
/* 80BDBC0C  48 00 00 98 */	b lbl_80BDBCA4
lbl_80BDBC10:
/* 80BDBC10  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80BDBC14  28 00 00 00 */	cmplwi r0, 0
/* 80BDBC18  40 82 00 3C */	bne lbl_80BDBC54
/* 80BDBC1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDBC20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDBC24  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80BDBC28  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80BDBC2C  3C 80 80 BE */	lis r4, l_musiya_num@ha /* 0x80BDC460@ha */
/* 80BDBC30  38 84 C4 60 */	addi r4, r4, l_musiya_num@l /* 0x80BDC460@l */
/* 80BDBC34  7C 04 02 2E */	lhzx r0, r4, r0
/* 80BDBC38  54 00 08 3C */	slwi r0, r0, 1
/* 80BDBC3C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BDBC40  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BDBC44  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BDBC48  4B 45 8D 75 */	bl isEventBit__11dSv_event_cCFUs
/* 80BDBC4C  2C 03 00 00 */	cmpwi r3, 0
/* 80BDBC50  41 82 00 48 */	beq lbl_80BDBC98
lbl_80BDBC54:
/* 80BDBC54  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80BDBC58  28 00 00 01 */	cmplwi r0, 1
/* 80BDBC5C  40 82 00 44 */	bne lbl_80BDBCA0
/* 80BDBC60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDBC64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDBC68  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80BDBC6C  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80BDBC70  3C 80 80 BE */	lis r4, l_musiya_num@ha /* 0x80BDC460@ha */
/* 80BDBC74  38 84 C4 60 */	addi r4, r4, l_musiya_num@l /* 0x80BDC460@l */
/* 80BDBC78  7C 04 02 2E */	lhzx r0, r4, r0
/* 80BDBC7C  54 00 08 3C */	slwi r0, r0, 1
/* 80BDBC80  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BDBC84  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BDBC88  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BDBC8C  4B 45 8D 31 */	bl isEventBit__11dSv_event_cCFUs
/* 80BDBC90  2C 03 00 00 */	cmpwi r3, 0
/* 80BDBC94  40 82 00 0C */	bne lbl_80BDBCA0
lbl_80BDBC98:
/* 80BDBC98  38 60 00 00 */	li r3, 0
/* 80BDBC9C  48 00 00 08 */	b lbl_80BDBCA4
lbl_80BDBCA0:
/* 80BDBCA0  38 60 00 01 */	li r3, 1
lbl_80BDBCA4:
/* 80BDBCA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDBCA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDBCAC  7C 08 03 A6 */	mtlr r0
/* 80BDBCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDBCB4  4E 80 00 20 */	blr 
