lbl_80A74C6C:
/* 80A74C6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A74C70  7C 08 02 A6 */	mflr r0
/* 80A74C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A74C78  39 61 00 20 */	addi r11, r1, 0x20
/* 80A74C7C  4B 8E D5 60 */	b _savegpr_29
/* 80A74C80  7C 7D 1B 78 */	mr r29, r3
/* 80A74C84  88 03 15 C4 */	lbz r0, 0x15c4(r3)
/* 80A74C88  2C 00 00 03 */	cmpwi r0, 3
/* 80A74C8C  41 82 00 50 */	beq lbl_80A74CDC
/* 80A74C90  40 80 00 1C */	bge lbl_80A74CAC
/* 80A74C94  2C 00 00 01 */	cmpwi r0, 1
/* 80A74C98  41 82 00 2C */	beq lbl_80A74CC4
/* 80A74C9C  40 80 00 30 */	bge lbl_80A74CCC
/* 80A74CA0  2C 00 00 00 */	cmpwi r0, 0
/* 80A74CA4  40 80 00 18 */	bge lbl_80A74CBC
/* 80A74CA8  48 00 00 C8 */	b lbl_80A74D70
lbl_80A74CAC:
/* 80A74CAC  2C 00 00 05 */	cmpwi r0, 5
/* 80A74CB0  41 82 00 90 */	beq lbl_80A74D40
/* 80A74CB4  40 80 00 BC */	bge lbl_80A74D70
/* 80A74CB8  48 00 00 2C */	b lbl_80A74CE4
lbl_80A74CBC:
/* 80A74CBC  38 60 00 00 */	li r3, 0
/* 80A74CC0  48 00 00 B4 */	b lbl_80A74D74
lbl_80A74CC4:
/* 80A74CC4  38 60 00 00 */	li r3, 0
/* 80A74CC8  48 00 00 AC */	b lbl_80A74D74
lbl_80A74CCC:
/* 80A74CCC  48 00 19 D5 */	bl chkPlayerGetWoodShield__11daNpc_Moi_cFv
/* 80A74CD0  7C 60 00 34 */	cntlzw r0, r3
/* 80A74CD4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A74CD8  48 00 00 9C */	b lbl_80A74D74
lbl_80A74CDC:
/* 80A74CDC  38 60 00 00 */	li r3, 0
/* 80A74CE0  48 00 00 94 */	b lbl_80A74D74
lbl_80A74CE4:
/* 80A74CE4  3B E0 00 01 */	li r31, 1
/* 80A74CE8  38 60 02 58 */	li r3, 0x258
/* 80A74CEC  4B 6D 7D C0 */	b daNpcT_chkEvtBit__FUl
/* 80A74CF0  2C 03 00 00 */	cmpwi r3, 0
/* 80A74CF4  41 82 00 44 */	beq lbl_80A74D38
/* 80A74CF8  3B C0 00 00 */	li r30, 0
/* 80A74CFC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80A74D00  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A74D04  28 04 00 FF */	cmplwi r4, 0xff
/* 80A74D08  41 82 00 24 */	beq lbl_80A74D2C
/* 80A74D0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A74D10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A74D14  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A74D18  7C 05 07 74 */	extsb r5, r0
/* 80A74D1C  4B 5C 06 44 */	b isSwitch__10dSv_info_cCFii
/* 80A74D20  2C 03 00 00 */	cmpwi r3, 0
/* 80A74D24  41 82 00 08 */	beq lbl_80A74D2C
/* 80A74D28  3B C0 00 01 */	li r30, 1
lbl_80A74D2C:
/* 80A74D2C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80A74D30  40 82 00 08 */	bne lbl_80A74D38
/* 80A74D34  3B E0 00 00 */	li r31, 0
lbl_80A74D38:
/* 80A74D38  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A74D3C  48 00 00 38 */	b lbl_80A74D74
lbl_80A74D40:
/* 80A74D40  3B E0 00 00 */	li r31, 0
/* 80A74D44  38 60 02 71 */	li r3, 0x271
/* 80A74D48  4B 6D 7D 64 */	b daNpcT_chkEvtBit__FUl
/* 80A74D4C  2C 03 00 00 */	cmpwi r3, 0
/* 80A74D50  41 82 00 14 */	beq lbl_80A74D64
/* 80A74D54  38 60 00 B8 */	li r3, 0xb8
/* 80A74D58  4B 6D 7D 54 */	b daNpcT_chkEvtBit__FUl
/* 80A74D5C  2C 03 00 00 */	cmpwi r3, 0
/* 80A74D60  41 82 00 08 */	beq lbl_80A74D68
lbl_80A74D64:
/* 80A74D64  3B E0 00 01 */	li r31, 1
lbl_80A74D68:
/* 80A74D68  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A74D6C  48 00 00 08 */	b lbl_80A74D74
lbl_80A74D70:
/* 80A74D70  38 60 00 00 */	li r3, 0
lbl_80A74D74:
/* 80A74D74  39 61 00 20 */	addi r11, r1, 0x20
/* 80A74D78  4B 8E D4 B0 */	b _restgpr_29
/* 80A74D7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A74D80  7C 08 03 A6 */	mtlr r0
/* 80A74D84  38 21 00 20 */	addi r1, r1, 0x20
/* 80A74D88  4E 80 00 20 */	blr 
