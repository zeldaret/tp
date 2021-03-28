lbl_801AC5BC:
/* 801AC5BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AC5C0  7C 08 02 A6 */	mflr r0
/* 801AC5C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AC5C8  39 61 00 20 */	addi r11, r1, 0x20
/* 801AC5CC  48 1B 5C 05 */	bl _savegpr_26
/* 801AC5D0  7C 7A 1B 78 */	mr r26, r3
/* 801AC5D4  7C 9B 23 78 */	mr r27, r4
/* 801AC5D8  7C BC 2B 78 */	mr r28, r5
/* 801AC5DC  7C DD 33 78 */	mr r29, r6
/* 801AC5E0  4B EA A4 91 */	bl dKyd_darkworld_tbl_getp__Fv
/* 801AC5E4  7C 7F 1B 78 */	mr r31, r3
/* 801AC5E8  3B C0 00 00 */	li r30, 0
/* 801AC5EC  28 1C 00 00 */	cmplwi r28, 0
/* 801AC5F0  41 82 00 0C */	beq lbl_801AC5FC
/* 801AC5F4  38 00 00 06 */	li r0, 6
/* 801AC5F8  98 1C 00 00 */	stb r0, 0(r28)
lbl_801AC5FC:
/* 801AC5FC  7F 43 D3 78 */	mr r3, r26
/* 801AC600  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AC604  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AC608  38 84 01 92 */	addi r4, r4, 0x192
/* 801AC60C  48 1B C3 89 */	bl strcmp
/* 801AC610  2C 03 00 00 */	cmpwi r3, 0
/* 801AC614  40 82 00 6C */	bne lbl_801AC680
/* 801AC618  2C 1B 00 00 */	cmpwi r27, 0
/* 801AC61C  41 82 00 1C */	beq lbl_801AC638
/* 801AC620  2C 1B 00 02 */	cmpwi r27, 2
/* 801AC624  41 80 00 0C */	blt lbl_801AC630
/* 801AC628  2C 1B 00 05 */	cmpwi r27, 5
/* 801AC62C  40 81 00 0C */	ble lbl_801AC638
lbl_801AC630:
/* 801AC630  2C 1B 00 07 */	cmpwi r27, 7
/* 801AC634  40 82 00 1C */	bne lbl_801AC650
lbl_801AC638:
/* 801AC638  28 1C 00 00 */	cmplwi r28, 0
/* 801AC63C  41 82 00 0C */	beq lbl_801AC648
/* 801AC640  38 00 00 01 */	li r0, 1
/* 801AC644  98 1C 00 00 */	stb r0, 0(r28)
lbl_801AC648:
/* 801AC648  3B C0 00 01 */	li r30, 1
/* 801AC64C  48 00 00 70 */	b lbl_801AC6BC
lbl_801AC650:
/* 801AC650  2C 1B 00 09 */	cmpwi r27, 9
/* 801AC654  41 80 00 24 */	blt lbl_801AC678
/* 801AC658  2C 1B 00 0E */	cmpwi r27, 0xe
/* 801AC65C  41 81 00 1C */	bgt lbl_801AC678
/* 801AC660  28 1C 00 00 */	cmplwi r28, 0
/* 801AC664  41 82 00 0C */	beq lbl_801AC670
/* 801AC668  38 00 00 02 */	li r0, 2
/* 801AC66C  98 1C 00 00 */	stb r0, 0(r28)
lbl_801AC670:
/* 801AC670  3B C0 00 01 */	li r30, 1
/* 801AC674  48 00 00 48 */	b lbl_801AC6BC
lbl_801AC678:
/* 801AC678  3B C0 FF FF */	li r30, -1
/* 801AC67C  48 00 00 40 */	b lbl_801AC6BC
lbl_801AC680:
/* 801AC680  7F 43 D3 78 */	mr r3, r26
/* 801AC684  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AC688  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AC68C  38 84 02 69 */	addi r4, r4, 0x269
/* 801AC690  48 1B C3 05 */	bl strcmp
/* 801AC694  2C 03 00 00 */	cmpwi r3, 0
/* 801AC698  40 82 00 24 */	bne lbl_801AC6BC
/* 801AC69C  2C 1B 00 01 */	cmpwi r27, 1
/* 801AC6A0  40 82 00 1C */	bne lbl_801AC6BC
/* 801AC6A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AC6A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AC6AC  88 03 4E 0B */	lbz r0, 0x4e0b(r3)
/* 801AC6B0  2C 00 00 0D */	cmpwi r0, 0xd
/* 801AC6B4  40 82 00 08 */	bne lbl_801AC6BC
/* 801AC6B8  3B C0 FF FF */	li r30, -1
lbl_801AC6BC:
/* 801AC6BC  57 A0 18 38 */	slwi r0, r29, 3
/* 801AC6C0  7C 7F 02 14 */	add r3, r31, r0
/* 801AC6C4  88 03 00 04 */	lbz r0, 4(r3)
/* 801AC6C8  28 00 00 00 */	cmplwi r0, 0
/* 801AC6CC  40 82 00 24 */	bne lbl_801AC6F0
/* 801AC6D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AC6D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AC6D8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 801AC6DC  38 80 45 10 */	li r4, 0x4510
/* 801AC6E0  4B E8 82 DD */	bl isEventBit__11dSv_event_cCFUs
/* 801AC6E4  2C 03 00 00 */	cmpwi r3, 0
/* 801AC6E8  40 82 00 08 */	bne lbl_801AC6F0
/* 801AC6EC  3B C0 FF FF */	li r30, -1
lbl_801AC6F0:
/* 801AC6F0  7F C3 F3 78 */	mr r3, r30
/* 801AC6F4  39 61 00 20 */	addi r11, r1, 0x20
/* 801AC6F8  48 1B 5B 25 */	bl _restgpr_26
/* 801AC6FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AC700  7C 08 03 A6 */	mtlr r0
/* 801AC704  38 21 00 20 */	addi r1, r1, 0x20
/* 801AC708  4E 80 00 20 */	blr 
