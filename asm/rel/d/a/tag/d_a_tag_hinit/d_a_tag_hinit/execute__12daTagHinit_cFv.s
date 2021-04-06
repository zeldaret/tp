lbl_805A389C:
/* 805A389C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A38A0  7C 08 02 A6 */	mflr r0
/* 805A38A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A38A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A38AC  93 C1 00 08 */	stw r30, 8(r1)
/* 805A38B0  7C 7F 1B 78 */	mr r31, r3
/* 805A38B4  A0 03 05 6C */	lhz r0, 0x56c(r3)
/* 805A38B8  28 00 FF FF */	cmplwi r0, 0xffff
/* 805A38BC  41 82 00 2C */	beq lbl_805A38E8
/* 805A38C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A38C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A38C8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805A38CC  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 805A38D0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 805A38D4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 805A38D8  7C 84 02 2E */	lhzx r4, r4, r0
/* 805A38DC  4B A9 10 E1 */	bl isEventBit__11dSv_event_cCFUs
/* 805A38E0  2C 03 00 00 */	cmpwi r3, 0
/* 805A38E4  41 82 00 B8 */	beq lbl_805A399C
lbl_805A38E8:
/* 805A38E8  A0 1F 05 6E */	lhz r0, 0x56e(r31)
/* 805A38EC  28 00 FF FF */	cmplwi r0, 0xffff
/* 805A38F0  41 82 00 2C */	beq lbl_805A391C
/* 805A38F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A38F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A38FC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805A3900  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 805A3904  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 805A3908  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 805A390C  7C 84 02 2E */	lhzx r4, r4, r0
/* 805A3910  4B A9 10 AD */	bl isEventBit__11dSv_event_cCFUs
/* 805A3914  2C 03 00 00 */	cmpwi r3, 0
/* 805A3918  40 82 00 84 */	bne lbl_805A399C
lbl_805A391C:
/* 805A391C  88 9F 05 68 */	lbz r4, 0x568(r31)
/* 805A3920  28 04 00 FF */	cmplwi r4, 0xff
/* 805A3924  41 82 00 20 */	beq lbl_805A3944
/* 805A3928  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A392C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A3930  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A3934  7C 05 07 74 */	extsb r5, r0
/* 805A3938  4B A9 1A 29 */	bl isSwitch__10dSv_info_cCFii
/* 805A393C  2C 03 00 00 */	cmpwi r3, 0
/* 805A3940  41 82 00 5C */	beq lbl_805A399C
lbl_805A3944:
/* 805A3944  88 9F 05 69 */	lbz r4, 0x569(r31)
/* 805A3948  28 04 00 FF */	cmplwi r4, 0xff
/* 805A394C  41 82 00 18 */	beq lbl_805A3964
/* 805A3950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A3954  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A3958  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A395C  7C 05 07 74 */	extsb r5, r0
/* 805A3960  4B A9 18 A1 */	bl onSwitch__10dSv_info_cFii
lbl_805A3964:
/* 805A3964  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A3968  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A396C  83 C3 5D B8 */	lwz r30, 0x5db8(r3)
/* 805A3970  7F C3 F3 78 */	mr r3, r30
/* 805A3974  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805A3978  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 805A397C  39 9E 18 E0 */	addi r12, r30, 0x18e0
/* 805A3980  4B DB E7 05 */	bl __ptmf_scall
/* 805A3984  60 00 00 00 */	nop 
/* 805A3988  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 805A398C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 805A3990  90 1E 17 44 */	stw r0, 0x1744(r30)
/* 805A3994  7F E3 FB 78 */	mr r3, r31
/* 805A3998  4B A7 62 E5 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_805A399C:
/* 805A399C  38 60 00 01 */	li r3, 1
/* 805A39A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A39A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A39A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A39AC  7C 08 03 A6 */	mtlr r0
/* 805A39B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A39B4  4E 80 00 20 */	blr 
