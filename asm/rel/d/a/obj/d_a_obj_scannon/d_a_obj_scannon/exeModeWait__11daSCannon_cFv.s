lbl_80CC7AB8:
/* 80CC7AB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CC7ABC  7C 08 02 A6 */	mflr r0
/* 80CC7AC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CC7AC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80CC7AC8  4B 69 A7 11 */	bl _savegpr_28
/* 80CC7ACC  7C 7F 1B 78 */	mr r31, r3
/* 80CC7AD0  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80CC7AD4  2C 00 00 03 */	cmpwi r0, 3
/* 80CC7AD8  40 82 00 C4 */	bne lbl_80CC7B9C
/* 80CC7ADC  88 1F 06 18 */	lbz r0, 0x618(r31)
/* 80CC7AE0  2C 00 00 01 */	cmpwi r0, 1
/* 80CC7AE4  41 82 00 14 */	beq lbl_80CC7AF8
/* 80CC7AE8  41 80 01 48 */	blt lbl_80CC7C30
/* 80CC7AEC  2C 00 00 04 */	cmpwi r0, 4
/* 80CC7AF0  40 80 01 40 */	bge lbl_80CC7C30
/* 80CC7AF4  48 00 00 98 */	b lbl_80CC7B8C
lbl_80CC7AF8:
/* 80CC7AF8  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CC7AFC  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80CC7B00  41 82 01 30 */	beq lbl_80CC7C30
/* 80CC7B04  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC7B08  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC7B0C  80 04 5F 1C */	lwz r0, 0x5f1c(r4)
/* 80CC7B10  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80CC7B14  41 82 01 1C */	beq lbl_80CC7C30
/* 80CC7B18  4B FF FE F9 */	bl orderEvtInit__11daSCannon_cFv
/* 80CC7B1C  38 00 00 01 */	li r0, 1
/* 80CC7B20  98 1F 06 16 */	stb r0, 0x616(r31)
/* 80CC7B24  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC7B28  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CC7B2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC7B30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC7B34  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC7B38  7C 05 07 74 */	extsb r5, r0
/* 80CC7B3C  4B 36 D8 25 */	bl isSwitch__10dSv_info_cCFii
/* 80CC7B40  2C 03 00 00 */	cmpwi r3, 0
/* 80CC7B44  40 82 00 EC */	bne lbl_80CC7C30
/* 80CC7B48  3C 60 80 CD */	lis r3, TKS_SET_POS@ha /* 0x80CC9188@ha */
/* 80CC7B4C  C4 03 91 88 */	lfsu f0, TKS_SET_POS@l(r3)  /* 0x80CC9188@l */
/* 80CC7B50  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CC7B54  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CC7B58  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CC7B5C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CC7B60  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CC7B64  38 60 02 75 */	li r3, 0x275
/* 80CC7B68  38 80 00 01 */	li r4, 1
/* 80CC7B6C  38 A1 00 08 */	addi r5, r1, 8
/* 80CC7B70  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CC7B74  7C 06 07 74 */	extsb r6, r0
/* 80CC7B78  38 E0 00 00 */	li r7, 0
/* 80CC7B7C  39 00 00 00 */	li r8, 0
/* 80CC7B80  39 20 FF FF */	li r9, -1
/* 80CC7B84  4B 35 22 15 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80CC7B88  48 00 00 A8 */	b lbl_80CC7C30
lbl_80CC7B8C:
/* 80CC7B8C  4B FF FE 85 */	bl orderEvtInit__11daSCannon_cFv
/* 80CC7B90  38 00 00 01 */	li r0, 1
/* 80CC7B94  98 1F 06 16 */	stb r0, 0x616(r31)
/* 80CC7B98  48 00 00 98 */	b lbl_80CC7C30
lbl_80CC7B9C:
/* 80CC7B9C  2C 00 00 01 */	cmpwi r0, 1
/* 80CC7BA0  40 82 00 90 */	bne lbl_80CC7C30
/* 80CC7BA4  88 1F 06 1A */	lbz r0, 0x61a(r31)
/* 80CC7BA8  28 00 00 00 */	cmplwi r0, 0
/* 80CC7BAC  41 82 00 84 */	beq lbl_80CC7C30
/* 80CC7BB0  88 1F 06 17 */	lbz r0, 0x617(r31)
/* 80CC7BB4  54 00 10 3A */	slwi r0, r0, 2
/* 80CC7BB8  7C 7F 02 14 */	add r3, r31, r0
/* 80CC7BBC  80 63 05 E4 */	lwz r3, 0x5e4(r3)
/* 80CC7BC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80CC7BC4  83 A3 00 54 */	lwz r29, 0x54(r3)
/* 80CC7BC8  3B 80 00 00 */	li r28, 0
/* 80CC7BCC  3C 60 80 CD */	lis r3, d_a_obj_scannon__stringBase0@ha /* 0x80CC9224@ha */
/* 80CC7BD0  3B C3 92 24 */	addi r30, r3, d_a_obj_scannon__stringBase0@l /* 0x80CC9224@l */
/* 80CC7BD4  48 00 00 2C */	b lbl_80CC7C00
lbl_80CC7BD8:
/* 80CC7BD8  7F A3 EB 78 */	mr r3, r29
/* 80CC7BDC  57 84 04 3E */	clrlwi r4, r28, 0x10
/* 80CC7BE0  4B 61 6F 19 */	bl getName__10JUTNameTabCFUs
/* 80CC7BE4  38 9E 00 84 */	addi r4, r30, 0x84
/* 80CC7BE8  4B 6A 0D AD */	bl strcmp
/* 80CC7BEC  2C 03 00 00 */	cmpwi r3, 0
/* 80CC7BF0  40 82 00 0C */	bne lbl_80CC7BFC
/* 80CC7BF4  B3 9F 06 14 */	sth r28, 0x614(r31)
/* 80CC7BF8  48 00 00 28 */	b lbl_80CC7C20
lbl_80CC7BFC:
/* 80CC7BFC  3B 9C 00 01 */	addi r28, r28, 1
lbl_80CC7C00:
/* 80CC7C00  88 1F 06 17 */	lbz r0, 0x617(r31)
/* 80CC7C04  54 03 10 3A */	slwi r3, r0, 2
/* 80CC7C08  38 03 05 E4 */	addi r0, r3, 0x5e4
/* 80CC7C0C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80CC7C10  80 63 00 04 */	lwz r3, 4(r3)
/* 80CC7C14  A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 80CC7C18  7C 1C 00 00 */	cmpw r28, r0
/* 80CC7C1C  41 80 FF BC */	blt lbl_80CC7BD8
lbl_80CC7C20:
/* 80CC7C20  7F E3 FB 78 */	mr r3, r31
/* 80CC7C24  4B FF FD ED */	bl orderEvtInit__11daSCannon_cFv
/* 80CC7C28  38 00 00 01 */	li r0, 1
/* 80CC7C2C  98 1F 06 16 */	stb r0, 0x616(r31)
lbl_80CC7C30:
/* 80CC7C30  39 61 00 30 */	addi r11, r1, 0x30
/* 80CC7C34  4B 69 A5 F1 */	bl _restgpr_28
/* 80CC7C38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CC7C3C  7C 08 03 A6 */	mtlr r0
/* 80CC7C40  38 21 00 30 */	addi r1, r1, 0x30
/* 80CC7C44  4E 80 00 20 */	blr 
