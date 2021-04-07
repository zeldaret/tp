lbl_80CEC1AC:
/* 80CEC1AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CEC1B0  7C 08 02 A6 */	mflr r0
/* 80CEC1B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CEC1B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CEC1BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CEC1C0  7C 7E 1B 78 */	mr r30, r3
/* 80CEC1C4  3B E0 00 00 */	li r31, 0
/* 80CEC1C8  38 60 00 00 */	li r3, 0
/* 80CEC1CC  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 80CEC1D0  D0 41 00 08 */	stfs f2, 8(r1)
/* 80CEC1D4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80CEC1D8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CEC1DC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CEC1E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CEC1E4  88 1E 09 07 */	lbz r0, 0x907(r30)
/* 80CEC1E8  28 00 00 02 */	cmplwi r0, 2
/* 80CEC1EC  40 82 00 14 */	bne lbl_80CEC200
/* 80CEC1F0  3B E0 00 01 */	li r31, 1
/* 80CEC1F4  D0 41 00 08 */	stfs f2, 8(r1)
/* 80CEC1F8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CEC1FC  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80CEC200:
/* 80CEC200  88 1E 09 07 */	lbz r0, 0x907(r30)
/* 80CEC204  28 00 00 03 */	cmplwi r0, 3
/* 80CEC208  40 82 00 08 */	bne lbl_80CEC210
/* 80CEC20C  38 60 00 01 */	li r3, 1
lbl_80CEC210:
/* 80CEC210  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CEC214  40 82 00 18 */	bne lbl_80CEC22C
/* 80CEC218  38 7E 05 74 */	addi r3, r30, 0x574
/* 80CEC21C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEC220  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEC224  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CEC228  4B 38 A8 85 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_80CEC22C:
/* 80CEC22C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80CEC230  41 82 00 1C */	beq lbl_80CEC24C
/* 80CEC234  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CEC238  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80CEC23C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CEC240  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80CEC244  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CEC248  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_80CEC24C:
/* 80CEC24C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CEC250  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CEC254  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CEC258  7C 08 03 A6 */	mtlr r0
/* 80CEC25C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CEC260  4E 80 00 20 */	blr 
