lbl_8061BB54:
/* 8061BB54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061BB58  7C 08 02 A6 */	mflr r0
/* 8061BB5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061BB60  39 61 00 20 */	addi r11, r1, 0x20
/* 8061BB64  4B D4 66 78 */	b _savegpr_29
/* 8061BB68  7C 7F 1B 78 */	mr r31, r3
/* 8061BB6C  3C 60 80 62 */	lis r3, lit_3650@ha
/* 8061BB70  3B C3 D9 D4 */	addi r30, r3, lit_3650@l
/* 8061BB74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8061BB78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8061BB7C  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8061BB80  A8 1F 05 D0 */	lha r0, 0x5d0(r31)
/* 8061BB84  2C 00 00 01 */	cmpwi r0, 1
/* 8061BB88  41 82 00 40 */	beq lbl_8061BBC8
/* 8061BB8C  40 80 00 C8 */	bge lbl_8061BC54
/* 8061BB90  2C 00 00 00 */	cmpwi r0, 0
/* 8061BB94  40 80 00 08 */	bge lbl_8061BB9C
/* 8061BB98  48 00 00 BC */	b lbl_8061BC54
lbl_8061BB9C:
/* 8061BB9C  38 00 00 01 */	li r0, 1
/* 8061BBA0  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 8061BBA4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8061BBA8  4B C4 BD AC */	b cM_rndF__Ff
/* 8061BBAC  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8061BBB0  EC 00 08 2A */	fadds f0, f0, f1
/* 8061BBB4  FC 00 00 1E */	fctiwz f0, f0
/* 8061BBB8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061BBBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8061BBC0  B0 1F 05 EC */	sth r0, 0x5ec(r31)
/* 8061BBC4  48 00 00 90 */	b lbl_8061BC54
lbl_8061BBC8:
/* 8061BBC8  38 7F 06 08 */	addi r3, r31, 0x608
/* 8061BBCC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8061BBD0  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8061BBD4  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8061BBD8  4B C5 3E 64 */	b cLib_addCalc2__FPffff
/* 8061BBDC  80 1F 0C A8 */	lwz r0, 0xca8(r31)
/* 8061BBE0  2C 00 00 00 */	cmpwi r0, 0
/* 8061BBE4  40 82 00 70 */	bne lbl_8061BC54
/* 8061BBE8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8061BBEC  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8061BBF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8061BBF4  40 80 00 60 */	bge lbl_8061BC54
/* 8061BBF8  C0 3F 05 E4 */	lfs f1, 0x5e4(r31)
/* 8061BBFC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8061BC00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8061BC04  40 80 00 50 */	bge lbl_8061BC54
/* 8061BC08  A8 1F 05 EC */	lha r0, 0x5ec(r31)
/* 8061BC0C  2C 00 00 00 */	cmpwi r0, 0
/* 8061BC10  40 82 00 44 */	bne lbl_8061BC54
/* 8061BC14  3C 60 80 62 */	lis r3, boss@ha
/* 8061BC18  84 83 DB D4 */	lwzu r4, boss@l(r3)
/* 8061BC1C  88 04 47 44 */	lbz r0, 0x4744(r4)
/* 8061BC20  7C 00 07 75 */	extsb. r0, r0
/* 8061BC24  40 82 00 30 */	bne lbl_8061BC54
/* 8061BC28  A8 04 47 94 */	lha r0, 0x4794(r4)
/* 8061BC2C  2C 00 00 00 */	cmpwi r0, 0
/* 8061BC30  40 82 00 24 */	bne lbl_8061BC54
/* 8061BC34  38 00 00 02 */	li r0, 2
/* 8061BC38  B0 1F 05 CE */	sth r0, 0x5ce(r31)
/* 8061BC3C  38 00 00 00 */	li r0, 0
/* 8061BC40  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 8061BC44  B0 1F 0C 98 */	sth r0, 0xc98(r31)
/* 8061BC48  38 00 00 03 */	li r0, 3
/* 8061BC4C  80 63 00 00 */	lwz r3, 0(r3)
/* 8061BC50  B0 03 47 94 */	sth r0, 0x4794(r3)
lbl_8061BC54:
/* 8061BC54  39 61 00 20 */	addi r11, r1, 0x20
/* 8061BC58  4B D4 65 D0 */	b _restgpr_29
/* 8061BC5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061BC60  7C 08 03 A6 */	mtlr r0
/* 8061BC64  38 21 00 20 */	addi r1, r1, 0x20
/* 8061BC68  4E 80 00 20 */	blr 
