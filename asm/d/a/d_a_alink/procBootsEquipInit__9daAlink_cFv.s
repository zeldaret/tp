lbl_800E3048:
/* 800E3048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E304C  7C 08 02 A6 */	mflr r0
/* 800E3050  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E3054  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E3058  7C 7F 1B 78 */	mr r31, r3
/* 800E305C  38 80 00 CD */	li r4, 0xcd
/* 800E3060  4B FD EF 0D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E3064  7F E3 FB 78 */	mr r3, r31
/* 800E3068  38 80 01 3E */	li r4, 0x13e
/* 800E306C  3C A0 80 39 */	lis r5, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800E3070  38 A5 E7 F4 */	addi r5, r5, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800E3074  4B FC A0 81 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800E3078  7F E3 FB 78 */	mr r3, r31
/* 800E307C  4B FD 7F 05 */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800E3080  2C 03 00 00 */	cmpwi r3, 0
/* 800E3084  41 82 00 30 */	beq lbl_800E30B4
/* 800E3088  7F E3 FB 78 */	mr r3, r31
/* 800E308C  38 80 00 02 */	li r4, 2
/* 800E3090  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800E3094  4B FC A6 91 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800E3098  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E309C  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E30A0  80 85 5F 18 */	lwz r4, 0x5f18(r5)
/* 800E30A4  3C 60 00 40 */	lis r3, 0x0040 /* 0x00400030@ha */
/* 800E30A8  38 03 00 30 */	addi r0, r3, 0x0030 /* 0x00400030@l */
/* 800E30AC  7C 80 00 38 */	and r0, r4, r0
/* 800E30B0  90 05 5F 18 */	stw r0, 0x5f18(r5)
lbl_800E30B4:
/* 800E30B4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800E30B8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800E30BC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E30C0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800E30C4  38 60 00 01 */	li r3, 1
/* 800E30C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E30CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E30D0  7C 08 03 A6 */	mtlr r0
/* 800E30D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800E30D8  4E 80 00 20 */	blr 
