lbl_80CB2A74:
/* 80CB2A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB2A78  7C 08 02 A6 */	mflr r0
/* 80CB2A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2A80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB2A84  7C 7F 1B 78 */	mr r31, r3
/* 80CB2A88  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CB2A8C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CB2A90  40 82 00 48 */	bne lbl_80CB2AD8
/* 80CB2A94  28 1F 00 00 */	cmplwi r31, 0
/* 80CB2A98  41 82 00 34 */	beq lbl_80CB2ACC
/* 80CB2A9C  4B 36 60 C8 */	b __ct__10fopAc_ac_cFv
/* 80CB2AA0  3C 60 80 CB */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80CB2AA4  38 03 40 D0 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80CB2AA8  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80CB2AAC  93 FF 05 74 */	stw r31, 0x574(r31)
/* 80CB2AB0  38 00 00 00 */	li r0, 0
/* 80CB2AB4  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80CB2AB8  3C 60 80 CB */	lis r3, __vt__10daPoFire_c@ha
/* 80CB2ABC  38 63 40 A0 */	addi r3, r3, __vt__10daPoFire_c@l
/* 80CB2AC0  90 7F 05 80 */	stw r3, 0x580(r31)
/* 80CB2AC4  38 03 00 08 */	addi r0, r3, 8
/* 80CB2AC8  90 1F 05 70 */	stw r0, 0x570(r31)
lbl_80CB2ACC:
/* 80CB2ACC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CB2AD0  60 00 00 08 */	ori r0, r0, 8
/* 80CB2AD4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CB2AD8:
/* 80CB2AD8  38 7F 05 84 */	addi r3, r31, 0x584
/* 80CB2ADC  3C 80 80 CB */	lis r4, struct_80CB3F3C+0x0@ha
/* 80CB2AE0  38 84 3F 3C */	addi r4, r4, struct_80CB3F3C+0x0@l
/* 80CB2AE4  4B 37 A3 D8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CB2AE8  2C 03 00 04 */	cmpwi r3, 4
/* 80CB2AEC  41 82 00 0C */	beq lbl_80CB2AF8
/* 80CB2AF0  38 60 00 00 */	li r3, 0
/* 80CB2AF4  48 00 00 B0 */	b lbl_80CB2BA4
lbl_80CB2AF8:
/* 80CB2AF8  7F E3 FB 78 */	mr r3, r31
/* 80CB2AFC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CB2B00  7C 04 07 74 */	extsb r4, r0
/* 80CB2B04  4B 36 6E 30 */	b fopAcM_setRoomLayer__FPvi
/* 80CB2B08  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CB2B0C  98 1F 05 93 */	stb r0, 0x593(r31)
/* 80CB2B10  88 1F 05 93 */	lbz r0, 0x593(r31)
/* 80CB2B14  28 00 00 03 */	cmplwi r0, 3
/* 80CB2B18  40 81 00 14 */	ble lbl_80CB2B2C
/* 80CB2B1C  28 00 00 FF */	cmplwi r0, 0xff
/* 80CB2B20  41 82 00 0C */	beq lbl_80CB2B2C
/* 80CB2B24  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 80CB2B28  98 1F 05 93 */	stb r0, 0x593(r31)
lbl_80CB2B2C:
/* 80CB2B2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB2B30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB2B34  38 63 00 CC */	addi r3, r3, 0xcc
/* 80CB2B38  88 1F 05 93 */	lbz r0, 0x593(r31)
/* 80CB2B3C  3C 80 80 CB */	lis r4, itemNo@ha
/* 80CB2B40  38 84 3F 08 */	addi r4, r4, itemNo@l
/* 80CB2B44  7C 84 00 AE */	lbzx r4, r4, r0
/* 80CB2B48  4B 38 13 4C */	b offFirstBit__21dSv_player_get_item_cFUc
/* 80CB2B4C  3C 60 80 CB */	lis r3, lit_3726@ha
/* 80CB2B50  C0 03 3F 0C */	lfs f0, lit_3726@l(r3)
/* 80CB2B54  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 80CB2B58  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 80CB2B5C  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
/* 80CB2B60  D0 1F 06 00 */	stfs f0, 0x600(r31)
/* 80CB2B64  38 60 00 00 */	li r3, 0
/* 80CB2B68  90 7F 06 04 */	stw r3, 0x604(r31)
/* 80CB2B6C  38 00 FF FF */	li r0, -1
/* 80CB2B70  B0 1F 05 90 */	sth r0, 0x590(r31)
/* 80CB2B74  98 7F 05 94 */	stb r3, 0x594(r31)
/* 80CB2B78  7F E3 FB 78 */	mr r3, r31
/* 80CB2B7C  4B FF FE 91 */	bl setBaseMtx__10daPoFire_cFv
/* 80CB2B80  88 1F 05 93 */	lbz r0, 0x593(r31)
/* 80CB2B84  28 00 00 FF */	cmplwi r0, 0xff
/* 80CB2B88  41 82 00 10 */	beq lbl_80CB2B98
/* 80CB2B8C  7F E3 FB 78 */	mr r3, r31
/* 80CB2B90  48 00 04 95 */	bl init_modeInitMove__10daPoFire_cFv
/* 80CB2B94  48 00 00 0C */	b lbl_80CB2BA0
lbl_80CB2B98:
/* 80CB2B98  7F E3 FB 78 */	mr r3, r31
/* 80CB2B9C  48 00 0E 31 */	bl init_modeOnFire__10daPoFire_cFv
lbl_80CB2BA0:
/* 80CB2BA0  38 60 00 04 */	li r3, 4
lbl_80CB2BA4:
/* 80CB2BA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB2BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB2BAC  7C 08 03 A6 */	mtlr r0
/* 80CB2BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB2BB4  4E 80 00 20 */	blr 
