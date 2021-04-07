lbl_8049FE6C:
/* 8049FE6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049FE70  7C 08 02 A6 */	mflr r0
/* 8049FE74  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049FE78  39 61 00 20 */	addi r11, r1, 0x20
/* 8049FE7C  4B EC 23 5D */	bl _savegpr_28
/* 8049FE80  7C 7F 1B 78 */	mr r31, r3
/* 8049FE84  7C 9C 23 78 */	mr r28, r4
/* 8049FE88  7C BD 2B 78 */	mr r29, r5
/* 8049FE8C  38 7F 0C FC */	addi r3, r31, 0xcfc
/* 8049FE90  7F E6 FB 78 */	mr r6, r31
/* 8049FE94  4B BD 7E D1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8049FE98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049FE9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049FEA0  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8049FEA4  7F C3 F3 78 */	mr r3, r30
/* 8049FEA8  38 9F 0C FC */	addi r4, r31, 0xcfc
/* 8049FEAC  4B BD 45 09 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8049FEB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049FEB4  41 82 00 54 */	beq lbl_8049FF08
/* 8049FEB8  C0 1F 0D 2C */	lfs f0, 0xd2c(r31)
/* 8049FEBC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8049FEC0  C0 1F 0D 30 */	lfs f0, 0xd30(r31)
/* 8049FEC4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8049FEC8  C0 1F 0D 34 */	lfs f0, 0xd34(r31)
/* 8049FECC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8049FED0  80 1F 09 64 */	lwz r0, 0x964(r31)
/* 8049FED4  60 00 00 01 */	ori r0, r0, 1
/* 8049FED8  90 1F 09 64 */	stw r0, 0x964(r31)
/* 8049FEDC  38 00 00 00 */	li r0, 0
/* 8049FEE0  98 1F 09 57 */	stb r0, 0x957(r31)
/* 8049FEE4  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 8049FEE8  3C 63 00 01 */	addis r3, r3, 1
/* 8049FEEC  38 03 80 00 */	addi r0, r3, -32768
/* 8049FEF0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8049FEF4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8049FEF8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8049FEFC  7F E3 FB 78 */	mr r3, r31
/* 8049FF00  4B FF FA A5 */	bl resetLockActor__13daBoomerang_cFv
/* 8049FF04  48 00 01 50 */	b lbl_804A0054
lbl_8049FF08:
/* 8049FF08  A8 1F 09 62 */	lha r0, 0x962(r31)
/* 8049FF0C  2C 00 00 00 */	cmpwi r0, 0
/* 8049FF10  40 82 01 44 */	bne lbl_804A0054
/* 8049FF14  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 8049FF18  7F 84 E3 78 */	mr r4, r28
/* 8049FF1C  7F A5 EB 78 */	mr r5, r29
/* 8049FF20  7F E6 FB 78 */	mr r6, r31
/* 8049FF24  4B BD 7E 41 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8049FF28  7F C3 F3 78 */	mr r3, r30
/* 8049FF2C  38 9F 0C 8C */	addi r4, r31, 0xc8c
/* 8049FF30  4B BD 44 85 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8049FF34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049FF38  41 82 01 1C */	beq lbl_804A0054
/* 8049FF3C  80 1F 09 64 */	lwz r0, 0x964(r31)
/* 8049FF40  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8049FF44  40 82 01 10 */	bne lbl_804A0054
/* 8049FF48  88 BF 09 51 */	lbz r5, 0x951(r31)
/* 8049FF4C  7C 7F 2A 14 */	add r3, r31, r5
/* 8049FF50  88 03 07 18 */	lbz r0, 0x718(r3)
/* 8049FF54  28 00 00 00 */	cmplwi r0, 0
/* 8049FF58  41 82 00 58 */	beq lbl_8049FFB0
/* 8049FF5C  38 9F 0C BC */	addi r4, r31, 0xcbc
/* 8049FF60  1C 65 00 0C */	mulli r3, r5, 0xc
/* 8049FF64  38 63 06 DC */	addi r3, r3, 0x6dc
/* 8049FF68  7C 7F 1A 14 */	add r3, r31, r3
/* 8049FF6C  4B EA 74 31 */	bl PSVECSquareDistance
/* 8049FF70  3C 60 80 4A */	lis r3, lit_5044@ha /* 0x804A2918@ha */
/* 8049FF74  C0 03 29 18 */	lfs f0, lit_5044@l(r3)  /* 0x804A2918@l */
/* 8049FF78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049FF7C  40 80 00 34 */	bge lbl_8049FFB0
/* 8049FF80  88 9F 09 51 */	lbz r4, 0x951(r31)
/* 8049FF84  88 7F 09 50 */	lbz r3, 0x950(r31)
/* 8049FF88  38 03 FF FF */	addi r0, r3, -1
/* 8049FF8C  7C 04 00 00 */	cmpw r4, r0
/* 8049FF90  40 80 00 20 */	bge lbl_8049FFB0
/* 8049FF94  38 00 00 00 */	li r0, 0
/* 8049FF98  7C 7F 22 14 */	add r3, r31, r4
/* 8049FF9C  98 03 07 18 */	stb r0, 0x718(r3)
/* 8049FFA0  88 7F 09 51 */	lbz r3, 0x951(r31)
/* 8049FFA4  38 03 00 01 */	addi r0, r3, 1
/* 8049FFA8  98 1F 09 51 */	stb r0, 0x951(r31)
/* 8049FFAC  48 00 00 A8 */	b lbl_804A0054
lbl_8049FFB0:
/* 8049FFB0  88 1F 09 57 */	lbz r0, 0x957(r31)
/* 8049FFB4  28 00 00 00 */	cmplwi r0, 0
/* 8049FFB8  40 82 00 9C */	bne lbl_804A0054
/* 8049FFBC  80 1F 09 64 */	lwz r0, 0x964(r31)
/* 8049FFC0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8049FFC4  40 82 00 14 */	bne lbl_8049FFD8
/* 8049FFC8  88 7F 09 50 */	lbz r3, 0x950(r31)
/* 8049FFCC  88 1F 09 51 */	lbz r0, 0x951(r31)
/* 8049FFD0  7C 03 00 40 */	cmplw r3, r0
/* 8049FFD4  41 81 00 80 */	bgt lbl_804A0054
lbl_8049FFD8:
/* 8049FFD8  C0 1F 0C BC */	lfs f0, 0xcbc(r31)
/* 8049FFDC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8049FFE0  C0 1F 0C C0 */	lfs f0, 0xcc0(r31)
/* 8049FFE4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8049FFE8  C0 1F 0C C4 */	lfs f0, 0xcc4(r31)
/* 8049FFEC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8049FFF0  80 1F 09 64 */	lwz r0, 0x964(r31)
/* 8049FFF4  60 00 00 01 */	ori r0, r0, 1
/* 8049FFF8  90 1F 09 64 */	stw r0, 0x964(r31)
/* 8049FFFC  38 00 00 00 */	li r0, 0
/* 804A0000  98 1F 09 57 */	stb r0, 0x957(r31)
/* 804A0004  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 804A0008  3C 63 00 01 */	addis r3, r3, 1
/* 804A000C  38 03 80 00 */	addi r0, r3, -32768
/* 804A0010  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804A0014  38 7F 0C A0 */	addi r3, r31, 0xca0
/* 804A0018  4B BD 5D D5 */	bl dBgS_CheckBRoofPoly__FRC13cBgS_PolyInfo
/* 804A001C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804A0020  41 82 00 24 */	beq lbl_804A0044
/* 804A0024  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 804A0028  1C 00 FF FF */	mulli r0, r0, -1
/* 804A002C  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 804A0030  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804A0034  3C 60 80 4A */	lis r3, lit_5045@ha /* 0x804A291C@ha */
/* 804A0038  C0 03 29 1C */	lfs f0, lit_5045@l(r3)  /* 0x804A291C@l */
/* 804A003C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A0040  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_804A0044:
/* 804A0044  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 804A0048  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 804A004C  7F E3 FB 78 */	mr r3, r31
/* 804A0050  4B FF F9 55 */	bl resetLockActor__13daBoomerang_cFv
lbl_804A0054:
/* 804A0054  39 61 00 20 */	addi r11, r1, 0x20
/* 804A0058  4B EC 21 CD */	bl _restgpr_28
/* 804A005C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A0060  7C 08 03 A6 */	mtlr r0
/* 804A0064  38 21 00 20 */	addi r1, r1, 0x20
/* 804A0068  4E 80 00 20 */	blr 
