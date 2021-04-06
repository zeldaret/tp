lbl_804E6264:
/* 804E6264  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E6268  7C 08 02 A6 */	mflr r0
/* 804E626C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E6270  39 61 00 20 */	addi r11, r1, 0x20
/* 804E6274  4B E7 BF 61 */	bl _savegpr_27
/* 804E6278  7C 7B 1B 78 */	mr r27, r3
/* 804E627C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E6280  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E6284  83 A5 5D AC */	lwz r29, 0x5dac(r5)
/* 804E6288  C0 03 06 D0 */	lfs f0, 0x6d0(r3)
/* 804E628C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804E6290  40 80 00 48 */	bge lbl_804E62D8
/* 804E6294  A8 BB 06 D4 */	lha r5, 0x6d4(r27)
/* 804E6298  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 804E629C  7C 05 00 50 */	subf r0, r5, r0
/* 804E62A0  7C 05 07 34 */	extsh r5, r0
/* 804E62A4  7C 80 07 34 */	extsh r0, r4
/* 804E62A8  7C 05 00 00 */	cmpw r5, r0
/* 804E62AC  40 80 00 2C */	bge lbl_804E62D8
/* 804E62B0  7C 04 00 D0 */	neg r0, r4
/* 804E62B4  7C 00 07 34 */	extsh r0, r0
/* 804E62B8  7C 05 00 00 */	cmpw r5, r0
/* 804E62BC  40 81 00 1C */	ble lbl_804E62D8
/* 804E62C0  7F A4 EB 78 */	mr r4, r29
/* 804E62C4  4B FF F8 5D */	bl other_bg_check__FP10e_dn_classP10fopAc_ac_c
/* 804E62C8  2C 03 00 00 */	cmpwi r3, 0
/* 804E62CC  40 82 00 0C */	bne lbl_804E62D8
/* 804E62D0  38 60 00 01 */	li r3, 1
/* 804E62D4  48 00 00 54 */	b lbl_804E6328
lbl_804E62D8:
/* 804E62D8  3B 80 00 00 */	li r28, 0
/* 804E62DC  3B E0 00 00 */	li r31, 0
lbl_804E62E0:
/* 804E62E0  3B DF 0A 9C */	addi r30, r31, 0xa9c
/* 804E62E4  7F DB F2 14 */	add r30, r27, r30
/* 804E62E8  7F C3 F3 78 */	mr r3, r30
/* 804E62EC  4B B9 E3 6D */	bl ChkCoHit__12dCcD_GObjInfFv
/* 804E62F0  28 03 00 00 */	cmplwi r3, 0
/* 804E62F4  41 82 00 20 */	beq lbl_804E6314
/* 804E62F8  7F C3 F3 78 */	mr r3, r30
/* 804E62FC  4B B9 E3 F5 */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 804E6300  4B D7 D7 49 */	bl GetAc__8cCcD_ObjFv
/* 804E6304  7C 1D 18 40 */	cmplw r29, r3
/* 804E6308  40 82 00 0C */	bne lbl_804E6314
/* 804E630C  38 60 00 02 */	li r3, 2
/* 804E6310  48 00 00 18 */	b lbl_804E6328
lbl_804E6314:
/* 804E6314  3B 9C 00 01 */	addi r28, r28, 1
/* 804E6318  2C 1C 00 02 */	cmpwi r28, 2
/* 804E631C  3B FF 01 38 */	addi r31, r31, 0x138
/* 804E6320  40 81 FF C0 */	ble lbl_804E62E0
/* 804E6324  38 60 00 00 */	li r3, 0
lbl_804E6328:
/* 804E6328  39 61 00 20 */	addi r11, r1, 0x20
/* 804E632C  4B E7 BE F5 */	bl _restgpr_27
/* 804E6330  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E6334  7C 08 03 A6 */	mtlr r0
/* 804E6338  38 21 00 20 */	addi r1, r1, 0x20
/* 804E633C  4E 80 00 20 */	blr 
