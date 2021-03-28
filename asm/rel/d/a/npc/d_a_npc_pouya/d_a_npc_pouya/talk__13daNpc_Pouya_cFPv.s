lbl_80AB0A7C:
/* 80AB0A7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB0A80  7C 08 02 A6 */	mflr r0
/* 80AB0A84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB0A88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AB0A8C  7C 7F 1B 78 */	mr r31, r3
/* 80AB0A90  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AB0A94  2C 00 00 02 */	cmpwi r0, 2
/* 80AB0A98  41 82 00 38 */	beq lbl_80AB0AD0
/* 80AB0A9C  40 80 02 48 */	bge lbl_80AB0CE4
/* 80AB0AA0  2C 00 00 00 */	cmpwi r0, 0
/* 80AB0AA4  40 80 00 0C */	bge lbl_80AB0AB0
/* 80AB0AA8  48 00 02 3C */	b lbl_80AB0CE4
/* 80AB0AAC  48 00 02 38 */	b lbl_80AB0CE4
lbl_80AB0AB0:
/* 80AB0AB0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AB0AB4  2C 00 00 00 */	cmpwi r0, 0
/* 80AB0AB8  40 82 00 18 */	bne lbl_80AB0AD0
/* 80AB0ABC  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80AB0AC0  38 A0 00 00 */	li r5, 0
/* 80AB0AC4  4B 69 B1 2C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AB0AC8  38 00 00 02 */	li r0, 2
/* 80AB0ACC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AB0AD0:
/* 80AB0AD0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AB0AD4  2C 00 00 00 */	cmpwi r0, 0
/* 80AB0AD8  40 82 02 0C */	bne lbl_80AB0CE4
/* 80AB0ADC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AB0AE0  28 00 00 00 */	cmplwi r0, 0
/* 80AB0AE4  40 82 00 30 */	bne lbl_80AB0B14
/* 80AB0AE8  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80AB0AEC  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AB0AF0  7C 03 00 00 */	cmpw r3, r0
/* 80AB0AF4  41 82 00 20 */	beq lbl_80AB0B14
/* 80AB0AF8  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80AB0AFC  28 00 00 00 */	cmplwi r0, 0
/* 80AB0B00  41 82 01 8C */	beq lbl_80AB0C8C
/* 80AB0B04  28 00 00 04 */	cmplwi r0, 4
/* 80AB0B08  41 82 01 84 */	beq lbl_80AB0C8C
/* 80AB0B0C  28 00 00 05 */	cmplwi r0, 5
/* 80AB0B10  41 82 01 7C */	beq lbl_80AB0C8C
lbl_80AB0B14:
/* 80AB0B14  7F E3 FB 78 */	mr r3, r31
/* 80AB0B18  38 80 00 00 */	li r4, 0
/* 80AB0B1C  38 A0 00 00 */	li r5, 0
/* 80AB0B20  38 C0 00 00 */	li r6, 0
/* 80AB0B24  38 E0 00 00 */	li r7, 0
/* 80AB0B28  4B 69 B1 50 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AB0B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80AB0B30  41 82 00 BC */	beq lbl_80AB0BEC
/* 80AB0B34  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AB0B38  38 81 00 08 */	addi r4, r1, 8
/* 80AB0B3C  4B 79 99 EC */	b getEventId__10dMsgFlow_cFPi
/* 80AB0B40  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80AB0B44  38 00 00 00 */	li r0, 0
/* 80AB0B48  98 1F 0F CE */	stb r0, 0xfce(r31)
/* 80AB0B4C  2C 03 00 01 */	cmpwi r3, 1
/* 80AB0B50  41 82 00 08 */	beq lbl_80AB0B58
/* 80AB0B54  48 00 00 60 */	b lbl_80AB0BB4
lbl_80AB0B58:
/* 80AB0B58  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80AB0B5C  3C 03 00 01 */	addis r0, r3, 1
/* 80AB0B60  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AB0B64  40 82 00 28 */	bne lbl_80AB0B8C
/* 80AB0B68  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80AB0B6C  80 81 00 08 */	lwz r4, 8(r1)
/* 80AB0B70  38 A0 00 00 */	li r5, 0
/* 80AB0B74  38 C0 FF FF */	li r6, -1
/* 80AB0B78  38 E0 FF FF */	li r7, -1
/* 80AB0B7C  39 00 00 00 */	li r8, 0
/* 80AB0B80  39 20 00 00 */	li r9, 0
/* 80AB0B84  4B 56 B0 64 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80AB0B88  90 7F 0D 90 */	stw r3, 0xd90(r31)
lbl_80AB0B8C:
/* 80AB0B8C  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80AB0B90  4B 57 08 0C */	b fpcEx_IsExist__FUi
/* 80AB0B94  2C 03 00 00 */	cmpwi r3, 0
/* 80AB0B98  41 82 00 54 */	beq lbl_80AB0BEC
/* 80AB0B9C  38 00 00 01 */	li r0, 1
/* 80AB0BA0  98 1F 0F CE */	stb r0, 0xfce(r31)
/* 80AB0BA4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AB0BA8  7F E3 FB 78 */	mr r3, r31
/* 80AB0BAC  4B 69 96 78 */	b evtChange__8daNpcT_cFv
/* 80AB0BB0  48 00 00 3C */	b lbl_80AB0BEC
lbl_80AB0BB4:
/* 80AB0BB4  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80AB0BB8  28 00 00 01 */	cmplwi r0, 1
/* 80AB0BBC  40 82 00 30 */	bne lbl_80AB0BEC
/* 80AB0BC0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB0BC4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AB0BC8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AB0BCC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AB0BD0  4B 69 4B 10 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80AB0BD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB0BD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB0BDC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AB0BE0  4B 59 18 88 */	b reset__14dEvt_control_cFv
/* 80AB0BE4  38 00 00 03 */	li r0, 3
/* 80AB0BE8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AB0BEC:
/* 80AB0BEC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AB0BF0  2C 00 00 01 */	cmpwi r0, 1
/* 80AB0BF4  41 82 00 2C */	beq lbl_80AB0C20
/* 80AB0BF8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB0BFC  4B 69 4B 00 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB0C00  38 00 00 00 */	li r0, 0
/* 80AB0C04  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AB0C08  3C 60 80 AB */	lis r3, lit_4204@ha
/* 80AB0C0C  C0 03 20 B8 */	lfs f0, lit_4204@l(r3)
/* 80AB0C10  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AB0C14  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB0C18  38 00 00 01 */	li r0, 1
/* 80AB0C1C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AB0C20:
/* 80AB0C20  38 00 00 00 */	li r0, 0
/* 80AB0C24  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB0C28  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AB0C2C  28 00 00 00 */	cmplwi r0, 0
/* 80AB0C30  40 82 00 20 */	bne lbl_80AB0C50
/* 80AB0C34  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80AB0C38  28 00 00 00 */	cmplwi r0, 0
/* 80AB0C3C  41 82 00 A8 */	beq lbl_80AB0CE4
/* 80AB0C40  28 00 00 04 */	cmplwi r0, 4
/* 80AB0C44  41 82 00 A0 */	beq lbl_80AB0CE4
/* 80AB0C48  28 00 00 05 */	cmplwi r0, 5
/* 80AB0C4C  41 82 00 98 */	beq lbl_80AB0CE4
lbl_80AB0C50:
/* 80AB0C50  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AB0C54  2C 00 00 00 */	cmpwi r0, 0
/* 80AB0C58  41 82 00 28 */	beq lbl_80AB0C80
/* 80AB0C5C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB0C60  4B 69 4A 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB0C64  38 00 00 00 */	li r0, 0
/* 80AB0C68  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AB0C6C  3C 60 80 AB */	lis r3, lit_4204@ha
/* 80AB0C70  C0 03 20 B8 */	lfs f0, lit_4204@l(r3)
/* 80AB0C74  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AB0C78  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB0C7C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AB0C80:
/* 80AB0C80  38 00 00 00 */	li r0, 0
/* 80AB0C84  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB0C88  48 00 00 5C */	b lbl_80AB0CE4
lbl_80AB0C8C:
/* 80AB0C8C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AB0C90  2C 00 00 01 */	cmpwi r0, 1
/* 80AB0C94  41 82 00 2C */	beq lbl_80AB0CC0
/* 80AB0C98  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB0C9C  4B 69 4A 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB0CA0  38 00 00 00 */	li r0, 0
/* 80AB0CA4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AB0CA8  3C 60 80 AB */	lis r3, lit_4204@ha
/* 80AB0CAC  C0 03 20 B8 */	lfs f0, lit_4204@l(r3)
/* 80AB0CB0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AB0CB4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB0CB8  38 00 00 01 */	li r0, 1
/* 80AB0CBC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AB0CC0:
/* 80AB0CC0  38 00 00 00 */	li r0, 0
/* 80AB0CC4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB0CC8  7F E3 FB 78 */	mr r3, r31
/* 80AB0CCC  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80AB0CD0  38 A0 FF FF */	li r5, -1
/* 80AB0CD4  38 C0 FF FF */	li r6, -1
/* 80AB0CD8  38 E0 00 0F */	li r7, 0xf
/* 80AB0CDC  39 00 00 00 */	li r8, 0
/* 80AB0CE0  4B 69 A9 68 */	b step__8daNpcT_cFsiiii
lbl_80AB0CE4:
/* 80AB0CE4  38 60 00 00 */	li r3, 0
/* 80AB0CE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AB0CEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB0CF0  7C 08 03 A6 */	mtlr r0
/* 80AB0CF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB0CF8  4E 80 00 20 */	blr 
