lbl_802B9C50:
/* 802B9C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B9C54  7C 08 02 A6 */	mflr r0
/* 802B9C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B9C5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B9C60  7C 7F 1B 78 */	mr r31, r3
/* 802B9C64  88 83 00 17 */	lbz r4, 0x17(r3)
/* 802B9C68  7C 80 07 75 */	extsb. r0, r4
/* 802B9C6C  40 81 00 2C */	ble lbl_802B9C98
/* 802B9C70  38 04 FF FF */	addi r0, r4, -1
/* 802B9C74  98 1F 00 17 */	stb r0, 0x17(r31)
/* 802B9C78  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 802B9C7C  7C 00 07 75 */	extsb. r0, r0
/* 802B9C80  40 82 00 44 */	bne lbl_802B9CC4
/* 802B9C84  80 1F 00 08 */	lwz r0, 8(r31)
/* 802B9C88  2C 00 00 00 */	cmpwi r0, 0
/* 802B9C8C  40 82 00 38 */	bne lbl_802B9CC4
/* 802B9C90  48 00 01 09 */	bl _load1stWaveInner_1__10Z2SceneMgrFv
/* 802B9C94  48 00 00 30 */	b lbl_802B9CC4
lbl_802B9C98:
/* 802B9C98  7C 80 07 75 */	extsb. r0, r4
/* 802B9C9C  40 80 00 28 */	bge lbl_802B9CC4
/* 802B9CA0  38 04 00 01 */	addi r0, r4, 1
/* 802B9CA4  98 1F 00 17 */	stb r0, 0x17(r31)
/* 802B9CA8  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 802B9CAC  7C 00 07 75 */	extsb. r0, r0
/* 802B9CB0  40 82 00 14 */	bne lbl_802B9CC4
/* 802B9CB4  88 1F 00 1A */	lbz r0, 0x1a(r31)
/* 802B9CB8  28 00 00 00 */	cmplwi r0, 0
/* 802B9CBC  41 82 00 08 */	beq lbl_802B9CC4
/* 802B9CC0  48 00 03 09 */	bl _load1stWaveInner_2__10Z2SceneMgrFv
lbl_802B9CC4:
/* 802B9CC4  88 1F 00 1D */	lbz r0, 0x1d(r31)
/* 802B9CC8  28 00 00 00 */	cmplwi r0, 0
/* 802B9CCC  41 82 00 54 */	beq lbl_802B9D20
/* 802B9CD0  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B9CD4  2C 03 27 10 */	cmpwi r3, 0x2710
/* 802B9CD8  40 80 00 0C */	bge lbl_802B9CE4
/* 802B9CDC  38 03 00 01 */	addi r0, r3, 1
/* 802B9CE0  90 1F 00 08 */	stw r0, 8(r31)
lbl_802B9CE4:
/* 802B9CE4  88 1F 00 1B */	lbz r0, 0x1b(r31)
/* 802B9CE8  28 00 00 00 */	cmplwi r0, 0
/* 802B9CEC  40 82 00 40 */	bne lbl_802B9D2C
/* 802B9CF0  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802B9CF4  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802B9CF8  28 00 00 03 */	cmplwi r0, 3
/* 802B9CFC  41 82 00 30 */	beq lbl_802B9D2C
/* 802B9D00  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B9D04  88 0D 82 E3 */	lbz r0, struct_80450860+0x3(r13)
/* 802B9D08  7C 03 00 00 */	cmpw r3, r0
/* 802B9D0C  40 82 00 20 */	bne lbl_802B9D2C
/* 802B9D10  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802B9D14  38 80 00 00 */	li r4, 0
/* 802B9D18  4B FF A4 4D */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 802B9D1C  48 00 00 10 */	b lbl_802B9D2C
lbl_802B9D20:
/* 802B9D20  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802B9D24  38 80 00 01 */	li r4, 1
/* 802B9D28  4B FF A4 3D */	bl setBattleBgmOff__8Z2SeqMgrFb
lbl_802B9D2C:
/* 802B9D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B9D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B9D34  7C 08 03 A6 */	mtlr r0
/* 802B9D38  38 21 00 10 */	addi r1, r1, 0x10
/* 802B9D3C  4E 80 00 20 */	blr 
