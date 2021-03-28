lbl_800E9344:
/* 800E9344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E9348  7C 08 02 A6 */	mflr r0
/* 800E934C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E9350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E9354  7C 7F 1B 78 */	mr r31, r3
/* 800E9358  38 80 00 BF */	li r4, 0xbf
/* 800E935C  4B FD 9A 49 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E9360  2C 03 00 00 */	cmpwi r3, 0
/* 800E9364  40 82 00 0C */	bne lbl_800E9370
/* 800E9368  38 60 00 00 */	li r3, 0
/* 800E936C  48 00 00 B4 */	b lbl_800E9420
lbl_800E9370:
/* 800E9370  7F E3 FB 78 */	mr r3, r31
/* 800E9374  4B FC A5 91 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800E9378  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E937C  41 82 00 10 */	beq lbl_800E938C
/* 800E9380  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800E9384  60 00 00 01 */	ori r0, r0, 1
/* 800E9388  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_800E938C:
/* 800E938C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E9390  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800E9394  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800E9398  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 800E939C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800E93A0  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 800E93A4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800E93A8  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 800E93AC  38 00 00 03 */	li r0, 3
/* 800E93B0  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800E93B4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800E93B8  38 03 C0 00 */	addi r0, r3, -16384
/* 800E93BC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800E93C0  3C 60 80 39 */	lis r3, m__21daAlinkHIO_atnMove_c0@ha
/* 800E93C4  38 63 D7 14 */	addi r3, r3, m__21daAlinkHIO_atnMove_c0@l
/* 800E93C8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800E93CC  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 800E93D0  7F E3 FB 78 */	mr r3, r31
/* 800E93D4  38 80 01 1A */	li r4, 0x11a
/* 800E93D8  4B FC 3B A9 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800E93DC  38 00 00 00 */	li r0, 0
/* 800E93E0  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800E93E4  3C 60 80 0F */	lis r3, daAlink_searchGoat__FP10fopAc_ac_cPv@ha
/* 800E93E8  38 63 91 B0 */	addi r3, r3, daAlink_searchGoat__FP10fopAc_ac_cPv@l
/* 800E93EC  38 80 00 00 */	li r4, 0
/* 800E93F0  4B F3 04 09 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800E93F4  7C 64 1B 79 */	or. r4, r3, r3
/* 800E93F8  41 82 00 0C */	beq lbl_800E9404
/* 800E93FC  38 7F 28 0C */	addi r3, r31, 0x280c
/* 800E9400  48 07 58 B9 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
lbl_800E9404:
/* 800E9404  38 00 00 00 */	li r0, 0
/* 800E9408  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800E940C  7F E3 FB 78 */	mr r3, r31
/* 800E9410  38 80 00 00 */	li r4, 0
/* 800E9414  38 A0 00 00 */	li r5, 0
/* 800E9418  4B FD 7E C5 */	bl deleteEquipItem__9daAlink_cFii
/* 800E941C  38 60 00 01 */	li r3, 1
lbl_800E9420:
/* 800E9420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E9424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E9428  7C 08 03 A6 */	mtlr r0
/* 800E942C  38 21 00 10 */	addi r1, r1, 0x10
/* 800E9430  4E 80 00 20 */	blr 
