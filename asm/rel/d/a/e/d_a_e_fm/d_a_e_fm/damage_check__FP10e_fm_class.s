lbl_804F4D74:
/* 804F4D74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804F4D78  7C 08 02 A6 */	mflr r0
/* 804F4D7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804F4D80  39 61 00 40 */	addi r11, r1, 0x40
/* 804F4D84  4B E6 D4 58 */	b _savegpr_29
/* 804F4D88  7C 7E 1B 78 */	mr r30, r3
/* 804F4D8C  3C 60 80 50 */	lis r3, lit_3777@ha
/* 804F4D90  3B E3 A6 BC */	addi r31, r3, lit_3777@l
/* 804F4D94  38 7E 0A 40 */	addi r3, r30, 0xa40
/* 804F4D98  4B B8 EA 98 */	b Move__10dCcD_GSttsFv
/* 804F4D9C  38 7E 0A 7C */	addi r3, r30, 0xa7c
/* 804F4DA0  4B B8 EA 90 */	b Move__10dCcD_GSttsFv
/* 804F4DA4  A8 1E 07 B4 */	lha r0, 0x7b4(r30)
/* 804F4DA8  2C 00 00 00 */	cmpwi r0, 0
/* 804F4DAC  40 82 03 84 */	bne lbl_804F5130
/* 804F4DB0  38 7E 15 94 */	addi r3, r30, 0x1594
/* 804F4DB4  4B B8 F6 AC */	b ChkTgHit__12dCcD_GObjInfFv
/* 804F4DB8  28 03 00 00 */	cmplwi r3, 0
/* 804F4DBC  41 82 02 C0 */	beq lbl_804F507C
/* 804F4DC0  38 00 00 06 */	li r0, 6
/* 804F4DC4  B0 1E 07 B4 */	sth r0, 0x7b4(r30)
/* 804F4DC8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070298@ha */
/* 804F4DCC  38 03 02 98 */	addi r0, r3, 0x0298 /* 0x00070298@l */
/* 804F4DD0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804F4DD4  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F4DD8  38 81 00 1C */	addi r4, r1, 0x1c
/* 804F4DDC  38 A0 00 00 */	li r5, 0
/* 804F4DE0  38 C0 FF FF */	li r6, -1
/* 804F4DE4  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F4DE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F4DEC  7D 89 03 A6 */	mtctr r12
/* 804F4DF0  4E 80 04 21 */	bctrl 
/* 804F4DF4  A8 1E 07 A2 */	lha r0, 0x7a2(r30)
/* 804F4DF8  2C 00 00 09 */	cmpwi r0, 9
/* 804F4DFC  40 82 01 C8 */	bne lbl_804F4FC4
/* 804F4E00  38 7E 15 94 */	addi r3, r30, 0x1594
/* 804F4E04  4B B8 F6 F4 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 804F4E08  90 7E 18 04 */	stw r3, 0x1804(r30)
/* 804F4E0C  7F C3 F3 78 */	mr r3, r30
/* 804F4E10  38 9E 18 04 */	addi r4, r30, 0x1804
/* 804F4E14  4B B9 2D F0 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 804F4E18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F4E1C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 804F4E20  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 804F4E24  88 03 05 68 */	lbz r0, 0x568(r3)
/* 804F4E28  28 00 00 0A */	cmplwi r0, 0xa
/* 804F4E2C  40 82 00 28 */	bne lbl_804F4E54
/* 804F4E30  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804F4E34  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 804F4E38  7D 89 03 A6 */	mtctr r12
/* 804F4E3C  4E 80 04 21 */	bctrl 
/* 804F4E40  2C 03 00 00 */	cmpwi r3, 0
/* 804F4E44  41 82 00 10 */	beq lbl_804F4E54
/* 804F4E48  38 00 00 03 */	li r0, 3
/* 804F4E4C  B0 1E 07 B4 */	sth r0, 0x7b4(r30)
/* 804F4E50  48 00 00 0C */	b lbl_804F4E5C
lbl_804F4E54:
/* 804F4E54  38 00 00 06 */	li r0, 6
/* 804F4E58  B0 1E 07 B4 */	sth r0, 0x7b4(r30)
lbl_804F4E5C:
/* 804F4E5C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 804F4E60  88 03 05 68 */	lbz r0, 0x568(r3)
/* 804F4E64  28 00 00 1F */	cmplwi r0, 0x1f
/* 804F4E68  40 82 00 0C */	bne lbl_804F4E74
/* 804F4E6C  38 00 00 00 */	li r0, 0
/* 804F4E70  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_804F4E74:
/* 804F4E74  A8 9E 05 62 */	lha r4, 0x562(r30)
/* 804F4E78  7C 80 07 35 */	extsh. r0, r4
/* 804F4E7C  40 81 00 14 */	ble lbl_804F4E90
/* 804F4E80  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 804F4E84  88 03 05 69 */	lbz r0, 0x569(r3)
/* 804F4E88  28 00 00 04 */	cmplwi r0, 4
/* 804F4E8C  41 80 00 AC */	blt lbl_804F4F38
lbl_804F4E90:
/* 804F4E90  7C 80 07 35 */	extsh. r0, r4
/* 804F4E94  41 81 00 40 */	bgt lbl_804F4ED4
/* 804F4E98  88 1E 08 02 */	lbz r0, 0x802(r30)
/* 804F4E9C  7C 00 07 74 */	extsb r0, r0
/* 804F4EA0  2C 00 00 03 */	cmpwi r0, 3
/* 804F4EA4  41 80 00 30 */	blt lbl_804F4ED4
/* 804F4EA8  38 00 00 0C */	li r0, 0xc
/* 804F4EAC  B0 1E 07 A2 */	sth r0, 0x7a2(r30)
/* 804F4EB0  38 00 00 00 */	li r0, 0
/* 804F4EB4  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F4EB8  7F C3 F3 78 */	mr r3, r30
/* 804F4EBC  38 80 00 02 */	li r4, 2
/* 804F4EC0  4B FF A8 51 */	bl carry_off__FP10e_fm_classi
/* 804F4EC4  7F C3 F3 78 */	mr r3, r30
/* 804F4EC8  38 80 00 03 */	li r4, 3
/* 804F4ECC  4B FF A8 45 */	bl carry_off__FP10e_fm_classi
/* 804F4ED0  48 00 00 AC */	b lbl_804F4F7C
lbl_804F4ED4:
/* 804F4ED4  7F C3 F3 78 */	mr r3, r30
/* 804F4ED8  38 80 00 21 */	li r4, 0x21
/* 804F4EDC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804F4EE0  38 A0 00 00 */	li r5, 0
/* 804F4EE4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F4EE8  4B FF A9 21 */	bl anm_init__FP10e_fm_classifUcf
/* 804F4EEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070290@ha */
/* 804F4EF0  38 03 02 90 */	addi r0, r3, 0x0290 /* 0x00070290@l */
/* 804F4EF4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804F4EF8  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F4EFC  38 81 00 18 */	addi r4, r1, 0x18
/* 804F4F00  38 A0 FF FF */	li r5, -1
/* 804F4F04  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F4F08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F4F0C  7D 89 03 A6 */	mtctr r12
/* 804F4F10  4E 80 04 21 */	bctrl 
/* 804F4F14  38 00 00 03 */	li r0, 3
/* 804F4F18  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F4F1C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804F4F20  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804F4F24  80 63 00 00 */	lwz r3, 0(r3)
/* 804F4F28  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F4F2C  38 80 00 02 */	li r4, 2
/* 804F4F30  4B DB B0 5C */	b changeBgmStatus__8Z2SeqMgrFl
/* 804F4F34  48 00 00 48 */	b lbl_804F4F7C
lbl_804F4F38:
/* 804F4F38  7F C3 F3 78 */	mr r3, r30
/* 804F4F3C  38 80 00 1A */	li r4, 0x1a
/* 804F4F40  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804F4F44  38 A0 00 00 */	li r5, 0
/* 804F4F48  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F4F4C  4B FF A8 BD */	bl anm_init__FP10e_fm_classifUcf
/* 804F4F50  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070001@ha */
/* 804F4F54  38 03 00 01 */	addi r0, r3, 0x0001 /* 0x00070001@l */
/* 804F4F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4F5C  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F4F60  38 81 00 14 */	addi r4, r1, 0x14
/* 804F4F64  38 A0 00 00 */	li r5, 0
/* 804F4F68  38 C0 FF FF */	li r6, -1
/* 804F4F6C  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F4F70  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F4F74  7D 89 03 A6 */	mtctr r12
/* 804F4F78  4E 80 04 21 */	bctrl 
lbl_804F4F7C:
/* 804F4F7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070007@ha */
/* 804F4F80  38 03 00 07 */	addi r0, r3, 0x0007 /* 0x00070007@l */
/* 804F4F84  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F4F88  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F4F8C  38 81 00 10 */	addi r4, r1, 0x10
/* 804F4F90  38 A0 FF FF */	li r5, -1
/* 804F4F94  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F4F98  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F4F9C  7D 89 03 A6 */	mtctr r12
/* 804F4FA0  4E 80 04 21 */	bctrl 
/* 804F4FA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F4FA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F4FAC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804F4FB0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804F4FB4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804F4FB8  A0 84 05 3C */	lhz r4, 0x53c(r4)
/* 804F4FBC  4B B3 F9 D0 */	b onEventBit__11dSv_event_cFUs
/* 804F4FC0  48 00 00 B4 */	b lbl_804F5074
lbl_804F4FC4:
/* 804F4FC4  A8 7E 08 04 */	lha r3, 0x804(r30)
/* 804F4FC8  38 03 00 01 */	addi r0, r3, 1
/* 804F4FCC  B0 1E 08 04 */	sth r0, 0x804(r30)
/* 804F4FD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F4FD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F4FD8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804F4FDC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804F4FE0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804F4FE4  A0 84 01 FC */	lhz r4, 0x1fc(r4)
/* 804F4FE8  4B B3 F9 A4 */	b onEventBit__11dSv_event_cFUs
/* 804F4FEC  A8 1E 08 04 */	lha r0, 0x804(r30)
/* 804F4FF0  2C 00 00 0A */	cmpwi r0, 0xa
/* 804F4FF4  41 80 00 30 */	blt lbl_804F5024
/* 804F4FF8  88 7E 08 02 */	lbz r3, 0x802(r30)
/* 804F4FFC  38 03 00 01 */	addi r0, r3, 1
/* 804F5000  98 1E 08 02 */	stb r0, 0x802(r30)
/* 804F5004  38 00 00 0A */	li r0, 0xa
/* 804F5008  B0 1E 07 A2 */	sth r0, 0x7a2(r30)
/* 804F500C  38 00 00 32 */	li r0, 0x32
/* 804F5010  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 804F5014  38 00 00 14 */	li r0, 0x14
/* 804F5018  3C 7E 00 02 */	addis r3, r30, 2
/* 804F501C  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F5020  48 00 00 4C */	b lbl_804F506C
lbl_804F5024:
/* 804F5024  38 00 00 04 */	li r0, 4
/* 804F5028  B0 1E 07 A2 */	sth r0, 0x7a2(r30)
/* 804F502C  7F C3 F3 78 */	mr r3, r30
/* 804F5030  38 80 00 10 */	li r4, 0x10
/* 804F5034  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804F5038  38 A0 00 00 */	li r5, 0
/* 804F503C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F5040  4B FF A7 C9 */	bl anm_init__FP10e_fm_classifUcf
/* 804F5044  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070288@ha */
/* 804F5048  38 03 02 88 */	addi r0, r3, 0x0288 /* 0x00070288@l */
/* 804F504C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F5050  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F5054  38 81 00 0C */	addi r4, r1, 0xc
/* 804F5058  38 A0 FF FF */	li r5, -1
/* 804F505C  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F5060  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F5064  7D 89 03 A6 */	mtctr r12
/* 804F5068  4E 80 04 21 */	bctrl 
lbl_804F506C:
/* 804F506C  38 00 00 00 */	li r0, 0
/* 804F5070  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
lbl_804F5074:
/* 804F5074  38 00 00 1E */	li r0, 0x1e
/* 804F5078  98 1E 23 98 */	stb r0, 0x2398(r30)
lbl_804F507C:
/* 804F507C  C0 3E 05 38 */	lfs f1, 0x538(r30)
/* 804F5080  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804F5084  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 804F5088  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804F508C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 804F5090  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804F5094  D0 3E 05 68 */	stfs f1, 0x568(r30)
/* 804F5098  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 804F509C  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 804F50A0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 804F50A4  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 804F50A8  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 804F50AC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804F50B0  41 82 00 80 */	beq lbl_804F5130
/* 804F50B4  38 00 00 0C */	li r0, 0xc
/* 804F50B8  B0 1E 07 A2 */	sth r0, 0x7a2(r30)
/* 804F50BC  38 00 00 0A */	li r0, 0xa
/* 804F50C0  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F50C4  7F C3 F3 78 */	mr r3, r30
/* 804F50C8  38 80 00 02 */	li r4, 2
/* 804F50CC  4B FF A6 45 */	bl carry_off__FP10e_fm_classi
/* 804F50D0  7F C3 F3 78 */	mr r3, r30
/* 804F50D4  38 80 00 03 */	li r4, 3
/* 804F50D8  4B FF A6 39 */	bl carry_off__FP10e_fm_classi
/* 804F50DC  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 804F50E0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 804F50E4  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 804F50E8  A0 7E 05 8E */	lhz r3, 0x58e(r30)
/* 804F50EC  38 00 FF E8 */	li r0, -24
/* 804F50F0  7C 60 00 38 */	and r0, r3, r0
/* 804F50F4  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 804F50F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702AA@ha */
/* 804F50FC  38 03 02 AA */	addi r0, r3, 0x02AA /* 0x000702AA@l */
/* 804F5100  90 01 00 08 */	stw r0, 8(r1)
/* 804F5104  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F5108  38 81 00 08 */	addi r4, r1, 8
/* 804F510C  38 A0 FF FF */	li r5, -1
/* 804F5110  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F5114  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F5118  7D 89 03 A6 */	mtctr r12
/* 804F511C  4E 80 04 21 */	bctrl 
/* 804F5120  38 00 01 2C */	li r0, 0x12c
/* 804F5124  B0 1E 07 B4 */	sth r0, 0x7b4(r30)
/* 804F5128  38 00 00 01 */	li r0, 1
/* 804F512C  98 1E 18 2C */	stb r0, 0x182c(r30)
lbl_804F5130:
/* 804F5130  39 61 00 40 */	addi r11, r1, 0x40
/* 804F5134  4B E6 D0 F4 */	b _restgpr_29
/* 804F5138  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804F513C  7C 08 03 A6 */	mtlr r0
/* 804F5140  38 21 00 40 */	addi r1, r1, 0x40
/* 804F5144  4E 80 00 20 */	blr 
