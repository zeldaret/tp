lbl_805D9B74:
/* 805D9B74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D9B78  7C 08 02 A6 */	mflr r0
/* 805D9B7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D9B80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D9B84  7C 7F 1B 78 */	mr r31, r3
/* 805D9B88  48 00 01 75 */	bl mBattle2_spinner_damage_check__8daB_DS_cFv
/* 805D9B8C  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805D9B90  2C 00 00 03 */	cmpwi r0, 3
/* 805D9B94  41 82 00 54 */	beq lbl_805D9BE8
/* 805D9B98  40 80 00 1C */	bge lbl_805D9BB4
/* 805D9B9C  2C 00 00 01 */	cmpwi r0, 1
/* 805D9BA0  41 82 00 30 */	beq lbl_805D9BD0
/* 805D9BA4  40 80 00 38 */	bge lbl_805D9BDC
/* 805D9BA8  2C 00 00 00 */	cmpwi r0, 0
/* 805D9BAC  40 80 00 18 */	bge lbl_805D9BC4
/* 805D9BB0  48 00 00 58 */	b lbl_805D9C08
lbl_805D9BB4:
/* 805D9BB4  2C 00 00 05 */	cmpwi r0, 5
/* 805D9BB8  41 82 00 48 */	beq lbl_805D9C00
/* 805D9BBC  40 80 00 4C */	bge lbl_805D9C08
/* 805D9BC0  48 00 00 34 */	b lbl_805D9BF4
lbl_805D9BC4:
/* 805D9BC4  7F E3 FB 78 */	mr r3, r31
/* 805D9BC8  4B FF 8D 09 */	bl executeBattle2OpeningDemo__8daB_DS_cFv
/* 805D9BCC  48 00 00 3C */	b lbl_805D9C08
lbl_805D9BD0:
/* 805D9BD0  7F E3 FB 78 */	mr r3, r31
/* 805D9BD4  4B FF A5 F9 */	bl executeBattle2Wait__8daB_DS_cFv
/* 805D9BD8  48 00 00 30 */	b lbl_805D9C08
lbl_805D9BDC:
/* 805D9BDC  7F E3 FB 78 */	mr r3, r31
/* 805D9BE0  4B FF AD 9D */	bl executeBattle2FMove__8daB_DS_cFv
/* 805D9BE4  48 00 00 24 */	b lbl_805D9C08
lbl_805D9BE8:
/* 805D9BE8  7F E3 FB 78 */	mr r3, r31
/* 805D9BEC  4B FF B4 55 */	bl executeBattle2Tired__8daB_DS_cFv
/* 805D9BF0  48 00 00 18 */	b lbl_805D9C08
lbl_805D9BF4:
/* 805D9BF4  7F E3 FB 78 */	mr r3, r31
/* 805D9BF8  4B FF B6 DD */	bl executeBattle2Damage__8daB_DS_cFv
/* 805D9BFC  48 00 00 0C */	b lbl_805D9C08
lbl_805D9C00:
/* 805D9C00  7F E3 FB 78 */	mr r3, r31
/* 805D9C04  4B FF C9 31 */	bl executeBattle2Dead__8daB_DS_cFv
lbl_805D9C08:
/* 805D9C08  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 805D9C0C  48 00 2C D9 */	bl func_805DC8E4
/* 805D9C10  2C 03 00 00 */	cmpwi r3, 0
/* 805D9C14  41 82 00 20 */	beq lbl_805D9C34
/* 805D9C18  80 1F 06 A4 */	lwz r0, 0x6a4(r31)
/* 805D9C1C  2C 00 00 01 */	cmpwi r0, 1
/* 805D9C20  40 82 00 14 */	bne lbl_805D9C34
/* 805D9C24  38 60 00 07 */	li r3, 7
/* 805D9C28  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D9C2C  7C 04 07 74 */	extsb r4, r0
/* 805D9C30  4B A5 3E 6D */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_805D9C34:
/* 805D9C34  7F E3 FB 78 */	mr r3, r31
/* 805D9C38  38 80 00 00 */	li r4, 0
/* 805D9C3C  4B FF 2C 69 */	bl mCreateTrap__8daB_DS_cFb
/* 805D9C40  7F E3 FB 78 */	mr r3, r31
/* 805D9C44  38 9F 0A 88 */	addi r4, r31, 0xa88
/* 805D9C48  4B A4 0A 85 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805D9C4C  88 1F 08 50 */	lbz r0, 0x850(r31)
/* 805D9C50  28 00 00 00 */	cmplwi r0, 0
/* 805D9C54  40 82 00 54 */	bne lbl_805D9CA8
/* 805D9C58  38 7F 08 70 */	addi r3, r31, 0x870
/* 805D9C5C  3C 80 80 5E */	lis r4, lit_4466@ha /* 0x805DCAB8@ha */
/* 805D9C60  C0 24 CA B8 */	lfs f1, lit_4466@l(r4)  /* 0x805DCAB8@l */
/* 805D9C64  C0 5F 08 10 */	lfs f2, 0x810(r31)
/* 805D9C68  4B A9 C2 F1 */	bl SetWall__12dBgS_AcchCirFff
/* 805D9C6C  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 805D9C70  C0 3F 08 00 */	lfs f1, 0x800(r31)
/* 805D9C74  4B A9 D4 A1 */	bl SetGroundUpY__9dBgS_AcchFf
/* 805D9C78  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 805D9C7C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D9C80  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D9C84  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805D9C88  4B A9 CE 25 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805D9C8C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D9C90  7C 03 07 74 */	extsb r3, r0
/* 805D9C94  4B A5 33 D9 */	bl dComIfGp_getReverb__Fi
/* 805D9C98  7C 65 1B 78 */	mr r5, r3
/* 805D9C9C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D9CA0  38 80 00 00 */	li r4, 0
/* 805D9CA4  4B A3 74 0D */	bl play__16mDoExt_McaMorfSOFUlSc
lbl_805D9CA8:
/* 805D9CA8  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 805D9CAC  4B A3 37 7D */	bl play__14mDoExt_baseAnmFv
/* 805D9CB0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D9CB4  7C 03 07 74 */	extsb r3, r0
/* 805D9CB8  4B A5 33 B5 */	bl dComIfGp_getReverb__Fi
/* 805D9CBC  7C 65 1B 78 */	mr r5, r3
/* 805D9CC0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805D9CC4  38 80 00 00 */	li r4, 0
/* 805D9CC8  4B A3 73 E9 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 805D9CCC  88 1F 08 5F */	lbz r0, 0x85f(r31)
/* 805D9CD0  28 00 00 00 */	cmplwi r0, 0
/* 805D9CD4  41 82 00 14 */	beq lbl_805D9CE8
/* 805D9CD8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 805D9CDC  4B A3 37 4D */	bl play__14mDoExt_baseAnmFv
/* 805D9CE0  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 805D9CE4  4B A3 37 45 */	bl play__14mDoExt_baseAnmFv
lbl_805D9CE8:
/* 805D9CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D9CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D9CF0  7C 08 03 A6 */	mtlr r0
/* 805D9CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 805D9CF8  4E 80 00 20 */	blr 
