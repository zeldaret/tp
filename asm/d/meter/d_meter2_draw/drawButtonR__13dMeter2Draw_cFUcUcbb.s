lbl_8021764C:
/* 8021764C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80217650  7C 08 02 A6 */	mflr r0
/* 80217654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80217658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021765C  93 C1 00 08 */	stw r30, 8(r1)
/* 80217660  7C 7E 1B 78 */	mr r30, r3
/* 80217664  7C BF 2B 78 */	mr r31, r5
/* 80217668  80 63 00 78 */	lwz r3, 0x78(r3)
/* 8021766C  3C 80 5F 72 */	lis r4, 0x5F72 /* 0x5F725F6E@ha */
/* 80217670  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F725F6E@l */
/* 80217674  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 80217678  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 8021767C  81 83 00 00 */	lwz r12, 0(r3)
/* 80217680  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80217684  7D 89 03 A6 */	mtctr r12
/* 80217688  4E 80 04 21 */	bctrl 
/* 8021768C  38 00 00 00 */	li r0, 0
/* 80217690  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80217694  80 7E 03 5C */	lwz r3, 0x35c(r30)
/* 80217698  48 03 DF 31 */	bl show__13CPaneMgrAlphaFv
/* 8021769C  7F C3 F3 78 */	mr r3, r30
/* 802176A0  7F E4 FB 78 */	mr r4, r31
/* 802176A4  38 A0 00 01 */	li r5, 1
/* 802176A8  38 DE 07 6A */	addi r6, r30, 0x76a
/* 802176AC  48 00 2C 49 */	bl getActionString__13dMeter2Draw_cFUcUcPUc
/* 802176B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802176B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802176B8  88 63 5E 42 */	lbz r3, 0x5e42(r3)
/* 802176BC  54 60 FF FF */	rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 802176C0  40 82 00 0C */	bne lbl_802176CC
/* 802176C4  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 802176C8  41 82 00 0C */	beq lbl_802176D4
lbl_802176CC:
/* 802176CC  38 00 00 07 */	li r0, 7
/* 802176D0  98 1E 07 6A */	stb r0, 0x76a(r30)
lbl_802176D4:
/* 802176D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802176D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802176DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802176E0  7C 08 03 A6 */	mtlr r0
/* 802176E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802176E8  4E 80 00 20 */	blr 
