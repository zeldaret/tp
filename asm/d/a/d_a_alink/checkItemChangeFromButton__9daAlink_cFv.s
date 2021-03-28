lbl_800B994C:
/* 800B994C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B9950  7C 08 02 A6 */	mflr r0
/* 800B9954  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B9958  39 61 00 20 */	addi r11, r1, 0x20
/* 800B995C  48 2A 88 79 */	bl _savegpr_27
/* 800B9960  7C 7E 1B 78 */	mr r30, r3
/* 800B9964  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800B9968  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800B996C  41 82 03 A4 */	beq lbl_800B9D10
/* 800B9970  4B FF F9 D1 */	bl checkEquipAnime__9daAlink_cCFv
/* 800B9974  2C 03 00 00 */	cmpwi r3, 0
/* 800B9978  40 82 03 98 */	bne lbl_800B9D10
/* 800B997C  7F C3 F3 78 */	mr r3, r30
/* 800B9980  48 02 6B 2D */	bl checkBoomerangThrowAnime__9daAlink_cCFv
/* 800B9984  2C 03 00 00 */	cmpwi r3, 0
/* 800B9988  40 82 03 88 */	bne lbl_800B9D10
/* 800B998C  38 60 00 00 */	li r3, 0
/* 800B9990  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800B9994  28 00 00 46 */	cmplwi r0, 0x46
/* 800B9998  40 82 00 14 */	bne lbl_800B99AC
/* 800B999C  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800B99A0  28 00 00 53 */	cmplwi r0, 0x53
/* 800B99A4  40 82 00 08 */	bne lbl_800B99AC
/* 800B99A8  38 60 00 01 */	li r3, 1
lbl_800B99AC:
/* 800B99AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B99B0  40 82 03 60 */	bne lbl_800B9D10
/* 800B99B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B99B8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 800B99BC  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 800B99C0  28 00 00 FF */	cmplwi r0, 0xff
/* 800B99C4  41 82 00 88 */	beq lbl_800B9A4C
/* 800B99C8  48 00 6B CD */	bl checkNotBattleStage__9daAlink_cFv
/* 800B99CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B99D0  40 82 00 7C */	bne lbl_800B9A4C
/* 800B99D4  7F C3 F3 78 */	mr r3, r30
/* 800B99D8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800B99DC  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800B99E0  7D 89 03 A6 */	mtctr r12
/* 800B99E4  4E 80 04 21 */	bctrl 
/* 800B99E8  28 03 00 00 */	cmplwi r3, 0
/* 800B99EC  40 82 00 60 */	bne lbl_800B9A4C
/* 800B99F0  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800B99F4  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800B99F8  41 82 00 10 */	beq lbl_800B9A08
/* 800B99FC  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800B9A00  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B9A04  41 82 00 48 */	beq lbl_800B9A4C
lbl_800B9A08:
/* 800B9A08  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800B9A0C  28 00 01 03 */	cmplwi r0, 0x103
/* 800B9A10  41 82 00 3C */	beq lbl_800B9A4C
/* 800B9A14  7F C3 F3 78 */	mr r3, r30
/* 800B9A18  38 80 00 08 */	li r4, 8
/* 800B9A1C  4B FF 8B B1 */	bl itemTriggerCheck__9daAlink_cFUc
/* 800B9A20  2C 03 00 00 */	cmpwi r3, 0
/* 800B9A24  41 82 00 28 */	beq lbl_800B9A4C
/* 800B9A28  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 800B9A2C  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800B9A30  41 82 00 0C */	beq lbl_800B9A3C
/* 800B9A34  38 60 00 00 */	li r3, 0
/* 800B9A38  48 00 02 DC */	b lbl_800B9D14
lbl_800B9A3C:
/* 800B9A3C  7F C3 F3 78 */	mr r3, r30
/* 800B9A40  38 80 00 01 */	li r4, 1
/* 800B9A44  4B FF F9 B1 */	bl swordEquip__9daAlink_cFi
/* 800B9A48  48 00 02 C8 */	b lbl_800B9D10
lbl_800B9A4C:
/* 800B9A4C  7F C3 F3 78 */	mr r3, r30
/* 800B9A50  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800B9A54  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800B9A58  7D 89 03 A6 */	mtctr r12
/* 800B9A5C  4E 80 04 21 */	bctrl 
/* 800B9A60  28 03 00 00 */	cmplwi r3, 0
/* 800B9A64  41 82 00 58 */	beq lbl_800B9ABC
/* 800B9A68  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800B9A6C  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800B9A70  38 63 00 6F */	addi r3, r3, 0x6f
/* 800B9A74  4B FE 3F ED */	bl checkStageName__9daAlink_cFPCc
/* 800B9A78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B9A7C  40 82 00 40 */	bne lbl_800B9ABC
/* 800B9A80  88 1E 05 6A */	lbz r0, 0x56a(r30)
/* 800B9A84  28 00 00 2D */	cmplwi r0, 0x2d
/* 800B9A88  41 82 00 34 */	beq lbl_800B9ABC
/* 800B9A8C  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800B9A90  28 00 01 05 */	cmplwi r0, 0x105
/* 800B9A94  41 82 00 28 */	beq lbl_800B9ABC
/* 800B9A98  7F C3 F3 78 */	mr r3, r30
/* 800B9A9C  38 80 00 08 */	li r4, 8
/* 800B9AA0  4B FF 8B 2D */	bl itemTriggerCheck__9daAlink_cFUc
/* 800B9AA4  2C 03 00 00 */	cmpwi r3, 0
/* 800B9AA8  41 82 00 14 */	beq lbl_800B9ABC
/* 800B9AAC  7F C3 F3 78 */	mr r3, r30
/* 800B9AB0  38 80 01 05 */	li r4, 0x105
/* 800B9AB4  4B FF FB 8D */	bl itemEquip__9daAlink_cFUs
/* 800B9AB8  48 00 02 58 */	b lbl_800B9D10
lbl_800B9ABC:
/* 800B9ABC  3B 80 00 00 */	li r28, 0
/* 800B9AC0  3B A0 00 01 */	li r29, 1
/* 800B9AC4  48 00 00 4C */	b lbl_800B9B10
lbl_800B9AC8:
/* 800B9AC8  7F C3 F3 78 */	mr r3, r30
/* 800B9ACC  7F 84 E3 78 */	mr r4, r28
/* 800B9AD0  48 00 6F CD */	bl checkNewItemChange__9daAlink_cFUc
/* 800B9AD4  7C 7B 1B 79 */	or. r27, r3, r3
/* 800B9AD8  41 82 00 34 */	beq lbl_800B9B0C
/* 800B9ADC  7F C3 F3 78 */	mr r3, r30
/* 800B9AE0  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800B9AE4  7F A0 00 30 */	slw r0, r29, r0
/* 800B9AE8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800B9AEC  4B FF 8A E1 */	bl itemTriggerCheck__9daAlink_cFUc
/* 800B9AF0  2C 03 00 00 */	cmpwi r3, 0
/* 800B9AF4  41 82 00 18 */	beq lbl_800B9B0C
/* 800B9AF8  7F C3 F3 78 */	mr r3, r30
/* 800B9AFC  7F 84 E3 78 */	mr r4, r28
/* 800B9B00  7F 65 DB 78 */	mr r5, r27
/* 800B9B04  48 00 6C 79 */	bl changeItemTriggerKeepProc__9daAlink_cFUci
/* 800B9B08  48 00 02 0C */	b lbl_800B9D14
lbl_800B9B0C:
/* 800B9B0C  3B 9C 00 01 */	addi r28, r28, 1
lbl_800B9B10:
/* 800B9B10  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800B9B14  28 00 00 02 */	cmplwi r0, 2
/* 800B9B18  41 80 FF B0 */	blt lbl_800B9AC8
/* 800B9B1C  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800B9B20  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B9B24  41 82 00 84 */	beq lbl_800B9BA8
/* 800B9B28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B9B2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B9B30  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 800B9B34  28 00 00 04 */	cmplwi r0, 4
/* 800B9B38  40 82 00 70 */	bne lbl_800B9BA8
/* 800B9B3C  A0 7E 2F DC */	lhz r3, 0x2fdc(r30)
/* 800B9B40  28 03 00 48 */	cmplwi r3, 0x48
/* 800B9B44  41 82 00 1C */	beq lbl_800B9B60
/* 800B9B48  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800B9B4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800B9B50  41 82 00 10 */	beq lbl_800B9B60
/* 800B9B54  7F C3 F3 78 */	mr r3, r30
/* 800B9B58  48 05 6C E9 */	bl offKandelaarModel__9daAlink_cFv
/* 800B9B5C  48 00 01 B4 */	b lbl_800B9D10
lbl_800B9B60:
/* 800B9B60  A8 1E 30 F4 */	lha r0, 0x30f4(r30)
/* 800B9B64  2C 00 00 00 */	cmpwi r0, 0
/* 800B9B68  41 82 00 30 */	beq lbl_800B9B98
/* 800B9B6C  28 03 01 03 */	cmplwi r3, 0x103
/* 800B9B70  40 82 00 28 */	bne lbl_800B9B98
/* 800B9B74  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 800B9B78  28 00 00 3F */	cmplwi r0, 0x3f
/* 800B9B7C  41 82 00 1C */	beq lbl_800B9B98
/* 800B9B80  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800B9B84  70 00 04 02 */	andi. r0, r0, 0x402
/* 800B9B88  40 82 00 10 */	bne lbl_800B9B98
/* 800B9B8C  7F C3 F3 78 */	mr r3, r30
/* 800B9B90  48 01 CD FD */	bl procSwordUnequipSpInit__9daAlink_cFv
/* 800B9B94  48 00 01 80 */	b lbl_800B9D14
lbl_800B9B98:
/* 800B9B98  7F C3 F3 78 */	mr r3, r30
/* 800B9B9C  38 80 00 01 */	li r4, 1
/* 800B9BA0  4B FF FC 9D */	bl allUnequip__9daAlink_cFi
/* 800B9BA4  48 00 01 6C */	b lbl_800B9D10
lbl_800B9BA8:
/* 800B9BA8  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800B9BAC  28 00 00 FF */	cmplwi r0, 0xff
/* 800B9BB0  40 82 00 94 */	bne lbl_800B9C44
/* 800B9BB4  80 1E 28 38 */	lwz r0, 0x2838(r30)
/* 800B9BB8  28 00 00 00 */	cmplwi r0, 0
/* 800B9BBC  40 82 00 88 */	bne lbl_800B9C44
/* 800B9BC0  7F C3 F3 78 */	mr r3, r30
/* 800B9BC4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800B9BC8  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800B9BCC  7D 89 03 A6 */	mtctr r12
/* 800B9BD0  4E 80 04 21 */	bctrl 
/* 800B9BD4  28 03 00 00 */	cmplwi r3, 0
/* 800B9BD8  40 82 00 6C */	bne lbl_800B9C44
/* 800B9BDC  7F C3 F3 78 */	mr r3, r30
/* 800B9BE0  4B FF F6 75 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800B9BE4  2C 03 00 00 */	cmpwi r3, 0
/* 800B9BE8  41 82 00 5C */	beq lbl_800B9C44
/* 800B9BEC  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800B9BF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800B9BF4  41 82 00 50 */	beq lbl_800B9C44
/* 800B9BF8  3B A0 00 00 */	li r29, 0
/* 800B9BFC  48 00 00 20 */	b lbl_800B9C1C
lbl_800B9C00:
/* 800B9C00  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 800B9C04  4B F7 43 19 */	bl dComIfGp_getSelectItem__Fi
/* 800B9C08  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800B9C0C  28 00 00 48 */	cmplwi r0, 0x48
/* 800B9C10  40 82 00 08 */	bne lbl_800B9C18
/* 800B9C14  9B BE 2F 9C */	stb r29, 0x2f9c(r30)
lbl_800B9C18:
/* 800B9C18  3B BD 00 01 */	addi r29, r29, 1
lbl_800B9C1C:
/* 800B9C1C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800B9C20  28 00 00 02 */	cmplwi r0, 2
/* 800B9C24  41 80 FF DC */	blt lbl_800B9C00
/* 800B9C28  7F C3 F3 78 */	mr r3, r30
/* 800B9C2C  38 80 00 48 */	li r4, 0x48
/* 800B9C30  4B FF FA 11 */	bl itemEquip__9daAlink_cFUs
/* 800B9C34  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B9C38  60 00 00 40 */	ori r0, r0, 0x40
/* 800B9C3C  90 1E 05 74 */	stw r0, 0x574(r30)
/* 800B9C40  48 00 00 D0 */	b lbl_800B9D10
lbl_800B9C44:
/* 800B9C44  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800B9C48  28 00 01 03 */	cmplwi r0, 0x103
/* 800B9C4C  41 82 00 C4 */	beq lbl_800B9D10
/* 800B9C50  28 00 00 FF */	cmplwi r0, 0xff
/* 800B9C54  41 82 00 BC */	beq lbl_800B9D10
/* 800B9C58  28 00 01 0B */	cmplwi r0, 0x10b
/* 800B9C5C  41 82 00 B4 */	beq lbl_800B9D10
/* 800B9C60  28 00 01 02 */	cmplwi r0, 0x102
/* 800B9C64  41 82 00 AC */	beq lbl_800B9D10
/* 800B9C68  7F C3 F3 78 */	mr r3, r30
/* 800B9C6C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800B9C70  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800B9C74  7D 89 03 A6 */	mtctr r12
/* 800B9C78  4E 80 04 21 */	bctrl 
/* 800B9C7C  28 03 00 00 */	cmplwi r3, 0
/* 800B9C80  41 82 00 10 */	beq lbl_800B9C90
/* 800B9C84  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800B9C88  28 00 01 05 */	cmplwi r0, 0x105
/* 800B9C8C  41 82 00 84 */	beq lbl_800B9D10
lbl_800B9C90:
/* 800B9C90  7F C3 F3 78 */	mr r3, r30
/* 800B9C94  48 05 BF 8D */	bl checkEventRun__9daAlink_cCFv
/* 800B9C98  2C 03 00 00 */	cmpwi r3, 0
/* 800B9C9C  41 82 00 2C */	beq lbl_800B9CC8
/* 800B9CA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B9CA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B9CA8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800B9CAC  4B F8 E7 3D */	bl getRunEventName__16dEvent_manager_cFv
/* 800B9CB0  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha
/* 800B9CB4  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l
/* 800B9CB8  38 84 04 87 */	addi r4, r4, 0x487
/* 800B9CBC  48 2A EC D9 */	bl strcmp
/* 800B9CC0  2C 03 00 00 */	cmpwi r3, 0
/* 800B9CC4  41 82 00 4C */	beq lbl_800B9D10
lbl_800B9CC8:
/* 800B9CC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B9CCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B9CD0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800B9CD4  4B F8 E7 15 */	bl getRunEventName__16dEvent_manager_cFv
/* 800B9CD8  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha
/* 800B9CDC  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l
/* 800B9CE0  38 84 04 8D */	addi r4, r4, 0x48d
/* 800B9CE4  48 2A EC B1 */	bl strcmp
/* 800B9CE8  2C 03 00 00 */	cmpwi r3, 0
/* 800B9CEC  41 82 00 24 */	beq lbl_800B9D10
/* 800B9CF0  7F C3 F3 78 */	mr r3, r30
/* 800B9CF4  A0 9E 2F DC */	lhz r4, 0x2fdc(r30)
/* 800B9CF8  48 00 65 11 */	bl checkItemSetButton__9daAlink_cFi
/* 800B9CFC  2C 03 00 02 */	cmpwi r3, 2
/* 800B9D00  40 82 00 10 */	bne lbl_800B9D10
/* 800B9D04  7F C3 F3 78 */	mr r3, r30
/* 800B9D08  38 80 00 01 */	li r4, 1
/* 800B9D0C  4B FF FB 31 */	bl allUnequip__9daAlink_cFi
lbl_800B9D10:
/* 800B9D10  38 60 00 00 */	li r3, 0
lbl_800B9D14:
/* 800B9D14  39 61 00 20 */	addi r11, r1, 0x20
/* 800B9D18  48 2A 85 09 */	bl _restgpr_27
/* 800B9D1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B9D20  7C 08 03 A6 */	mtlr r0
/* 800B9D24  38 21 00 20 */	addi r1, r1, 0x20
/* 800B9D28  4E 80 00 20 */	blr 
