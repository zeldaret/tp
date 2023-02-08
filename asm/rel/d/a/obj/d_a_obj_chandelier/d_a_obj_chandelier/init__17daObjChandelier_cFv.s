lbl_80BC85E4:
/* 80BC85E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC85E8  7C 08 02 A6 */	mflr r0
/* 80BC85EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC85F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC85F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC85F8  7C 7E 1B 78 */	mr r30, r3
/* 80BC85FC  3C 60 80 BD */	lis r3, lit_3731@ha /* 0x80BC8CDC@ha */
/* 80BC8600  3B E3 8C DC */	addi r31, r3, lit_3731@l /* 0x80BC8CDC@l */
/* 80BC8604  38 00 00 00 */	li r0, 0
/* 80BC8608  98 1E 06 09 */	stb r0, 0x609(r30)
/* 80BC860C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC8610  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80BC8614  2C 00 00 01 */	cmpwi r0, 1
/* 80BC8618  40 82 00 0C */	bne lbl_80BC8624
/* 80BC861C  38 00 00 04 */	li r0, 4
/* 80BC8620  98 1E 06 09 */	stb r0, 0x609(r30)
lbl_80BC8624:
/* 80BC8624  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BC8628  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 80BC862C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BC8630  D0 1E 05 AC */	stfs f0, 0x5ac(r30)
/* 80BC8634  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BC8638  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80BC863C  38 60 00 00 */	li r3, 0
/* 80BC8640  98 7E 06 0A */	stb r3, 0x60a(r30)
/* 80BC8644  88 1E 06 0A */	lbz r0, 0x60a(r30)
/* 80BC8648  98 1E 06 0B */	stb r0, 0x60b(r30)
/* 80BC864C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80BC8650  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BC8654  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BC8658  D0 3E 04 F8 */	stfs f1, 0x4f8(r30)
/* 80BC865C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BC8660  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BC8664  D0 3E 05 00 */	stfs f1, 0x500(r30)
/* 80BC8668  90 7E 05 FC */	stw r3, 0x5fc(r30)
/* 80BC866C  38 00 00 01 */	li r0, 1
/* 80BC8670  98 1E 06 08 */	stb r0, 0x608(r30)
/* 80BC8674  B0 7E 06 06 */	sth r3, 0x606(r30)
/* 80BC8678  7F C3 F3 78 */	mr r3, r30
/* 80BC867C  48 00 04 A5 */	bl hookSwingInitParm__17daObjChandelier_cFv
/* 80BC8680  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BC8684  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80BC8688  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BC868C  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 80BC8690  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 80BC8694  54 60 07 3F */	clrlwi. r0, r3, 0x1c
/* 80BC8698  40 82 00 4C */	bne lbl_80BC86E4
/* 80BC869C  54 64 E6 3E */	rlwinm r4, r3, 0x1c, 0x18, 0x1f
/* 80BC86A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC86A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC86A8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BC86AC  7C 05 07 74 */	extsb r5, r0
/* 80BC86B0  4B 46 CC B1 */	bl isSwitch__10dSv_info_cCFii
/* 80BC86B4  2C 03 00 00 */	cmpwi r3, 0
/* 80BC86B8  41 82 00 2C */	beq lbl_80BC86E4
/* 80BC86BC  38 00 00 04 */	li r0, 4
/* 80BC86C0  98 1E 06 09 */	stb r0, 0x609(r30)
/* 80BC86C4  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 80BC86C8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BC86CC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BC86D0  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 80BC86D4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BC86D8  D0 1E 05 AC */	stfs f0, 0x5ac(r30)
/* 80BC86DC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BC86E0  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
lbl_80BC86E4:
/* 80BC86E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC86E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC86EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC86F0  7C 08 03 A6 */	mtlr r0
/* 80BC86F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC86F8  4E 80 00 20 */	blr 
