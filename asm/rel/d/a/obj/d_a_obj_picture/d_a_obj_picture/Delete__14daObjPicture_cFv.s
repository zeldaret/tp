lbl_80CADFB0:
/* 80CADFB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CADFB4  7C 08 02 A6 */	mflr r0
/* 80CADFB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CADFBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CADFC0  4B 6B 42 15 */	bl _savegpr_27
/* 80CADFC4  7C 7B 1B 78 */	mr r27, r3
/* 80CADFC8  3B 80 00 00 */	li r28, 0
/* 80CADFCC  3B E0 00 00 */	li r31, 0
/* 80CADFD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CADFD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CADFD8  3B C3 0F 38 */	addi r30, r3, 0xf38
lbl_80CADFDC:
/* 80CADFDC  2C 1C 00 01 */	cmpwi r28, 1
/* 80CADFE0  40 82 00 10 */	bne lbl_80CADFF0
/* 80CADFE4  88 1B 0D 26 */	lbz r0, 0xd26(r27)
/* 80CADFE8  28 00 00 00 */	cmplwi r0, 0
/* 80CADFEC  40 82 00 3C */	bne lbl_80CAE028
lbl_80CADFF0:
/* 80CADFF0  3B BF 0C BC */	addi r29, r31, 0xcbc
/* 80CADFF4  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80CADFF8  28 03 00 00 */	cmplwi r3, 0
/* 80CADFFC  41 82 00 1C */	beq lbl_80CAE018
/* 80CAE000  4B 5B A1 D5 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80CAE004  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CAE008  41 82 00 10 */	beq lbl_80CAE018
/* 80CAE00C  7F C3 F3 78 */	mr r3, r30
/* 80CAE010  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80CAE014  4B 3C 62 3D */	bl Release__4cBgSFP9dBgW_Base
lbl_80CAE018:
/* 80CAE018  3B 9C 00 01 */	addi r28, r28, 1
/* 80CAE01C  2C 1C 00 02 */	cmpwi r28, 2
/* 80CAE020  3B FF 00 04 */	addi r31, r31, 4
/* 80CAE024  41 80 FF B8 */	blt lbl_80CADFDC
lbl_80CAE028:
/* 80CAE028  7F 63 DB 78 */	mr r3, r27
/* 80CAE02C  38 80 FF FF */	li r4, -1
/* 80CAE030  81 9B 05 70 */	lwz r12, 0x570(r27)
/* 80CAE034  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CAE038  7D 89 03 A6 */	mtctr r12
/* 80CAE03C  4E 80 04 21 */	bctrl 
/* 80CAE040  38 60 00 01 */	li r3, 1
/* 80CAE044  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAE048  4B 6B 41 D9 */	bl _restgpr_27
/* 80CAE04C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CAE050  7C 08 03 A6 */	mtlr r0
/* 80CAE054  38 21 00 20 */	addi r1, r1, 0x20
/* 80CAE058  4E 80 00 20 */	blr 
