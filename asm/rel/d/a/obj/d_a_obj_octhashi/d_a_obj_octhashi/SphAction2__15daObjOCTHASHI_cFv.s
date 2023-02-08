lbl_80CA5844:
/* 80CA5844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA5848  7C 08 02 A6 */	mflr r0
/* 80CA584C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA5850  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA5854  4B 6B C9 85 */	bl _savegpr_28
/* 80CA5858  7C 7C 1B 78 */	mr r28, r3
/* 80CA585C  3B A0 00 00 */	li r29, 0
/* 80CA5860  3B E0 00 00 */	li r31, 0
/* 80CA5864  48 00 00 6C */	b lbl_80CA58D0
lbl_80CA5868:
/* 80CA5868  3B DF 09 8C */	addi r30, r31, 0x98c
/* 80CA586C  7F DC F2 14 */	add r30, r28, r30
/* 80CA5870  7F C3 F3 78 */	mr r3, r30
/* 80CA5874  4B 3D EB ED */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CA5878  28 03 00 00 */	cmplwi r3, 0
/* 80CA587C  41 82 00 4C */	beq lbl_80CA58C8
/* 80CA5880  7F C3 F3 78 */	mr r3, r30
/* 80CA5884  4B 3D EC 75 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80CA5888  7C 64 1B 78 */	mr r4, r3
/* 80CA588C  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80CA5890  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 80CA5894  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80CA5898  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 80CA589C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80CA58A0  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 80CA58A4  38 7C 06 EC */	addi r3, r28, 0x6ec
/* 80CA58A8  38 A0 00 2A */	li r5, 0x2a
/* 80CA58AC  38 C0 00 00 */	li r6, 0
/* 80CA58B0  4B 3E 1C 65 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80CA58B4  7F C3 F3 78 */	mr r3, r30
/* 80CA58B8  81 9E 00 3C */	lwz r12, 0x3c(r30)
/* 80CA58BC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CA58C0  7D 89 03 A6 */	mtctr r12
/* 80CA58C4  4E 80 04 21 */	bctrl 
lbl_80CA58C8:
/* 80CA58C8  3B BD 00 01 */	addi r29, r29, 1
/* 80CA58CC  3B FF 01 38 */	addi r31, r31, 0x138
lbl_80CA58D0:
/* 80CA58D0  80 1C 06 E0 */	lwz r0, 0x6e0(r28)
/* 80CA58D4  7C 1D 00 00 */	cmpw r29, r0
/* 80CA58D8  41 80 FF 90 */	blt lbl_80CA5868
/* 80CA58DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA58E0  4B 6B C9 45 */	bl _restgpr_28
/* 80CA58E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA58E8  7C 08 03 A6 */	mtlr r0
/* 80CA58EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA58F0  4E 80 00 20 */	blr 
