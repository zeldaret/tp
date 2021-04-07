lbl_805AAEA8:
/* 805AAEA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AAEAC  7C 08 02 A6 */	mflr r0
/* 805AAEB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AAEB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AAEB8  93 C1 00 08 */	stw r30, 8(r1)
/* 805AAEBC  7C 7E 1B 78 */	mr r30, r3
/* 805AAEC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AAEC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AAEC8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805AAECC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 805AAED0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 805AAED4  A0 84 03 FC */	lhz r4, 0x3fc(r4)
/* 805AAED8  4B A8 9A E5 */	bl isEventBit__11dSv_event_cCFUs
/* 805AAEDC  2C 03 00 00 */	cmpwi r3, 0
/* 805AAEE0  40 82 00 0C */	bne lbl_805AAEEC
/* 805AAEE4  38 60 00 01 */	li r3, 1
/* 805AAEE8  48 00 00 44 */	b lbl_805AAF2C
lbl_805AAEEC:
/* 805AAEEC  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805AAEF0  83 E3 00 04 */	lwz r31, 4(r3)
/* 805AAEF4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805AAEF8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805AAEFC  38 80 00 00 */	li r4, 0
/* 805AAF00  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805AAF04  38 DE 01 0C */	addi r6, r30, 0x10c
/* 805AAF08  4B BF 88 BD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805AAF0C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805AAF10  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805AAF14  80 9F 00 04 */	lwz r4, 4(r31)
/* 805AAF18  38 BE 01 0C */	addi r5, r30, 0x10c
/* 805AAF1C  4B BF 9E 85 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805AAF20  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805AAF24  4B A6 62 9D */	bl entryDL__16mDoExt_McaMorfSOFv
/* 805AAF28  38 60 00 01 */	li r3, 1
lbl_805AAF2C:
/* 805AAF2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AAF30  83 C1 00 08 */	lwz r30, 8(r1)
/* 805AAF34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AAF38  7C 08 03 A6 */	mtlr r0
/* 805AAF3C  38 21 00 10 */	addi r1, r1, 0x10
/* 805AAF40  4E 80 00 20 */	blr 
