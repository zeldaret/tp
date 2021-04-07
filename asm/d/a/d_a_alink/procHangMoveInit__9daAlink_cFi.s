lbl_800FB650:
/* 800FB650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FB654  7C 08 02 A6 */	mflr r0
/* 800FB658  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FB65C  39 61 00 20 */	addi r11, r1, 0x20
/* 800FB660  48 26 6B 7D */	bl _savegpr_29
/* 800FB664  7C 7F 1B 78 */	mr r31, r3
/* 800FB668  7C 9D 23 78 */	mr r29, r4
/* 800FB66C  38 80 00 59 */	li r4, 0x59
/* 800FB670  4B FC 68 FD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FB674  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800FB678  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800FB67C  41 82 00 70 */	beq lbl_800FB6EC
/* 800FB680  7F E3 FB 78 */	mr r3, r31
/* 800FB684  4B FF EF 45 */	bl checkHangFootWall__9daAlink_cFv
/* 800FB688  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FB68C  41 82 00 60 */	beq lbl_800FB6EC
/* 800FB690  2C 1D 00 02 */	cmpwi r29, 2
/* 800FB694  40 82 00 1C */	bne lbl_800FB6B0
/* 800FB698  3B C0 00 A5 */	li r30, 0xa5
/* 800FB69C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800FB6A0  D0 1F 33 F0 */	stfs f0, 0x33f0(r31)
/* 800FB6A4  38 00 18 00 */	li r0, 0x1800
/* 800FB6A8  B0 1F 30 A2 */	sth r0, 0x30a2(r31)
/* 800FB6AC  48 00 00 18 */	b lbl_800FB6C4
lbl_800FB6B0:
/* 800FB6B0  3B C0 00 A6 */	li r30, 0xa6
/* 800FB6B4  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800FB6B8  D0 1F 33 F0 */	stfs f0, 0x33f0(r31)
/* 800FB6BC  38 00 E8 00 */	li r0, -6144
/* 800FB6C0  B0 1F 30 A2 */	sth r0, 0x30a2(r31)
lbl_800FB6C4:
/* 800FB6C4  7F E3 FB 78 */	mr r3, r31
/* 800FB6C8  48 00 29 6D */	bl getClimbMoveSideAnmSpeed__9daAlink_cFv
/* 800FB6CC  7F E3 FB 78 */	mr r3, r31
/* 800FB6D0  7F C4 F3 78 */	mr r4, r30
/* 800FB6D4  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800FB6D8  4B FB 19 09 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800FB6DC  38 00 00 FE */	li r0, 0xfe
/* 800FB6E0  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 800FB6E4  98 1F 2F 93 */	stb r0, 0x2f93(r31)
/* 800FB6E8  48 00 00 34 */	b lbl_800FB71C
lbl_800FB6EC:
/* 800FB6EC  2C 1D 00 02 */	cmpwi r29, 2
/* 800FB6F0  3B C0 00 98 */	li r30, 0x98
/* 800FB6F4  40 82 00 08 */	bne lbl_800FB6FC
/* 800FB6F8  3B C0 00 97 */	li r30, 0x97
lbl_800FB6FC:
/* 800FB6FC  7F E3 FB 78 */	mr r3, r31
/* 800FB700  4B FF E8 DD */	bl getHangMoveAnmSpeed__9daAlink_cFv
/* 800FB704  7F E3 FB 78 */	mr r3, r31
/* 800FB708  7F C4 F3 78 */	mr r4, r30
/* 800FB70C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wallMove_c0@ha /* 0x8038E1E0@ha */
/* 800FB710  38 A5 E1 E0 */	addi r5, r5, m__22daAlinkHIO_wallMove_c0@l /* 0x8038E1E0@l */
/* 800FB714  C0 45 00 08 */	lfs f2, 8(r5)
/* 800FB718  4B FB 18 C9 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800FB71C:
/* 800FB71C  2C 1D 00 02 */	cmpwi r29, 2
/* 800FB720  40 82 00 14 */	bne lbl_800FB734
/* 800FB724  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800FB728  38 03 40 00 */	addi r0, r3, 0x4000
/* 800FB72C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800FB730  48 00 00 10 */	b lbl_800FB740
lbl_800FB734:
/* 800FB734  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800FB738  38 03 C0 00 */	addi r0, r3, -16384
/* 800FB73C  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800FB740:
/* 800FB740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FB744  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FB748  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FB74C  60 00 01 00 */	ori r0, r0, 0x100
/* 800FB750  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FB754  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FB758  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800FB75C  38 00 00 09 */	li r0, 9
/* 800FB760  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800FB764  7F E3 FB 78 */	mr r3, r31
/* 800FB768  4B FE 44 C1 */	bl setBowHangAnime__9daAlink_cFv
/* 800FB76C  7F E3 FB 78 */	mr r3, r31
/* 800FB770  4B FF EF 75 */	bl setHangGroundY__9daAlink_cFv
/* 800FB774  38 60 00 01 */	li r3, 1
/* 800FB778  39 61 00 20 */	addi r11, r1, 0x20
/* 800FB77C  48 26 6A AD */	bl _restgpr_29
/* 800FB780  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FB784  7C 08 03 A6 */	mtlr r0
/* 800FB788  38 21 00 20 */	addi r1, r1, 0x20
/* 800FB78C  4E 80 00 20 */	blr 
