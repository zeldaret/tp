lbl_804D0CCC:
/* 804D0CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D0CD0  7C 08 02 A6 */	mflr r0
/* 804D0CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D0CD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D0CDC  93 C1 00 08 */	stw r30, 8(r1)
/* 804D0CE0  7C 7F 1B 78 */	mr r31, r3
/* 804D0CE4  38 7F 09 10 */	addi r3, r31, 0x910
/* 804D0CE8  4B BB 37 78 */	b ChkTgHit__12dCcD_GObjInfFv
/* 804D0CEC  28 03 00 00 */	cmplwi r3, 0
/* 804D0CF0  41 82 00 E8 */	beq lbl_804D0DD8
/* 804D0CF4  38 7F 09 10 */	addi r3, r31, 0x910
/* 804D0CF8  4B BB 38 00 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 804D0CFC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 804D0D00  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 804D0D04  41 82 00 44 */	beq lbl_804D0D48
/* 804D0D08  88 1F 05 AF */	lbz r0, 0x5af(r31)
/* 804D0D0C  28 00 00 00 */	cmplwi r0, 0
/* 804D0D10  40 82 00 B4 */	bne lbl_804D0DC4
/* 804D0D14  38 00 00 01 */	li r0, 1
/* 804D0D18  98 1F 05 AF */	stb r0, 0x5af(r31)
/* 804D0D1C  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 804D0D20  4B BA 66 84 */	b ClrMoveBGOnly__9dBgS_AcchFv
/* 804D0D24  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 804D0D28  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 804D0D2C  90 1F 07 28 */	stw r0, 0x728(r31)
/* 804D0D30  38 7F 09 10 */	addi r3, r31, 0x910
/* 804D0D34  4B BB 38 14 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 804D0D38  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 804D0D3C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804D0D40  4B C8 D8 70 */	b initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 804D0D44  48 00 00 80 */	b lbl_804D0DC4
lbl_804D0D48:
/* 804D0D48  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 804D0D4C  41 82 00 50 */	beq lbl_804D0D9C
/* 804D0D50  C0 3F 06 14 */	lfs f1, 0x614(r31)
/* 804D0D54  3C 60 80 4D */	lis r3, lit_3795@ha
/* 804D0D58  C0 03 16 50 */	lfs f0, lit_3795@l(r3)
/* 804D0D5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D0D60  40 80 00 30 */	bge lbl_804D0D90
/* 804D0D64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D0D68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D0D6C  A3 C3 00 02 */	lhz r30, 2(r3)
/* 804D0D70  4B B5 CF 38 */	b dComIfGs_getMaxLifeGauge__Fv
/* 804D0D74  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 804D0D78  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 804D0D7C  7C 00 18 40 */	cmplw r0, r3
/* 804D0D80  41 82 00 10 */	beq lbl_804D0D90
/* 804D0D84  7F E3 FB 78 */	mr r3, r31
/* 804D0D88  4B FF F9 F9 */	bl CareAction__13daObjYOUSEI_cFv
/* 804D0D8C  48 00 00 38 */	b lbl_804D0DC4
lbl_804D0D90:
/* 804D0D90  38 00 00 50 */	li r0, 0x50
/* 804D0D94  B0 1F 05 D2 */	sth r0, 0x5d2(r31)
/* 804D0D98  48 00 00 2C */	b lbl_804D0DC4
lbl_804D0D9C:
/* 804D0D9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D0DA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D0DA4  A3 C3 00 02 */	lhz r30, 2(r3)
/* 804D0DA8  4B B5 CF 00 */	b dComIfGs_getMaxLifeGauge__Fv
/* 804D0DAC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 804D0DB0  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 804D0DB4  7C 00 18 40 */	cmplw r0, r3
/* 804D0DB8  41 82 00 0C */	beq lbl_804D0DC4
/* 804D0DBC  7F E3 FB 78 */	mr r3, r31
/* 804D0DC0  4B FF F9 C1 */	bl CareAction__13daObjYOUSEI_cFv
lbl_804D0DC4:
/* 804D0DC4  38 7F 09 10 */	addi r3, r31, 0x910
/* 804D0DC8  81 9F 09 4C */	lwz r12, 0x94c(r31)
/* 804D0DCC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 804D0DD0  7D 89 03 A6 */	mtctr r12
/* 804D0DD4  4E 80 04 21 */	bctrl 
lbl_804D0DD8:
/* 804D0DD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D0DDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D0DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D0DE4  7C 08 03 A6 */	mtlr r0
/* 804D0DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D0DEC  4E 80 00 20 */	blr 
