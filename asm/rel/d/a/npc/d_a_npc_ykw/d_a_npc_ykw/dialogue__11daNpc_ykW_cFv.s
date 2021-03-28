lbl_80B6491C:
/* 80B6491C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B64920  7C 08 02 A6 */	mflr r0
/* 80B64924  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B64928  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6492C  7C 7F 1B 78 */	mr r31, r3
/* 80B64930  80 03 10 20 */	lwz r0, 0x1020(r3)
/* 80B64934  2C 00 00 00 */	cmpwi r0, 0
/* 80B64938  41 82 00 54 */	beq lbl_80B6498C
/* 80B6493C  80 7F 0B 7C */	lwz r3, 0xb7c(r31)
/* 80B64940  2C 03 00 1F */	cmpwi r3, 0x1f
/* 80B64944  40 82 00 10 */	bne lbl_80B64954
/* 80B64948  80 1F 0B 84 */	lwz r0, 0xb84(r31)
/* 80B6494C  2C 00 00 01 */	cmpwi r0, 1
/* 80B64950  41 81 00 18 */	bgt lbl_80B64968
lbl_80B64954:
/* 80B64954  2C 03 00 1F */	cmpwi r3, 0x1f
/* 80B64958  41 82 00 38 */	beq lbl_80B64990
/* 80B6495C  80 1F 0B 84 */	lwz r0, 0xb84(r31)
/* 80B64960  2C 00 00 00 */	cmpwi r0, 0
/* 80B64964  40 81 00 2C */	ble lbl_80B64990
lbl_80B64968:
/* 80B64968  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B6496C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B64970  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80B64974  38 80 0E 80 */	li r4, 0xe80
/* 80B64978  4B 4D 00 2C */	b offEventBit__11dSv_event_cFUs
/* 80B6497C  38 00 00 00 */	li r0, 0
/* 80B64980  90 1F 10 20 */	stw r0, 0x1020(r31)
/* 80B64984  38 60 00 01 */	li r3, 1
/* 80B64988  48 00 00 0C */	b lbl_80B64994
lbl_80B6498C:
/* 80B6498C  4B FF FE 59 */	bl setDialogueMotion__11daNpc_ykW_cFv
lbl_80B64990:
/* 80B64990  38 60 00 00 */	li r3, 0
lbl_80B64994:
/* 80B64994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B64998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6499C  7C 08 03 A6 */	mtlr r0
/* 80B649A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B649A4  4E 80 00 20 */	blr 
