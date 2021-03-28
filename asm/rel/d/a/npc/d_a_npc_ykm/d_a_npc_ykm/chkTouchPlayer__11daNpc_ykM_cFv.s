lbl_80B56AB4:
/* 80B56AB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B56AB8  7C 08 02 A6 */	mflr r0
/* 80B56ABC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B56AC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B56AC4  4B 80 B7 14 */	b _savegpr_28
/* 80B56AC8  7C 7C 1B 78 */	mr r28, r3
/* 80B56ACC  3C 60 80 B6 */	lis r3, lit_5936@ha
/* 80B56AD0  C0 23 D9 68 */	lfs f1, lit_5936@l(r3)
/* 80B56AD4  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80B56AD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B56ADC  40 80 00 8C */	bge lbl_80B56B68
/* 80B56AE0  3B A0 00 00 */	li r29, 0
/* 80B56AE4  3B E0 00 00 */	li r31, 0
lbl_80B56AE8:
/* 80B56AE8  3B DF 0F 94 */	addi r30, r31, 0xf94
/* 80B56AEC  7F DC F2 14 */	add r30, r28, r30
/* 80B56AF0  7F C3 F3 78 */	mr r3, r30
/* 80B56AF4  4B 52 DB 64 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80B56AF8  28 03 00 00 */	cmplwi r3, 0
/* 80B56AFC  41 82 00 28 */	beq lbl_80B56B24
/* 80B56B00  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 80B56B04  4B 52 CB 84 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80B56B08  28 03 00 00 */	cmplwi r3, 0
/* 80B56B0C  41 82 00 18 */	beq lbl_80B56B24
/* 80B56B10  A8 03 00 08 */	lha r0, 8(r3)
/* 80B56B14  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80B56B18  40 82 00 0C */	bne lbl_80B56B24
/* 80B56B1C  38 60 00 01 */	li r3, 1
/* 80B56B20  48 00 00 4C */	b lbl_80B56B6C
lbl_80B56B24:
/* 80B56B24  3B BD 00 01 */	addi r29, r29, 1
/* 80B56B28  2C 1D 00 04 */	cmpwi r29, 4
/* 80B56B2C  3B FF 01 38 */	addi r31, r31, 0x138
/* 80B56B30  41 80 FF B8 */	blt lbl_80B56AE8
/* 80B56B34  38 7C 0E 58 */	addi r3, r28, 0xe58
/* 80B56B38  4B 52 DB 20 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80B56B3C  28 03 00 00 */	cmplwi r3, 0
/* 80B56B40  41 82 00 28 */	beq lbl_80B56B68
/* 80B56B44  38 7C 0F 40 */	addi r3, r28, 0xf40
/* 80B56B48  4B 52 CB 40 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80B56B4C  28 03 00 00 */	cmplwi r3, 0
/* 80B56B50  41 82 00 18 */	beq lbl_80B56B68
/* 80B56B54  A8 03 00 08 */	lha r0, 8(r3)
/* 80B56B58  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80B56B5C  40 82 00 0C */	bne lbl_80B56B68
/* 80B56B60  38 60 00 01 */	li r3, 1
/* 80B56B64  48 00 00 08 */	b lbl_80B56B6C
lbl_80B56B68:
/* 80B56B68  38 60 00 00 */	li r3, 0
lbl_80B56B6C:
/* 80B56B6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B56B70  4B 80 B6 B4 */	b _restgpr_28
/* 80B56B74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B56B78  7C 08 03 A6 */	mtlr r0
/* 80B56B7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B56B80  4E 80 00 20 */	blr 
