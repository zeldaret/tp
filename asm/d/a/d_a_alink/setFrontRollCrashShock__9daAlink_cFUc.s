lbl_800C1CEC:
/* 800C1CEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800C1CF0  7C 08 02 A6 */	mflr r0
/* 800C1CF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800C1CF8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800C1CFC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800C1D00  7C 7E 1B 78 */	mr r30, r3
/* 800C1D04  7C 9F 23 78 */	mr r31, r4
/* 800C1D08  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C1D0C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800C1D10  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800C1D14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800C1D18  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800C1D1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C1D20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C1D24  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800C1D28  38 80 00 05 */	li r4, 5
/* 800C1D2C  38 A0 00 0F */	li r5, 0xf
/* 800C1D30  38 C1 00 18 */	addi r6, r1, 0x18
/* 800C1D34  4B FA DC F1 */	bl StartShock__12dVibration_cFii4cXyz
/* 800C1D38  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020016@ha */
/* 800C1D3C  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00020016@l */
/* 800C1D40  90 01 00 08 */	stw r0, 8(r1)
/* 800C1D44  38 7E 2C A8 */	addi r3, r30, 0x2ca8
/* 800C1D48  38 81 00 08 */	addi r4, r1, 8
/* 800C1D4C  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 800C1D50  88 DE 2F 9A */	lbz r6, 0x2f9a(r30)
/* 800C1D54  48 20 1E 81 */	bl startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc
/* 800C1D58  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800C1D5C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800C1D60  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800C1D64  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800C1D68  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800C1D6C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800C1D70  38 61 00 0C */	addi r3, r1, 0xc
/* 800C1D74  38 80 00 64 */	li r4, 0x64
/* 800C1D78  28 1E 00 00 */	cmplwi r30, 0
/* 800C1D7C  41 82 00 0C */	beq lbl_800C1D88
/* 800C1D80  80 BE 00 04 */	lwz r5, 4(r30)
/* 800C1D84  48 00 00 08 */	b lbl_800C1D8C
lbl_800C1D88:
/* 800C1D88  38 A0 FF FF */	li r5, -1
lbl_800C1D8C:
/* 800C1D8C  38 C0 00 05 */	li r6, 5
/* 800C1D90  48 0E 64 31 */	bl dKy_Sound_set__F4cXyziUii
/* 800C1D94  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800C1D98  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800C1D9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800C1DA0  7C 08 03 A6 */	mtlr r0
/* 800C1DA4  38 21 00 30 */	addi r1, r1, 0x30
/* 800C1DA8  4E 80 00 20 */	blr 
