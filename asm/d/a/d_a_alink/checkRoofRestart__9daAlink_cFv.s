lbl_800BE2C0:
/* 800BE2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE2C4  7C 08 02 A6 */	mflr r0
/* 800BE2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE2CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BE2D0  7C 7F 1B 78 */	mr r31, r3
/* 800BE2D4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800BE2D8  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800BE2DC  7D 89 03 A6 */	mtctr r12
/* 800BE2E0  4E 80 04 21 */	bctrl 
/* 800BE2E4  28 03 00 00 */	cmplwi r3, 0
/* 800BE2E8  41 82 00 0C */	beq lbl_800BE2F4
/* 800BE2EC  80 9F 28 18 */	lwz r4, 0x2818(r31)
/* 800BE2F0  48 00 00 08 */	b lbl_800BE2F8
lbl_800BE2F4:
/* 800BE2F4  38 80 00 00 */	li r4, 0
lbl_800BE2F8:
/* 800BE2F8  80 7F 19 9C */	lwz r3, 0x199c(r31)
/* 800BE2FC  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 800BE300  41 82 00 D0 */	beq lbl_800BE3D0
/* 800BE304  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 800BE308  40 82 00 24 */	bne lbl_800BE32C
/* 800BE30C  28 04 00 00 */	cmplwi r4, 0
/* 800BE310  41 82 00 C0 */	beq lbl_800BE3D0
/* 800BE314  80 04 06 78 */	lwz r0, 0x678(r4)
/* 800BE318  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800BE31C  41 82 00 B4 */	beq lbl_800BE3D0
/* 800BE320  88 04 0A 6D */	lbz r0, 0xa6d(r4)
/* 800BE324  28 00 00 00 */	cmplwi r0, 0
/* 800BE328  40 82 00 A8 */	bne lbl_800BE3D0
lbl_800BE32C:
/* 800BE32C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800BE330  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800BE334  40 82 00 9C */	bne lbl_800BE3D0
/* 800BE338  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800BE33C  28 00 00 35 */	cmplwi r0, 0x35
/* 800BE340  41 82 00 90 */	beq lbl_800BE3D0
/* 800BE344  28 00 00 38 */	cmplwi r0, 0x38
/* 800BE348  41 82 00 88 */	beq lbl_800BE3D0
/* 800BE34C  7F E3 FB 78 */	mr r3, r31
/* 800BE350  4B FF FF 1D */	bl checkCoachGuardGame__9daAlink_cFv
/* 800BE354  2C 03 00 00 */	cmpwi r3, 0
/* 800BE358  40 82 00 78 */	bne lbl_800BE3D0
/* 800BE35C  38 7F 1A A0 */	addi r3, r31, 0x1aa0
/* 800BE360  38 80 00 01 */	li r4, 1
/* 800BE364  4B FE 3E 7D */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 800BE368  7C 60 07 34 */	extsh r0, r3
/* 800BE36C  2C 00 00 1C */	cmpwi r0, 0x1c
/* 800BE370  41 82 00 60 */	beq lbl_800BE3D0
/* 800BE374  2C 00 01 8C */	cmpwi r0, 0x18c
/* 800BE378  40 82 00 08 */	bne lbl_800BE380
/* 800BE37C  48 00 00 54 */	b lbl_800BE3D0
lbl_800BE380:
/* 800BE380  C0 5F 1A 34 */	lfs f2, 0x1a34(r31)
/* 800BE384  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 800BE388  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800BE38C  40 81 00 44 */	ble lbl_800BE3D0
/* 800BE390  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 800BE394  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 800BE398  EC 60 08 28 */	fsubs f3, f0, f1
/* 800BE39C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800BE3A0  EC 01 00 2A */	fadds f0, f1, f0
/* 800BE3A4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800BE3A8  40 80 00 08 */	bge lbl_800BE3B0
/* 800BE3AC  FC 60 00 90 */	fmr f3, f0
lbl_800BE3B0:
/* 800BE3B0  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 800BE3B4  40 80 00 1C */	bge lbl_800BE3D0
/* 800BE3B8  7F E3 FB 78 */	mr r3, r31
/* 800BE3BC  38 80 00 05 */	li r4, 5
/* 800BE3C0  38 A0 00 C9 */	li r5, 0xc9
/* 800BE3C4  38 C0 00 04 */	li r6, 4
/* 800BE3C8  38 E0 00 00 */	li r7, 0
/* 800BE3CC  4B FF FB 95 */	bl startRestartRoom__9daAlink_cFUliii
lbl_800BE3D0:
/* 800BE3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BE3D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE3D8  7C 08 03 A6 */	mtlr r0
/* 800BE3DC  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE3E0  4E 80 00 20 */	blr 
