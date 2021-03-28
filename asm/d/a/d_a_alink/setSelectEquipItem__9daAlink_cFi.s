lbl_800A4910:
/* 800A4910  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A4914  7C 08 02 A6 */	mflr r0
/* 800A4918  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A491C  39 61 00 20 */	addi r11, r1, 0x20
/* 800A4920  48 2B D8 B9 */	bl _savegpr_28
/* 800A4924  7C 7C 1B 78 */	mr r28, r3
/* 800A4928  7C 9D 23 78 */	mr r29, r4
/* 800A492C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800A4930  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A4934  40 82 01 C0 */	bne lbl_800A4AF4
/* 800A4938  83 DC 06 B8 */	lwz r30, 0x6b8(r28)
/* 800A493C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A4940  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 800A4944  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 800A4948  28 00 00 3F */	cmplwi r0, 0x3f
/* 800A494C  40 82 00 18 */	bne lbl_800A4964
/* 800A4950  80 1C 06 70 */	lwz r0, 0x670(r28)
/* 800A4954  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 800A4958  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 800A495C  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 800A4960  48 00 00 48 */	b lbl_800A49A8
lbl_800A4964:
/* 800A4964  48 0B AA 35 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 800A4968  2C 03 00 00 */	cmpwi r3, 0
/* 800A496C  41 82 00 18 */	beq lbl_800A4984
/* 800A4970  80 1C 06 68 */	lwz r0, 0x668(r28)
/* 800A4974  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 800A4978  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 800A497C  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 800A4980  48 00 00 28 */	b lbl_800A49A8
lbl_800A4984:
/* 800A4984  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 800A4988  28 00 00 FF */	cmplwi r0, 0xff
/* 800A498C  40 82 00 0C */	bne lbl_800A4998
/* 800A4990  38 00 00 64 */	li r0, 0x64
/* 800A4994  98 1C 2F D6 */	stb r0, 0x2fd6(r28)
lbl_800A4998:
/* 800A4998  80 1C 06 60 */	lwz r0, 0x660(r28)
/* 800A499C  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 800A49A0  80 1C 06 64 */	lwz r0, 0x664(r28)
/* 800A49A4  90 1C 06 BC */	stw r0, 0x6bc(r28)
lbl_800A49A8:
/* 800A49A8  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 800A49AC  28 00 00 FF */	cmplwi r0, 0xff
/* 800A49B0  41 82 00 18 */	beq lbl_800A49C8
/* 800A49B4  28 00 00 3F */	cmplwi r0, 0x3f
/* 800A49B8  41 82 00 10 */	beq lbl_800A49C8
/* 800A49BC  80 1C 05 7C */	lwz r0, 0x57c(r28)
/* 800A49C0  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800A49C4  41 82 00 20 */	beq lbl_800A49E4
lbl_800A49C8:
/* 800A49C8  80 7C 06 EC */	lwz r3, 0x6ec(r28)
/* 800A49CC  28 03 00 00 */	cmplwi r3, 0
/* 800A49D0  41 82 00 2C */	beq lbl_800A49FC
/* 800A49D4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A49D8  60 00 00 01 */	ori r0, r0, 1
/* 800A49DC  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A49E0  48 00 00 1C */	b lbl_800A49FC
lbl_800A49E4:
/* 800A49E4  80 7C 06 EC */	lwz r3, 0x6ec(r28)
/* 800A49E8  28 03 00 00 */	cmplwi r3, 0
/* 800A49EC  41 82 00 10 */	beq lbl_800A49FC
/* 800A49F0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A49F4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800A49F8  90 03 00 0C */	stw r0, 0xc(r3)
lbl_800A49FC:
/* 800A49FC  88 1C 2F BF */	lbz r0, 0x2fbf(r28)
/* 800A4A00  28 00 00 00 */	cmplwi r0, 0
/* 800A4A04  40 82 01 20 */	bne lbl_800A4B24
/* 800A4A08  80 7C 06 B8 */	lwz r3, 0x6b8(r28)
/* 800A4A0C  7C 1E 18 40 */	cmplw r30, r3
/* 800A4A10  40 82 00 10 */	bne lbl_800A4A20
/* 800A4A14  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 800A4A18  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 800A4A1C  41 82 01 08 */	beq lbl_800A4B24
lbl_800A4A20:
/* 800A4A20  7C 1E 18 40 */	cmplw r30, r3
/* 800A4A24  41 82 00 0C */	beq lbl_800A4A30
/* 800A4A28  38 00 00 05 */	li r0, 5
/* 800A4A2C  98 1C 2F D6 */	stb r0, 0x2fd6(r28)
lbl_800A4A30:
/* 800A4A30  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 800A4A34  28 00 00 3F */	cmplwi r0, 0x3f
/* 800A4A38  40 82 00 60 */	bne lbl_800A4A98
/* 800A4A3C  A0 1C 2F DC */	lhz r0, 0x2fdc(r28)
/* 800A4A40  28 00 01 03 */	cmplwi r0, 0x103
/* 800A4A44  41 82 00 0C */	beq lbl_800A4A50
/* 800A4A48  2C 1D 00 00 */	cmpwi r29, 0
/* 800A4A4C  41 82 00 28 */	beq lbl_800A4A74
lbl_800A4A50:
/* 800A4A50  80 7C 06 B8 */	lwz r3, 0x6b8(r28)
/* 800A4A54  80 63 00 04 */	lwz r3, 4(r3)
/* 800A4A58  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800A4A5C  80 63 00 04 */	lwz r3, 4(r3)
/* 800A4A60  80 63 00 08 */	lwz r3, 8(r3)
/* 800A4A64  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A4A68  60 00 00 01 */	ori r0, r0, 1
/* 800A4A6C  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A4A70  48 00 00 B4 */	b lbl_800A4B24
lbl_800A4A74:
/* 800A4A74  80 7C 06 B8 */	lwz r3, 0x6b8(r28)
/* 800A4A78  80 63 00 04 */	lwz r3, 4(r3)
/* 800A4A7C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800A4A80  80 63 00 04 */	lwz r3, 4(r3)
/* 800A4A84  80 63 00 08 */	lwz r3, 8(r3)
/* 800A4A88  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A4A8C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800A4A90  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A4A94  48 00 00 90 */	b lbl_800A4B24
lbl_800A4A98:
/* 800A4A98  A0 1C 2F DC */	lhz r0, 0x2fdc(r28)
/* 800A4A9C  28 00 01 03 */	cmplwi r0, 0x103
/* 800A4AA0  41 82 00 0C */	beq lbl_800A4AAC
/* 800A4AA4  2C 1D 00 00 */	cmpwi r29, 0
/* 800A4AA8  41 82 00 28 */	beq lbl_800A4AD0
lbl_800A4AAC:
/* 800A4AAC  80 7C 06 B8 */	lwz r3, 0x6b8(r28)
/* 800A4AB0  80 63 00 04 */	lwz r3, 4(r3)
/* 800A4AB4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800A4AB8  80 63 00 00 */	lwz r3, 0(r3)
/* 800A4ABC  80 63 00 08 */	lwz r3, 8(r3)
/* 800A4AC0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A4AC4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800A4AC8  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A4ACC  48 00 00 58 */	b lbl_800A4B24
lbl_800A4AD0:
/* 800A4AD0  80 7C 06 B8 */	lwz r3, 0x6b8(r28)
/* 800A4AD4  80 63 00 04 */	lwz r3, 4(r3)
/* 800A4AD8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800A4ADC  80 63 00 00 */	lwz r3, 0(r3)
/* 800A4AE0  80 63 00 08 */	lwz r3, 8(r3)
/* 800A4AE4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A4AE8  60 00 00 01 */	ori r0, r0, 1
/* 800A4AEC  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A4AF0  48 00 00 34 */	b lbl_800A4B24
lbl_800A4AF4:
/* 800A4AF4  48 0B A8 A5 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 800A4AF8  2C 03 00 00 */	cmpwi r3, 0
/* 800A4AFC  41 82 00 18 */	beq lbl_800A4B14
/* 800A4B00  80 1C 06 68 */	lwz r0, 0x668(r28)
/* 800A4B04  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 800A4B08  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 800A4B0C  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 800A4B10  48 00 00 14 */	b lbl_800A4B24
lbl_800A4B14:
/* 800A4B14  80 1C 06 60 */	lwz r0, 0x660(r28)
/* 800A4B18  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 800A4B1C  80 1C 06 64 */	lwz r0, 0x664(r28)
/* 800A4B20  90 1C 06 BC */	stw r0, 0x6bc(r28)
lbl_800A4B24:
/* 800A4B24  88 1C 2F BF */	lbz r0, 0x2fbf(r28)
/* 800A4B28  28 00 00 00 */	cmplwi r0, 0
/* 800A4B2C  40 82 00 84 */	bne lbl_800A4BB0
/* 800A4B30  7F 83 E3 78 */	mr r3, r28
/* 800A4B34  48 01 B2 7D */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800A4B38  2C 03 00 00 */	cmpwi r3, 0
/* 800A4B3C  41 82 00 64 */	beq lbl_800A4BA0
/* 800A4B40  7F 83 E3 78 */	mr r3, r28
/* 800A4B44  48 05 CD 4D */	bl checkZoraWearMaskDraw__9daAlink_cFv
/* 800A4B48  2C 03 00 00 */	cmpwi r3, 0
/* 800A4B4C  41 82 00 34 */	beq lbl_800A4B80
/* 800A4B50  80 7C 06 F0 */	lwz r3, 0x6f0(r28)
/* 800A4B54  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A4B58  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800A4B5C  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A4B60  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800A4B64  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A4B68  40 82 00 38 */	bne lbl_800A4BA0
/* 800A4B6C  80 7C 06 E4 */	lwz r3, 0x6e4(r28)
/* 800A4B70  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A4B74  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800A4B78  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A4B7C  48 00 00 24 */	b lbl_800A4BA0
lbl_800A4B80:
/* 800A4B80  80 7C 06 F0 */	lwz r3, 0x6f0(r28)
/* 800A4B84  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A4B88  60 00 00 01 */	ori r0, r0, 1
/* 800A4B8C  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A4B90  80 7C 06 E4 */	lwz r3, 0x6e4(r28)
/* 800A4B94  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A4B98  60 00 00 01 */	ori r0, r0, 1
/* 800A4B9C  90 03 00 0C */	stw r0, 0xc(r3)
lbl_800A4BA0:
/* 800A4BA0  80 7C 06 7C */	lwz r3, 0x67c(r28)
/* 800A4BA4  48 00 46 A5 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800A4BA8  80 7C 06 80 */	lwz r3, 0x680(r28)
/* 800A4BAC  48 00 46 9D */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
lbl_800A4BB0:
/* 800A4BB0  39 61 00 20 */	addi r11, r1, 0x20
/* 800A4BB4  48 2B D6 71 */	bl _restgpr_28
/* 800A4BB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A4BBC  7C 08 03 A6 */	mtlr r0
/* 800A4BC0  38 21 00 20 */	addi r1, r1, 0x20
/* 800A4BC4  4E 80 00 20 */	blr 
