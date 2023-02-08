lbl_80CD8AF8:
/* 80CD8AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD8AFC  7C 08 02 A6 */	mflr r0
/* 80CD8B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD8B04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD8B08  7C 7F 1B 78 */	mr r31, r3
/* 80CD8B0C  88 83 05 BB */	lbz r4, 0x5bb(r3)
/* 80CD8B10  28 04 00 FF */	cmplwi r4, 0xff
/* 80CD8B14  41 82 00 48 */	beq lbl_80CD8B5C
/* 80CD8B18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD8B1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD8B20  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CD8B24  7C 05 07 74 */	extsb r5, r0
/* 80CD8B28  4B 35 C8 39 */	bl isSwitch__10dSv_info_cCFii
/* 80CD8B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80CD8B30  41 82 00 2C */	beq lbl_80CD8B5C
/* 80CD8B34  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 80CD8B38  28 00 00 00 */	cmplwi r0, 0
/* 80CD8B3C  40 82 00 20 */	bne lbl_80CD8B5C
/* 80CD8B40  7F E3 FB 78 */	mr r3, r31
/* 80CD8B44  4B FF FE FD */	bl SetDzb__14daObjSM_DOOR_cFv
/* 80CD8B48  2C 03 00 00 */	cmpwi r3, 0
/* 80CD8B4C  41 82 00 5C */	beq lbl_80CD8BA8
/* 80CD8B50  38 00 00 01 */	li r0, 1
/* 80CD8B54  98 1F 05 BC */	stb r0, 0x5bc(r31)
/* 80CD8B58  48 00 00 50 */	b lbl_80CD8BA8
lbl_80CD8B5C:
/* 80CD8B5C  88 9F 05 BB */	lbz r4, 0x5bb(r31)
/* 80CD8B60  28 04 00 FF */	cmplwi r4, 0xff
/* 80CD8B64  41 82 00 44 */	beq lbl_80CD8BA8
/* 80CD8B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD8B6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD8B70  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CD8B74  7C 05 07 74 */	extsb r5, r0
/* 80CD8B78  4B 35 C7 E9 */	bl isSwitch__10dSv_info_cCFii
/* 80CD8B7C  2C 03 00 00 */	cmpwi r3, 0
/* 80CD8B80  40 82 00 28 */	bne lbl_80CD8BA8
/* 80CD8B84  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 80CD8B88  28 00 00 01 */	cmplwi r0, 1
/* 80CD8B8C  40 82 00 1C */	bne lbl_80CD8BA8
/* 80CD8B90  7F E3 FB 78 */	mr r3, r31
/* 80CD8B94  4B FF FE FD */	bl ReleaceDzb__14daObjSM_DOOR_cFv
/* 80CD8B98  2C 03 00 00 */	cmpwi r3, 0
/* 80CD8B9C  41 82 00 0C */	beq lbl_80CD8BA8
/* 80CD8BA0  38 00 00 00 */	li r0, 0
/* 80CD8BA4  98 1F 05 BC */	stb r0, 0x5bc(r31)
lbl_80CD8BA8:
/* 80CD8BA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD8BAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD8BB0  7C 08 03 A6 */	mtlr r0
/* 80CD8BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD8BB8  4E 80 00 20 */	blr 
