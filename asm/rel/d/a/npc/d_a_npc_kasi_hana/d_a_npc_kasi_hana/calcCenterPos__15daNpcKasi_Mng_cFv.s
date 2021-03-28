lbl_80A1B0D8:
/* 80A1B0D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A1B0DC  7C 08 02 A6 */	mflr r0
/* 80A1B0E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A1B0E4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A1B0E8  4B 94 70 F4 */	b _savegpr_29
/* 80A1B0EC  7C 7D 1B 78 */	mr r29, r3
/* 80A1B0F0  4B 73 55 FC */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B0F4  7C 7E 1B 78 */	mr r30, r3
/* 80A1B0F8  38 7D 00 08 */	addi r3, r29, 8
/* 80A1B0FC  4B 73 55 F0 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B100  7C 7F 1B 78 */	mr r31, r3
/* 80A1B104  38 7D 00 10 */	addi r3, r29, 0x10
/* 80A1B108  4B 73 55 E4 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B10C  28 1E 00 00 */	cmplwi r30, 0
/* 80A1B110  41 82 00 14 */	beq lbl_80A1B124
/* 80A1B114  28 1F 00 00 */	cmplwi r31, 0
/* 80A1B118  41 82 00 0C */	beq lbl_80A1B124
/* 80A1B11C  28 03 00 00 */	cmplwi r3, 0
/* 80A1B120  40 82 00 0C */	bne lbl_80A1B12C
lbl_80A1B124:
/* 80A1B124  38 60 00 00 */	li r3, 0
/* 80A1B128  48 00 00 88 */	b lbl_80A1B1B0
lbl_80A1B12C:
/* 80A1B12C  C1 1E 04 D0 */	lfs f8, 0x4d0(r30)
/* 80A1B130  D1 01 00 20 */	stfs f8, 0x20(r1)
/* 80A1B134  C0 FE 04 D4 */	lfs f7, 0x4d4(r30)
/* 80A1B138  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 80A1B13C  C0 DE 04 D8 */	lfs f6, 0x4d8(r30)
/* 80A1B140  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 80A1B144  C0 BF 04 D0 */	lfs f5, 0x4d0(r31)
/* 80A1B148  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 80A1B14C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A1B150  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A1B154  C0 9F 04 D8 */	lfs f4, 0x4d8(r31)
/* 80A1B158  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80A1B15C  C0 63 04 D0 */	lfs f3, 0x4d0(r3)
/* 80A1B160  D0 61 00 08 */	stfs f3, 8(r1)
/* 80A1B164  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80A1B168  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A1B16C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80A1B170  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80A1B174  EC 07 00 2A */	fadds f0, f7, f0
/* 80A1B178  EC 01 00 2A */	fadds f0, f1, f0
/* 80A1B17C  3C 60 80 A2 */	lis r3, lit_3944@ha
/* 80A1B180  C0 23 10 8C */	lfs f1, lit_3944@l(r3)
/* 80A1B184  EC E0 08 24 */	fdivs f7, f0, f1
/* 80A1B188  EC 06 20 2A */	fadds f0, f6, f4
/* 80A1B18C  EC 02 00 2A */	fadds f0, f2, f0
/* 80A1B190  EC 40 08 24 */	fdivs f2, f0, f1
/* 80A1B194  EC 08 28 2A */	fadds f0, f8, f5
/* 80A1B198  EC 03 00 2A */	fadds f0, f3, f0
/* 80A1B19C  EC 00 08 24 */	fdivs f0, f0, f1
/* 80A1B1A0  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 80A1B1A4  D0 FD 00 40 */	stfs f7, 0x40(r29)
/* 80A1B1A8  D0 5D 00 44 */	stfs f2, 0x44(r29)
/* 80A1B1AC  38 60 00 01 */	li r3, 1
lbl_80A1B1B0:
/* 80A1B1B0  39 61 00 40 */	addi r11, r1, 0x40
/* 80A1B1B4  4B 94 70 74 */	b _restgpr_29
/* 80A1B1B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A1B1BC  7C 08 03 A6 */	mtlr r0
/* 80A1B1C0  38 21 00 40 */	addi r1, r1, 0x40
/* 80A1B1C4  4E 80 00 20 */	blr 
