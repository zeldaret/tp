lbl_809A7ABC:
/* 809A7ABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809A7AC0  7C 08 02 A6 */	mflr r0
/* 809A7AC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809A7AC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809A7ACC  7C 7F 1B 78 */	mr r31, r3
/* 809A7AD0  3C 80 80 9B */	lis r4, lit_4547@ha /* 0x809AA8B4@ha */
/* 809A7AD4  38 A4 A8 B4 */	addi r5, r4, lit_4547@l /* 0x809AA8B4@l */
/* 809A7AD8  80 85 00 00 */	lwz r4, 0(r5)
/* 809A7ADC  80 05 00 04 */	lwz r0, 4(r5)
/* 809A7AE0  90 81 00 08 */	stw r4, 8(r1)
/* 809A7AE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 809A7AE8  80 05 00 08 */	lwz r0, 8(r5)
/* 809A7AEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 809A7AF0  38 81 00 08 */	addi r4, r1, 8
/* 809A7AF4  48 00 0B 2D */	bl chkAction__11daNpc_Doc_cFM11daNpc_Doc_cFPCvPvPv_i
/* 809A7AF8  2C 03 00 00 */	cmpwi r3, 0
/* 809A7AFC  40 82 00 B0 */	bne lbl_809A7BAC
/* 809A7B00  38 00 00 00 */	li r0, 0
/* 809A7B04  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 809A7B08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A7B0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A7B10  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 809A7B14  28 04 00 01 */	cmplwi r4, 1
/* 809A7B18  41 82 00 0C */	beq lbl_809A7B24
/* 809A7B1C  28 04 00 02 */	cmplwi r4, 2
/* 809A7B20  40 82 00 08 */	bne lbl_809A7B28
lbl_809A7B24:
/* 809A7B24  38 00 00 01 */	li r0, 1
lbl_809A7B28:
/* 809A7B28  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809A7B2C  41 82 00 80 */	beq lbl_809A7BAC
/* 809A7B30  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 809A7B34  4B 6A 0C BD */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 809A7B38  2C 03 00 00 */	cmpwi r3, 0
/* 809A7B3C  41 82 00 68 */	beq lbl_809A7BA4
/* 809A7B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A7B44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A7B48  88 03 4F B6 */	lbz r0, 0x4fb6(r3)
/* 809A7B4C  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 809A7B50  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 809A7B54  28 00 00 01 */	cmplwi r0, 1
/* 809A7B58  40 82 00 3C */	bne lbl_809A7B94
/* 809A7B5C  88 1F 0E 2E */	lbz r0, 0xe2e(r31)
/* 809A7B60  28 00 00 82 */	cmplwi r0, 0x82
/* 809A7B64  40 82 00 0C */	bne lbl_809A7B70
/* 809A7B68  38 60 00 00 */	li r3, 0
/* 809A7B6C  48 00 00 44 */	b lbl_809A7BB0
lbl_809A7B70:
/* 809A7B70  38 60 01 41 */	li r3, 0x141
/* 809A7B74  4B 7A 4F 39 */	bl daNpcT_chkEvtBit__FUl
/* 809A7B78  2C 03 00 00 */	cmpwi r3, 0
/* 809A7B7C  40 82 00 18 */	bne lbl_809A7B94
/* 809A7B80  88 1F 0E 2E */	lbz r0, 0xe2e(r31)
/* 809A7B84  28 00 00 81 */	cmplwi r0, 0x81
/* 809A7B88  40 82 00 0C */	bne lbl_809A7B94
/* 809A7B8C  38 60 00 00 */	li r3, 0
/* 809A7B90  48 00 00 20 */	b lbl_809A7BB0
lbl_809A7B94:
/* 809A7B94  38 00 00 01 */	li r0, 1
/* 809A7B98  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 809A7B9C  7F E3 FB 78 */	mr r3, r31
/* 809A7BA0  4B 7A 26 85 */	bl evtChange__8daNpcT_cFv
lbl_809A7BA4:
/* 809A7BA4  38 60 00 01 */	li r3, 1
/* 809A7BA8  48 00 00 08 */	b lbl_809A7BB0
lbl_809A7BAC:
/* 809A7BAC  38 60 00 00 */	li r3, 0
lbl_809A7BB0:
/* 809A7BB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809A7BB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A7BB8  7C 08 03 A6 */	mtlr r0
/* 809A7BBC  38 21 00 20 */	addi r1, r1, 0x20
/* 809A7BC0  4E 80 00 20 */	blr 
