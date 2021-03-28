lbl_8021BCC0:
/* 8021BCC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021BCC4  7C 08 02 A6 */	mflr r0
/* 8021BCC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021BCCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021BCD0  93 C1 00 08 */	stw r30, 8(r1)
/* 8021BCD4  7C 9E 23 78 */	mr r30, r4
/* 8021BCD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021BCDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021BCE0  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8021BCE4  28 03 00 00 */	cmplwi r3, 0
/* 8021BCE8  40 82 00 0C */	bne lbl_8021BCF4
/* 8021BCEC  38 60 00 00 */	li r3, 0
/* 8021BCF0  48 00 00 C8 */	b lbl_8021BDB8
lbl_8021BCF4:
/* 8021BCF4  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 8021BCF8  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 8021BCFC  88 04 00 BD */	lbz r0, 0xbd(r4)
/* 8021BD00  28 00 00 00 */	cmplwi r0, 0
/* 8021BD04  40 82 00 A8 */	bne lbl_8021BDAC
/* 8021BD08  48 01 B3 E1 */	bl isHowlMessage__12dMsgObject_cFv
/* 8021BD0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021BD10  40 82 00 9C */	bne lbl_8021BDAC
/* 8021BD14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021BD18  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8021BD1C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8021BD20  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8021BD24  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 8021BD28  7D 89 03 A6 */	mtctr r12
/* 8021BD2C  4E 80 04 21 */	bctrl 
/* 8021BD30  2C 03 00 00 */	cmpwi r3, 0
/* 8021BD34  40 82 00 78 */	bne lbl_8021BDAC
/* 8021BD38  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021BD3C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021BD40  88 03 00 E8 */	lbz r0, 0xe8(r3)
/* 8021BD44  28 00 00 00 */	cmplwi r0, 0
/* 8021BD48  40 82 00 64 */	bne lbl_8021BDAC
/* 8021BD4C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8021BD50  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8021BD54  81 8C 00 D0 */	lwz r12, 0xd0(r12)
/* 8021BD58  7D 89 03 A6 */	mtctr r12
/* 8021BD5C  4E 80 04 21 */	bctrl 
/* 8021BD60  2C 03 00 00 */	cmpwi r3, 0
/* 8021BD64  41 82 00 0C */	beq lbl_8021BD70
/* 8021BD68  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8021BD6C  40 82 00 40 */	bne lbl_8021BDAC
lbl_8021BD70:
/* 8021BD70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021BD74  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8021BD78  88 64 4F AD */	lbz r3, 0x4fad(r4)
/* 8021BD7C  30 03 FF FF */	addic r0, r3, -1
/* 8021BD80  7C 00 19 10 */	subfe r0, r0, r3
/* 8021BD84  54 03 06 3F */	clrlwi. r3, r0, 0x18
/* 8021BD88  41 82 00 10 */	beq lbl_8021BD98
/* 8021BD8C  A0 04 4F A4 */	lhz r0, 0x4fa4(r4)
/* 8021BD90  54 00 07 7A */	rlwinm r0, r0, 0, 0x1d, 0x1d
/* 8021BD94  48 00 00 08 */	b lbl_8021BD9C
lbl_8021BD98:
/* 8021BD98  38 00 00 00 */	li r0, 0
lbl_8021BD9C:
/* 8021BD9C  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 8021BDA0  40 82 00 14 */	bne lbl_8021BDB4
/* 8021BDA4  2C 03 00 00 */	cmpwi r3, 0
/* 8021BDA8  41 82 00 0C */	beq lbl_8021BDB4
lbl_8021BDAC:
/* 8021BDAC  38 60 00 01 */	li r3, 1
/* 8021BDB0  48 00 00 08 */	b lbl_8021BDB8
lbl_8021BDB4:
/* 8021BDB4  38 60 00 00 */	li r3, 0
lbl_8021BDB8:
/* 8021BDB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021BDBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8021BDC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021BDC4  7C 08 03 A6 */	mtlr r0
/* 8021BDC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8021BDCC  4E 80 00 20 */	blr 
