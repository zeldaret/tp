lbl_806BABB8:
/* 806BABB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806BABBC  7C 08 02 A6 */	mflr r0
/* 806BABC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BABC4  39 61 00 20 */	addi r11, r1, 0x20
/* 806BABC8  4B CA 76 14 */	b _savegpr_29
/* 806BABCC  7C 7F 1B 78 */	mr r31, r3
/* 806BABD0  1C 64 01 38 */	mulli r3, r4, 0x138
/* 806BABD4  38 63 06 18 */	addi r3, r3, 0x618
/* 806BABD8  7C 7F 1A 14 */	add r3, r31, r3
/* 806BABDC  4B 9C 99 1C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806BABE0  90 7F 0F 44 */	stw r3, 0xf44(r31)
/* 806BABE4  38 7F 0F 44 */	addi r3, r31, 0xf44
/* 806BABE8  4B 9C CE 70 */	b at_power_check__FP11dCcU_AtInfo
/* 806BABEC  90 7F 0F 48 */	stw r3, 0xf48(r31)
/* 806BABF0  80 1F 0F 48 */	lwz r0, 0xf48(r31)
/* 806BABF4  28 00 00 00 */	cmplwi r0, 0
/* 806BABF8  41 82 00 DC */	beq lbl_806BACD4
/* 806BABFC  80 7F 0F 44 */	lwz r3, 0xf44(r31)
/* 806BAC00  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806BAC04  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 806BAC08  41 82 00 0C */	beq lbl_806BAC14
/* 806BAC0C  38 00 00 00 */	li r0, 0
/* 806BAC10  B0 1F 0F 60 */	sth r0, 0xf60(r31)
lbl_806BAC14:
/* 806BAC14  A0 1F 0F 60 */	lhz r0, 0xf60(r31)
/* 806BAC18  7C 03 07 35 */	extsh. r3, r0
/* 806BAC1C  40 81 00 10 */	ble lbl_806BAC2C
/* 806BAC20  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 806BAC24  7C 03 00 50 */	subf r0, r3, r0
/* 806BAC28  B0 1F 05 62 */	sth r0, 0x562(r31)
lbl_806BAC2C:
/* 806BAC2C  A0 1F 0F 60 */	lhz r0, 0xf60(r31)
/* 806BAC30  28 00 00 00 */	cmplwi r0, 0
/* 806BAC34  41 82 00 0C */	beq lbl_806BAC40
/* 806BAC38  38 00 00 02 */	li r0, 2
/* 806BAC3C  98 1F 0F 63 */	stb r0, 0xf63(r31)
lbl_806BAC40:
/* 806BAC40  80 7F 0F 44 */	lwz r3, 0xf44(r31)
/* 806BAC44  88 63 00 74 */	lbz r3, 0x74(r3)
/* 806BAC48  3B A0 00 1E */	li r29, 0x1e
/* 806BAC4C  88 1F 0F 63 */	lbz r0, 0xf63(r31)
/* 806BAC50  7C 00 07 74 */	extsb r0, r0
/* 806BAC54  2C 00 00 01 */	cmpwi r0, 1
/* 806BAC58  40 82 00 0C */	bne lbl_806BAC64
/* 806BAC5C  3B A0 00 1F */	li r29, 0x1f
/* 806BAC60  48 00 00 10 */	b lbl_806BAC70
lbl_806BAC64:
/* 806BAC64  2C 00 00 02 */	cmpwi r0, 2
/* 806BAC68  40 82 00 08 */	bne lbl_806BAC70
/* 806BAC6C  3B A0 00 20 */	li r29, 0x20
lbl_806BAC70:
/* 806BAC70  80 1F 0F 4C */	lwz r0, 0xf4c(r31)
/* 806BAC74  28 00 00 00 */	cmplwi r0, 0
/* 806BAC78  41 82 00 5C */	beq lbl_806BACD4
/* 806BAC7C  83 DF 0F 5C */	lwz r30, 0xf5c(r31)
/* 806BAC80  28 1E 00 00 */	cmplwi r30, 0
/* 806BAC84  41 82 00 2C */	beq lbl_806BACB0
/* 806BAC88  38 80 00 00 */	li r4, 0
/* 806BAC8C  4B 9C 99 24 */	b getHitSeID__12dCcD_GObjInfFUci
/* 806BAC90  7C 64 1B 78 */	mr r4, r3
/* 806BAC94  80 7F 0F 4C */	lwz r3, 0xf4c(r31)
/* 806BAC98  7F C5 F3 78 */	mr r5, r30
/* 806BAC9C  81 83 00 00 */	lwz r12, 0(r3)
/* 806BACA0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806BACA4  7D 89 03 A6 */	mtctr r12
/* 806BACA8  4E 80 04 21 */	bctrl 
/* 806BACAC  48 00 00 28 */	b lbl_806BACD4
lbl_806BACB0:
/* 806BACB0  38 80 00 00 */	li r4, 0
/* 806BACB4  4B 9C 98 FC */	b getHitSeID__12dCcD_GObjInfFUci
/* 806BACB8  7C 64 1B 78 */	mr r4, r3
/* 806BACBC  80 7F 0F 4C */	lwz r3, 0xf4c(r31)
/* 806BACC0  7F A5 EB 78 */	mr r5, r29
/* 806BACC4  81 83 00 00 */	lwz r12, 0(r3)
/* 806BACC8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806BACCC  7D 89 03 A6 */	mtctr r12
/* 806BACD0  4E 80 04 21 */	bctrl 
lbl_806BACD4:
/* 806BACD4  39 61 00 20 */	addi r11, r1, 0x20
/* 806BACD8  4B CA 75 50 */	b _restgpr_29
/* 806BACDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806BACE0  7C 08 03 A6 */	mtlr r0
/* 806BACE4  38 21 00 20 */	addi r1, r1, 0x20
/* 806BACE8  4E 80 00 20 */	blr 
