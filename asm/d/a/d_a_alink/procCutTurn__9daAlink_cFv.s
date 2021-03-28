lbl_800D4A74:
/* 800D4A74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D4A78  7C 08 02 A6 */	mflr r0
/* 800D4A7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D4A80  39 61 00 20 */	addi r11, r1, 0x20
/* 800D4A84  48 28 D7 59 */	bl _savegpr_29
/* 800D4A88  7C 7F 1B 78 */	mr r31, r3
/* 800D4A8C  3C 80 80 39 */	lis r4, lit_3757@ha
/* 800D4A90  3B C4 D6 58 */	addi r30, r4, lit_3757@l
/* 800D4A94  4B FE 54 BD */	bl checkGroundSpecialMode__9daAlink_cFv
/* 800D4A98  2C 03 00 00 */	cmpwi r3, 0
/* 800D4A9C  41 82 00 0C */	beq lbl_800D4AA8
/* 800D4AA0  38 60 00 01 */	li r3, 1
/* 800D4AA4  48 00 01 AC */	b lbl_800D4C50
lbl_800D4AA8:
/* 800D4AA8  3B BF 1F D0 */	addi r29, r31, 0x1fd0
/* 800D4AAC  38 00 00 04 */	li r0, 4
/* 800D4AB0  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800D4AB4  38 7F 33 98 */	addi r3, r31, 0x3398
/* 800D4AB8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D4ABC  38 9E 00 64 */	addi r4, r30, 0x64
/* 800D4AC0  C0 44 00 38 */	lfs f2, 0x38(r4)
/* 800D4AC4  48 19 BC 7D */	bl cLib_chaseF__FPfff
/* 800D4AC8  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800D4ACC  64 00 08 00 */	oris r0, r0, 0x800
/* 800D4AD0  90 1F 05 88 */	stw r0, 0x588(r31)
/* 800D4AD4  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 800D4AD8  28 00 00 00 */	cmplwi r0, 0
/* 800D4ADC  41 82 00 10 */	beq lbl_800D4AEC
/* 800D4AE0  38 7E 08 34 */	addi r3, r30, 0x834
/* 800D4AE4  A8 03 00 52 */	lha r0, 0x52(r3)
/* 800D4AE8  B0 1F 30 7E */	sth r0, 0x307e(r31)
lbl_800D4AEC:
/* 800D4AEC  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 800D4AF0  C0 02 93 40 */	lfs f0, lit_7945(r2)
/* 800D4AF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D4AF8  4C 41 13 82 */	cror 2, 1, 2
/* 800D4AFC  40 82 00 0C */	bne lbl_800D4B08
/* 800D4B00  38 00 00 00 */	li r0, 0
/* 800D4B04  98 1F 2F 92 */	stb r0, 0x2f92(r31)
lbl_800D4B08:
/* 800D4B08  7F A3 EB 78 */	mr r3, r29
/* 800D4B0C  48 08 99 C1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800D4B10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D4B14  41 82 00 80 */	beq lbl_800D4B94
/* 800D4B18  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800D4B1C  2C 00 00 00 */	cmpwi r0, 0
/* 800D4B20  40 81 00 38 */	ble lbl_800D4B58
/* 800D4B24  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 800D4B28  C0 1F 34 80 */	lfs f0, 0x3480(r31)
/* 800D4B2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D4B30  40 81 00 18 */	ble lbl_800D4B48
/* 800D4B34  7F E3 FB 78 */	mr r3, r31
/* 800D4B38  38 80 00 03 */	li r4, 3
/* 800D4B3C  4B FF DC 25 */	bl checkCutCancelNextMode__9daAlink_cFi
/* 800D4B40  2C 03 00 00 */	cmpwi r3, 0
/* 800D4B44  40 82 01 08 */	bne lbl_800D4C4C
lbl_800D4B48:
/* 800D4B48  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 800D4B4C  38 03 FF FF */	addi r0, r3, -1
/* 800D4B50  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800D4B54  48 00 00 F8 */	b lbl_800D4C4C
lbl_800D4B58:
/* 800D4B58  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800D4B5C  28 00 00 24 */	cmplwi r0, 0x24
/* 800D4B60  40 82 00 1C */	bne lbl_800D4B7C
/* 800D4B64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D4B68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D4B6C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800D4B70  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 800D4B74  4B F7 36 09 */	bl cutEnd__16dEvent_manager_cFi
/* 800D4B78  48 00 00 D4 */	b lbl_800D4C4C
lbl_800D4B7C:
/* 800D4B7C  38 00 00 03 */	li r0, 3
/* 800D4B80  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800D4B84  7F E3 FB 78 */	mr r3, r31
/* 800D4B88  38 80 00 00 */	li r4, 0
/* 800D4B8C  4B FE 55 45 */	bl checkNextAction__9daAlink_cFi
/* 800D4B90  48 00 00 BC */	b lbl_800D4C4C
lbl_800D4B94:
/* 800D4B94  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 800D4B98  C0 1F 34 80 */	lfs f0, 0x3480(r31)
/* 800D4B9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D4BA0  40 81 00 18 */	ble lbl_800D4BB8
/* 800D4BA4  7F E3 FB 78 */	mr r3, r31
/* 800D4BA8  38 80 00 03 */	li r4, 3
/* 800D4BAC  4B FF DB B5 */	bl checkCutCancelNextMode__9daAlink_cFi
/* 800D4BB0  2C 03 00 00 */	cmpwi r3, 0
/* 800D4BB4  40 82 00 98 */	bne lbl_800D4C4C
lbl_800D4BB8:
/* 800D4BB8  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 800D4BBC  C0 1F 34 84 */	lfs f0, 0x3484(r31)
/* 800D4BC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D4BC4  4C 41 13 82 */	cror 2, 1, 2
/* 800D4BC8  40 82 00 84 */	bne lbl_800D4C4C
/* 800D4BCC  C0 1F 34 88 */	lfs f0, 0x3488(r31)
/* 800D4BD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D4BD4  40 80 00 78 */	bge lbl_800D4C4C
/* 800D4BD8  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800D4BDC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D4BE0  40 82 00 44 */	bne lbl_800D4C24
/* 800D4BE4  7F E3 FB 78 */	mr r3, r31
/* 800D4BE8  80 9F 32 CC */	lwz r4, 0x32cc(r31)
/* 800D4BEC  4B FE A5 01 */	bl seStartSwordCut__9daAlink_cFUl
/* 800D4BF0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 800D4BF4  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 800D4BF8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D4BFC  7F E3 FB 78 */	mr r3, r31
/* 800D4C00  38 80 00 01 */	li r4, 1
/* 800D4C04  38 A0 00 01 */	li r5, 1
/* 800D4C08  4B FE 68 B1 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800D4C0C  2C 03 00 00 */	cmpwi r3, 0
/* 800D4C10  41 82 00 14 */	beq lbl_800D4C24
/* 800D4C14  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800D4C18  C0 1F 34 34 */	lfs f0, 0x3434(r31)
/* 800D4C1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D4C20  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_800D4C24:
/* 800D4C24  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800D4C28  60 00 00 02 */	ori r0, r0, 2
/* 800D4C2C  90 1F 05 80 */	stw r0, 0x580(r31)
/* 800D4C30  38 7F 34 7C */	addi r3, r31, 0x347c
/* 800D4C34  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 800D4C38  C0 5F 34 8C */	lfs f2, 0x348c(r31)
/* 800D4C3C  48 19 BB 05 */	bl cLib_chaseF__FPfff
/* 800D4C40  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 800D4C44  C0 3F 34 7C */	lfs f1, 0x347c(r31)
/* 800D4C48  48 19 AA C1 */	bl SetR__8cM3dGSphFf
lbl_800D4C4C:
/* 800D4C4C  38 60 00 01 */	li r3, 1
lbl_800D4C50:
/* 800D4C50  39 61 00 20 */	addi r11, r1, 0x20
/* 800D4C54  48 28 D5 D5 */	bl _restgpr_29
/* 800D4C58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D4C5C  7C 08 03 A6 */	mtlr r0
/* 800D4C60  38 21 00 20 */	addi r1, r1, 0x20
/* 800D4C64  4E 80 00 20 */	blr 
