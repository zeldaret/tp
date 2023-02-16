lbl_802B4BD0:
/* 802B4BD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B4BD4  7C 08 02 A6 */	mflr r0
/* 802B4BD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B4BDC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802B4BE0  7C 7F 1B 78 */	mr r31, r3
/* 802B4BE4  80 83 00 04 */	lwz r4, 4(r3)
/* 802B4BE8  28 04 00 00 */	cmplwi r4, 0
/* 802B4BEC  41 82 00 10 */	beq lbl_802B4BFC
/* 802B4BF0  80 64 00 18 */	lwz r3, 0x18(r4)
/* 802B4BF4  90 61 00 14 */	stw r3, 0x14(r1)
/* 802B4BF8  48 00 00 08 */	b lbl_802B4C00
lbl_802B4BFC:
/* 802B4BFC  38 60 FF FF */	li r3, -1
lbl_802B4C00:
/* 802B4C00  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B4C04  28 00 00 0F */	cmplwi r0, 0xf
/* 802B4C08  41 82 00 28 */	beq lbl_802B4C30
/* 802B4C0C  28 04 00 00 */	cmplwi r4, 0
/* 802B4C10  41 82 00 10 */	beq lbl_802B4C20
/* 802B4C14  80 64 00 18 */	lwz r3, 0x18(r4)
/* 802B4C18  90 61 00 10 */	stw r3, 0x10(r1)
/* 802B4C1C  48 00 00 08 */	b lbl_802B4C24
lbl_802B4C20:
/* 802B4C20  38 60 FF FF */	li r3, -1
lbl_802B4C24:
/* 802B4C24  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B4C28  28 00 00 1B */	cmplwi r0, 0x1b
/* 802B4C2C  40 82 00 34 */	bne lbl_802B4C60
lbl_802B4C30:
/* 802B4C30  88 7F 00 C0 */	lbz r3, 0xc0(r31)
/* 802B4C34  28 03 00 00 */	cmplwi r3, 0
/* 802B4C38  41 82 00 28 */	beq lbl_802B4C60
/* 802B4C3C  38 03 FF FF */	addi r0, r3, -1
/* 802B4C40  98 1F 00 C0 */	stb r0, 0xc0(r31)
/* 802B4C44  88 1F 00 C0 */	lbz r0, 0xc0(r31)
/* 802B4C48  28 00 00 00 */	cmplwi r0, 0
/* 802B4C4C  40 82 00 14 */	bne lbl_802B4C60
/* 802B4C50  80 7F 00 04 */	lwz r3, 4(r31)
/* 802B4C54  4B FE D9 45 */	bl stop__8JAISoundFv
/* 802B4C58  38 00 00 00 */	li r0, 0
/* 802B4C5C  98 1F 00 BF */	stb r0, 0xbf(r31)
lbl_802B4C60:
/* 802B4C60  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 802B4C64  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 802B4C68  40 82 02 34 */	bne lbl_802B4E9C
/* 802B4C6C  80 6D 86 00 */	lwz r3, __OSReport_disable-0x18(r13)
/* 802B4C70  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 802B4C74  28 00 00 00 */	cmplwi r0, 0
/* 802B4C78  41 82 02 24 */	beq lbl_802B4E9C
/* 802B4C7C  80 6D 85 C8 */	lwz r3, __OSReport_disable-0x50(r13)
/* 802B4C80  48 00 AD 15 */	bl searchEnemy__13Z2SoundObjMgrFv
/* 802B4C84  80 7F 00 04 */	lwz r3, 4(r31)
/* 802B4C88  28 03 00 00 */	cmplwi r3, 0
/* 802B4C8C  41 82 00 10 */	beq lbl_802B4C9C
/* 802B4C90  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802B4C94  90 81 00 0C */	stw r4, 0xc(r1)
/* 802B4C98  48 00 00 08 */	b lbl_802B4CA0
lbl_802B4C9C:
/* 802B4C9C  38 80 FF FF */	li r4, -1
lbl_802B4CA0:
/* 802B4CA0  3C 60 01 00 */	lis r3, 0x0100 /* 0x0100001B@ha */
/* 802B4CA4  38 03 00 1B */	addi r0, r3, 0x001B /* 0x0100001B@l */
/* 802B4CA8  7C 04 00 00 */	cmpw r4, r0
/* 802B4CAC  41 82 01 F0 */	beq lbl_802B4E9C
/* 802B4CB0  40 80 01 BC */	bge lbl_802B4E6C
/* 802B4CB4  38 03 00 0F */	addi r0, r3, 0xf
/* 802B4CB8  7C 04 00 00 */	cmpw r4, r0
/* 802B4CBC  41 82 00 08 */	beq lbl_802B4CC4
/* 802B4CC0  48 00 01 AC */	b lbl_802B4E6C
lbl_802B4CC4:
/* 802B4CC4  80 7F 00 00 */	lwz r3, 0(r31)
/* 802B4CC8  28 03 00 00 */	cmplwi r3, 0
/* 802B4CCC  41 82 00 10 */	beq lbl_802B4CDC
/* 802B4CD0  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B4CD4  90 61 00 08 */	stw r3, 8(r1)
/* 802B4CD8  48 00 00 08 */	b lbl_802B4CE0
lbl_802B4CDC:
/* 802B4CDC  38 60 FF FF */	li r3, -1
lbl_802B4CE0:
/* 802B4CE0  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B4CE4  28 00 00 00 */	cmplwi r0, 0
/* 802B4CE8  40 82 00 14 */	bne lbl_802B4CFC
/* 802B4CEC  80 6D 85 C8 */	lwz r3, __OSReport_disable-0x50(r13)
/* 802B4CF0  48 00 B4 F5 */	bl isTwilightBattle__13Z2SoundObjMgrFv
/* 802B4CF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B4CF8  41 82 01 A4 */	beq lbl_802B4E9C
lbl_802B4CFC:
/* 802B4CFC  88 7F 00 C1 */	lbz r3, 0xc1(r31)
/* 802B4D00  28 03 00 00 */	cmplwi r3, 0
/* 802B4D04  41 82 01 98 */	beq lbl_802B4E9C
/* 802B4D08  38 03 FF FF */	addi r0, r3, -1
/* 802B4D0C  98 1F 00 C1 */	stb r0, 0xc1(r31)
/* 802B4D10  88 7F 00 C1 */	lbz r3, 0xc1(r31)
/* 802B4D14  88 1F 00 C2 */	lbz r0, 0xc2(r31)
/* 802B4D18  7C 03 00 40 */	cmplw r3, r0
/* 802B4D1C  40 80 00 8C */	bge lbl_802B4DA8
/* 802B4D20  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B4D24  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 802B4D28  28 00 00 00 */	cmplwi r0, 0
/* 802B4D2C  41 82 00 0C */	beq lbl_802B4D38
/* 802B4D30  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 802B4D34  48 00 00 08 */	b lbl_802B4D3C
lbl_802B4D38:
/* 802B4D38  C0 1F 00 24 */	lfs f0, 0x24(r31)
lbl_802B4D3C:
/* 802B4D3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802B4D40  41 82 00 68 */	beq lbl_802B4DA8
/* 802B4D44  88 0D 82 EA */	lbz r0, struct_80450868+0x2(r13)
/* 802B4D48  28 00 00 00 */	cmplwi r0, 0
/* 802B4D4C  41 82 00 40 */	beq lbl_802B4D8C
/* 802B4D50  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 802B4D54  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802B4D58  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B4D5C  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B4D60  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 802B4D64  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B4D68  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B4D6C  3C 00 43 30 */	lis r0, 0x4330
/* 802B4D70  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B4D74  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B4D78  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B4D7C  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B4D80  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802B4D84  D0 7F 00 2C */	stfs f3, 0x2c(r31)
/* 802B4D88  48 00 00 20 */	b lbl_802B4DA8
lbl_802B4D8C:
/* 802B4D8C  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802B4D90  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 802B4D94  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B4D98  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802B4D9C  38 00 00 00 */	li r0, 0
/* 802B4DA0  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802B4DA4  D0 1F 00 2C */	stfs f0, 0x2c(r31)
lbl_802B4DA8:
/* 802B4DA8  88 1F 00 C1 */	lbz r0, 0xc1(r31)
/* 802B4DAC  28 00 00 00 */	cmplwi r0, 0
/* 802B4DB0  40 82 00 EC */	bne lbl_802B4E9C
/* 802B4DB4  7F E3 FB 78 */	mr r3, r31
/* 802B4DB8  38 80 00 00 */	li r4, 0
/* 802B4DBC  4B FF F6 15 */	bl setBattleDistIgnore__8Z2SeqMgrFb
/* 802B4DC0  80 6D 85 C8 */	lwz r3, __OSReport_disable-0x50(r13)
/* 802B4DC4  48 00 B3 5D */	bl checkBattleFinish__13Z2SoundObjMgrFv
/* 802B4DC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B4DCC  41 82 00 14 */	beq lbl_802B4DE0
/* 802B4DD0  7F E3 FB 78 */	mr r3, r31
/* 802B4DD4  38 80 00 03 */	li r4, 3
/* 802B4DD8  4B FF FA 6D */	bl setBattleSeqState__8Z2SeqMgrFUc
/* 802B4DDC  48 00 00 C0 */	b lbl_802B4E9C
lbl_802B4DE0:
/* 802B4DE0  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B4DE4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 802B4DE8  28 00 00 00 */	cmplwi r0, 0
/* 802B4DEC  41 82 00 0C */	beq lbl_802B4DF8
/* 802B4DF0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 802B4DF4  48 00 00 08 */	b lbl_802B4DFC
lbl_802B4DF8:
/* 802B4DF8  C0 1F 00 24 */	lfs f0, 0x24(r31)
lbl_802B4DFC:
/* 802B4DFC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802B4E00  41 82 00 9C */	beq lbl_802B4E9C
/* 802B4E04  88 0D 82 EA */	lbz r0, struct_80450868+0x2(r13)
/* 802B4E08  28 00 00 00 */	cmplwi r0, 0
/* 802B4E0C  41 82 00 40 */	beq lbl_802B4E4C
/* 802B4E10  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 802B4E14  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802B4E18  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B4E1C  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B4E20  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 802B4E24  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B4E28  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B4E2C  3C 00 43 30 */	lis r0, 0x4330
/* 802B4E30  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B4E34  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B4E38  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B4E3C  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B4E40  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802B4E44  D0 7F 00 2C */	stfs f3, 0x2c(r31)
/* 802B4E48  48 00 00 54 */	b lbl_802B4E9C
lbl_802B4E4C:
/* 802B4E4C  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802B4E50  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 802B4E54  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B4E58  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802B4E5C  38 00 00 00 */	li r0, 0
/* 802B4E60  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802B4E64  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 802B4E68  48 00 00 34 */	b lbl_802B4E9C
lbl_802B4E6C:
/* 802B4E6C  38 00 00 00 */	li r0, 0
/* 802B4E70  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 802B4E74  7F E3 FB 78 */	mr r3, r31
/* 802B4E78  38 80 00 00 */	li r4, 0
/* 802B4E7C  4B FF F5 55 */	bl setBattleDistIgnore__8Z2SeqMgrFb
/* 802B4E80  38 60 00 00 */	li r3, 0
/* 802B4E84  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 802B4E88  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 802B4E8C  98 1F 00 D0 */	stb r0, 0xd0(r31)
/* 802B4E90  98 7F 00 C1 */	stb r3, 0xc1(r31)
/* 802B4E94  88 0D 82 E9 */	lbz r0, struct_80450868+0x1(r13)
/* 802B4E98  98 1F 00 C2 */	stb r0, 0xc2(r31)
lbl_802B4E9C:
/* 802B4E9C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802B4EA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B4EA4  7C 08 03 A6 */	mtlr r0
/* 802B4EA8  38 21 00 30 */	addi r1, r1, 0x30
/* 802B4EAC  4E 80 00 20 */	blr 
