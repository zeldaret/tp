lbl_805A3758:
/* 805A3758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A375C  7C 08 02 A6 */	mflr r0
/* 805A3760  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A3768  7C 7F 1B 78 */	mr r31, r3
/* 805A376C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A3770  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A3774  40 82 00 1C */	bne lbl_805A3790
/* 805A3778  28 1F 00 00 */	cmplwi r31, 0
/* 805A377C  41 82 00 08 */	beq lbl_805A3784
/* 805A3780  4B A7 53 E4 */	b __ct__10fopAc_ac_cFv
lbl_805A3784:
/* 805A3784  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805A3788  60 00 00 08 */	ori r0, r0, 8
/* 805A378C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805A3790:
/* 805A3790  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805A3794  98 1F 05 69 */	stb r0, 0x569(r31)
/* 805A3798  88 9F 05 69 */	lbz r4, 0x569(r31)
/* 805A379C  28 04 00 FF */	cmplwi r4, 0xff
/* 805A37A0  41 82 00 28 */	beq lbl_805A37C8
/* 805A37A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A37A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A37AC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A37B0  7C 05 07 74 */	extsb r5, r0
/* 805A37B4  4B A9 1B AC */	b isSwitch__10dSv_info_cCFii
/* 805A37B8  2C 03 00 00 */	cmpwi r3, 0
/* 805A37BC  41 82 00 0C */	beq lbl_805A37C8
/* 805A37C0  38 60 00 05 */	li r3, 5
/* 805A37C4  48 00 00 28 */	b lbl_805A37EC
lbl_805A37C8:
/* 805A37C8  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805A37CC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 805A37D0  98 1F 05 68 */	stb r0, 0x568(r31)
/* 805A37D4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A37D8  B0 1F 05 6C */	sth r0, 0x56c(r31)
/* 805A37DC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A37E0  54 00 84 3E */	srwi r0, r0, 0x10
/* 805A37E4  B0 1F 05 6E */	sth r0, 0x56e(r31)
/* 805A37E8  38 60 00 04 */	li r3, 4
lbl_805A37EC:
/* 805A37EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A37F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A37F4  7C 08 03 A6 */	mtlr r0
/* 805A37F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A37FC  4E 80 00 20 */	blr 
