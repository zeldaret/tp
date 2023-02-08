lbl_8010B96C:
/* 8010B96C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8010B970  7C 08 02 A6 */	mflr r0
/* 8010B974  90 01 00 44 */	stw r0, 0x44(r1)
/* 8010B978  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8010B97C  7C 7F 1B 78 */	mr r31, r3
/* 8010B980  4B FA 8F 51 */	bl setJumpMode__9daAlink_cFv
/* 8010B984  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 8010B988  2C 00 00 00 */	cmpwi r0, 0
/* 8010B98C  41 82 00 30 */	beq lbl_8010B9BC
/* 8010B990  38 7F 28 54 */	addi r3, r31, 0x2854
/* 8010B994  48 05 32 B5 */	bl setActor__16daPy_actorKeep_cFv
/* 8010B998  80 7F 28 58 */	lwz r3, 0x2858(r31)
/* 8010B99C  28 03 00 00 */	cmplwi r3, 0
/* 8010B9A0  41 82 00 10 */	beq lbl_8010B9B0
/* 8010B9A4  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8010B9A8  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8010B9AC  40 82 00 10 */	bne lbl_8010B9BC
lbl_8010B9B0:
/* 8010B9B0  7F E3 FB 78 */	mr r3, r31
/* 8010B9B4  4B FF FD 6D */	bl checkNextHookPoint__9daAlink_cFv
/* 8010B9B8  48 00 00 A0 */	b lbl_8010BA58
lbl_8010B9BC:
/* 8010B9BC  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8010B9C0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8010B9C4  41 82 00 10 */	beq lbl_8010B9D4
/* 8010B9C8  7F E3 FB 78 */	mr r3, r31
/* 8010B9CC  4B FF FD 55 */	bl checkNextHookPoint__9daAlink_cFv
/* 8010B9D0  48 00 00 88 */	b lbl_8010BA58
lbl_8010B9D4:
/* 8010B9D4  38 61 00 14 */	addi r3, r1, 0x14
/* 8010B9D8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8010B9DC  38 BF 37 98 */	addi r5, r31, 0x3798
/* 8010B9E0  48 15 B1 55 */	bl __mi__4cXyzCFRC3Vec
/* 8010B9E4  38 61 00 08 */	addi r3, r1, 8
/* 8010B9E8  38 9F 38 10 */	addi r4, r31, 0x3810
/* 8010B9EC  38 A1 00 14 */	addi r5, r1, 0x14
/* 8010B9F0  48 15 B0 F5 */	bl __pl__4cXyzCFRC3Vec
/* 8010B9F4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8010B9F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8010B9FC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8010BA00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8010BA04  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8010BA08  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8010BA0C  38 7F 1B B8 */	addi r3, r31, 0x1bb8
/* 8010BA10  38 81 00 20 */	addi r4, r1, 0x20
/* 8010BA14  38 BF 38 04 */	addi r5, r31, 0x3804
/* 8010BA18  7F E6 FB 78 */	mr r6, r31
/* 8010BA1C  4B F6 C3 49 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8010BA20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010BA24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010BA28  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8010BA2C  38 9F 1B B8 */	addi r4, r31, 0x1bb8
/* 8010BA30  4B F6 89 85 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8010BA34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010BA38  41 82 00 10 */	beq lbl_8010BA48
/* 8010BA3C  7F E3 FB 78 */	mr r3, r31
/* 8010BA40  4B FF FC E1 */	bl checkNextHookPoint__9daAlink_cFv
/* 8010BA44  48 00 00 14 */	b lbl_8010BA58
lbl_8010BA48:
/* 8010BA48  7F E3 FB 78 */	mr r3, r31
/* 8010BA4C  4B FF FE 01 */	bl checkLandHookshotHang__9daAlink_cFv
/* 8010BA50  30 03 FF FF */	addic r0, r3, -1
/* 8010BA54  7C 60 19 10 */	subfe r3, r0, r3
lbl_8010BA58:
/* 8010BA58  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8010BA5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8010BA60  7C 08 03 A6 */	mtlr r0
/* 8010BA64  38 21 00 40 */	addi r1, r1, 0x40
/* 8010BA68  4E 80 00 20 */	blr 
