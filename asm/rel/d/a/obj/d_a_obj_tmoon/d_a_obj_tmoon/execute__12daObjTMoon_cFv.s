lbl_80D12DC0:
/* 80D12DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12DC4  7C 08 02 A6 */	mflr r0
/* 80D12DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12DCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D12DD0  7C 7F 1B 78 */	mr r31, r3
/* 80D12DD4  A0 03 05 76 */	lhz r0, 0x576(r3)
/* 80D12DD8  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80D12DDC  41 82 00 2C */	beq lbl_80D12E08
/* 80D12DE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D12DE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D12DE8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D12DEC  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80D12DF0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D12DF4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D12DF8  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D12DFC  4B 32 1B C0 */	b isEventBit__11dSv_event_cCFUs
/* 80D12E00  2C 03 00 00 */	cmpwi r3, 0
/* 80D12E04  40 82 00 38 */	bne lbl_80D12E3C
lbl_80D12E08:
/* 80D12E08  A0 1F 05 74 */	lhz r0, 0x574(r31)
/* 80D12E0C  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80D12E10  41 82 00 3C */	beq lbl_80D12E4C
/* 80D12E14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D12E18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D12E1C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D12E20  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80D12E24  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D12E28  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D12E2C  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D12E30  4B 32 1B 8C */	b isEventBit__11dSv_event_cCFUs
/* 80D12E34  2C 03 00 00 */	cmpwi r3, 0
/* 80D12E38  40 82 00 14 */	bne lbl_80D12E4C
lbl_80D12E3C:
/* 80D12E3C  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 80D12E40  4B 30 D6 94 */	b fopDwTg_DrawQTo__FP16create_tag_class
/* 80D12E44  38 60 00 01 */	li r3, 1
/* 80D12E48  48 00 00 58 */	b lbl_80D12EA0
lbl_80D12E4C:
/* 80D12E4C  A0 1F 05 74 */	lhz r0, 0x574(r31)
/* 80D12E50  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80D12E54  41 82 00 48 */	beq lbl_80D12E9C
/* 80D12E58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D12E5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D12E60  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D12E64  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80D12E68  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D12E6C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D12E70  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D12E74  4B 32 1B 48 */	b isEventBit__11dSv_event_cCFUs
/* 80D12E78  2C 03 00 00 */	cmpwi r3, 0
/* 80D12E7C  41 82 00 20 */	beq lbl_80D12E9C
/* 80D12E80  7F E3 FB 78 */	mr r3, r31
/* 80D12E84  4B 30 EB 7C */	b fpcLf_GetPriority__FPC14leafdraw_class
/* 80D12E88  7C 64 07 34 */	extsh r4, r3
/* 80D12E8C  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 80D12E90  4B 30 D6 1C */	b fopDwTg_ToDrawQ__FP16create_tag_classi
/* 80D12E94  38 60 00 01 */	li r3, 1
/* 80D12E98  48 00 00 08 */	b lbl_80D12EA0
lbl_80D12E9C:
/* 80D12E9C  38 60 00 01 */	li r3, 1
lbl_80D12EA0:
/* 80D12EA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D12EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D12EA8  7C 08 03 A6 */	mtlr r0
/* 80D12EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12EB0  4E 80 00 20 */	blr 
