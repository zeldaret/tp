lbl_80476CE4:
/* 80476CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80476CE8  7C 08 02 A6 */	mflr r0
/* 80476CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80476CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80476CF4  4B EE B4 E9 */	bl _savegpr_29
/* 80476CF8  7C 7D 1B 78 */	mr r29, r3
/* 80476CFC  3B C0 00 01 */	li r30, 1
/* 80476D00  80 03 05 A0 */	lwz r0, 0x5a0(r3)
/* 80476D04  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80476D08  41 82 00 70 */	beq lbl_80476D78
/* 80476D0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80476D10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80476D14  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80476D18  7F E3 FB 78 */	mr r3, r31
/* 80476D1C  38 9D 06 64 */	addi r4, r29, 0x664
/* 80476D20  4B BF D9 41 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 80476D24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80476D28  41 82 00 50 */	beq lbl_80476D78
/* 80476D2C  7F E3 FB 78 */	mr r3, r31
/* 80476D30  38 9D 06 64 */	addi r4, r29, 0x664
/* 80476D34  4B BF DE 0D */	bl ChkMoveBG_NoDABg__4dBgSFRC13cBgS_PolyInfo
/* 80476D38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80476D3C  41 82 00 3C */	beq lbl_80476D78
/* 80476D40  7F E3 FB 78 */	mr r3, r31
/* 80476D44  A0 9D 06 66 */	lhz r4, 0x666(r29)
/* 80476D48  4B BF D8 D1 */	bl GetActorPointer__4cBgSCFi
/* 80476D4C  28 03 00 00 */	cmplwi r3, 0
/* 80476D50  41 82 00 28 */	beq lbl_80476D78
/* 80476D54  7F E3 FB 78 */	mr r3, r31
/* 80476D58  A0 9D 06 66 */	lhz r4, 0x666(r29)
/* 80476D5C  4B BF D8 BD */	bl GetActorPointer__4cBgSCFi
/* 80476D60  A8 03 00 08 */	lha r0, 8(r3)
/* 80476D64  2C 00 00 CC */	cmpwi r0, 0xcc
/* 80476D68  40 82 00 10 */	bne lbl_80476D78
/* 80476D6C  3B C0 00 00 */	li r30, 0
/* 80476D70  38 7D 07 8C */	addi r3, r29, 0x78c
/* 80476D74  4B DE CB E9 */	bl ClrCcMove__9cCcD_SttsFv
lbl_80476D78:
/* 80476D78  38 7D 07 C8 */	addi r3, r29, 0x7c8
/* 80476D7C  4B C0 D6 E5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80476D80  28 03 00 00 */	cmplwi r3, 0
/* 80476D84  41 82 00 64 */	beq lbl_80476DE8
/* 80476D88  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80476D8C  41 82 00 5C */	beq lbl_80476DE8
/* 80476D90  38 7D 07 C8 */	addi r3, r29, 0x7c8
/* 80476D94  4B C0 D7 B5 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80476D98  28 03 00 00 */	cmplwi r3, 0
/* 80476D9C  41 82 00 4C */	beq lbl_80476DE8
/* 80476DA0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80476DA4  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80476DA8  41 82 00 40 */	beq lbl_80476DE8
/* 80476DAC  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80476DB0  28 00 00 01 */	cmplwi r0, 1
/* 80476DB4  41 82 00 34 */	beq lbl_80476DE8
/* 80476DB8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80476DBC  28 00 00 64 */	cmplwi r0, 0x64
/* 80476DC0  41 82 00 28 */	beq lbl_80476DE8
/* 80476DC4  34 83 00 84 */	addic. r4, r3, 0x84
/* 80476DC8  41 82 00 20 */	beq lbl_80476DE8
/* 80476DCC  3C 60 80 48 */	lis r3, lit_4595@ha /* 0x8047A3B8@ha */
/* 80476DD0  C0 03 A3 B8 */	lfs f0, lit_4595@l(r3)  /* 0x8047A3B8@l */
/* 80476DD4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80476DD8  C0 24 00 00 */	lfs f1, 0(r4)
/* 80476DDC  C0 44 00 08 */	lfs f2, 8(r4)
/* 80476DE0  4B DF 08 95 */	bl cM_atan2s__Fff
/* 80476DE4  B0 7D 04 DE */	sth r3, 0x4de(r29)
lbl_80476DE8:
/* 80476DE8  38 60 00 00 */	li r3, 0
/* 80476DEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80476DF0  4B EE B4 39 */	bl _restgpr_29
/* 80476DF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80476DF8  7C 08 03 A6 */	mtlr r0
/* 80476DFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80476E00  4E 80 00 20 */	blr 
