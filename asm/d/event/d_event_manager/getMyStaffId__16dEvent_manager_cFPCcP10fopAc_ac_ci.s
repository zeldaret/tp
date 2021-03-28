lbl_80047B1C:
/* 80047B1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80047B20  7C 08 02 A6 */	mflr r0
/* 80047B24  90 01 00 54 */	stw r0, 0x54(r1)
/* 80047B28  39 61 00 50 */	addi r11, r1, 0x50
/* 80047B2C  48 31 A6 8D */	bl _savegpr_20
/* 80047B30  7C 75 1B 78 */	mr r21, r3
/* 80047B34  7C 96 23 78 */	mr r22, r4
/* 80047B38  7C D7 33 78 */	mr r23, r6
/* 80047B3C  3B 40 FF FF */	li r26, -1
/* 80047B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80047B44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80047B48  88 03 4F AC */	lbz r0, 0x4fac(r3)
/* 80047B4C  28 00 00 00 */	cmplwi r0, 0
/* 80047B50  40 82 00 0C */	bne lbl_80047B5C
/* 80047B54  38 60 FF FF */	li r3, -1
/* 80047B58  48 00 01 DC */	b lbl_80047D34
lbl_80047B5C:
/* 80047B5C  28 05 00 00 */	cmplwi r5, 0
/* 80047B60  41 82 00 10 */	beq lbl_80047B70
/* 80047B64  88 05 00 FF */	lbz r0, 0xff(r5)
/* 80047B68  7C 00 07 74 */	extsb r0, r0
/* 80047B6C  7C 1A 03 78 */	mr r26, r0
lbl_80047B70:
/* 80047B70  A8 95 01 AA */	lha r4, 0x1aa(r21)
/* 80047B74  2C 04 FF FF */	cmpwi r4, -1
/* 80047B78  40 82 00 0C */	bne lbl_80047B84
/* 80047B7C  38 60 FF FF */	li r3, -1
/* 80047B80  48 00 01 B4 */	b lbl_80047D34
lbl_80047B84:
/* 80047B84  7E A3 AB 78 */	mr r3, r21
/* 80047B88  4B FF F9 35 */	bl getEventData__16dEvent_manager_cFs
/* 80047B8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80047B90  41 82 01 A0 */	beq lbl_80047D30
/* 80047B94  80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 80047B98  2C 00 00 01 */	cmpwi r0, 1
/* 80047B9C  41 82 00 0C */	beq lbl_80047BA8
/* 80047BA0  2C 00 00 02 */	cmpwi r0, 2
/* 80047BA4  40 82 01 8C */	bne lbl_80047D30
lbl_80047BA8:
/* 80047BA8  83 DF 00 7C */	lwz r30, 0x7c(r31)
/* 80047BAC  3B 20 00 00 */	li r25, 0
/* 80047BB0  7E C3 B3 78 */	mr r3, r22
/* 80047BB4  38 80 00 3A */	li r4, 0x3a
/* 80047BB8  48 32 0D 6D */	bl strchr
/* 80047BBC  28 03 00 00 */	cmplwi r3, 0
/* 80047BC0  41 82 00 08 */	beq lbl_80047BC8
/* 80047BC4  3B 20 00 01 */	li r25, 1
lbl_80047BC8:
/* 80047BC8  3B 60 00 00 */	li r27, 0
/* 80047BCC  3A 80 00 00 */	li r20, 0
/* 80047BD0  48 00 01 58 */	b lbl_80047D28
lbl_80047BD4:
/* 80047BD4  38 14 00 2C */	addi r0, r20, 0x2c
/* 80047BD8  7F BF 00 2E */	lwzx r29, r31, r0
/* 80047BDC  80 15 01 B4 */	lwz r0, 0x1b4(r21)
/* 80047BE0  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80047BE4  7C 75 02 14 */	add r3, r21, r0
/* 80047BE8  80 63 00 08 */	lwz r3, 8(r3)
/* 80047BEC  1C 1D 00 50 */	mulli r0, r29, 0x50
/* 80047BF0  7F 83 02 14 */	add r28, r3, r0
/* 80047BF4  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 80047BF8  2C 00 00 01 */	cmpwi r0, 1
/* 80047BFC  41 82 01 24 */	beq lbl_80047D20
/* 80047C00  38 61 00 08 */	addi r3, r1, 8
/* 80047C04  7F 84 E3 78 */	mr r4, r28
/* 80047C08  48 32 0F 25 */	bl strcpy
/* 80047C0C  3B 00 00 00 */	li r24, 0
/* 80047C10  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80047C14  40 82 00 28 */	bne lbl_80047C3C
/* 80047C18  38 61 00 08 */	addi r3, r1, 8
/* 80047C1C  38 80 00 3A */	li r4, 0x3a
/* 80047C20  48 32 0D 05 */	bl strchr
/* 80047C24  7C 78 1B 78 */	mr r24, r3
/* 80047C28  28 03 00 00 */	cmplwi r3, 0
/* 80047C2C  41 82 00 10 */	beq lbl_80047C3C
/* 80047C30  38 00 00 00 */	li r0, 0
/* 80047C34  98 03 00 00 */	stb r0, 0(r3)
/* 80047C38  3B 18 00 01 */	addi r24, r24, 1
lbl_80047C3C:
/* 80047C3C  7E C3 B3 78 */	mr r3, r22
/* 80047C40  38 81 00 08 */	addi r4, r1, 8
/* 80047C44  48 32 0D 51 */	bl strcmp
/* 80047C48  2C 03 00 00 */	cmpwi r3, 0
/* 80047C4C  40 82 00 88 */	bne lbl_80047CD4
/* 80047C50  2C 17 00 00 */	cmpwi r23, 0
/* 80047C54  41 80 00 10 */	blt lbl_80047C64
/* 80047C58  80 1C 00 20 */	lwz r0, 0x20(r28)
/* 80047C5C  7C 17 00 00 */	cmpw r23, r0
/* 80047C60  40 82 00 74 */	bne lbl_80047CD4
lbl_80047C64:
/* 80047C64  38 80 00 00 */	li r4, 0
/* 80047C68  28 18 00 00 */	cmplwi r24, 0
/* 80047C6C  41 82 00 60 */	beq lbl_80047CCC
/* 80047C70  48 00 00 34 */	b lbl_80047CA4
lbl_80047C74:
/* 80047C74  7C 63 07 74 */	extsb r3, r3
/* 80047C78  2C 03 00 30 */	cmpwi r3, 0x30
/* 80047C7C  41 80 00 0C */	blt lbl_80047C88
/* 80047C80  2C 03 00 39 */	cmpwi r3, 0x39
/* 80047C84  40 81 00 0C */	ble lbl_80047C90
lbl_80047C88:
/* 80047C88  38 80 00 00 */	li r4, 0
/* 80047C8C  48 00 00 24 */	b lbl_80047CB0
lbl_80047C90:
/* 80047C90  1C 04 00 0A */	mulli r0, r4, 0xa
/* 80047C94  7C 63 02 14 */	add r3, r3, r0
/* 80047C98  38 03 FF D0 */	addi r0, r3, -48
/* 80047C9C  7C 04 07 34 */	extsh r4, r0
/* 80047CA0  3B 18 00 01 */	addi r24, r24, 1
lbl_80047CA4:
/* 80047CA4  88 78 00 00 */	lbz r3, 0(r24)
/* 80047CA8  7C 60 07 75 */	extsb. r0, r3
/* 80047CAC  40 82 FF C8 */	bne lbl_80047C74
lbl_80047CB0:
/* 80047CB0  2C 1A 00 00 */	cmpwi r26, 0
/* 80047CB4  41 80 00 10 */	blt lbl_80047CC4
/* 80047CB8  7C 80 07 34 */	extsh r0, r4
/* 80047CBC  7C 00 D0 00 */	cmpw r0, r26
/* 80047CC0  40 82 00 14 */	bne lbl_80047CD4
lbl_80047CC4:
/* 80047CC4  7F A3 EB 78 */	mr r3, r29
/* 80047CC8  48 00 00 6C */	b lbl_80047D34
lbl_80047CCC:
/* 80047CCC  7F A3 EB 78 */	mr r3, r29
/* 80047CD0  48 00 00 64 */	b lbl_80047D34
lbl_80047CD4:
/* 80047CD4  7E C3 B3 78 */	mr r3, r22
/* 80047CD8  3C 80 80 38 */	lis r4, d_event_d_event_manager__stringBase0@ha
/* 80047CDC  38 84 9F 60 */	addi r4, r4, d_event_d_event_manager__stringBase0@l
/* 80047CE0  38 84 01 5F */	addi r4, r4, 0x15f
/* 80047CE4  48 32 0C B1 */	bl strcmp
/* 80047CE8  2C 03 00 00 */	cmpwi r3, 0
/* 80047CEC  40 82 00 34 */	bne lbl_80047D20
/* 80047CF0  3C 60 80 38 */	lis r3, d_event_d_event_manager__stringBase0@ha
/* 80047CF4  38 63 9F 60 */	addi r3, r3, d_event_d_event_manager__stringBase0@l
/* 80047CF8  38 63 01 65 */	addi r3, r3, 0x165
/* 80047CFC  38 81 00 08 */	addi r4, r1, 8
/* 80047D00  48 32 0C 95 */	bl strcmp
/* 80047D04  2C 03 00 00 */	cmpwi r3, 0
/* 80047D08  40 82 00 18 */	bne lbl_80047D20
/* 80047D0C  80 1C 00 20 */	lwz r0, 0x20(r28)
/* 80047D10  7C 17 00 00 */	cmpw r23, r0
/* 80047D14  40 82 00 0C */	bne lbl_80047D20
/* 80047D18  7F A3 EB 78 */	mr r3, r29
/* 80047D1C  48 00 00 18 */	b lbl_80047D34
lbl_80047D20:
/* 80047D20  3B 7B 00 01 */	addi r27, r27, 1
/* 80047D24  3A 94 00 04 */	addi r20, r20, 4
lbl_80047D28:
/* 80047D28  7C 1B F0 00 */	cmpw r27, r30
/* 80047D2C  41 80 FE A8 */	blt lbl_80047BD4
lbl_80047D30:
/* 80047D30  38 60 FF FF */	li r3, -1
lbl_80047D34:
/* 80047D34  39 61 00 50 */	addi r11, r1, 0x50
/* 80047D38  48 31 A4 CD */	bl _restgpr_20
/* 80047D3C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80047D40  7C 08 03 A6 */	mtlr r0
/* 80047D44  38 21 00 50 */	addi r1, r1, 0x50
/* 80047D48  4E 80 00 20 */	blr 
