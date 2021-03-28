lbl_806B1BEC:
/* 806B1BEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B1BF0  7C 08 02 A6 */	mflr r0
/* 806B1BF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B1BF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806B1BFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806B1C00  7C 7E 1B 78 */	mr r30, r3
/* 806B1C04  3C 60 80 6B */	lis r3, lit_3792@ha
/* 806B1C08  3B E3 5C D4 */	addi r31, r3, lit_3792@l
/* 806B1C0C  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 806B1C10  2C 00 00 00 */	cmpwi r0, 0
/* 806B1C14  41 82 00 3C */	beq lbl_806B1C50
/* 806B1C18  88 1E 07 71 */	lbz r0, 0x771(r30)
/* 806B1C1C  28 00 00 00 */	cmplwi r0, 0
/* 806B1C20  40 82 00 28 */	bne lbl_806B1C48
/* 806B1C24  80 1E 0E D0 */	lwz r0, 0xed0(r30)
/* 806B1C28  60 00 00 01 */	ori r0, r0, 1
/* 806B1C2C  90 1E 0E D0 */	stw r0, 0xed0(r30)
/* 806B1C30  80 1E 0E E4 */	lwz r0, 0xee4(r30)
/* 806B1C34  60 00 00 01 */	ori r0, r0, 1
/* 806B1C38  90 1E 0E E4 */	stw r0, 0xee4(r30)
/* 806B1C3C  80 1E 10 1C */	lwz r0, 0x101c(r30)
/* 806B1C40  60 00 00 01 */	ori r0, r0, 1
/* 806B1C44  90 1E 10 1C */	stw r0, 0x101c(r30)
lbl_806B1C48:
/* 806B1C48  38 00 00 01 */	li r0, 1
/* 806B1C4C  98 1E 07 70 */	stb r0, 0x770(r30)
lbl_806B1C50:
/* 806B1C50  80 1E 07 0C */	lwz r0, 0x70c(r30)
/* 806B1C54  2C 00 00 01 */	cmpwi r0, 1
/* 806B1C58  41 82 00 8C */	beq lbl_806B1CE4
/* 806B1C5C  40 80 00 D4 */	bge lbl_806B1D30
/* 806B1C60  2C 00 00 00 */	cmpwi r0, 0
/* 806B1C64  40 80 00 08 */	bge lbl_806B1C6C
/* 806B1C68  48 00 00 C8 */	b lbl_806B1D30
lbl_806B1C6C:
/* 806B1C6C  7F C3 F3 78 */	mr r3, r30
/* 806B1C70  38 80 00 00 */	li r4, 0
/* 806B1C74  4B FF D7 5D */	bl setDamageShibukiEffect__8daE_DT_cFi
/* 806B1C78  7F C3 F3 78 */	mr r3, r30
/* 806B1C7C  38 80 00 00 */	li r4, 0
/* 806B1C80  4B FF D7 E1 */	bl setDamageYodareEffect__8daE_DT_cFi
/* 806B1C84  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 806B1C88  2C 00 00 78 */	cmpwi r0, 0x78
/* 806B1C8C  40 81 00 0C */	ble lbl_806B1C98
/* 806B1C90  38 00 00 78 */	li r0, 0x78
/* 806B1C94  90 1E 07 58 */	stw r0, 0x758(r30)
lbl_806B1C98:
/* 806B1C98  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007023C@ha */
/* 806B1C9C  38 03 02 3C */	addi r0, r3, 0x023C /* 0x0007023C@l */
/* 806B1CA0  90 01 00 08 */	stw r0, 8(r1)
/* 806B1CA4  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B1CA8  38 81 00 08 */	addi r4, r1, 8
/* 806B1CAC  38 A0 FF FF */	li r5, -1
/* 806B1CB0  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B1CB4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806B1CB8  7D 89 03 A6 */	mtctr r12
/* 806B1CBC  4E 80 04 21 */	bctrl 
/* 806B1CC0  7F C3 F3 78 */	mr r3, r30
/* 806B1CC4  38 80 00 07 */	li r4, 7
/* 806B1CC8  38 A0 00 00 */	li r5, 0
/* 806B1CCC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B1CD0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B1CD4  4B FF C9 79 */	bl setBck__8daE_DT_cFiUcff
/* 806B1CD8  38 00 00 01 */	li r0, 1
/* 806B1CDC  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B1CE0  48 00 00 50 */	b lbl_806B1D30
lbl_806B1CE4:
/* 806B1CE4  7F C3 F3 78 */	mr r3, r30
/* 806B1CE8  38 80 00 00 */	li r4, 0
/* 806B1CEC  4B FF D7 75 */	bl setDamageYodareEffect__8daE_DT_cFi
/* 806B1CF0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B1CF4  38 80 00 01 */	li r4, 1
/* 806B1CF8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B1CFC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B1D00  40 82 00 18 */	bne lbl_806B1D18
/* 806B1D04  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B1D08  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B1D0C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B1D10  41 82 00 08 */	beq lbl_806B1D18
/* 806B1D14  38 80 00 00 */	li r4, 0
lbl_806B1D18:
/* 806B1D18  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B1D1C  41 82 00 14 */	beq lbl_806B1D30
/* 806B1D20  7F C3 F3 78 */	mr r3, r30
/* 806B1D24  38 80 00 05 */	li r4, 5
/* 806B1D28  38 A0 00 01 */	li r5, 1
/* 806B1D2C  4B FF CA 21 */	bl setActionMode__8daE_DT_cFii
lbl_806B1D30:
/* 806B1D30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806B1D34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806B1D38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B1D3C  7C 08 03 A6 */	mtlr r0
/* 806B1D40  38 21 00 20 */	addi r1, r1, 0x20
/* 806B1D44  4E 80 00 20 */	blr 
