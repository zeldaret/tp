lbl_809ACA58:
/* 809ACA58  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 809ACA5C  7C 08 02 A6 */	mflr r0
/* 809ACA60  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 809ACA64  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 809ACA68  93 C1 00 98 */	stw r30, 0x98(r1)
/* 809ACA6C  7C 7E 1B 78 */	mr r30, r3
/* 809ACA70  3C 60 80 9B */	lis r3, m__20daNpcDoorBoy_Param_c@ha /* 0x809AD9A8@ha */
/* 809ACA74  3B E3 D9 A8 */	addi r31, r3, m__20daNpcDoorBoy_Param_c@l /* 0x809AD9A8@l */
/* 809ACA78  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 809ACA7C  4B 9B 55 9D */	bl __ptmf_test
/* 809ACA80  2C 03 00 00 */	cmpwi r3, 0
/* 809ACA84  41 82 00 18 */	beq lbl_809ACA9C
/* 809ACA88  7F C3 F3 78 */	mr r3, r30
/* 809ACA8C  38 80 00 00 */	li r4, 0
/* 809ACA90  39 9E 0D D4 */	addi r12, r30, 0xdd4
/* 809ACA94  4B 9B 55 F1 */	bl __ptmf_scall
/* 809ACA98  60 00 00 00 */	nop 
lbl_809ACA9C:
/* 809ACA9C  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 809ACAA0  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 809ACAA4  90 61 00 20 */	stw r3, 0x20(r1)
/* 809ACAA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809ACAAC  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 809ACAB0  90 01 00 28 */	stw r0, 0x28(r1)
/* 809ACAB4  38 7F 00 00 */	addi r3, r31, 0
/* 809ACAB8  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 809ACABC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809ACAC0  80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 809ACAC4  90 01 00 08 */	stw r0, 8(r1)
/* 809ACAC8  38 01 00 20 */	addi r0, r1, 0x20
/* 809ACACC  90 01 00 08 */	stw r0, 8(r1)
/* 809ACAD0  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 809ACAD4  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 809ACAD8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 809ACADC  90 01 00 30 */	stw r0, 0x30(r1)
/* 809ACAE0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 809ACAE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 809ACAE8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809ACAEC  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 809ACAF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809ACAF4  38 01 00 2C */	addi r0, r1, 0x2c
/* 809ACAF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 809ACAFC  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 809ACB00  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 809ACB04  90 61 00 38 */	stw r3, 0x38(r1)
/* 809ACB08  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809ACB0C  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 809ACB10  90 01 00 40 */	stw r0, 0x40(r1)
/* 809ACB14  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809ACB18  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 809ACB1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809ACB20  38 01 00 38 */	addi r0, r1, 0x38
/* 809ACB24  90 01 00 10 */	stw r0, 0x10(r1)
/* 809ACB28  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 809ACB2C  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 809ACB30  90 61 00 44 */	stw r3, 0x44(r1)
/* 809ACB34  90 01 00 48 */	stw r0, 0x48(r1)
/* 809ACB38  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 809ACB3C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 809ACB40  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809ACB44  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 809ACB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 809ACB4C  38 01 00 44 */	addi r0, r1, 0x44
/* 809ACB50  90 01 00 14 */	stw r0, 0x14(r1)
/* 809ACB54  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 809ACB58  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 809ACB5C  90 61 00 50 */	stw r3, 0x50(r1)
/* 809ACB60  90 01 00 54 */	stw r0, 0x54(r1)
/* 809ACB64  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 809ACB68  90 01 00 58 */	stw r0, 0x58(r1)
/* 809ACB6C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 809ACB70  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 809ACB74  90 01 00 18 */	stw r0, 0x18(r1)
/* 809ACB78  38 01 00 50 */	addi r0, r1, 0x50
/* 809ACB7C  90 01 00 18 */	stw r0, 0x18(r1)
/* 809ACB80  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 809ACB84  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 809ACB88  90 61 00 5C */	stw r3, 0x5c(r1)
/* 809ACB8C  90 01 00 60 */	stw r0, 0x60(r1)
/* 809ACB90  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 809ACB94  90 01 00 64 */	stw r0, 0x64(r1)
/* 809ACB98  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 809ACB9C  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 809ACBA0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809ACBA4  38 01 00 5C */	addi r0, r1, 0x5c
/* 809ACBA8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809ACBAC  38 A1 00 64 */	addi r5, r1, 0x64
/* 809ACBB0  38 9F 00 F4 */	addi r4, r31, 0xf4
/* 809ACBB4  38 00 00 06 */	li r0, 6
/* 809ACBB8  7C 09 03 A6 */	mtctr r0
lbl_809ACBBC:
/* 809ACBBC  80 64 00 04 */	lwz r3, 4(r4)
/* 809ACBC0  84 04 00 08 */	lwzu r0, 8(r4)
/* 809ACBC4  90 65 00 04 */	stw r3, 4(r5)
/* 809ACBC8  94 05 00 08 */	stwu r0, 8(r5)
/* 809ACBCC  42 00 FF F0 */	bdnz lbl_809ACBBC
/* 809ACBD0  38 61 00 08 */	addi r3, r1, 8
/* 809ACBD4  90 61 00 68 */	stw r3, 0x68(r1)
/* 809ACBD8  38 01 00 0C */	addi r0, r1, 0xc
/* 809ACBDC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 809ACBE0  38 01 00 10 */	addi r0, r1, 0x10
/* 809ACBE4  90 01 00 70 */	stw r0, 0x70(r1)
/* 809ACBE8  38 01 00 14 */	addi r0, r1, 0x14
/* 809ACBEC  90 01 00 74 */	stw r0, 0x74(r1)
/* 809ACBF0  90 61 00 78 */	stw r3, 0x78(r1)
/* 809ACBF4  90 61 00 7C */	stw r3, 0x7c(r1)
/* 809ACBF8  90 61 00 80 */	stw r3, 0x80(r1)
/* 809ACBFC  90 61 00 84 */	stw r3, 0x84(r1)
/* 809ACC00  90 61 00 88 */	stw r3, 0x88(r1)
/* 809ACC04  90 61 00 8C */	stw r3, 0x8c(r1)
/* 809ACC08  38 01 00 18 */	addi r0, r1, 0x18
/* 809ACC0C  90 01 00 90 */	stw r0, 0x90(r1)
/* 809ACC10  38 01 00 1C */	addi r0, r1, 0x1c
/* 809ACC14  90 01 00 94 */	stw r0, 0x94(r1)
/* 809ACC18  A8 7E 09 E0 */	lha r3, 0x9e0(r30)
/* 809ACC1C  7C 60 07 35 */	extsh. r0, r3
/* 809ACC20  41 80 00 20 */	blt lbl_809ACC40
/* 809ACC24  2C 03 00 0C */	cmpwi r3, 0xc
/* 809ACC28  40 80 00 18 */	bge lbl_809ACC40
/* 809ACC2C  A8 1E 09 DA */	lha r0, 0x9da(r30)
/* 809ACC30  B0 1E 0E 02 */	sth r0, 0xe02(r30)
/* 809ACC34  7F C3 F3 78 */	mr r3, r30
/* 809ACC38  38 81 00 68 */	addi r4, r1, 0x68
/* 809ACC3C  4B 7A 66 29 */	bl playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_809ACC40:
/* 809ACC40  38 60 00 00 */	li r3, 0
/* 809ACC44  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 809ACC48  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 809ACC4C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 809ACC50  7C 08 03 A6 */	mtlr r0
/* 809ACC54  38 21 00 A0 */	addi r1, r1, 0xa0
/* 809ACC58  4E 80 00 20 */	blr 
