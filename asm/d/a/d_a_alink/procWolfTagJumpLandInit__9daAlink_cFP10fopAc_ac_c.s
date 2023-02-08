lbl_80134DB8:
/* 80134DB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80134DBC  7C 08 02 A6 */	mflr r0
/* 80134DC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80134DC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80134DC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80134DCC  7C 7E 1B 78 */	mr r30, r3
/* 80134DD0  7C 9F 23 78 */	mr r31, r4
/* 80134DD4  38 80 01 19 */	li r4, 0x119
/* 80134DD8  4B F8 D1 95 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80134DDC  7F C3 F3 78 */	mr r3, r30
/* 80134DE0  38 80 00 53 */	li r4, 0x53
/* 80134DE4  3C A0 80 39 */	lis r5, m__21daAlinkHIO_wlPoint_c0@ha /* 0x8038F7DC@ha */
/* 80134DE8  38 A5 F7 DC */	addi r5, r5, m__21daAlinkHIO_wlPoint_c0@l /* 0x8038F7DC@l */
/* 80134DEC  38 A5 00 3C */	addi r5, r5, 0x3c
/* 80134DF0  4B FF 4A 59 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80134DF4  88 1E 2F A8 */	lbz r0, 0x2fa8(r30)
/* 80134DF8  28 00 00 08 */	cmplwi r0, 8
/* 80134DFC  40 82 00 18 */	bne lbl_80134E14
/* 80134E00  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlPoint_c0@ha /* 0x8038F7DC@ha */
/* 80134E04  38 63 F7 DC */	addi r3, r3, m__21daAlinkHIO_wlPoint_c0@l /* 0x8038F7DC@l */
/* 80134E08  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80134E0C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 80134E10  48 00 00 0C */	b lbl_80134E1C
lbl_80134E14:
/* 80134E14  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80134E18  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_80134E1C:
/* 80134E1C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80134E20  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80134E24  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 80134E28  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 80134E2C  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 80134E30  C0 03 00 04 */	lfs f0, 4(r3)
/* 80134E34  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 80134E38  C0 03 00 08 */	lfs f0, 8(r3)
/* 80134E3C  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 80134E40  28 1F 00 00 */	cmplwi r31, 0
/* 80134E44  41 82 00 10 */	beq lbl_80134E54
/* 80134E48  38 7E 28 0C */	addi r3, r30, 0x280c
/* 80134E4C  7F E4 FB 78 */	mr r4, r31
/* 80134E50  48 02 9E 69 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
lbl_80134E54:
/* 80134E54  38 00 00 78 */	li r0, 0x78
/* 80134E58  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 80134E5C  7F C3 F3 78 */	mr r3, r30
/* 80134E60  38 80 00 01 */	li r4, 1
/* 80134E64  4B FE C3 5D */	bl setFootEffectProcType__9daAlink_cFi
/* 80134E68  38 00 00 0C */	li r0, 0xc
/* 80134E6C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 80134E70  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80134E74  D0 21 00 08 */	stfs f1, 8(r1)
/* 80134E78  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80134E7C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80134E80  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80134E84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80134E88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80134E8C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80134E90  38 80 00 02 */	li r4, 2
/* 80134E94  38 A0 00 0F */	li r5, 0xf
/* 80134E98  38 C1 00 08 */	addi r6, r1, 8
/* 80134E9C  4B F3 AB 89 */	bl StartShock__12dVibration_cFii4cXyz
/* 80134EA0  38 60 00 01 */	li r3, 1
/* 80134EA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80134EA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80134EAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80134EB0  7C 08 03 A6 */	mtlr r0
/* 80134EB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80134EB8  4E 80 00 20 */	blr 
