lbl_800F5DB8:
/* 800F5DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F5DBC  7C 08 02 A6 */	mflr r0
/* 800F5DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F5DC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F5DC8  93 C1 00 08 */	stw r30, 8(r1)
/* 800F5DCC  7C 7E 1B 78 */	mr r30, r3
/* 800F5DD0  4B FF EA 09 */	bl canoeCommon__9daAlink_cFv
/* 800F5DD4  2C 03 00 00 */	cmpwi r3, 0
/* 800F5DD8  41 82 00 0C */	beq lbl_800F5DE4
/* 800F5DDC  38 60 00 01 */	li r3, 1
/* 800F5DE0  48 00 00 B0 */	b lbl_800F5E90
lbl_800F5DE4:
/* 800F5DE4  3B FE 20 18 */	addi r31, r30, 0x2018
/* 800F5DE8  7F C3 F3 78 */	mr r3, r30
/* 800F5DEC  4B FC 3B 61 */	bl checkItemChangeFromButton__9daAlink_cFv
/* 800F5DF0  2C 03 00 00 */	cmpwi r3, 0
/* 800F5DF4  40 82 00 98 */	bne lbl_800F5E8C
/* 800F5DF8  7F C3 F3 78 */	mr r3, r30
/* 800F5DFC  4B FC 35 45 */	bl checkEquipAnime__9daAlink_cCFv
/* 800F5E00  2C 03 00 00 */	cmpwi r3, 0
/* 800F5E04  41 82 00 14 */	beq lbl_800F5E18
/* 800F5E08  7F C3 F3 78 */	mr r3, r30
/* 800F5E0C  38 80 00 00 */	li r4, 0
/* 800F5E10  48 00 00 99 */	bl procCanoePaddlePutInit__9daAlink_cFi
/* 800F5E14  48 00 00 78 */	b lbl_800F5E8C
lbl_800F5E18:
/* 800F5E18  7F E3 FB 78 */	mr r3, r31
/* 800F5E1C  48 06 86 B1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F5E20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F5E24  41 82 00 14 */	beq lbl_800F5E38
/* 800F5E28  7F C3 F3 78 */	mr r3, r30
/* 800F5E2C  80 9E 31 98 */	lwz r4, 0x3198(r30)
/* 800F5E30  4B FF F8 ED */	bl procCanoeRowInit__9daAlink_cFi
/* 800F5E34  48 00 00 58 */	b lbl_800F5E8C
lbl_800F5E38:
/* 800F5E38  7F E3 FB 78 */	mr r3, r31
/* 800F5E3C  C0 22 94 B4 */	lfs f1, lit_17382(r2)
/* 800F5E40  48 23 25 ED */	bl checkPass__12J3DFrameCtrlFf
/* 800F5E44  2C 03 00 00 */	cmpwi r3, 0
/* 800F5E48  41 82 00 44 */	beq lbl_800F5E8C
/* 800F5E4C  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 800F5E50  2C 00 00 00 */	cmpwi r0, 0
/* 800F5E54  40 82 00 20 */	bne lbl_800F5E74
/* 800F5E58  38 00 00 00 */	li r0, 0
/* 800F5E5C  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800F5E60  38 00 00 FE */	li r0, 0xfe
/* 800F5E64  98 1E 2F 93 */	stb r0, 0x2f93(r30)
/* 800F5E68  38 00 00 01 */	li r0, 1
/* 800F5E6C  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800F5E70  48 00 00 1C */	b lbl_800F5E8C
lbl_800F5E74:
/* 800F5E74  38 00 00 FE */	li r0, 0xfe
/* 800F5E78  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800F5E7C  38 00 00 05 */	li r0, 5
/* 800F5E80  98 1E 2F 93 */	stb r0, 0x2f93(r30)
/* 800F5E84  38 00 00 00 */	li r0, 0
/* 800F5E88  B0 1E 30 12 */	sth r0, 0x3012(r30)
lbl_800F5E8C:
/* 800F5E8C  38 60 00 01 */	li r3, 1
lbl_800F5E90:
/* 800F5E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F5E94  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F5E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F5E9C  7C 08 03 A6 */	mtlr r0
/* 800F5EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 800F5EA4  4E 80 00 20 */	blr 
