lbl_800CF100:
/* 800CF100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CF104  7C 08 02 A6 */	mflr r0
/* 800CF108  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CF10C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CF110  7C 7F 1B 78 */	mr r31, r3
/* 800CF114  38 80 01 40 */	li r4, 0x140
/* 800CF118  4B FF 2E 55 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800CF11C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800CF120  D0 3F 33 98 */	stfs f1, 0x3398(r31)
/* 800CF124  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800CF128  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CF12C  41 82 00 18 */	beq lbl_800CF144
/* 800CF130  7F E3 FB 78 */	mr r3, r31
/* 800CF134  38 80 00 00 */	li r4, 0
/* 800CF138  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800CF13C  48 05 A5 9D */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 800CF140  48 00 00 14 */	b lbl_800CF154
lbl_800CF144:
/* 800CF144  7F E3 FB 78 */	mr r3, r31
/* 800CF148  38 80 00 19 */	li r4, 0x19
/* 800CF14C  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800CF150  4B FD DE 91 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800CF154:
/* 800CF154  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800CF158  64 00 08 00 */	oris r0, r0, 0x800
/* 800CF15C  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800CF160  7F E3 FB 78 */	mr r3, r31
/* 800CF164  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800CF168  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 800CF16C  38 80 00 00 */	li r4, 0
/* 800CF170  4B FE C6 01 */	bl setSpecialGravity__9daAlink_cFffi
/* 800CF174  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800CF178  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800CF17C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CF180  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CF184  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800CF188  60 00 20 00 */	ori r0, r0, 0x2000
/* 800CF18C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800CF190  C0 02 92 C8 */	lfs f0, lit_6183(r2)
/* 800CF194  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800CF198  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800CF19C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800CF1A0  38 60 00 01 */	li r3, 1
/* 800CF1A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CF1A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CF1AC  7C 08 03 A6 */	mtlr r0
/* 800CF1B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800CF1B4  4E 80 00 20 */	blr 
