lbl_80A71AFC:
/* 80A71AFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A71B00  7C 08 02 A6 */	mflr r0
/* 80A71B04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A71B08  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A71B0C  7C 7F 1B 78 */	mr r31, r3
/* 80A71B10  3C 80 80 A7 */	lis r4, lit_4604@ha
/* 80A71B14  38 A4 3B 68 */	addi r5, r4, lit_4604@l
/* 80A71B18  80 85 00 00 */	lwz r4, 0(r5)
/* 80A71B1C  80 05 00 04 */	lwz r0, 4(r5)
/* 80A71B20  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A71B24  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A71B28  80 05 00 08 */	lwz r0, 8(r5)
/* 80A71B2C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A71B30  38 81 00 14 */	addi r4, r1, 0x14
/* 80A71B34  48 00 06 F5 */	bl chkAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i
/* 80A71B38  2C 03 00 00 */	cmpwi r3, 0
/* 80A71B3C  41 82 00 1C */	beq lbl_80A71B58
/* 80A71B40  7F E3 FB 78 */	mr r3, r31
/* 80A71B44  38 80 00 00 */	li r4, 0
/* 80A71B48  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80A71B4C  4B 8F 05 38 */	b __ptmf_scall
/* 80A71B50  60 00 00 00 */	nop 
/* 80A71B54  48 00 00 90 */	b lbl_80A71BE4
lbl_80A71B58:
/* 80A71B58  38 00 00 00 */	li r0, 0
/* 80A71B5C  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80A71B60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A71B64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A71B68  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A71B6C  28 04 00 01 */	cmplwi r4, 1
/* 80A71B70  41 82 00 0C */	beq lbl_80A71B7C
/* 80A71B74  28 04 00 02 */	cmplwi r4, 2
/* 80A71B78  40 82 00 08 */	bne lbl_80A71B80
lbl_80A71B7C:
/* 80A71B7C  38 00 00 01 */	li r0, 1
lbl_80A71B80:
/* 80A71B80  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A71B84  41 82 00 34 */	beq lbl_80A71BB8
/* 80A71B88  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A71B8C  4B 5D 6C 64 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80A71B90  2C 03 00 00 */	cmpwi r3, 0
/* 80A71B94  40 82 00 0C */	bne lbl_80A71BA0
/* 80A71B98  38 60 00 01 */	li r3, 1
/* 80A71B9C  48 00 00 4C */	b lbl_80A71BE8
lbl_80A71BA0:
/* 80A71BA0  38 00 00 01 */	li r0, 1
/* 80A71BA4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A71BA8  7F E3 FB 78 */	mr r3, r31
/* 80A71BAC  4B 6D 86 78 */	b evtChange__8daNpcT_cFv
/* 80A71BB0  38 60 00 01 */	li r3, 1
/* 80A71BB4  48 00 00 34 */	b lbl_80A71BE8
lbl_80A71BB8:
/* 80A71BB8  3C 60 80 A7 */	lis r3, lit_4614@ha
/* 80A71BBC  38 83 3B 74 */	addi r4, r3, lit_4614@l
/* 80A71BC0  80 64 00 00 */	lwz r3, 0(r4)
/* 80A71BC4  80 04 00 04 */	lwz r0, 4(r4)
/* 80A71BC8  90 61 00 08 */	stw r3, 8(r1)
/* 80A71BCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A71BD0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A71BD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A71BD8  7F E3 FB 78 */	mr r3, r31
/* 80A71BDC  38 81 00 08 */	addi r4, r1, 8
/* 80A71BE0  48 00 06 75 */	bl setAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i
lbl_80A71BE4:
/* 80A71BE4  38 60 00 01 */	li r3, 1
lbl_80A71BE8:
/* 80A71BE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A71BEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A71BF0  7C 08 03 A6 */	mtlr r0
/* 80A71BF4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A71BF8  4E 80 00 20 */	blr 
