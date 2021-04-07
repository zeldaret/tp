lbl_801FD140:
/* 801FD140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FD144  7C 08 02 A6 */	mflr r0
/* 801FD148  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FD14C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FD150  93 C1 00 08 */	stw r30, 8(r1)
/* 801FD154  7C 7E 1B 78 */	mr r30, r3
/* 801FD158  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801FD15C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801FD160  80 03 5E BC */	lwz r0, 0x5ebc(r3)
/* 801FD164  90 1E 01 00 */	stw r0, 0x100(r30)
/* 801FD168  38 60 00 30 */	li r3, 0x30
/* 801FD16C  48 0D 1A E1 */	bl __nw__FUl
/* 801FD170  7C 60 1B 79 */	or. r0, r3, r3
/* 801FD174  41 82 00 2C */	beq lbl_801FD1A0
/* 801FD178  38 80 00 05 */	li r4, 5
/* 801FD17C  38 A0 00 02 */	li r5, 2
/* 801FD180  38 C0 00 01 */	li r6, 1
/* 801FD184  38 E0 00 01 */	li r7, 1
/* 801FD188  C0 22 AA D4 */	lfs f1, lit_6086(r2)
/* 801FD18C  C0 42 AA D8 */	lfs f2, lit_6087(r2)
/* 801FD190  39 00 00 00 */	li r8, 0
/* 801FD194  39 20 08 00 */	li r9, 0x800
/* 801FD198  4B E3 4E AD */	bl __ct__9STControlFssssffss
/* 801FD19C  7C 60 1B 78 */	mr r0, r3
lbl_801FD1A0:
/* 801FD1A0  90 1E 01 04 */	stw r0, 0x104(r30)
/* 801FD1A4  38 00 00 08 */	li r0, 8
/* 801FD1A8  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 801FD1AC  B0 03 00 28 */	sth r0, 0x28(r3)
/* 801FD1B0  38 60 00 30 */	li r3, 0x30
/* 801FD1B4  48 0D 1A 99 */	bl __nw__FUl
/* 801FD1B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 801FD1BC  41 82 00 34 */	beq lbl_801FD1F0
/* 801FD1C0  38 80 00 05 */	li r4, 5
/* 801FD1C4  38 A0 00 02 */	li r5, 2
/* 801FD1C8  38 C0 00 03 */	li r6, 3
/* 801FD1CC  38 E0 00 02 */	li r7, 2
/* 801FD1D0  C0 22 AA D4 */	lfs f1, lit_6086(r2)
/* 801FD1D4  C0 42 AA D8 */	lfs f2, lit_6087(r2)
/* 801FD1D8  39 00 00 00 */	li r8, 0
/* 801FD1DC  39 20 20 00 */	li r9, 0x2000
/* 801FD1E0  4B E3 4E 65 */	bl __ct__9STControlFssssffss
/* 801FD1E4  3C 60 80 3A */	lis r3, __vt__10CSTControl@ha /* 0x803A7250@ha */
/* 801FD1E8  38 03 72 50 */	addi r0, r3, __vt__10CSTControl@l /* 0x803A7250@l */
/* 801FD1EC  90 1F 00 00 */	stw r0, 0(r31)
lbl_801FD1F0:
/* 801FD1F0  93 FE 01 08 */	stw r31, 0x108(r30)
/* 801FD1F4  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 801FD1F8  38 80 00 05 */	li r4, 5
/* 801FD1FC  38 A0 00 02 */	li r5, 2
/* 801FD200  38 C0 00 03 */	li r6, 3
/* 801FD204  38 E0 00 02 */	li r7, 2
/* 801FD208  C0 22 AA D4 */	lfs f1, lit_6086(r2)
/* 801FD20C  C0 42 AA D8 */	lfs f2, lit_6087(r2)
/* 801FD210  39 00 00 00 */	li r8, 0
/* 801FD214  39 20 20 00 */	li r9, 0x2000
/* 801FD218  4B E3 4E 71 */	bl setWaitParm__9STControlFssssffss
/* 801FD21C  38 80 00 00 */	li r4, 0
/* 801FD220  98 9E 01 45 */	stb r4, 0x145(r30)
/* 801FD224  98 9E 01 46 */	stb r4, 0x146(r30)
/* 801FD228  38 00 00 01 */	li r0, 1
/* 801FD22C  98 1E 01 47 */	stb r0, 0x147(r30)
/* 801FD230  98 9E 01 48 */	stb r4, 0x148(r30)
/* 801FD234  98 9E 01 4C */	stb r4, 0x14c(r30)
/* 801FD238  98 9E 01 4D */	stb r4, 0x14d(r30)
/* 801FD23C  98 9E 01 4E */	stb r4, 0x14e(r30)
/* 801FD240  98 9E 01 4F */	stb r4, 0x14f(r30)
/* 801FD244  98 9E 01 50 */	stb r4, 0x150(r30)
/* 801FD248  98 9E 01 51 */	stb r4, 0x151(r30)
/* 801FD24C  98 9E 01 52 */	stb r4, 0x152(r30)
/* 801FD250  C0 02 AA C0 */	lfs f0, lit_4152(r2)
/* 801FD254  D0 1E 01 3C */	stfs f0, 0x13c(r30)
/* 801FD258  D0 1E 01 40 */	stfs f0, 0x140(r30)
/* 801FD25C  98 9E 01 53 */	stb r4, 0x153(r30)
/* 801FD260  98 1E 01 54 */	stb r0, 0x154(r30)
/* 801FD264  98 9E 01 49 */	stb r4, 0x149(r30)
/* 801FD268  98 9E 01 4A */	stb r4, 0x14a(r30)
/* 801FD26C  98 9E 01 4B */	stb r4, 0x14b(r30)
/* 801FD270  90 9E 01 0C */	stw r4, 0x10c(r30)
/* 801FD274  90 9E 01 10 */	stw r4, 0x110(r30)
/* 801FD278  90 9E 01 14 */	stw r4, 0x114(r30)
/* 801FD27C  90 9E 01 18 */	stw r4, 0x118(r30)
/* 801FD280  90 9E 01 1C */	stw r4, 0x11c(r30)
/* 801FD284  90 9E 01 20 */	stw r4, 0x120(r30)
/* 801FD288  90 9E 01 24 */	stw r4, 0x124(r30)
/* 801FD28C  90 9E 01 28 */	stw r4, 0x128(r30)
/* 801FD290  90 9E 01 2C */	stw r4, 0x12c(r30)
/* 801FD294  90 9E 01 30 */	stw r4, 0x130(r30)
/* 801FD298  90 9E 01 34 */	stw r4, 0x134(r30)
/* 801FD29C  90 9E 01 38 */	stw r4, 0x138(r30)
/* 801FD2A0  38 00 00 03 */	li r0, 3
/* 801FD2A4  98 1E 01 44 */	stb r0, 0x144(r30)
/* 801FD2A8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FD2AC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FD2B0  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 801FD2B4  98 03 00 BA */	stb r0, 0xba(r3)
/* 801FD2B8  98 83 00 B9 */	stb r4, 0xb9(r3)
/* 801FD2BC  38 60 00 04 */	li r3, 4
/* 801FD2C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FD2C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801FD2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FD2CC  7C 08 03 A6 */	mtlr r0
/* 801FD2D0  38 21 00 10 */	addi r1, r1, 0x10
/* 801FD2D4  4E 80 00 20 */	blr 
