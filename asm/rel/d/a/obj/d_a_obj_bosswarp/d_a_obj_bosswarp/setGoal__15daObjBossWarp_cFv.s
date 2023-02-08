lbl_8057B0D8:
/* 8057B0D8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8057B0DC  7C 08 02 A6 */	mflr r0
/* 8057B0E0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8057B0E4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8057B0E8  7C 7F 1B 78 */	mr r31, r3
/* 8057B0EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057B0F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057B0F4  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 8057B0F8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8057B0FC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8057B100  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8057B104  4B CE BA 31 */	bl __mi__4cXyzCFRC3Vec
/* 8057B108  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8057B10C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8057B110  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8057B114  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8057B118  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8057B11C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8057B120  38 61 00 20 */	addi r3, r1, 0x20
/* 8057B124  38 81 00 44 */	addi r4, r1, 0x44
/* 8057B128  4B CE BE 21 */	bl normalizeZP__4cXyzFv
/* 8057B12C  38 61 00 14 */	addi r3, r1, 0x14
/* 8057B130  38 81 00 20 */	addi r4, r1, 0x20
/* 8057B134  3C A0 80 58 */	lis r5, lit_4541@ha /* 0x8057B4E8@ha */
/* 8057B138  C0 25 B4 E8 */	lfs f1, lit_4541@l(r5)  /* 0x8057B4E8@l */
/* 8057B13C  4B CE BA 49 */	bl __ml__4cXyzCFf
/* 8057B140  38 61 00 08 */	addi r3, r1, 8
/* 8057B144  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8057B148  38 A1 00 14 */	addi r5, r1, 0x14
/* 8057B14C  4B CE B9 99 */	bl __pl__4cXyzCFRC3Vec
/* 8057B150  C0 01 00 08 */	lfs f0, 8(r1)
/* 8057B154  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8057B158  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8057B15C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8057B160  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8057B164  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8057B168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057B16C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057B170  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8057B174  38 81 00 38 */	addi r4, r1, 0x38
/* 8057B178  4B AC D2 4D */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 8057B17C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8057B180  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8057B184  7C 08 03 A6 */	mtlr r0
/* 8057B188  38 21 00 60 */	addi r1, r1, 0x60
/* 8057B18C  4E 80 00 20 */	blr 
