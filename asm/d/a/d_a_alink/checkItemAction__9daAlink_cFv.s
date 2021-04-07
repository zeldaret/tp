lbl_800B8988:
/* 800B8988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B898C  7C 08 02 A6 */	mflr r0
/* 800B8990  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B8994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B8998  93 C1 00 08 */	stw r30, 8(r1)
/* 800B899C  7C 7F 1B 78 */	mr r31, r3
/* 800B89A0  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800B89A4  3B C4 D6 58 */	addi r30, r4, lit_3757@l /* 0x8038D658@l */
/* 800B89A8  48 00 09 99 */	bl checkEquipAnime__9daAlink_cCFv
/* 800B89AC  2C 03 00 00 */	cmpwi r3, 0
/* 800B89B0  40 82 00 3C */	bne lbl_800B89EC
/* 800B89B4  38 60 00 00 */	li r3, 0
/* 800B89B8  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800B89BC  28 00 00 46 */	cmplwi r0, 0x46
/* 800B89C0  40 82 00 14 */	bne lbl_800B89D4
/* 800B89C4  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800B89C8  28 00 00 53 */	cmplwi r0, 0x53
/* 800B89CC  40 82 00 08 */	bne lbl_800B89D4
/* 800B89D0  38 60 00 01 */	li r3, 1
lbl_800B89D4:
/* 800B89D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B89D8  40 82 00 14 */	bne lbl_800B89EC
/* 800B89DC  7F E3 FB 78 */	mr r3, r31
/* 800B89E0  48 02 7A CD */	bl checkBoomerangThrowAnime__9daAlink_cCFv
/* 800B89E4  2C 03 00 00 */	cmpwi r3, 0
/* 800B89E8  41 82 00 0C */	beq lbl_800B89F4
lbl_800B89EC:
/* 800B89EC  38 60 00 00 */	li r3, 0
/* 800B89F0  48 00 06 08 */	b lbl_800B8FF8
lbl_800B89F4:
/* 800B89F4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B89F8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B89FC  41 82 00 EC */	beq lbl_800B8AE8
/* 800B8A00  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800B8A04  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800B8A08  41 82 00 10 */	beq lbl_800B8A18
/* 800B8A0C  7F E3 FB 78 */	mr r3, r31
/* 800B8A10  48 08 0E 99 */	bl procWolfRollAttackChargeInit__9daAlink_cFv
/* 800B8A14  48 00 05 E4 */	b lbl_800B8FF8
lbl_800B8A18:
/* 800B8A18  7F E3 FB 78 */	mr r3, r31
/* 800B8A1C  48 01 99 4D */	bl checkCutTurnInputTrigger__9daAlink_cFv
/* 800B8A20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8A24  41 82 00 18 */	beq lbl_800B8A3C
/* 800B8A28  7F E3 FB 78 */	mr r3, r31
/* 800B8A2C  38 80 00 02 */	li r4, 2
/* 800B8A30  38 A0 00 00 */	li r5, 0
/* 800B8A34  48 08 28 6D */	bl procWolfRollAttackInit__9daAlink_cFii
/* 800B8A38  48 00 05 C0 */	b lbl_800B8FF8
lbl_800B8A3C:
/* 800B8A3C  7F E3 FB 78 */	mr r3, r31
/* 800B8A40  4B FF 9C 79 */	bl swordSwingTrigger__9daAlink_cFv
/* 800B8A44  2C 03 00 00 */	cmpwi r3, 0
/* 800B8A48  40 82 00 14 */	bne lbl_800B8A5C
/* 800B8A4C  7F E3 FB 78 */	mr r3, r31
/* 800B8A50  48 01 97 39 */	bl checkComboReserb__9daAlink_cFv
/* 800B8A54  2C 03 00 00 */	cmpwi r3, 0
/* 800B8A58  41 82 00 28 */	beq lbl_800B8A80
lbl_800B8A5C:
/* 800B8A5C  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 800B8A60  28 00 00 00 */	cmplwi r0, 0
/* 800B8A64  40 82 00 10 */	bne lbl_800B8A74
/* 800B8A68  7F E3 FB 78 */	mr r3, r31
/* 800B8A6C  48 08 0E 3D */	bl procWolfRollAttackChargeInit__9daAlink_cFv
/* 800B8A70  48 00 05 88 */	b lbl_800B8FF8
lbl_800B8A74:
/* 800B8A74  7F E3 FB 78 */	mr r3, r31
/* 800B8A78  48 08 09 2D */	bl checkWolfAttackAction__9daAlink_cFv
/* 800B8A7C  48 00 05 7C */	b lbl_800B8FF8
lbl_800B8A80:
/* 800B8A80  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800B8A84  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 800B8A88  40 82 00 10 */	bne lbl_800B8A98
/* 800B8A8C  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800B8A90  28 00 00 00 */	cmplwi r0, 0
/* 800B8A94  40 82 05 60 */	bne lbl_800B8FF4
lbl_800B8A98:
/* 800B8A98  7F E3 FB 78 */	mr r3, r31
/* 800B8A9C  48 06 F2 91 */	bl wolfClawTrigger__9daAlink_cFv
/* 800B8AA0  2C 03 00 00 */	cmpwi r3, 0
/* 800B8AA4  41 82 05 50 */	beq lbl_800B8FF4
/* 800B8AA8  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800B8AAC  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 800B8AB0  41 82 00 2C */	beq lbl_800B8ADC
/* 800B8AB4  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 800B8AB8  28 03 00 00 */	cmplwi r3, 0
/* 800B8ABC  41 82 00 20 */	beq lbl_800B8ADC
/* 800B8AC0  A8 03 00 08 */	lha r0, 8(r3)
/* 800B8AC4  2C 00 00 52 */	cmpwi r0, 0x52
/* 800B8AC8  40 82 00 14 */	bne lbl_800B8ADC
/* 800B8ACC  7F E3 FB 78 */	mr r3, r31
/* 800B8AD0  38 80 00 00 */	li r4, 0
/* 800B8AD4  48 08 69 D5 */	bl procWolfDigThroughInit__9daAlink_cFi
/* 800B8AD8  48 00 05 20 */	b lbl_800B8FF8
lbl_800B8ADC:
/* 800B8ADC  7F E3 FB 78 */	mr r3, r31
/* 800B8AE0  48 08 62 65 */	bl procWolfDigInit__9daAlink_cFv
/* 800B8AE4  48 00 05 14 */	b lbl_800B8FF8
lbl_800B8AE8:
/* 800B8AE8  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800B8AEC  28 03 01 03 */	cmplwi r3, 0x103
/* 800B8AF0  40 82 02 E0 */	bne lbl_800B8DD0
/* 800B8AF4  A0 9F 1F BC */	lhz r4, 0x1fbc(r31)
/* 800B8AF8  28 04 00 80 */	cmplwi r4, 0x80
/* 800B8AFC  40 82 00 1C */	bne lbl_800B8B18
/* 800B8B00  C0 3F 20 58 */	lfs f1, 0x2058(r31)
/* 800B8B04  38 7E 06 98 */	addi r3, r30, 0x698
/* 800B8B08  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800B8B0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B8B10  4C 40 13 82 */	cror 2, 0, 2
/* 800B8B14  41 82 00 58 */	beq lbl_800B8B6C
lbl_800B8B18:
/* 800B8B18  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 800B8B1C  28 00 00 81 */	cmplwi r0, 0x81
/* 800B8B20  40 82 00 1C */	bne lbl_800B8B3C
/* 800B8B24  C0 3F 20 58 */	lfs f1, 0x2058(r31)
/* 800B8B28  38 7E 06 B4 */	addi r3, r30, 0x6b4
/* 800B8B2C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800B8B30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B8B34  4C 40 13 82 */	cror 2, 0, 2
/* 800B8B38  41 82 00 34 */	beq lbl_800B8B6C
lbl_800B8B3C:
/* 800B8B3C  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 800B8B40  28 00 00 82 */	cmplwi r0, 0x82
/* 800B8B44  40 82 00 1C */	bne lbl_800B8B60
/* 800B8B48  C0 3F 20 58 */	lfs f1, 0x2058(r31)
/* 800B8B4C  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 800B8B50  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800B8B54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B8B58  4C 40 13 82 */	cror 2, 0, 2
/* 800B8B5C  41 82 00 10 */	beq lbl_800B8B6C
lbl_800B8B60:
/* 800B8B60  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800B8B64  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800B8B68  41 82 00 0C */	beq lbl_800B8B74
lbl_800B8B6C:
/* 800B8B6C  38 60 00 00 */	li r3, 0
/* 800B8B70  48 00 04 88 */	b lbl_800B8FF8
lbl_800B8B74:
/* 800B8B74  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800B8B78  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800B8B7C  41 82 00 20 */	beq lbl_800B8B9C
/* 800B8B80  7F E3 FB 78 */	mr r3, r31
/* 800B8B84  48 01 83 49 */	bl checkCutDashAnime__9daAlink_cCFv
/* 800B8B88  2C 03 00 00 */	cmpwi r3, 0
/* 800B8B8C  40 82 00 10 */	bne lbl_800B8B9C
/* 800B8B90  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800B8B94  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 800B8B98  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_800B8B9C:
/* 800B8B9C  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800B8BA0  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800B8BA4  41 82 00 74 */	beq lbl_800B8C18
/* 800B8BA8  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800B8BAC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 800B8BB0  90 1F 05 78 */	stw r0, 0x578(r31)
/* 800B8BB4  7F E3 FB 78 */	mr r3, r31
/* 800B8BB8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B8BBC  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800B8BC0  7D 89 03 A6 */	mtctr r12
/* 800B8BC4  4E 80 04 21 */	bctrl 
/* 800B8BC8  28 03 00 00 */	cmplwi r3, 0
/* 800B8BCC  41 82 00 10 */	beq lbl_800B8BDC
/* 800B8BD0  7F E3 FB 78 */	mr r3, r31
/* 800B8BD4  48 04 DA 45 */	bl checkBoardSwordTriggerAction__9daAlink_cFv
/* 800B8BD8  48 00 04 20 */	b lbl_800B8FF8
lbl_800B8BDC:
/* 800B8BDC  38 00 00 00 */	li r0, 0
/* 800B8BE0  88 7F 2F AA */	lbz r3, 0x2faa(r31)
/* 800B8BE4  28 03 00 01 */	cmplwi r3, 1
/* 800B8BE8  41 82 00 0C */	beq lbl_800B8BF4
/* 800B8BEC  28 03 00 02 */	cmplwi r3, 2
/* 800B8BF0  40 82 00 08 */	bne lbl_800B8BF8
lbl_800B8BF4:
/* 800B8BF4  38 00 00 01 */	li r0, 1
lbl_800B8BF8:
/* 800B8BF8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B8BFC  41 82 00 10 */	beq lbl_800B8C0C
/* 800B8C00  7F E3 FB 78 */	mr r3, r31
/* 800B8C04  48 03 8C 91 */	bl procHorseCutChargeReadyInit__9daAlink_cFv
/* 800B8C08  48 00 03 F0 */	b lbl_800B8FF8
lbl_800B8C0C:
/* 800B8C0C  7F E3 FB 78 */	mr r3, r31
/* 800B8C10  48 01 C0 59 */	bl procCutTurnChargeInit__9daAlink_cFv
/* 800B8C14  48 00 03 E4 */	b lbl_800B8FF8
lbl_800B8C18:
/* 800B8C18  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800B8C1C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800B8C20  41 82 00 24 */	beq lbl_800B8C44
/* 800B8C24  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800B8C28  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 800B8C2C  90 1F 05 78 */	stw r0, 0x578(r31)
/* 800B8C30  7F E3 FB 78 */	mr r3, r31
/* 800B8C34  38 80 00 83 */	li r4, 0x83
/* 800B8C38  4B FF 47 09 */	bl setUpperAnimeBase__9daAlink_cFUs
/* 800B8C3C  38 60 00 01 */	li r3, 1
/* 800B8C40  48 00 03 B8 */	b lbl_800B8FF8
lbl_800B8C44:
/* 800B8C44  7F E3 FB 78 */	mr r3, r31
/* 800B8C48  48 01 97 21 */	bl checkCutTurnInputTrigger__9daAlink_cFv
/* 800B8C4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8C50  41 82 00 70 */	beq lbl_800B8CC0
/* 800B8C54  7F E3 FB 78 */	mr r3, r31
/* 800B8C58  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B8C5C  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800B8C60  7D 89 03 A6 */	mtctr r12
/* 800B8C64  4E 80 04 21 */	bctrl 
/* 800B8C68  28 03 00 00 */	cmplwi r3, 0
/* 800B8C6C  41 82 00 10 */	beq lbl_800B8C7C
/* 800B8C70  7F E3 FB 78 */	mr r3, r31
/* 800B8C74  48 04 E9 61 */	bl procBoardCutTurnInit__9daAlink_cFv
/* 800B8C78  48 00 03 80 */	b lbl_800B8FF8
lbl_800B8C7C:
/* 800B8C7C  38 00 00 00 */	li r0, 0
/* 800B8C80  88 7F 2F AA */	lbz r3, 0x2faa(r31)
/* 800B8C84  28 03 00 01 */	cmplwi r3, 1
/* 800B8C88  41 82 00 0C */	beq lbl_800B8C94
/* 800B8C8C  28 03 00 02 */	cmplwi r3, 2
/* 800B8C90  40 82 00 08 */	bne lbl_800B8C98
lbl_800B8C94:
/* 800B8C94  38 00 00 01 */	li r0, 1
lbl_800B8C98:
/* 800B8C98  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B8C9C  41 82 00 10 */	beq lbl_800B8CAC
/* 800B8CA0  7F E3 FB 78 */	mr r3, r31
/* 800B8CA4  48 03 8E 09 */	bl procHorseCutTurnInit__9daAlink_cFv
/* 800B8CA8  48 00 03 50 */	b lbl_800B8FF8
lbl_800B8CAC:
/* 800B8CAC  7F E3 FB 78 */	mr r3, r31
/* 800B8CB0  38 80 00 01 */	li r4, 1
/* 800B8CB4  38 A0 00 02 */	li r5, 2
/* 800B8CB8  48 01 BB 25 */	bl procCutTurnInit__9daAlink_cFii
/* 800B8CBC  48 00 03 3C */	b lbl_800B8FF8
lbl_800B8CC0:
/* 800B8CC0  7F E3 FB 78 */	mr r3, r31
/* 800B8CC4  4B FF 99 F5 */	bl swordSwingTrigger__9daAlink_cFv
/* 800B8CC8  2C 03 00 00 */	cmpwi r3, 0
/* 800B8CCC  40 82 00 14 */	bne lbl_800B8CE0
/* 800B8CD0  7F E3 FB 78 */	mr r3, r31
/* 800B8CD4  48 01 94 B5 */	bl checkComboReserb__9daAlink_cFv
/* 800B8CD8  2C 03 00 00 */	cmpwi r3, 0
/* 800B8CDC  41 82 01 C4 */	beq lbl_800B8EA0
lbl_800B8CE0:
/* 800B8CE0  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800B8CE4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800B8CE8  41 82 00 6C */	beq lbl_800B8D54
/* 800B8CEC  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800B8CF0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800B8CF4  90 1F 05 78 */	stw r0, 0x578(r31)
/* 800B8CF8  7F E3 FB 78 */	mr r3, r31
/* 800B8CFC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B8D00  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800B8D04  7D 89 03 A6 */	mtctr r12
/* 800B8D08  4E 80 04 21 */	bctrl 
/* 800B8D0C  28 03 00 00 */	cmplwi r3, 0
/* 800B8D10  41 82 00 10 */	beq lbl_800B8D20
/* 800B8D14  7F E3 FB 78 */	mr r3, r31
/* 800B8D18  48 04 E7 95 */	bl procBoardCutInit__9daAlink_cFv
/* 800B8D1C  48 00 02 DC */	b lbl_800B8FF8
lbl_800B8D20:
/* 800B8D20  7F E3 FB 78 */	mr r3, r31
/* 800B8D24  4B FE ED 39 */	bl checkDashAnime__9daAlink_cCFv
/* 800B8D28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8D2C  41 82 00 1C */	beq lbl_800B8D48
/* 800B8D30  7F E3 FB 78 */	mr r3, r31
/* 800B8D34  38 80 00 00 */	li r4, 0
/* 800B8D38  38 A0 00 00 */	li r5, 0
/* 800B8D3C  48 01 90 E1 */	bl setCutDash__9daAlink_cFii
/* 800B8D40  38 60 00 01 */	li r3, 1
/* 800B8D44  48 00 02 B4 */	b lbl_800B8FF8
lbl_800B8D48:
/* 800B8D48  7F E3 FB 78 */	mr r3, r31
/* 800B8D4C  48 01 96 75 */	bl checkCutAction__9daAlink_cFv
/* 800B8D50  48 00 02 A8 */	b lbl_800B8FF8
lbl_800B8D54:
/* 800B8D54  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 800B8D58  28 00 00 00 */	cmplwi r0, 0
/* 800B8D5C  40 82 00 68 */	bne lbl_800B8DC4
/* 800B8D60  7F E3 FB 78 */	mr r3, r31
/* 800B8D64  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B8D68  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800B8D6C  7D 89 03 A6 */	mtctr r12
/* 800B8D70  4E 80 04 21 */	bctrl 
/* 800B8D74  28 03 00 00 */	cmplwi r3, 0
/* 800B8D78  41 82 00 10 */	beq lbl_800B8D88
/* 800B8D7C  7F E3 FB 78 */	mr r3, r31
/* 800B8D80  48 04 D8 99 */	bl checkBoardSwordTriggerAction__9daAlink_cFv
/* 800B8D84  48 00 02 74 */	b lbl_800B8FF8
lbl_800B8D88:
/* 800B8D88  38 00 00 00 */	li r0, 0
/* 800B8D8C  88 7F 2F AA */	lbz r3, 0x2faa(r31)
/* 800B8D90  28 03 00 01 */	cmplwi r3, 1
/* 800B8D94  41 82 00 0C */	beq lbl_800B8DA0
/* 800B8D98  28 03 00 02 */	cmplwi r3, 2
/* 800B8D9C  40 82 00 08 */	bne lbl_800B8DA4
lbl_800B8DA0:
/* 800B8DA0  38 00 00 01 */	li r0, 1
lbl_800B8DA4:
/* 800B8DA4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B8DA8  41 82 00 10 */	beq lbl_800B8DB8
/* 800B8DAC  7F E3 FB 78 */	mr r3, r31
/* 800B8DB0  48 03 8A E5 */	bl procHorseCutChargeReadyInit__9daAlink_cFv
/* 800B8DB4  48 00 02 44 */	b lbl_800B8FF8
lbl_800B8DB8:
/* 800B8DB8  7F E3 FB 78 */	mr r3, r31
/* 800B8DBC  48 01 BE AD */	bl procCutTurnChargeInit__9daAlink_cFv
/* 800B8DC0  48 00 02 38 */	b lbl_800B8FF8
lbl_800B8DC4:
/* 800B8DC4  7F E3 FB 78 */	mr r3, r31
/* 800B8DC8  48 01 95 F9 */	bl checkCutAction__9daAlink_cFv
/* 800B8DCC  48 00 02 2C */	b lbl_800B8FF8
lbl_800B8DD0:
/* 800B8DD0  48 0A 5C 51 */	bl checkFishingRodItem__9daPy_py_cFi
/* 800B8DD4  2C 03 00 00 */	cmpwi r3, 0
/* 800B8DD8  41 82 00 28 */	beq lbl_800B8E00
/* 800B8DDC  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800B8DE0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B8DE4  41 82 00 1C */	beq lbl_800B8E00
/* 800B8DE8  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800B8DEC  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800B8DF0  41 82 00 B0 */	beq lbl_800B8EA0
/* 800B8DF4  7F E3 FB 78 */	mr r3, r31
/* 800B8DF8  48 03 E9 69 */	bl procFishingCastInit__9daAlink_cFv
/* 800B8DFC  48 00 01 FC */	b lbl_800B8FF8
lbl_800B8E00:
/* 800B8E00  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800B8E04  28 00 01 02 */	cmplwi r0, 0x102
/* 800B8E08  40 82 00 4C */	bne lbl_800B8E54
/* 800B8E0C  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800B8E10  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B8E14  41 82 00 8C */	beq lbl_800B8EA0
/* 800B8E18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B8E1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B8E20  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 800B8E24  28 00 00 13 */	cmplwi r0, 0x13
/* 800B8E28  40 82 00 14 */	bne lbl_800B8E3C
/* 800B8E2C  7F E3 FB 78 */	mr r3, r31
/* 800B8E30  48 02 77 B9 */	bl setThrowBoomerangAnime__9daAlink_cFv
/* 800B8E34  38 60 00 01 */	li r3, 1
/* 800B8E38  48 00 01 C0 */	b lbl_800B8FF8
lbl_800B8E3C:
/* 800B8E3C  28 00 00 14 */	cmplwi r0, 0x14
/* 800B8E40  40 82 00 60 */	bne lbl_800B8EA0
/* 800B8E44  7F E3 FB 78 */	mr r3, r31
/* 800B8E48  38 80 00 00 */	li r4, 0
/* 800B8E4C  48 02 E7 A1 */	bl procPickPutInit__9daAlink_cFi
/* 800B8E50  48 00 01 A8 */	b lbl_800B8FF8
lbl_800B8E54:
/* 800B8E54  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800B8E58  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B8E5C  41 82 00 44 */	beq lbl_800B8EA0
/* 800B8E60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B8E64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B8E68  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 800B8E6C  28 00 00 2A */	cmplwi r0, 0x2a
/* 800B8E70  40 82 00 30 */	bne lbl_800B8EA0
/* 800B8E74  80 7F 28 40 */	lwz r3, 0x2840(r31)
/* 800B8E78  28 03 00 00 */	cmplwi r3, 0
/* 800B8E7C  41 82 00 24 */	beq lbl_800B8EA0
/* 800B8E80  38 63 07 40 */	addi r3, r3, 0x740
/* 800B8E84  48 0A 5E 79 */	bl clearData__16daPy_actorKeep_cFv
/* 800B8E88  7F E3 FB 78 */	mr r3, r31
/* 800B8E8C  38 80 00 02 */	li r4, 2
/* 800B8E90  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800B8E94  4B FF 48 91 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800B8E98  38 60 00 01 */	li r3, 1
/* 800B8E9C  48 00 01 5C */	b lbl_800B8FF8
lbl_800B8EA0:
/* 800B8EA0  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800B8EA4  48 0A 5B 7D */	bl checkFishingRodItem__9daPy_py_cFi
/* 800B8EA8  2C 03 00 00 */	cmpwi r3, 0
/* 800B8EAC  41 82 00 1C */	beq lbl_800B8EC8
/* 800B8EB0  C0 3F 33 B4 */	lfs f1, 0x33b4(r31)
/* 800B8EB4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800B8EB8  EC 21 00 28 */	fsubs f1, f1, f0
/* 800B8EBC  C0 02 93 10 */	lfs f0, lit_7306(r2)
/* 800B8EC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B8EC4  41 81 00 60 */	bgt lbl_800B8F24
lbl_800B8EC8:
/* 800B8EC8  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800B8ECC  60 00 02 00 */	ori r0, r0, 0x200
/* 800B8ED0  90 1F 05 84 */	stw r0, 0x584(r31)
/* 800B8ED4  7F E3 FB 78 */	mr r3, r31
/* 800B8ED8  4B FF FA 59 */	bl checkReadyItem__9daAlink_cFv
/* 800B8EDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8EE0  41 82 00 44 */	beq lbl_800B8F24
/* 800B8EE4  7F E3 FB 78 */	mr r3, r31
/* 800B8EE8  4B FF 97 4D */	bl itemTrigger__9daAlink_cFv
/* 800B8EEC  2C 03 00 00 */	cmpwi r3, 0
/* 800B8EF0  40 82 00 20 */	bne lbl_800B8F10
/* 800B8EF4  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800B8EF8  28 00 00 52 */	cmplwi r0, 0x52
/* 800B8EFC  40 82 00 28 */	bne lbl_800B8F24
/* 800B8F00  7F E3 FB 78 */	mr r3, r31
/* 800B8F04  4B FF 97 01 */	bl itemButton__9daAlink_cFv
/* 800B8F08  2C 03 00 00 */	cmpwi r3, 0
/* 800B8F0C  41 82 00 18 */	beq lbl_800B8F24
lbl_800B8F10:
/* 800B8F10  7F E3 FB 78 */	mr r3, r31
/* 800B8F14  4B FF E0 15 */	bl checkItemActionInitStart__9daAlink_cFv
/* 800B8F18  2C 03 FF FF */	cmpwi r3, -1
/* 800B8F1C  41 82 00 08 */	beq lbl_800B8F24
/* 800B8F20  48 00 00 D8 */	b lbl_800B8FF8
lbl_800B8F24:
/* 800B8F24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B8F28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B8F2C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800B8F30  38 80 29 08 */	li r4, 0x2908
/* 800B8F34  4B F7 BA 89 */	bl isEventBit__11dSv_event_cCFUs
/* 800B8F38  2C 03 00 00 */	cmpwi r3, 0
/* 800B8F3C  40 82 00 10 */	bne lbl_800B8F4C
/* 800B8F40  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800B8F44  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800B8F48  41 82 00 AC */	beq lbl_800B8FF4
lbl_800B8F4C:
/* 800B8F4C  7F E3 FB 78 */	mr r3, r31
/* 800B8F50  48 02 37 29 */	bl checkGuardActionChange__9daAlink_cFv
/* 800B8F54  2C 03 00 00 */	cmpwi r3, 0
/* 800B8F58  41 82 00 9C */	beq lbl_800B8FF4
/* 800B8F5C  7F E3 FB 78 */	mr r3, r31
/* 800B8F60  48 00 20 21 */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800B8F64  2C 03 00 00 */	cmpwi r3, 0
/* 800B8F68  40 82 00 8C */	bne lbl_800B8FF4
/* 800B8F6C  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800B8F70  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800B8F74  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800B8F78  7C 80 00 39 */	and. r0, r4, r0
/* 800B8F7C  40 82 00 78 */	bne lbl_800B8FF4
/* 800B8F80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B8F84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B8F88  88 03 00 15 */	lbz r0, 0x15(r3)
/* 800B8F8C  28 00 00 FF */	cmplwi r0, 0xff
/* 800B8F90  41 82 00 64 */	beq lbl_800B8FF4
/* 800B8F94  48 00 76 01 */	bl checkNotBattleStage__9daAlink_cFv
/* 800B8F98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8F9C  40 82 00 58 */	bne lbl_800B8FF4
/* 800B8FA0  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800B8FA4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B8FA8  40 82 00 10 */	bne lbl_800B8FB8
/* 800B8FAC  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B8FB0  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B8FB4  41 82 00 40 */	beq lbl_800B8FF4
lbl_800B8FB8:
/* 800B8FB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B8FBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B8FC0  88 03 5E 1C */	lbz r0, 0x5e1c(r3)
/* 800B8FC4  28 00 00 00 */	cmplwi r0, 0
/* 800B8FC8  40 82 00 2C */	bne lbl_800B8FF4
/* 800B8FCC  7F E3 FB 78 */	mr r3, r31
/* 800B8FD0  38 80 00 3A */	li r4, 0x3a
/* 800B8FD4  4B FF A2 4D */	bl setRStatus__9daAlink_cFUc
/* 800B8FD8  7F E3 FB 78 */	mr r3, r31
/* 800B8FDC  4B FF 96 AD */	bl spActionTrigger__9daAlink_cFv
/* 800B8FE0  2C 03 00 00 */	cmpwi r3, 0
/* 800B8FE4  41 82 00 10 */	beq lbl_800B8FF4
/* 800B8FE8  7F E3 FB 78 */	mr r3, r31
/* 800B8FEC  48 02 4A 25 */	bl procGuardAttackInit__9daAlink_cFv
/* 800B8FF0  48 00 00 08 */	b lbl_800B8FF8
lbl_800B8FF4:
/* 800B8FF4  38 60 00 00 */	li r3, 0
lbl_800B8FF8:
/* 800B8FF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B8FFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B9000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B9004  7C 08 03 A6 */	mtlr r0
/* 800B9008  38 21 00 10 */	addi r1, r1, 0x10
/* 800B900C  4E 80 00 20 */	blr 
