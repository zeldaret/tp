lbl_80CFC550:
/* 80CFC550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFC554  7C 08 02 A6 */	mflr r0
/* 80CFC558  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFC55C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFC560  93 C1 00 08 */	stw r30, 8(r1)
/* 80CFC564  7C 7F 1B 78 */	mr r31, r3
/* 80CFC568  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFC56C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFC570  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80CFC574  38 00 00 00 */	li r0, 0
/* 80CFC578  B0 03 07 80 */	sth r0, 0x780(r3)
/* 80CFC57C  98 03 07 7D */	stb r0, 0x77d(r3)
/* 80CFC580  4B FF FB 95 */	bl checkDown__13daObjSwHang_cFv
/* 80CFC584  2C 03 00 00 */	cmpwi r3, 0
/* 80CFC588  41 82 00 14 */	beq lbl_80CFC59C
/* 80CFC58C  A0 1F 07 80 */	lhz r0, 0x780(r31)
/* 80CFC590  60 00 00 01 */	ori r0, r0, 1
/* 80CFC594  B0 1F 07 80 */	sth r0, 0x780(r31)
/* 80CFC598  48 00 00 E8 */	b lbl_80CFC680
lbl_80CFC59C:
/* 80CFC59C  88 1F 07 7C */	lbz r0, 0x77c(r31)
/* 80CFC5A0  28 00 00 00 */	cmplwi r0, 0
/* 80CFC5A4  41 82 00 68 */	beq lbl_80CFC60C
/* 80CFC5A8  88 1F 07 30 */	lbz r0, 0x730(r31)
/* 80CFC5AC  2C 00 00 02 */	cmpwi r0, 2
/* 80CFC5B0  41 82 00 24 */	beq lbl_80CFC5D4
/* 80CFC5B4  40 80 00 58 */	bge lbl_80CFC60C
/* 80CFC5B8  2C 00 00 00 */	cmpwi r0, 0
/* 80CFC5BC  40 80 00 08 */	bge lbl_80CFC5C4
/* 80CFC5C0  48 00 00 4C */	b lbl_80CFC60C
lbl_80CFC5C4:
/* 80CFC5C4  A0 1F 07 80 */	lhz r0, 0x780(r31)
/* 80CFC5C8  60 00 00 01 */	ori r0, r0, 1
/* 80CFC5CC  B0 1F 07 80 */	sth r0, 0x780(r31)
/* 80CFC5D0  48 00 00 B0 */	b lbl_80CFC680
lbl_80CFC5D4:
/* 80CFC5D4  7F C3 F3 78 */	mr r3, r30
/* 80CFC5D8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80CFC5DC  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80CFC5E0  7D 89 03 A6 */	mtctr r12
/* 80CFC5E4  4E 80 04 21 */	bctrl 
/* 80CFC5E8  2C 03 00 00 */	cmpwi r3, 0
/* 80CFC5EC  41 82 00 14 */	beq lbl_80CFC600
/* 80CFC5F0  A0 1F 07 80 */	lhz r0, 0x780(r31)
/* 80CFC5F4  60 00 00 01 */	ori r0, r0, 1
/* 80CFC5F8  B0 1F 07 80 */	sth r0, 0x780(r31)
/* 80CFC5FC  48 00 00 10 */	b lbl_80CFC60C
lbl_80CFC600:
/* 80CFC600  A0 1F 07 80 */	lhz r0, 0x780(r31)
/* 80CFC604  60 00 00 02 */	ori r0, r0, 2
/* 80CFC608  B0 1F 07 80 */	sth r0, 0x780(r31)
lbl_80CFC60C:
/* 80CFC60C  88 1F 07 30 */	lbz r0, 0x730(r31)
/* 80CFC610  2C 00 00 04 */	cmpwi r0, 4
/* 80CFC614  41 82 00 2C */	beq lbl_80CFC640
/* 80CFC618  40 80 00 68 */	bge lbl_80CFC680
/* 80CFC61C  2C 00 00 03 */	cmpwi r0, 3
/* 80CFC620  40 80 00 08 */	bge lbl_80CFC628
/* 80CFC624  48 00 00 5C */	b lbl_80CFC680
lbl_80CFC628:
/* 80CFC628  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CFC62C  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80CFC630  41 82 00 50 */	beq lbl_80CFC680
/* 80CFC634  38 00 00 01 */	li r0, 1
/* 80CFC638  98 1F 07 7D */	stb r0, 0x77d(r31)
/* 80CFC63C  48 00 00 44 */	b lbl_80CFC680
lbl_80CFC640:
/* 80CFC640  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CFC644  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80CFC648  41 82 00 38 */	beq lbl_80CFC680
/* 80CFC64C  7F C3 F3 78 */	mr r3, r30
/* 80CFC650  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80CFC654  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80CFC658  7D 89 03 A6 */	mtctr r12
/* 80CFC65C  4E 80 04 21 */	bctrl 
/* 80CFC660  2C 03 00 00 */	cmpwi r3, 0
/* 80CFC664  41 82 00 10 */	beq lbl_80CFC674
/* 80CFC668  38 00 00 01 */	li r0, 1
/* 80CFC66C  98 1F 07 7D */	stb r0, 0x77d(r31)
/* 80CFC670  48 00 00 10 */	b lbl_80CFC680
lbl_80CFC674:
/* 80CFC674  A0 1F 07 80 */	lhz r0, 0x780(r31)
/* 80CFC678  60 00 00 02 */	ori r0, r0, 2
/* 80CFC67C  B0 1F 07 80 */	sth r0, 0x780(r31)
lbl_80CFC680:
/* 80CFC680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFC684  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CFC688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFC68C  7C 08 03 A6 */	mtlr r0
/* 80CFC690  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFC694  4E 80 00 20 */	blr 
