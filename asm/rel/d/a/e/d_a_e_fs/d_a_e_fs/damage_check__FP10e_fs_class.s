lbl_806BCC30:
/* 806BCC30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806BCC34  7C 08 02 A6 */	mflr r0
/* 806BCC38  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BCC3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806BCC40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806BCC44  7C 7E 1B 78 */	mr r30, r3
/* 806BCC48  3C 60 80 6C */	lis r3, lit_3917@ha /* 0x806BE48C@ha */
/* 806BCC4C  3B E3 E4 8C */	addi r31, r3, lit_3917@l /* 0x806BE48C@l */
/* 806BCC50  A8 1E 06 7E */	lha r0, 0x67e(r30)
/* 806BCC54  2C 00 00 05 */	cmpwi r0, 5
/* 806BCC58  41 82 00 24 */	beq lbl_806BCC7C
/* 806BCC5C  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 806BCC60  2C 00 00 00 */	cmpwi r0, 0
/* 806BCC64  40 80 00 18 */	bge lbl_806BCC7C
/* 806BCC68  38 00 00 05 */	li r0, 5
/* 806BCC6C  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 806BCC70  38 00 00 00 */	li r0, 0
/* 806BCC74  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 806BCC78  48 00 01 4C */	b lbl_806BCDC4
lbl_806BCC7C:
/* 806BCC7C  38 7E 08 C8 */	addi r3, r30, 0x8c8
/* 806BCC80  4B 9C 6B B1 */	bl Move__10dCcD_GSttsFv
/* 806BCC84  38 7E 08 E8 */	addi r3, r30, 0x8e8
/* 806BCC88  4B 9C 77 D9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806BCC8C  28 03 00 00 */	cmplwi r3, 0
/* 806BCC90  41 82 01 18 */	beq lbl_806BCDA8
/* 806BCC94  38 7E 08 E8 */	addi r3, r30, 0x8e8
/* 806BCC98  4B 9C 78 61 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806BCC9C  90 7E 0B 5C */	stw r3, 0xb5c(r30)
/* 806BCCA0  7F C3 F3 78 */	mr r3, r30
/* 806BCCA4  38 9E 0B 5C */	addi r4, r30, 0xb5c
/* 806BCCA8  4B 9C AF 5D */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806BCCAC  80 7E 0B 5C */	lwz r3, 0xb5c(r30)
/* 806BCCB0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806BCCB4  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 806BCCB8  41 82 00 10 */	beq lbl_806BCCC8
/* 806BCCBC  38 00 00 14 */	li r0, 0x14
/* 806BCCC0  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 806BCCC4  48 00 00 0C */	b lbl_806BCCD0
lbl_806BCCC8:
/* 806BCCC8  38 00 00 0A */	li r0, 0xa
/* 806BCCCC  B0 1E 06 90 */	sth r0, 0x690(r30)
lbl_806BCCD0:
/* 806BCCD0  A8 1E 0B 6A */	lha r0, 0xb6a(r30)
/* 806BCCD4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806BCCD8  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 806BCCDC  2C 00 00 00 */	cmpwi r0, 0
/* 806BCCE0  41 81 00 44 */	bgt lbl_806BCD24
/* 806BCCE4  38 00 00 05 */	li r0, 5
/* 806BCCE8  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 806BCCEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700D7@ha */
/* 806BCCF0  38 03 00 D7 */	addi r0, r3, 0x00D7 /* 0x000700D7@l */
/* 806BCCF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806BCCF8  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806BCCFC  38 81 00 0C */	addi r4, r1, 0xc
/* 806BCD00  38 A0 00 00 */	li r5, 0
/* 806BCD04  38 C0 FF FF */	li r6, -1
/* 806BCD08  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806BCD0C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BCD10  7D 89 03 A6 */	mtctr r12
/* 806BCD14  4E 80 04 21 */	bctrl 
/* 806BCD18  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806BCD1C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806BCD20  48 00 00 80 */	b lbl_806BCDA0
lbl_806BCD24:
/* 806BCD24  38 00 00 04 */	li r0, 4
/* 806BCD28  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 806BCD2C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700D6@ha */
/* 806BCD30  38 03 00 D6 */	addi r0, r3, 0x00D6 /* 0x000700D6@l */
/* 806BCD34  90 01 00 08 */	stw r0, 8(r1)
/* 806BCD38  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806BCD3C  38 81 00 08 */	addi r4, r1, 8
/* 806BCD40  38 A0 00 00 */	li r5, 0
/* 806BCD44  38 C0 FF FF */	li r6, -1
/* 806BCD48  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806BCD4C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BCD50  7D 89 03 A6 */	mtctr r12
/* 806BCD54  4E 80 04 21 */	bctrl 
/* 806BCD58  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806BCD5C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806BCD60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BCD64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BCD68  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806BCD6C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 806BCD70  28 00 00 0A */	cmplwi r0, 0xa
/* 806BCD74  40 82 00 2C */	bne lbl_806BCDA0
/* 806BCD78  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806BCD7C  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 806BCD80  7D 89 03 A6 */	mtctr r12
/* 806BCD84  4E 80 04 21 */	bctrl 
/* 806BCD88  2C 03 00 00 */	cmpwi r3, 0
/* 806BCD8C  41 82 00 14 */	beq lbl_806BCDA0
/* 806BCD90  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 806BCD94  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806BCD98  38 00 00 03 */	li r0, 3
/* 806BCD9C  B0 1E 06 90 */	sth r0, 0x690(r30)
lbl_806BCDA0:
/* 806BCDA0  38 00 00 00 */	li r0, 0
/* 806BCDA4  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_806BCDA8:
/* 806BCDA8  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 806BCDAC  2C 00 00 0A */	cmpwi r0, 0xa
/* 806BCDB0  41 81 00 14 */	bgt lbl_806BCDC4
/* 806BCDB4  38 00 00 00 */	li r0, 0
/* 806BCDB8  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 806BCDBC  38 00 00 03 */	li r0, 3
/* 806BCDC0  98 1E 09 A2 */	stb r0, 0x9a2(r30)
lbl_806BCDC4:
/* 806BCDC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806BCDC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806BCDCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806BCDD0  7C 08 03 A6 */	mtlr r0
/* 806BCDD4  38 21 00 20 */	addi r1, r1, 0x20
/* 806BCDD8  4E 80 00 20 */	blr 
