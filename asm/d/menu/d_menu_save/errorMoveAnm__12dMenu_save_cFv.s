lbl_801F5F84:
/* 801F5F84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F5F88  7C 08 02 A6 */	mflr r0
/* 801F5F8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F5F90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F5F94  7C 7F 1B 78 */	mr r31, r3
/* 801F5F98  80 63 00 B8 */	lwz r3, 0xb8(r3)
/* 801F5F9C  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 801F5FA0  7C 03 00 00 */	cmpw r3, r0
/* 801F5FA4  41 82 00 7C */	beq lbl_801F6020
/* 801F5FA8  40 80 00 24 */	bge lbl_801F5FCC
/* 801F5FAC  38 03 00 02 */	addi r0, r3, 2
/* 801F5FB0  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 801F5FB4  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 801F5FB8  80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 801F5FBC  7C 00 18 00 */	cmpw r0, r3
/* 801F5FC0  40 81 00 28 */	ble lbl_801F5FE8
/* 801F5FC4  90 7F 00 B8 */	stw r3, 0xb8(r31)
/* 801F5FC8  48 00 00 20 */	b lbl_801F5FE8
lbl_801F5FCC:
/* 801F5FCC  38 03 FF FE */	addi r0, r3, -2
/* 801F5FD0  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 801F5FD4  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 801F5FD8  80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 801F5FDC  7C 00 18 00 */	cmpw r0, r3
/* 801F5FE0  40 80 00 08 */	bge lbl_801F5FE8
/* 801F5FE4  90 7F 00 B8 */	stw r3, 0xb8(r31)
lbl_801F5FE8:
/* 801F5FE8  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 801F5FEC  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F5FF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F5FF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F5FF8  3C 00 43 30 */	lis r0, 0x4330
/* 801F5FFC  90 01 00 08 */	stw r0, 8(r1)
/* 801F6000  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F6004  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F6008  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 801F600C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F6010  80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 801F6014  48 10 1F B9 */	bl animationTransform__7J2DPaneFv
/* 801F6018  38 60 00 00 */	li r3, 0
/* 801F601C  48 00 00 74 */	b lbl_801F6090
lbl_801F6020:
/* 801F6020  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F6024  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F6028  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F602C  3C 00 43 30 */	lis r0, 0x4330
/* 801F6030  90 01 00 08 */	stw r0, 8(r1)
/* 801F6034  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F6038  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F603C  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 801F6040  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F6044  80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 801F6048  48 10 1F 85 */	bl animationTransform__7J2DPaneFv
/* 801F604C  80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 801F6050  38 80 00 00 */	li r4, 0
/* 801F6054  81 83 00 00 */	lwz r12, 0(r3)
/* 801F6058  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F605C  7D 89 03 A6 */	mtctr r12
/* 801F6060  4E 80 04 21 */	bctrl 
/* 801F6064  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 801F6068  2C 00 0B 2B */	cmpwi r0, 0xb2b
/* 801F606C  40 82 00 10 */	bne lbl_801F607C
/* 801F6070  38 00 00 01 */	li r0, 1
/* 801F6074  98 1F 00 D2 */	stb r0, 0xd2(r31)
/* 801F6078  48 00 00 0C */	b lbl_801F6084
lbl_801F607C:
/* 801F607C  38 00 00 00 */	li r0, 0
/* 801F6080  98 1F 00 D2 */	stb r0, 0xd2(r31)
lbl_801F6084:
/* 801F6084  38 00 00 00 */	li r0, 0
/* 801F6088  98 1F 00 D3 */	stb r0, 0xd3(r31)
/* 801F608C  38 60 00 01 */	li r3, 1
lbl_801F6090:
/* 801F6090  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F6094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F6098  7C 08 03 A6 */	mtlr r0
/* 801F609C  38 21 00 20 */	addi r1, r1, 0x20
/* 801F60A0  4E 80 00 20 */	blr 
