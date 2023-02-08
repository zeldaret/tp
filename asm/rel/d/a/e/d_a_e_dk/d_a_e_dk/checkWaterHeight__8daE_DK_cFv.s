lbl_806AAC24:
/* 806AAC24  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806AAC28  7C 08 02 A6 */	mflr r0
/* 806AAC2C  90 01 00 74 */	stw r0, 0x74(r1)
/* 806AAC30  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 806AAC34  93 C1 00 68 */	stw r30, 0x68(r1)
/* 806AAC38  7C 7E 1B 78 */	mr r30, r3
/* 806AAC3C  3C 60 80 6B */	lis r3, lit_3764@ha /* 0x806AD538@ha */
/* 806AAC40  3B E3 D5 38 */	addi r31, r3, lit_3764@l /* 0x806AD538@l */
/* 806AAC44  38 61 00 14 */	addi r3, r1, 0x14
/* 806AAC48  4B 9C CB 69 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 806AAC4C  80 1E 06 7C */	lwz r0, 0x67c(r30)
/* 806AAC50  2C 00 00 04 */	cmpwi r0, 4
/* 806AAC54  41 82 00 7C */	beq lbl_806AACD0
/* 806AAC58  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806AAC5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806AAC60  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806AAC64  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806AAC68  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806AAC6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AAC70  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806AAC74  EC 01 00 2A */	fadds f0, f1, f0
/* 806AAC78  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806AAC7C  38 61 00 14 */	addi r3, r1, 0x14
/* 806AAC80  38 81 00 08 */	addi r4, r1, 8
/* 806AAC84  4B BB D0 89 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 806AAC88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AAC8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AAC90  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806AAC94  38 81 00 14 */	addi r4, r1, 0x14
/* 806AAC98  4B 9C 98 09 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806AAC9C  D0 3E 06 B8 */	stfs f1, 0x6b8(r30)
/* 806AACA0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 806AACA4  C0 5E 06 B8 */	lfs f2, 0x6b8(r30)
/* 806AACA8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 806AACAC  41 82 00 98 */	beq lbl_806AAD44
/* 806AACB0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806AACB4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806AACB8  EC 01 00 2A */	fadds f0, f1, f0
/* 806AACBC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 806AACC0  40 81 00 84 */	ble lbl_806AAD44
/* 806AACC4  EC 02 08 28 */	fsubs f0, f2, f1
/* 806AACC8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806AACCC  48 00 00 78 */	b lbl_806AAD44
lbl_806AACD0:
/* 806AACD0  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 806AACD4  D0 01 00 08 */	stfs f0, 8(r1)
/* 806AACD8  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 806AACDC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806AACE0  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 806AACE4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AACE8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806AACEC  EC 01 00 2A */	fadds f0, f1, f0
/* 806AACF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806AACF4  38 61 00 14 */	addi r3, r1, 0x14
/* 806AACF8  38 81 00 08 */	addi r4, r1, 8
/* 806AACFC  4B BB D0 11 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 806AAD00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AAD04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AAD08  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806AAD0C  38 81 00 14 */	addi r4, r1, 0x14
/* 806AAD10  4B 9C 97 91 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806AAD14  D0 3E 06 B8 */	stfs f1, 0x6b8(r30)
/* 806AAD18  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 806AAD1C  C0 5E 06 B8 */	lfs f2, 0x6b8(r30)
/* 806AAD20  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 806AAD24  41 82 00 20 */	beq lbl_806AAD44
/* 806AAD28  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806AAD2C  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 806AAD30  EC 01 00 2A */	fadds f0, f1, f0
/* 806AAD34  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 806AAD38  40 81 00 0C */	ble lbl_806AAD44
/* 806AAD3C  EC 02 08 28 */	fsubs f0, f2, f1
/* 806AAD40  D0 1E 06 74 */	stfs f0, 0x674(r30)
lbl_806AAD44:
/* 806AAD44  38 61 00 14 */	addi r3, r1, 0x14
/* 806AAD48  38 80 FF FF */	li r4, -1
/* 806AAD4C  4B 9C CA FD */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 806AAD50  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 806AAD54  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 806AAD58  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806AAD5C  7C 08 03 A6 */	mtlr r0
/* 806AAD60  38 21 00 70 */	addi r1, r1, 0x70
/* 806AAD64  4E 80 00 20 */	blr 
