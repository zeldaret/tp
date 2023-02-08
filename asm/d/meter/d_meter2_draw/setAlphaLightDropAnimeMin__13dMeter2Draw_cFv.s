lbl_80215E40:
/* 80215E40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80215E44  7C 08 02 A6 */	mflr r0
/* 80215E48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80215E4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80215E50  48 14 C3 81 */	bl _savegpr_26
/* 80215E54  7C 7F 1B 78 */	mr r31, r3
/* 80215E58  80 63 01 E0 */	lwz r3, 0x1e0(r3)
/* 80215E5C  48 03 F9 CD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80215E60  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80215E64  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80215E68  41 82 01 08 */	beq lbl_80215F70
/* 80215E6C  80 7F 01 E0 */	lwz r3, 0x1e0(r31)
/* 80215E70  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80215E74  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 80215E78  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80215E7C  C0 1F 06 FC */	lfs f0, 0x6fc(r31)
/* 80215E80  EC 21 00 32 */	fmuls f1, f1, f0
/* 80215E84  48 03 F9 4D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80215E88  7F E3 FB 78 */	mr r3, r31
/* 80215E8C  80 9F 01 E0 */	lwz r4, 0x1e0(r31)
/* 80215E90  38 A0 00 05 */	li r5, 5
/* 80215E94  48 00 4B 35 */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
/* 80215E98  3B 60 00 00 */	li r27, 0
/* 80215E9C  3B C0 00 00 */	li r30, 0
/* 80215EA0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80215EA4  3B A3 EB C8 */	addi r29, r3, g_drawHIO@l /* 0x8042EBC8@l */
lbl_80215EA8:
/* 80215EA8  80 7F 01 E0 */	lwz r3, 0x1e0(r31)
/* 80215EAC  48 03 F9 7D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80215EB0  7C 7D F2 14 */	add r3, r29, r30
/* 80215EB4  C0 03 0E AC */	lfs f0, 0xeac(r3)
/* 80215EB8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80215EBC  38 1E 01 E8 */	addi r0, r30, 0x1e8
/* 80215EC0  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80215EC4  48 03 F9 0D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80215EC8  3B 7B 00 01 */	addi r27, r27, 1
/* 80215ECC  2C 1B 00 02 */	cmpwi r27, 2
/* 80215ED0  3B DE 00 04 */	addi r30, r30, 4
/* 80215ED4  41 80 FF D4 */	blt lbl_80215EA8
/* 80215ED8  3B 40 00 00 */	li r26, 0
/* 80215EDC  3B C0 00 00 */	li r30, 0
/* 80215EE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80215EE4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80215EE8  3B 9D 01 14 */	addi r28, r29, 0x114
lbl_80215EEC:
/* 80215EEC  7F 83 E3 78 */	mr r3, r28
/* 80215EF0  88 9D 4E 0C */	lbz r4, 0x4e0c(r29)
/* 80215EF4  4B E1 E4 4D */	bl getLightDropNum__16dSv_light_drop_cCFUc
/* 80215EF8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80215EFC  7C 1A 00 00 */	cmpw r26, r0
/* 80215F00  40 80 00 2C */	bge lbl_80215F2C
/* 80215F04  80 7F 01 EC */	lwz r3, 0x1ec(r31)
/* 80215F08  48 03 F9 21 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80215F0C  7F 7F F2 14 */	add r27, r31, r30
/* 80215F10  80 7B 01 F4 */	lwz r3, 0x1f4(r27)
/* 80215F14  48 03 F8 BD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80215F18  80 7F 01 EC */	lwz r3, 0x1ec(r31)
/* 80215F1C  48 03 F9 0D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80215F20  80 7B 01 F8 */	lwz r3, 0x1f8(r27)
/* 80215F24  48 03 F8 AD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80215F28  48 00 00 38 */	b lbl_80215F60
lbl_80215F2C:
/* 80215F2C  80 7F 01 EC */	lwz r3, 0x1ec(r31)
/* 80215F30  48 03 F8 F9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80215F34  C0 02 AE C8 */	lfs f0, lit_6524(r2)
/* 80215F38  EC 20 00 72 */	fmuls f1, f0, f1
/* 80215F3C  7F 7F F2 14 */	add r27, r31, r30
/* 80215F40  80 7B 01 F4 */	lwz r3, 0x1f4(r27)
/* 80215F44  48 03 F8 8D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80215F48  80 7F 01 EC */	lwz r3, 0x1ec(r31)
/* 80215F4C  48 03 F8 DD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80215F50  C0 02 AE C8 */	lfs f0, lit_6524(r2)
/* 80215F54  EC 20 00 72 */	fmuls f1, f0, f1
/* 80215F58  80 7B 01 F8 */	lwz r3, 0x1f8(r27)
/* 80215F5C  48 03 F8 75 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80215F60:
/* 80215F60  3B 5A 00 01 */	addi r26, r26, 1
/* 80215F64  2C 1A 00 10 */	cmpwi r26, 0x10
/* 80215F68  3B DE 00 0C */	addi r30, r30, 0xc
/* 80215F6C  41 80 FF 80 */	blt lbl_80215EEC
lbl_80215F70:
/* 80215F70  39 61 00 20 */	addi r11, r1, 0x20
/* 80215F74  48 14 C2 A9 */	bl _restgpr_26
/* 80215F78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80215F7C  7C 08 03 A6 */	mtlr r0
/* 80215F80  38 21 00 20 */	addi r1, r1, 0x20
/* 80215F84  4E 80 00 20 */	blr 
