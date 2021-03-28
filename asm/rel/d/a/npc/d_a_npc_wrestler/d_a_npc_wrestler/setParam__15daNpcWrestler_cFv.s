lbl_80B3EAE4:
/* 80B3EAE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B3EAE8  7C 08 02 A6 */	mflr r0
/* 80B3EAEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B3EAF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B3EAF4  7C 7F 1B 78 */	mr r31, r3
/* 80B3EAF8  38 80 00 05 */	li r4, 5
/* 80B3EAFC  38 A0 00 06 */	li r5, 6
/* 80B3EB00  4B 61 57 78 */	b getDistTableIdx__8daNpcF_cFii
/* 80B3EB04  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80B3EB08  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80B3EB0C  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80B3EB10  7F E3 FB 78 */	mr r3, r31
/* 80B3EB14  38 80 00 03 */	li r4, 3
/* 80B3EB18  38 A0 00 06 */	li r5, 6
/* 80B3EB1C  4B 61 57 5C */	b getDistTableIdx__8daNpcF_cFii
/* 80B3EB20  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80B3EB24  38 00 00 0A */	li r0, 0xa
/* 80B3EB28  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80B3EB2C  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B3EB30  28 00 00 01 */	cmplwi r0, 1
/* 80B3EB34  40 82 00 24 */	bne lbl_80B3EB58
/* 80B3EB38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3EB3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B3EB40  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B3EB44  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B3EB48  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B3EB4C  41 82 00 0C */	beq lbl_80B3EB58
/* 80B3EB50  38 00 00 00 */	li r0, 0
/* 80B3EB54  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80B3EB58:
/* 80B3EB58  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80B3EB5C  80 9F 0B DC */	lwz r4, 0xbdc(r31)
/* 80B3EB60  C0 24 00 08 */	lfs f1, 8(r4)
/* 80B3EB64  4B 53 73 DC */	b SetWallR__12dBgS_AcchCirFf
/* 80B3EB68  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80B3EB6C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B3EB70  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 80B3EB74  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3EB78  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B3EB7C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80B3EB80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B3EB84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B3EB88  7C 08 03 A6 */	mtlr r0
/* 80B3EB8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B3EB90  4E 80 00 20 */	blr 
