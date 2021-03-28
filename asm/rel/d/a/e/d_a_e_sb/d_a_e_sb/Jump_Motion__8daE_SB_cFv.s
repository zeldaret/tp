lbl_80782CC8:
/* 80782CC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80782CCC  7C 08 02 A6 */	mflr r0
/* 80782CD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80782CD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80782CD8  4B BD F5 04 */	b _savegpr_29
/* 80782CDC  7C 7F 1B 78 */	mr r31, r3
/* 80782CE0  3C 80 80 78 */	lis r4, lit_3658@ha
/* 80782CE4  3B A4 4D 68 */	addi r29, r4, lit_3658@l
/* 80782CE8  80 03 05 BC */	lwz r0, 0x5bc(r3)
/* 80782CEC  2C 00 00 01 */	cmpwi r0, 1
/* 80782CF0  41 82 00 90 */	beq lbl_80782D80
/* 80782CF4  40 80 00 10 */	bge lbl_80782D04
/* 80782CF8  2C 00 00 00 */	cmpwi r0, 0
/* 80782CFC  40 80 00 14 */	bge lbl_80782D10
/* 80782D00  48 00 01 78 */	b lbl_80782E78
lbl_80782D04:
/* 80782D04  2C 00 00 03 */	cmpwi r0, 3
/* 80782D08  40 80 01 70 */	bge lbl_80782E78
/* 80782D0C  48 00 01 28 */	b lbl_80782E34
lbl_80782D10:
/* 80782D10  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702B1@ha */
/* 80782D14  38 03 02 B1 */	addi r0, r3, 0x02B1 /* 0x000702B1@l */
/* 80782D18  90 01 00 0C */	stw r0, 0xc(r1)
/* 80782D1C  38 7F 06 2C */	addi r3, r31, 0x62c
/* 80782D20  38 81 00 0C */	addi r4, r1, 0xc
/* 80782D24  38 A0 00 00 */	li r5, 0
/* 80782D28  38 C0 FF FF */	li r6, -1
/* 80782D2C  81 9F 06 2C */	lwz r12, 0x62c(r31)
/* 80782D30  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80782D34  7D 89 03 A6 */	mtctr r12
/* 80782D38  4E 80 04 21 */	bctrl 
/* 80782D3C  7F E3 FB 78 */	mr r3, r31
/* 80782D40  48 00 01 D1 */	bl ActionCheck__8daE_SB_cFv
/* 80782D44  7F E3 FB 78 */	mr r3, r31
/* 80782D48  38 80 00 08 */	li r4, 8
/* 80782D4C  38 A0 00 00 */	li r5, 0
/* 80782D50  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 80782D54  3C C0 80 78 */	lis r6, l_HIO@ha
/* 80782D58  38 C6 4F 84 */	addi r6, r6, l_HIO@l
/* 80782D5C  C0 46 00 28 */	lfs f2, 0x28(r6)
/* 80782D60  4B FF EC ED */	bl SetAnm__8daE_SB_cFiiff
/* 80782D64  38 00 00 01 */	li r0, 1
/* 80782D68  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 80782D6C  7F E3 FB 78 */	mr r3, r31
/* 80782D70  4B FF FE 0D */	bl Jump_Set__8daE_SB_cFv
/* 80782D74  7F E3 FB 78 */	mr r3, r31
/* 80782D78  48 00 0D D5 */	bl Obj_Damage__8daE_SB_cFv
/* 80782D7C  48 00 00 FC */	b lbl_80782E78
lbl_80782D80:
/* 80782D80  38 80 00 09 */	li r4, 9
/* 80782D84  38 A0 00 00 */	li r5, 0
/* 80782D88  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 80782D8C  3C C0 80 78 */	lis r6, l_HIO@ha
/* 80782D90  3B C6 4F 84 */	addi r30, r6, l_HIO@l
/* 80782D94  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80782D98  4B FF EC B5 */	bl SetAnm__8daE_SB_cFiiff
/* 80782D9C  7F E3 FB 78 */	mr r3, r31
/* 80782DA0  4B FF FE 35 */	bl JumpMiddleMotion__8daE_SB_cFv
/* 80782DA4  80 1F 07 3C */	lwz r0, 0x73c(r31)
/* 80782DA8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80782DAC  41 82 00 CC */	beq lbl_80782E78
/* 80782DB0  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80782DB4  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80782DB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80782DBC  4C 40 13 82 */	cror 2, 0, 2
/* 80782DC0  40 82 00 B8 */	bne lbl_80782E78
/* 80782DC4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80782DC8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80782DCC  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80782DD0  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80782DD4  7F E3 FB 78 */	mr r3, r31
/* 80782DD8  38 80 00 0A */	li r4, 0xa
/* 80782DDC  38 A0 00 00 */	li r5, 0
/* 80782DE0  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 80782DE4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80782DE8  4B FF EC 65 */	bl SetAnm__8daE_SB_cFiiff
/* 80782DEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702B2@ha */
/* 80782DF0  38 03 02 B2 */	addi r0, r3, 0x02B2 /* 0x000702B2@l */
/* 80782DF4  90 01 00 08 */	stw r0, 8(r1)
/* 80782DF8  38 7F 06 2C */	addi r3, r31, 0x62c
/* 80782DFC  38 81 00 08 */	addi r4, r1, 8
/* 80782E00  38 A0 00 00 */	li r5, 0
/* 80782E04  38 C0 FF FF */	li r6, -1
/* 80782E08  81 9F 06 2C */	lwz r12, 0x62c(r31)
/* 80782E0C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80782E10  7D 89 03 A6 */	mtctr r12
/* 80782E14  4E 80 04 21 */	bctrl 
/* 80782E18  7F E3 FB 78 */	mr r3, r31
/* 80782E1C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008479@ha */
/* 80782E20  38 84 84 79 */	addi r4, r4, 0x8479 /* 0x00008479@l */
/* 80782E24  4B FF EB B9 */	bl Particle_Set__8daE_SB_cFUs
/* 80782E28  38 00 00 02 */	li r0, 2
/* 80782E2C  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 80782E30  48 00 00 48 */	b lbl_80782E78
lbl_80782E34:
/* 80782E34  48 00 00 DD */	bl ActionCheck__8daE_SB_cFv
/* 80782E38  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80782E3C  38 80 00 01 */	li r4, 1
/* 80782E40  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80782E44  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80782E48  40 82 00 18 */	bne lbl_80782E60
/* 80782E4C  C0 3D 00 70 */	lfs f1, 0x70(r29)
/* 80782E50  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80782E54  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80782E58  41 82 00 08 */	beq lbl_80782E60
/* 80782E5C  38 80 00 00 */	li r4, 0
lbl_80782E60:
/* 80782E60  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80782E64  41 82 00 0C */	beq lbl_80782E70
/* 80782E68  7F E3 FB 78 */	mr r3, r31
/* 80782E6C  4B FF EC 8D */	bl MemberClear__8daE_SB_cFv
lbl_80782E70:
/* 80782E70  7F E3 FB 78 */	mr r3, r31
/* 80782E74  48 00 0C D9 */	bl Obj_Damage__8daE_SB_cFv
lbl_80782E78:
/* 80782E78  39 61 00 20 */	addi r11, r1, 0x20
/* 80782E7C  4B BD F3 AC */	b _restgpr_29
/* 80782E80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80782E84  7C 08 03 A6 */	mtlr r0
/* 80782E88  38 21 00 20 */	addi r1, r1, 0x20
/* 80782E8C  4E 80 00 20 */	blr 
