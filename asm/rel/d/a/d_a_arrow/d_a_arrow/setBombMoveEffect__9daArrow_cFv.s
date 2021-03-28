lbl_8049B214:
/* 8049B214  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049B218  7C 08 02 A6 */	mflr r0
/* 8049B21C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049B220  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8049B224  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8049B228  7C 7F 1B 78 */	mr r31, r3
/* 8049B22C  88 03 09 3C */	lbz r0, 0x93c(r3)
/* 8049B230  28 00 00 01 */	cmplwi r0, 1
/* 8049B234  40 82 01 24 */	bne lbl_8049B358
/* 8049B238  88 1F 09 45 */	lbz r0, 0x945(r31)
/* 8049B23C  28 00 00 00 */	cmplwi r0, 0
/* 8049B240  40 82 01 18 */	bne lbl_8049B358
/* 8049B244  88 1F 09 43 */	lbz r0, 0x943(r31)
/* 8049B248  28 00 00 00 */	cmplwi r0, 0
/* 8049B24C  40 82 01 0C */	bne lbl_8049B358
/* 8049B250  4B FF FC C9 */	bl setSmokePos__9daArrow_cFv
/* 8049B254  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049B258  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8049B25C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8049B260  38 00 00 FF */	li r0, 0xff
/* 8049B264  90 01 00 08 */	stw r0, 8(r1)
/* 8049B268  38 1F 0A 10 */	addi r0, r31, 0xa10
/* 8049B26C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049B270  38 00 FF FF */	li r0, -1
/* 8049B274  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049B278  38 00 00 00 */	li r0, 0
/* 8049B27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049B280  90 01 00 18 */	stw r0, 0x18(r1)
/* 8049B284  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8049B288  80 9F 09 64 */	lwz r4, 0x964(r31)
/* 8049B28C  38 A0 00 00 */	li r5, 0
/* 8049B290  38 C0 01 E0 */	li r6, 0x1e0
/* 8049B294  38 FF 09 CC */	addi r7, r31, 0x9cc
/* 8049B298  39 1F 01 0C */	addi r8, r31, 0x10c
/* 8049B29C  39 3F 09 58 */	addi r9, r31, 0x958
/* 8049B2A0  39 40 00 00 */	li r10, 0
/* 8049B2A4  3D 60 80 4A */	lis r11, lit_4187@ha
/* 8049B2A8  C0 2B DD 3C */	lfs f1, lit_4187@l(r11)
/* 8049B2AC  4B BB 22 20 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8049B2B0  90 7F 09 64 */	stw r3, 0x964(r31)
/* 8049B2B4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8049B2B8  38 63 02 10 */	addi r3, r3, 0x210
/* 8049B2BC  80 9F 09 64 */	lwz r4, 0x964(r31)
/* 8049B2C0  4B BB 05 F4 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 8049B2C4  3C 60 80 4A */	lis r3, lit_4749@ha
/* 8049B2C8  C0 03 DD B4 */	lfs f0, lit_4749@l(r3)
/* 8049B2CC  D0 1F 0A 14 */	stfs f0, 0xa14(r31)
/* 8049B2D0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8049B2D4  38 00 00 FF */	li r0, 0xff
/* 8049B2D8  90 01 00 08 */	stw r0, 8(r1)
/* 8049B2DC  38 80 00 00 */	li r4, 0
/* 8049B2E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 8049B2E4  38 00 FF FF */	li r0, -1
/* 8049B2E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049B2EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8049B2F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8049B2F4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8049B2F8  80 9F 09 68 */	lwz r4, 0x968(r31)
/* 8049B2FC  38 A0 00 00 */	li r5, 0
/* 8049B300  38 C0 01 DE */	li r6, 0x1de
/* 8049B304  38 FF 09 CC */	addi r7, r31, 0x9cc
/* 8049B308  39 1F 01 0C */	addi r8, r31, 0x10c
/* 8049B30C  39 3F 09 58 */	addi r9, r31, 0x958
/* 8049B310  39 40 00 00 */	li r10, 0
/* 8049B314  3D 60 80 4A */	lis r11, lit_4187@ha
/* 8049B318  C0 2B DD 3C */	lfs f1, lit_4187@l(r11)
/* 8049B31C  4B BB 21 B0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8049B320  90 7F 09 68 */	stw r3, 0x968(r31)
/* 8049B324  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8049B328  38 63 02 10 */	addi r3, r3, 0x210
/* 8049B32C  80 9F 09 68 */	lwz r4, 0x968(r31)
/* 8049B330  4B BB 05 84 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 8049B334  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8049B338  38 63 02 10 */	addi r3, r3, 0x210
/* 8049B33C  80 9F 09 68 */	lwz r4, 0x968(r31)
/* 8049B340  4B BB 05 D8 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 8049B344  28 03 00 00 */	cmplwi r3, 0
/* 8049B348  41 82 00 10 */	beq lbl_8049B358
/* 8049B34C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8049B350  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8049B354  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_8049B358:
/* 8049B358  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8049B35C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8049B360  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049B364  7C 08 03 A6 */	mtlr r0
/* 8049B368  38 21 00 30 */	addi r1, r1, 0x30
/* 8049B36C  4E 80 00 20 */	blr 
