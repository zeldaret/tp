lbl_807BB028:
/* 807BB028  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807BB02C  7C 08 02 A6 */	mflr r0
/* 807BB030  90 01 00 24 */	stw r0, 0x24(r1)
/* 807BB034  39 61 00 20 */	addi r11, r1, 0x20
/* 807BB038  4B BA 71 A4 */	b _savegpr_29
/* 807BB03C  7C 7D 1B 78 */	mr r29, r3
/* 807BB040  7F BE EB 78 */	mr r30, r29
/* 807BB044  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807BB048  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 807BB04C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807BB050  4B 85 F6 C0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807BB054  B0 7D 06 80 */	sth r3, 0x680(r29)
/* 807BB058  7F C3 F3 78 */	mr r3, r30
/* 807BB05C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807BB060  4B 85 F7 80 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807BB064  D0 3D 06 84 */	stfs f1, 0x684(r29)
/* 807BB068  7F A3 EB 78 */	mr r3, r29
/* 807BB06C  4B FF F7 B9 */	bl damage_check__FP11e_tk2_class
/* 807BB070  3B C0 00 00 */	li r30, 0
/* 807BB074  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 807BB078  2C 00 00 02 */	cmpwi r0, 2
/* 807BB07C  41 82 00 4C */	beq lbl_807BB0C8
/* 807BB080  40 80 00 14 */	bge lbl_807BB094
/* 807BB084  2C 00 00 00 */	cmpwi r0, 0
/* 807BB088  41 82 00 24 */	beq lbl_807BB0AC
/* 807BB08C  40 80 00 2C */	bge lbl_807BB0B8
/* 807BB090  48 00 00 5C */	b lbl_807BB0EC
lbl_807BB094:
/* 807BB094  2C 00 00 0A */	cmpwi r0, 0xa
/* 807BB098  41 82 00 4C */	beq lbl_807BB0E4
/* 807BB09C  40 80 00 50 */	bge lbl_807BB0EC
/* 807BB0A0  2C 00 00 09 */	cmpwi r0, 9
/* 807BB0A4  40 80 00 34 */	bge lbl_807BB0D8
/* 807BB0A8  48 00 00 44 */	b lbl_807BB0EC
lbl_807BB0AC:
/* 807BB0AC  7F A3 EB 78 */	mr r3, r29
/* 807BB0B0  4B FF F8 91 */	bl e_tk2_wait_0__FP11e_tk2_class
/* 807BB0B4  48 00 00 38 */	b lbl_807BB0EC
lbl_807BB0B8:
/* 807BB0B8  7F A3 EB 78 */	mr r3, r29
/* 807BB0BC  4B FF F9 2D */	bl e_tk2_find__FP11e_tk2_class
/* 807BB0C0  3B C0 00 01 */	li r30, 1
/* 807BB0C4  48 00 00 28 */	b lbl_807BB0EC
lbl_807BB0C8:
/* 807BB0C8  7F A3 EB 78 */	mr r3, r29
/* 807BB0CC  4B FF FC 2D */	bl e_tk2_attack__FP11e_tk2_class
/* 807BB0D0  3B C0 00 01 */	li r30, 1
/* 807BB0D4  48 00 00 18 */	b lbl_807BB0EC
lbl_807BB0D8:
/* 807BB0D8  7F A3 EB 78 */	mr r3, r29
/* 807BB0DC  4B FF FD F5 */	bl e_tk2_s_damage__FP11e_tk2_class
/* 807BB0E0  48 00 00 0C */	b lbl_807BB0EC
lbl_807BB0E4:
/* 807BB0E4  7F A3 EB 78 */	mr r3, r29
/* 807BB0E8  4B FF FE 79 */	bl e_tk2_damage__FP11e_tk2_class
lbl_807BB0EC:
/* 807BB0EC  7F C0 07 75 */	extsb. r0, r30
/* 807BB0F0  41 82 00 14 */	beq lbl_807BB104
/* 807BB0F4  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 807BB0F8  38 80 00 01 */	li r4, 1
/* 807BB0FC  4B B0 6A 80 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 807BB100  48 00 00 10 */	b lbl_807BB110
lbl_807BB104:
/* 807BB104  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 807BB108  38 80 00 00 */	li r4, 0
/* 807BB10C  4B B0 6A 70 */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_807BB110:
/* 807BB110  39 61 00 20 */	addi r11, r1, 0x20
/* 807BB114  4B BA 71 14 */	b _restgpr_29
/* 807BB118  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807BB11C  7C 08 03 A6 */	mtlr r0
/* 807BB120  38 21 00 20 */	addi r1, r1, 0x20
/* 807BB124  4E 80 00 20 */	blr 
