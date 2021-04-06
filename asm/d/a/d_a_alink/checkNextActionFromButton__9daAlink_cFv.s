lbl_800B9D2C:
/* 800B9D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B9D30  7C 08 02 A6 */	mflr r0
/* 800B9D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B9D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B9D3C  7C 7F 1B 78 */	mr r31, r3
/* 800B9D40  4B FF D3 51 */	bl checkItemChangeAutoAction__9daAlink_cFv
/* 800B9D44  2C 03 00 00 */	cmpwi r3, 0
/* 800B9D48  41 82 00 0C */	beq lbl_800B9D54
/* 800B9D4C  38 60 00 01 */	li r3, 1
/* 800B9D50  48 00 01 EC */	b lbl_800B9F3C
lbl_800B9D54:
/* 800B9D54  7F E3 FB 78 */	mr r3, r31
/* 800B9D58  4B FF D8 95 */	bl checkUpperItemAction__9daAlink_cFv
/* 800B9D5C  2C 03 00 00 */	cmpwi r3, 0
/* 800B9D60  41 82 00 0C */	beq lbl_800B9D6C
/* 800B9D64  38 60 00 01 */	li r3, 1
/* 800B9D68  48 00 01 D4 */	b lbl_800B9F3C
lbl_800B9D6C:
/* 800B9D6C  A0 9F 1F BC */	lhz r4, 0x1fbc(r31)
/* 800B9D70  28 04 02 62 */	cmplwi r4, 0x262
/* 800B9D74  40 82 00 0C */	bne lbl_800B9D80
/* 800B9D78  38 60 00 00 */	li r3, 0
/* 800B9D7C  48 00 01 C0 */	b lbl_800B9F3C
lbl_800B9D80:
/* 800B9D80  80 7F 31 A0 */	lwz r3, 0x31a0(r31)
/* 800B9D84  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 800B9D88  41 82 00 50 */	beq lbl_800B9DD8
/* 800B9D8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B9D90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B9D94  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 800B9D98  28 00 00 00 */	cmplwi r0, 0
/* 800B9D9C  40 82 00 FC */	bne lbl_800B9E98
/* 800B9DA0  7F E3 FB 78 */	mr r3, r31
/* 800B9DA4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B9DA8  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800B9DAC  7D 89 03 A6 */	mtctr r12
/* 800B9DB0  4E 80 04 21 */	bctrl 
/* 800B9DB4  28 03 00 00 */	cmplwi r3, 0
/* 800B9DB8  41 82 00 E0 */	beq lbl_800B9E98
/* 800B9DBC  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800B9DC0  28 00 01 05 */	cmplwi r0, 0x105
/* 800B9DC4  40 82 00 D4 */	bne lbl_800B9E98
/* 800B9DC8  7F E3 FB 78 */	mr r3, r31
/* 800B9DCC  38 80 00 04 */	li r4, 4
/* 800B9DD0  4B FF 94 81 */	bl setDoStatus__9daAlink_cFUc
/* 800B9DD4  48 00 00 C4 */	b lbl_800B9E98
lbl_800B9DD8:
/* 800B9DD8  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 800B9DDC  40 82 00 BC */	bne lbl_800B9E98
/* 800B9DE0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B9DE4  54 05 01 8D */	rlwinm. r5, r0, 0, 6, 6
/* 800B9DE8  41 82 00 28 */	beq lbl_800B9E10
/* 800B9DEC  38 60 00 00 */	li r3, 0
/* 800B9DF0  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 800B9DF4  28 00 02 DA */	cmplwi r0, 0x2da
/* 800B9DF8  41 82 00 0C */	beq lbl_800B9E04
/* 800B9DFC  28 00 02 DB */	cmplwi r0, 0x2db
/* 800B9E00  40 82 00 08 */	bne lbl_800B9E08
lbl_800B9E04:
/* 800B9E04  38 60 00 01 */	li r3, 1
lbl_800B9E08:
/* 800B9E08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B9E0C  41 82 00 64 */	beq lbl_800B9E70
lbl_800B9E10:
/* 800B9E10  28 05 00 00 */	cmplwi r5, 0
/* 800B9E14  40 82 00 7C */	bne lbl_800B9E90
/* 800B9E18  7F E3 FB 78 */	mr r3, r31
/* 800B9E1C  48 02 75 59 */	bl getCopyRodControllActor__9daAlink_cFv
/* 800B9E20  28 03 00 00 */	cmplwi r3, 0
/* 800B9E24  40 82 00 6C */	bne lbl_800B9E90
/* 800B9E28  7F E3 FB 78 */	mr r3, r31
/* 800B9E2C  4B FF F5 15 */	bl checkEquipAnime__9daAlink_cCFv
/* 800B9E30  2C 03 00 00 */	cmpwi r3, 0
/* 800B9E34  40 82 00 3C */	bne lbl_800B9E70
/* 800B9E38  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B9E3C  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800B9E40  40 82 00 30 */	bne lbl_800B9E70
/* 800B9E44  7F E3 FB 78 */	mr r3, r31
/* 800B9E48  48 02 2F A9 */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800B9E4C  2C 03 00 00 */	cmpwi r3, 0
/* 800B9E50  40 82 00 20 */	bne lbl_800B9E70
/* 800B9E54  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800B9E58  28 00 01 9C */	cmplwi r0, 0x19c
/* 800B9E5C  41 82 00 14 */	beq lbl_800B9E70
/* 800B9E60  7F E3 FB 78 */	mr r3, r31
/* 800B9E64  4B FF F3 F1 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800B9E68  2C 03 00 00 */	cmpwi r3, 0
/* 800B9E6C  41 82 00 24 */	beq lbl_800B9E90
lbl_800B9E70:
/* 800B9E70  7F E3 FB 78 */	mr r3, r31
/* 800B9E74  4B FF B4 11 */	bl decideDoStatus__9daAlink_cFv
/* 800B9E78  7F E3 FB 78 */	mr r3, r31
/* 800B9E7C  4B FF E4 F9 */	bl checkNormalAction__9daAlink_cFv
/* 800B9E80  2C 03 00 00 */	cmpwi r3, 0
/* 800B9E84  41 82 00 14 */	beq lbl_800B9E98
/* 800B9E88  38 60 00 01 */	li r3, 1
/* 800B9E8C  48 00 00 B0 */	b lbl_800B9F3C
lbl_800B9E90:
/* 800B9E90  7F E3 FB 78 */	mr r3, r31
/* 800B9E94  4B FF AC E9 */	bl decideCommonDoStatus__9daAlink_cFv
lbl_800B9E98:
/* 800B9E98  7F E3 FB 78 */	mr r3, r31
/* 800B9E9C  38 80 00 00 */	li r4, 0
/* 800B9EA0  4B FF D3 4D */	bl cancelUpperItemReadyAnime__9daAlink_cFi
/* 800B9EA4  2C 03 00 00 */	cmpwi r3, 0
/* 800B9EA8  41 82 00 0C */	beq lbl_800B9EB4
/* 800B9EAC  38 60 00 01 */	li r3, 1
/* 800B9EB0  48 00 00 8C */	b lbl_800B9F3C
lbl_800B9EB4:
/* 800B9EB4  7F E3 FB 78 */	mr r3, r31
/* 800B9EB8  4B FF EA D1 */	bl checkItemAction__9daAlink_cFv
/* 800B9EBC  2C 03 00 00 */	cmpwi r3, 0
/* 800B9EC0  41 82 00 0C */	beq lbl_800B9ECC
/* 800B9EC4  38 60 00 01 */	li r3, 1
/* 800B9EC8  48 00 00 74 */	b lbl_800B9F3C
lbl_800B9ECC:
/* 800B9ECC  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800B9ED0  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040400@ha */
/* 800B9ED4  38 03 04 00 */	addi r0, r3, 0x0400 /* 0x00040400@l */
/* 800B9ED8  7C 80 00 39 */	and. r0, r4, r0
/* 800B9EDC  40 82 00 34 */	bne lbl_800B9F10
/* 800B9EE0  7F E3 FB 78 */	mr r3, r31
/* 800B9EE4  4B FF F1 2D */	bl checkRAction__9daAlink_cFv
/* 800B9EE8  2C 03 00 00 */	cmpwi r3, 0
/* 800B9EEC  41 82 00 0C */	beq lbl_800B9EF8
/* 800B9EF0  38 60 00 01 */	li r3, 1
/* 800B9EF4  48 00 00 48 */	b lbl_800B9F3C
lbl_800B9EF8:
/* 800B9EF8  7F E3 FB 78 */	mr r3, r31
/* 800B9EFC  4B FF F1 1D */	bl checkMoveDoAction__9daAlink_cFv
/* 800B9F00  2C 03 00 00 */	cmpwi r3, 0
/* 800B9F04  41 82 00 0C */	beq lbl_800B9F10
/* 800B9F08  38 60 00 01 */	li r3, 1
/* 800B9F0C  48 00 00 30 */	b lbl_800B9F3C
lbl_800B9F10:
/* 800B9F10  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800B9F14  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800B9F18  40 82 00 1C */	bne lbl_800B9F34
/* 800B9F1C  7F E3 FB 78 */	mr r3, r31
/* 800B9F20  48 01 47 09 */	bl checkSubjectAction__9daAlink_cFv
/* 800B9F24  2C 03 00 00 */	cmpwi r3, 0
/* 800B9F28  41 82 00 0C */	beq lbl_800B9F34
/* 800B9F2C  38 60 00 01 */	li r3, 1
/* 800B9F30  48 00 00 0C */	b lbl_800B9F3C
lbl_800B9F34:
/* 800B9F34  7F E3 FB 78 */	mr r3, r31
/* 800B9F38  4B FF FA 15 */	bl checkItemChangeFromButton__9daAlink_cFv
lbl_800B9F3C:
/* 800B9F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B9F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B9F44  7C 08 03 A6 */	mtlr r0
/* 800B9F48  38 21 00 10 */	addi r1, r1, 0x10
/* 800B9F4C  4E 80 00 20 */	blr 
