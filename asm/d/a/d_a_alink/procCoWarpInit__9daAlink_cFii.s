lbl_8011FD4C:
/* 8011FD4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8011FD50  7C 08 02 A6 */	mflr r0
/* 8011FD54  90 01 00 44 */	stw r0, 0x44(r1)
/* 8011FD58  39 61 00 40 */	addi r11, r1, 0x40
/* 8011FD5C  48 24 24 79 */	bl _savegpr_27
/* 8011FD60  7C 7C 1B 78 */	mr r28, r3
/* 8011FD64  7C 9D 23 78 */	mr r29, r4
/* 8011FD68  7C BE 2B 78 */	mr r30, r5
/* 8011FD6C  38 80 01 4F */	li r4, 0x14f
/* 8011FD70  4B FA 30 35 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011FD74  2C 03 00 00 */	cmpwi r3, 0
/* 8011FD78  40 82 00 0C */	bne lbl_8011FD84
/* 8011FD7C  38 60 00 00 */	li r3, 0
/* 8011FD80  48 00 03 8C */	b lbl_8012010C
lbl_8011FD84:
/* 8011FD84  7F 83 E3 78 */	mr r3, r28
/* 8011FD88  38 80 00 00 */	li r4, 0
/* 8011FD8C  4B FA 20 81 */	bl changeWarpMaterial__9daAlink_cFQ29daAlink_c21daAlink_WARP_MAT_MODE
/* 8011FD90  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011FD94  D0 1C 33 98 */	stfs f0, 0x3398(r28)
/* 8011FD98  7F 83 E3 78 */	mr r3, r28
/* 8011FD9C  38 80 00 00 */	li r4, 0
/* 8011FDA0  38 A0 00 01 */	li r5, 1
/* 8011FDA4  4B FA 15 39 */	bl deleteEquipItem__9daAlink_cFii
/* 8011FDA8  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 8011FDAC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011FDB0  41 82 00 24 */	beq lbl_8011FDD4
/* 8011FDB4  7F 83 E3 78 */	mr r3, r28
/* 8011FDB8  38 80 00 00 */	li r4, 0
/* 8011FDBC  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlMove_c0@ha
/* 8011FDC0  38 A5 EE 28 */	addi r5, r5, m__20daAlinkHIO_wlMove_c0@l
/* 8011FDC4  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 8011FDC8  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8011FDCC  48 00 99 0D */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8011FDD0  48 00 00 20 */	b lbl_8011FDF0
lbl_8011FDD4:
/* 8011FDD4  7F 83 E3 78 */	mr r3, r28
/* 8011FDD8  38 80 00 19 */	li r4, 0x19
/* 8011FDDC  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha
/* 8011FDE0  38 A5 D6 BC */	addi r5, r5, m__18daAlinkHIO_move_c0@l
/* 8011FDE4  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 8011FDE8  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8011FDEC  4B F8 D1 F5 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_8011FDF0:
/* 8011FDF0  3B 60 00 00 */	li r27, 0
/* 8011FDF4  2C 1E 00 00 */	cmpwi r30, 0
/* 8011FDF8  40 82 00 50 */	bne lbl_8011FE48
/* 8011FDFC  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 8011FE00  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 8011FE04  38 63 01 68 */	addi r3, r3, 0x168
/* 8011FE08  4B F7 DC 59 */	bl checkStageName__9daAlink_cFPCc
/* 8011FE0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011FE10  41 82 00 10 */	beq lbl_8011FE20
/* 8011FE14  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8011FE18  2C 00 00 04 */	cmpwi r0, 4
/* 8011FE1C  41 82 00 28 */	beq lbl_8011FE44
lbl_8011FE20:
/* 8011FE20  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 8011FE24  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 8011FE28  38 63 01 70 */	addi r3, r3, 0x170
/* 8011FE2C  4B F7 DC 35 */	bl checkStageName__9daAlink_cFPCc
/* 8011FE30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011FE34  41 82 00 14 */	beq lbl_8011FE48
/* 8011FE38  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8011FE3C  7C 00 07 75 */	extsb. r0, r0
/* 8011FE40  40 82 00 08 */	bne lbl_8011FE48
lbl_8011FE44:
/* 8011FE44  3B 60 00 01 */	li r27, 1
lbl_8011FE48:
/* 8011FE48  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 8011FE4C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011FE50  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 8011FE54  B3 BC 30 0C */	sth r29, 0x300c(r28)
/* 8011FE58  38 00 00 01 */	li r0, 1
/* 8011FE5C  B0 1C 30 12 */	sth r0, 0x3012(r28)
/* 8011FE60  38 60 00 00 */	li r3, 0
/* 8011FE64  B0 7C 30 0A */	sth r3, 0x300a(r28)
/* 8011FE68  38 00 00 FF */	li r0, 0xff
/* 8011FE6C  B0 1C 30 10 */	sth r0, 0x3010(r28)
/* 8011FE70  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8011FE74  D0 1C 34 88 */	stfs f0, 0x3488(r28)
/* 8011FE78  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 8011FE7C  2C 00 00 00 */	cmpwi r0, 0
/* 8011FE80  40 82 01 AC */	bne lbl_8012002C
/* 8011FE84  C0 02 93 4C */	lfs f0, lit_8131(r2)
/* 8011FE88  D0 1C 34 80 */	stfs f0, 0x3480(r28)
/* 8011FE8C  B0 7C 30 08 */	sth r3, 0x3008(r28)
/* 8011FE90  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 8011FE94  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011FE98  41 82 00 70 */	beq lbl_8011FF08
/* 8011FE9C  C0 02 96 58 */	lfs f0, lit_37152(r2)
/* 8011FEA0  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 8011FEA4  2C 04 00 00 */	cmpwi r4, 0
/* 8011FEA8  41 82 00 2C */	beq lbl_8011FED4
/* 8011FEAC  3C 60 00 01 */	lis r3, 0x0001 /* 0x000088C8@ha */
/* 8011FEB0  38 03 88 C8 */	addi r0, r3, 0x88C8 /* 0x000088C8@l */
/* 8011FEB4  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 8011FEB8  80 6D 8A 98 */	lwz r3, m_midnaActor__9daPy_py_c(r13)
/* 8011FEBC  80 03 08 94 */	lwz r0, 0x894(r3)
/* 8011FEC0  60 00 01 00 */	ori r0, r0, 0x100
/* 8011FEC4  90 03 08 94 */	stw r0, 0x894(r3)
/* 8011FEC8  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002009A@ha */
/* 8011FECC  3B E3 00 9A */	addi r31, r3, 0x009A /* 0x0002009A@l */
/* 8011FED0  48 00 00 14 */	b lbl_8011FEE4
lbl_8011FED4:
/* 8011FED4  38 00 09 FB */	li r0, 0x9fb
/* 8011FED8  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 8011FEDC  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020099@ha */
/* 8011FEE0  3B E3 00 99 */	addi r31, r3, 0x0099 /* 0x00020099@l */
lbl_8011FEE4:
/* 8011FEE4  2C 1E 00 00 */	cmpwi r30, 0
/* 8011FEE8  41 82 01 38 */	beq lbl_80120020
/* 8011FEEC  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 8011FEF0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011FEF4  40 82 01 2C */	bne lbl_80120020
/* 8011FEF8  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 8011FEFC  64 00 08 00 */	oris r0, r0, 0x800
/* 8011FF00  90 1C 05 70 */	stw r0, 0x570(r28)
/* 8011FF04  48 00 01 1C */	b lbl_80120020
lbl_8011FF08:
/* 8011FF08  C0 02 95 88 */	lfs f0, lit_24680(r2)
/* 8011FF0C  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 8011FF10  2C 04 00 00 */	cmpwi r4, 0
/* 8011FF14  41 82 00 1C */	beq lbl_8011FF30
/* 8011FF18  3C 60 00 01 */	lis r3, 0x0001 /* 0x000088C7@ha */
/* 8011FF1C  38 03 88 C7 */	addi r0, r3, 0x88C7 /* 0x000088C7@l */
/* 8011FF20  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 8011FF24  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020097@ha */
/* 8011FF28  3B E3 00 97 */	addi r31, r3, 0x0097 /* 0x00020097@l */
/* 8011FF2C  48 00 00 F4 */	b lbl_80120020
lbl_8011FF30:
/* 8011FF30  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020096@ha */
/* 8011FF34  3B E3 00 96 */	addi r31, r3, 0x0096 /* 0x00020096@l */
/* 8011FF38  4B FA 03 91 */	bl checkBossRoom__9daAlink_cFv
/* 8011FF3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011FF40  41 82 00 D8 */	beq lbl_80120018
/* 8011FF44  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8011FF48  2C 00 00 32 */	cmpwi r0, 0x32
/* 8011FF4C  40 82 00 CC */	bne lbl_80120018
/* 8011FF50  38 61 00 08 */	addi r3, r1, 8
/* 8011FF54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8011FF58  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8011FF5C  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 8011FF60  48 24 8B CD */	bl strcpy
/* 8011FF64  38 C0 00 00 */	li r6, 0
/* 8011FF68  38 A0 00 00 */	li r5, 0
/* 8011FF6C  38 61 00 08 */	addi r3, r1, 8
/* 8011FF70  38 00 00 20 */	li r0, 0x20
/* 8011FF74  7C 09 03 A6 */	mtctr r0
lbl_8011FF78:
/* 8011FF78  88 03 00 00 */	lbz r0, 0(r3)
/* 8011FF7C  7C 04 07 74 */	extsb r4, r0
/* 8011FF80  7C 80 FE 70 */	srawi r0, r4, 0x1f
/* 8011FF84  7C 84 2A 78 */	xor r4, r4, r5
/* 8011FF88  7C 00 2A 78 */	xor r0, r0, r5
/* 8011FF8C  7C 80 03 79 */	or. r0, r4, r0
/* 8011FF90  40 82 00 14 */	bne lbl_8011FFA4
/* 8011FF94  38 00 00 00 */	li r0, 0
/* 8011FF98  38 61 00 07 */	addi r3, r1, 7
/* 8011FF9C  7C 03 31 AE */	stbx r0, r3, r6
/* 8011FFA0  48 00 00 10 */	b lbl_8011FFB0
lbl_8011FFA4:
/* 8011FFA4  38 C6 00 01 */	addi r6, r6, 1
/* 8011FFA8  38 63 00 01 */	addi r3, r3, 1
/* 8011FFAC  42 00 FF CC */	bdnz lbl_8011FF78
lbl_8011FFB0:
/* 8011FFB0  38 60 00 25 */	li r3, 0x25
/* 8011FFB4  38 80 00 01 */	li r4, 1
/* 8011FFB8  4B F7 7F 29 */	bl checkItemGet__FUci
/* 8011FFBC  2C 03 00 00 */	cmpwi r3, 0
/* 8011FFC0  40 82 00 30 */	bne lbl_8011FFF0
/* 8011FFC4  38 60 00 27 */	li r3, 0x27
/* 8011FFC8  38 80 00 01 */	li r4, 1
/* 8011FFCC  4B F7 7F 15 */	bl checkItemGet__FUci
/* 8011FFD0  2C 03 00 00 */	cmpwi r3, 0
/* 8011FFD4  41 82 00 44 */	beq lbl_80120018
/* 8011FFD8  4B F0 F2 D5 */	bl dComIfGs_getWarpStageName__Fv
/* 8011FFDC  7C 64 1B 78 */	mr r4, r3
/* 8011FFE0  38 61 00 08 */	addi r3, r1, 8
/* 8011FFE4  48 24 89 B1 */	bl strcmp
/* 8011FFE8  2C 03 00 00 */	cmpwi r3, 0
/* 8011FFEC  40 82 00 2C */	bne lbl_80120018
lbl_8011FFF0:
/* 8011FFF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011FFF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011FFF8  38 63 00 9C */	addi r3, r3, 0x9c
/* 8011FFFC  38 80 00 12 */	li r4, 0x12
/* 80120000  38 A0 00 FF */	li r5, 0xff
/* 80120004  4B F1 2F B5 */	bl setItem__17dSv_player_item_cFiUc
/* 80120008  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8012000C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80120010  38 00 FF FF */	li r0, -1
/* 80120014  98 03 00 98 */	stb r0, 0x98(r3)
lbl_80120018:
/* 80120018  38 00 09 F4 */	li r0, 0x9f4
/* 8012001C  90 1C 32 CC */	stw r0, 0x32cc(r28)
lbl_80120020:
/* 80120020  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80120024  D0 1C 34 84 */	stfs f0, 0x3484(r28)
/* 80120028  48 00 00 AC */	b lbl_801200D4
lbl_8012002C:
/* 8012002C  C0 02 93 4C */	lfs f0, lit_8131(r2)
/* 80120030  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 80120034  38 00 00 2D */	li r0, 0x2d
/* 80120038  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 8012003C  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 80120040  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80120044  41 82 00 1C */	beq lbl_80120060
/* 80120048  C0 02 96 58 */	lfs f0, lit_37152(r2)
/* 8012004C  D0 1C 34 80 */	stfs f0, 0x3480(r28)
/* 80120050  B0 7C 30 12 */	sth r3, 0x3012(r28)
/* 80120054  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 80120058  D0 1C 34 88 */	stfs f0, 0x3488(r28)
/* 8012005C  48 00 00 2C */	b lbl_80120088
lbl_80120060:
/* 80120060  C0 02 95 88 */	lfs f0, lit_24680(r2)
/* 80120064  D0 1C 34 80 */	stfs f0, 0x3480(r28)
/* 80120068  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020098@ha */
/* 8012006C  3B E3 00 98 */	addi r31, r3, 0x0098 /* 0x00020098@l */
/* 80120070  7F 83 E3 78 */	mr r3, r28
/* 80120074  38 9C 32 40 */	addi r4, r28, 0x3240
/* 80120078  38 A0 09 F3 */	li r5, 0x9f3
/* 8012007C  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 80120080  38 FC 04 E4 */	addi r7, r28, 0x4e4
/* 80120084  48 00 04 FD */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
lbl_80120088:
/* 80120088  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012008C  D0 3C 34 84 */	stfs f1, 0x3484(r28)
/* 80120090  80 1C 19 9C */	lwz r0, 0x199c(r28)
/* 80120094  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80120098  40 82 00 1C */	bne lbl_801200B4
/* 8012009C  7F 83 E3 78 */	mr r3, r28
/* 801200A0  C0 5C 05 34 */	lfs f2, 0x534(r28)
/* 801200A4  38 80 00 00 */	li r4, 0
/* 801200A8  4B F9 B6 C9 */	bl setSpecialGravity__9daAlink_cFffi
/* 801200AC  38 00 00 01 */	li r0, 1
/* 801200B0  B0 1C 30 0A */	sth r0, 0x300a(r28)
lbl_801200B4:
/* 801200B4  3C 60 80 12 */	lis r3, daAlink_searchPortal__FP10fopAc_ac_cPv@ha
/* 801200B8  38 63 F5 D4 */	addi r3, r3, daAlink_searchPortal__FP10fopAc_ac_cPv@l
/* 801200BC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 801200C0  4B EF 97 39 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 801200C4  28 03 00 00 */	cmplwi r3, 0
/* 801200C8  41 82 00 0C */	beq lbl_801200D4
/* 801200CC  88 03 05 C6 */	lbz r0, 0x5c6(r3)
/* 801200D0  B0 1C 30 10 */	sth r0, 0x3010(r28)
lbl_801200D4:
/* 801200D4  C0 3C 34 88 */	lfs f1, 0x3488(r28)
/* 801200D8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801200DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801200E0  40 81 00 1C */	ble lbl_801200FC
/* 801200E4  7F 83 E3 78 */	mr r3, r28
/* 801200E8  7F E4 FB 78 */	mr r4, r31
/* 801200EC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 801200F0  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 801200F4  7D 89 03 A6 */	mtctr r12
/* 801200F8  4E 80 04 21 */	bctrl 
lbl_801200FC:
/* 801200FC  B3 DC 30 0E */	sth r30, 0x300e(r28)
/* 80120100  7F 83 E3 78 */	mr r3, r28
/* 80120104  4B FF FA BD */	bl warpModelTexScroll__9daAlink_cFv
/* 80120108  38 60 00 01 */	li r3, 1
lbl_8012010C:
/* 8012010C  39 61 00 40 */	addi r11, r1, 0x40
/* 80120110  48 24 21 11 */	bl _restgpr_27
/* 80120114  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80120118  7C 08 03 A6 */	mtlr r0
/* 8012011C  38 21 00 40 */	addi r1, r1, 0x40
/* 80120120  4E 80 00 20 */	blr 
