lbl_80137C90:
/* 80137C90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80137C94  7C 08 02 A6 */	mflr r0
/* 80137C98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80137C9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80137CA0  48 22 A5 35 */	bl _savegpr_27
/* 80137CA4  7C 7B 1B 78 */	mr r27, r3
/* 80137CA8  7C 9C 23 78 */	mr r28, r4
/* 80137CAC  7C BD 2B 78 */	mr r29, r5
/* 80137CB0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80137CB4  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80137CB8  80 1F 5F 18 */	lwz r0, 0x5f18(r31)
/* 80137CBC  54 1E 9F FE */	rlwinm r30, r0, 0x13, 0x1f, 0x1f
/* 80137CC0  38 80 01 02 */	li r4, 0x102
/* 80137CC4  4B F8 A2 A9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80137CC8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80137CCC  D0 1B 37 C8 */	stfs f0, 0x37c8(r27)
/* 80137CD0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80137CD4  D0 1B 37 CC */	stfs f0, 0x37cc(r27)
/* 80137CD8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80137CDC  D0 1B 37 D0 */	stfs f0, 0x37d0(r27)
/* 80137CE0  93 9B 31 98 */	stw r28, 0x3198(r27)
/* 80137CE4  38 00 00 14 */	li r0, 0x14
/* 80137CE8  B0 1B 30 08 */	sth r0, 0x3008(r27)
/* 80137CEC  38 00 01 2C */	li r0, 0x12c
/* 80137CF0  B0 1B 30 0A */	sth r0, 0x300a(r27)
/* 80137CF4  7F 63 DB 78 */	mr r3, r27
/* 80137CF8  4B FB FF F1 */	bl setCrawlMoveDirectionArrow__9daAlink_cFv
/* 80137CFC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80137D00  D0 1B 33 98 */	stfs f0, 0x3398(r27)
/* 80137D04  38 00 00 0D */	li r0, 0xd
/* 80137D08  98 1B 2F 99 */	stb r0, 0x2f99(r27)
/* 80137D0C  80 1F 5F 18 */	lwz r0, 0x5f18(r31)
/* 80137D10  64 00 08 00 */	oris r0, r0, 0x800
/* 80137D14  90 1F 5F 18 */	stw r0, 0x5f18(r31)
/* 80137D18  2C 1E 00 00 */	cmpwi r30, 0
/* 80137D1C  41 82 00 0C */	beq lbl_80137D28
/* 80137D20  60 00 20 00 */	ori r0, r0, 0x2000
/* 80137D24  90 1F 5F 18 */	stw r0, 0x5f18(r31)
lbl_80137D28:
/* 80137D28  38 00 00 1E */	li r0, 0x1e
/* 80137D2C  B0 1B 30 12 */	sth r0, 0x3012(r27)
/* 80137D30  38 60 00 01 */	li r3, 1
/* 80137D34  39 61 00 20 */	addi r11, r1, 0x20
/* 80137D38  48 22 A4 E9 */	bl _restgpr_27
/* 80137D3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80137D40  7C 08 03 A6 */	mtlr r0
/* 80137D44  38 21 00 20 */	addi r1, r1, 0x20
/* 80137D48  4E 80 00 20 */	blr 
