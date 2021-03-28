lbl_80108DB4:
/* 80108DB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80108DB8  7C 08 02 A6 */	mflr r0
/* 80108DBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80108DC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80108DC4  7C 7F 1B 78 */	mr r31, r3
/* 80108DC8  4B FF F9 BD */	bl checkLv7BossRoom__9daAlink_cFv
/* 80108DCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80108DD0  41 82 00 14 */	beq lbl_80108DE4
/* 80108DD4  3C 60 80 39 */	lis r3, m__22daAlinkHIO_hookshot_c0@ha
/* 80108DD8  38 63 E9 C0 */	addi r3, r3, m__22daAlinkHIO_hookshot_c0@l
/* 80108DDC  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 80108DE0  48 00 00 10 */	b lbl_80108DF0
lbl_80108DE4:
/* 80108DE4  3C 60 80 39 */	lis r3, m__22daAlinkHIO_hookshot_c0@ha
/* 80108DE8  38 63 E9 C0 */	addi r3, r3, m__22daAlinkHIO_hookshot_c0@l
/* 80108DEC  C0 23 00 48 */	lfs f1, 0x48(r3)
lbl_80108DF0:
/* 80108DF0  7F E3 FB 78 */	mr r3, r31
/* 80108DF4  38 81 00 08 */	addi r4, r1, 8
/* 80108DF8  4B FB 67 09 */	bl checkSightLine__9daAlink_cFfP4cXyz
/* 80108DFC  80 9F 28 50 */	lwz r4, 0x2850(r31)
/* 80108E00  28 04 00 00 */	cmplwi r4, 0
/* 80108E04  41 82 00 20 */	beq lbl_80108E24
/* 80108E08  C0 04 05 38 */	lfs f0, 0x538(r4)
/* 80108E0C  D0 1F 20 6C */	stfs f0, 0x206c(r31)
/* 80108E10  C0 04 05 3C */	lfs f0, 0x53c(r4)
/* 80108E14  D0 1F 20 70 */	stfs f0, 0x2070(r31)
/* 80108E18  C0 04 05 40 */	lfs f0, 0x540(r4)
/* 80108E1C  D0 1F 20 74 */	stfs f0, 0x2074(r31)
/* 80108E20  48 00 00 1C */	b lbl_80108E3C
lbl_80108E24:
/* 80108E24  C0 01 00 08 */	lfs f0, 8(r1)
/* 80108E28  D0 1F 20 6C */	stfs f0, 0x206c(r31)
/* 80108E2C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80108E30  D0 1F 20 70 */	stfs f0, 0x2070(r31)
/* 80108E34  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80108E38  D0 1F 20 74 */	stfs f0, 0x2074(r31)
lbl_80108E3C:
/* 80108E3C  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 80108E40  2C 00 00 01 */	cmpwi r0, 1
/* 80108E44  40 82 00 7C */	bne lbl_80108EC0
/* 80108E48  38 00 00 01 */	li r0, 1
/* 80108E4C  98 1F 20 68 */	stb r0, 0x2068(r31)
/* 80108E50  2C 03 00 00 */	cmpwi r3, 0
/* 80108E54  41 82 00 28 */	beq lbl_80108E7C
/* 80108E58  C0 3F 34 94 */	lfs f1, 0x3494(r31)
/* 80108E5C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80108E60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80108E64  40 80 00 18 */	bge lbl_80108E7C
/* 80108E68  7F E3 FB 78 */	mr r3, r31
/* 80108E6C  38 9F 1B CC */	addi r4, r31, 0x1bcc
/* 80108E70  4B FF F9 41 */	bl checkHookshotStickBG__9daAlink_cFR13cBgS_PolyInfo
/* 80108E74  2C 03 00 00 */	cmpwi r3, 0
/* 80108E78  40 82 00 10 */	bne lbl_80108E88
lbl_80108E7C:
/* 80108E7C  80 1F 28 50 */	lwz r0, 0x2850(r31)
/* 80108E80  28 00 00 00 */	cmplwi r0, 0
/* 80108E84  41 82 00 30 */	beq lbl_80108EB4
lbl_80108E88:
/* 80108E88  38 7F 20 64 */	addi r3, r31, 0x2064
/* 80108E8C  48 01 D8 85 */	bl onLockFlg__15daAlink_sight_cFv
/* 80108E90  80 7F 28 50 */	lwz r3, 0x2850(r31)
/* 80108E94  28 03 00 00 */	cmplwi r3, 0
/* 80108E98  41 82 00 30 */	beq lbl_80108EC8
/* 80108E9C  A8 03 00 08 */	lha r0, 8(r3)
/* 80108EA0  2C 00 00 F7 */	cmpwi r0, 0xf7
/* 80108EA4  40 82 00 24 */	bne lbl_80108EC8
/* 80108EA8  38 00 00 01 */	li r0, 1
/* 80108EAC  98 03 07 D9 */	stb r0, 0x7d9(r3)
/* 80108EB0  48 00 00 18 */	b lbl_80108EC8
lbl_80108EB4:
/* 80108EB4  38 00 00 00 */	li r0, 0
/* 80108EB8  98 1F 20 B0 */	stb r0, 0x20b0(r31)
/* 80108EBC  48 00 00 0C */	b lbl_80108EC8
lbl_80108EC0:
/* 80108EC0  38 00 00 00 */	li r0, 0
/* 80108EC4  98 1F 20 68 */	stb r0, 0x2068(r31)
lbl_80108EC8:
/* 80108EC8  38 7F 28 4C */	addi r3, r31, 0x284c
/* 80108ECC  48 05 5E 31 */	bl clearData__16daPy_actorKeep_cFv
/* 80108ED0  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 80108ED4  D0 1F 34 94 */	stfs f0, 0x3494(r31)
/* 80108ED8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80108EDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80108EE0  7C 08 03 A6 */	mtlr r0
/* 80108EE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80108EE8  4E 80 00 20 */	blr 
