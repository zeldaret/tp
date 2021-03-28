lbl_80AD6ABC:
/* 80AD6ABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD6AC0  7C 08 02 A6 */	mflr r0
/* 80AD6AC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD6AC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD6ACC  4B 88 B7 04 */	b _savegpr_26
/* 80AD6AD0  7C 7F 1B 78 */	mr r31, r3
/* 80AD6AD4  7C 9A 23 78 */	mr r26, r4
/* 80AD6AD8  3B A0 00 00 */	li r29, 0
/* 80AD6ADC  3B 80 FF FF */	li r28, -1
/* 80AD6AE0  3B 60 00 00 */	li r27, 0
/* 80AD6AE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AD6AE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AD6AEC  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80AD6AF0  7F C3 F3 78 */	mr r3, r30
/* 80AD6AF4  3C A0 80 AD */	lis r5, struct_80AD7D88+0x0@ha
/* 80AD6AF8  38 A5 7D 88 */	addi r5, r5, struct_80AD7D88+0x0@l
/* 80AD6AFC  38 A5 00 4F */	addi r5, r5, 0x4f
/* 80AD6B00  38 C0 00 03 */	li r6, 3
/* 80AD6B04  4B 57 15 E8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AD6B08  28 03 00 00 */	cmplwi r3, 0
/* 80AD6B0C  41 82 00 08 */	beq lbl_80AD6B14
/* 80AD6B10  83 83 00 00 */	lwz r28, 0(r3)
lbl_80AD6B14:
/* 80AD6B14  7F C3 F3 78 */	mr r3, r30
/* 80AD6B18  7F 44 D3 78 */	mr r4, r26
/* 80AD6B1C  3C A0 80 AD */	lis r5, struct_80AD7D88+0x0@ha
/* 80AD6B20  38 A5 7D 88 */	addi r5, r5, struct_80AD7D88+0x0@l
/* 80AD6B24  38 A5 00 53 */	addi r5, r5, 0x53
/* 80AD6B28  38 C0 00 03 */	li r6, 3
/* 80AD6B2C  4B 57 15 C0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AD6B30  28 03 00 00 */	cmplwi r3, 0
/* 80AD6B34  41 82 00 08 */	beq lbl_80AD6B3C
/* 80AD6B38  83 63 00 00 */	lwz r27, 0(r3)
lbl_80AD6B3C:
/* 80AD6B3C  7F C3 F3 78 */	mr r3, r30
/* 80AD6B40  7F 44 D3 78 */	mr r4, r26
/* 80AD6B44  4B 57 12 08 */	b getIsAddvance__16dEvent_manager_cFi
/* 80AD6B48  2C 03 00 00 */	cmpwi r3, 0
/* 80AD6B4C  41 82 00 4C */	beq lbl_80AD6B98
/* 80AD6B50  2C 1C 00 01 */	cmpwi r28, 1
/* 80AD6B54  41 82 00 34 */	beq lbl_80AD6B88
/* 80AD6B58  40 80 00 40 */	bge lbl_80AD6B98
/* 80AD6B5C  2C 1C 00 00 */	cmpwi r28, 0
/* 80AD6B60  40 80 00 08 */	bge lbl_80AD6B68
/* 80AD6B64  48 00 00 34 */	b lbl_80AD6B98
lbl_80AD6B68:
/* 80AD6B68  38 60 00 0B */	li r3, 0xb
/* 80AD6B6C  4B 67 5F 80 */	b daNpcT_onTmpBit__FUl
/* 80AD6B70  38 00 00 03 */	li r0, 3
/* 80AD6B74  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80AD6B78  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80AD6B7C  98 03 00 C1 */	stb r0, 0xc1(r3)
/* 80AD6B80  93 7F 0D C4 */	stw r27, 0xdc4(r31)
/* 80AD6B84  48 00 00 14 */	b lbl_80AD6B98
lbl_80AD6B88:
/* 80AD6B88  7F E3 FB 78 */	mr r3, r31
/* 80AD6B8C  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80AD6B90  38 A0 00 00 */	li r5, 0
/* 80AD6B94  4B 67 50 5C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80AD6B98:
/* 80AD6B98  2C 1C 00 01 */	cmpwi r28, 1
/* 80AD6B9C  41 82 00 68 */	beq lbl_80AD6C04
/* 80AD6BA0  40 80 00 9C */	bge lbl_80AD6C3C
/* 80AD6BA4  2C 1C 00 00 */	cmpwi r28, 0
/* 80AD6BA8  40 80 00 08 */	bge lbl_80AD6BB0
/* 80AD6BAC  48 00 00 90 */	b lbl_80AD6C3C
lbl_80AD6BB0:
/* 80AD6BB0  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80AD6BB4  2C 00 00 00 */	cmpwi r0, 0
/* 80AD6BB8  41 82 00 20 */	beq lbl_80AD6BD8
/* 80AD6BBC  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80AD6BC0  48 00 0F 95 */	bl func_80AD7B54
/* 80AD6BC4  2C 03 00 00 */	cmpwi r3, 0
/* 80AD6BC8  40 82 00 2C */	bne lbl_80AD6BF4
/* 80AD6BCC  38 00 00 00 */	li r0, 0
/* 80AD6BD0  98 1F 0E 80 */	stb r0, 0xe80(r31)
/* 80AD6BD4  48 00 00 20 */	b lbl_80AD6BF4
lbl_80AD6BD8:
/* 80AD6BD8  7F C3 F3 78 */	mr r3, r30
/* 80AD6BDC  7F 44 D3 78 */	mr r4, r26
/* 80AD6BE0  4B 57 11 6C */	b getIsAddvance__16dEvent_manager_cFi
/* 80AD6BE4  2C 03 00 00 */	cmpwi r3, 0
/* 80AD6BE8  41 82 00 0C */	beq lbl_80AD6BF4
/* 80AD6BEC  38 00 00 00 */	li r0, 0
/* 80AD6BF0  98 1F 0E 80 */	stb r0, 0xe80(r31)
lbl_80AD6BF4:
/* 80AD6BF4  88 1F 0E 80 */	lbz r0, 0xe80(r31)
/* 80AD6BF8  7C 00 00 34 */	cntlzw r0, r0
/* 80AD6BFC  54 1D DE 3E */	rlwinm r29, r0, 0x1b, 0x18, 0x1f
/* 80AD6C00  48 00 00 3C */	b lbl_80AD6C3C
lbl_80AD6C04:
/* 80AD6C04  38 00 00 00 */	li r0, 0
/* 80AD6C08  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AD6C0C  7F E3 FB 78 */	mr r3, r31
/* 80AD6C10  38 80 00 00 */	li r4, 0
/* 80AD6C14  38 A0 00 00 */	li r5, 0
/* 80AD6C18  38 C0 00 00 */	li r6, 0
/* 80AD6C1C  38 E0 00 00 */	li r7, 0
/* 80AD6C20  4B 67 50 58 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AD6C24  2C 03 00 00 */	cmpwi r3, 0
/* 80AD6C28  41 82 00 14 */	beq lbl_80AD6C3C
/* 80AD6C2C  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80AD6C30  28 00 00 01 */	cmplwi r0, 1
/* 80AD6C34  40 82 00 08 */	bne lbl_80AD6C3C
/* 80AD6C38  3B A0 00 01 */	li r29, 1
lbl_80AD6C3C:
/* 80AD6C3C  7F A3 EB 78 */	mr r3, r29
/* 80AD6C40  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD6C44  4B 88 B5 D8 */	b _restgpr_26
/* 80AD6C48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD6C4C  7C 08 03 A6 */	mtlr r0
/* 80AD6C50  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD6C54  4E 80 00 20 */	blr 
