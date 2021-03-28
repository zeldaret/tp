lbl_80A3CDFC:
/* 80A3CDFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A3CE00  7C 08 02 A6 */	mflr r0
/* 80A3CE04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A3CE08  39 61 00 20 */	addi r11, r1, 0x20
/* 80A3CE0C  4B 92 53 D0 */	b _savegpr_29
/* 80A3CE10  7C 7F 1B 78 */	mr r31, r3
/* 80A3CE14  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A3CE18  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A3CE1C  A0 1F 0E 2A */	lhz r0, 0xe2a(r31)
/* 80A3CE20  2C 00 00 02 */	cmpwi r0, 2
/* 80A3CE24  41 82 00 A4 */	beq lbl_80A3CEC8
/* 80A3CE28  40 80 01 34 */	bge lbl_80A3CF5C
/* 80A3CE2C  2C 00 00 00 */	cmpwi r0, 0
/* 80A3CE30  40 80 00 0C */	bge lbl_80A3CE3C
/* 80A3CE34  48 00 01 28 */	b lbl_80A3CF5C
/* 80A3CE38  48 00 01 24 */	b lbl_80A3CF5C
lbl_80A3CE3C:
/* 80A3CE3C  83 BF 0B B4 */	lwz r29, 0xbb4(r31)
/* 80A3CE40  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A3CE44  4B 70 8A 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3CE48  93 BF 0B B4 */	stw r29, 0xbb4(r31)
/* 80A3CE4C  38 00 00 09 */	li r0, 9
/* 80A3CE50  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A3CE54  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3CE58  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A3CE5C  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A3CE60  2C 00 00 01 */	cmpwi r0, 1
/* 80A3CE64  41 82 00 24 */	beq lbl_80A3CE88
/* 80A3CE68  83 BF 0B 90 */	lwz r29, 0xb90(r31)
/* 80A3CE6C  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A3CE70  4B 70 8A 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3CE74  93 BF 0B 90 */	stw r29, 0xb90(r31)
/* 80A3CE78  38 00 00 01 */	li r0, 1
/* 80A3CE7C  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A3CE80  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3CE84  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A3CE88:
/* 80A3CE88  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80A3CE8C  2C 00 00 01 */	cmpwi r0, 1
/* 80A3CE90  41 82 00 28 */	beq lbl_80A3CEB8
/* 80A3CE94  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A3CE98  4B 70 88 64 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A3CE9C  38 00 00 00 */	li r0, 0
/* 80A3CEA0  90 1F 0B FC */	stw r0, 0xbfc(r31)
/* 80A3CEA4  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A3CEA8  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80A3CEAC  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A3CEB0  38 00 00 01 */	li r0, 1
/* 80A3CEB4  90 1F 0D 14 */	stw r0, 0xd14(r31)
lbl_80A3CEB8:
/* 80A3CEB8  38 00 00 00 */	li r0, 0
/* 80A3CEBC  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A3CEC0  38 00 00 02 */	li r0, 2
/* 80A3CEC4  B0 1F 0E 2A */	sth r0, 0xe2a(r31)
lbl_80A3CEC8:
/* 80A3CEC8  7F E3 FB 78 */	mr r3, r31
/* 80A3CECC  48 00 08 0D */	bl ctrlWarp__10daNpc_Kn_cFv
/* 80A3CED0  2C 03 00 00 */	cmpwi r3, 0
/* 80A3CED4  40 82 00 88 */	bne lbl_80A3CF5C
/* 80A3CED8  7F E3 FB 78 */	mr r3, r31
/* 80A3CEDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3CEE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A3CEE4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A3CEE8  4B 5D D8 28 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3CEEC  7C 64 1B 78 */	mr r4, r3
/* 80A3CEF0  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A3CEF4  38 A0 00 02 */	li r5, 2
/* 80A3CEF8  38 C0 08 00 */	li r6, 0x800
/* 80A3CEFC  4B 83 37 0C */	b cLib_addCalcAngleS2__FPssss
/* 80A3CF00  7F E3 FB 78 */	mr r3, r31
/* 80A3CF04  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A3CF08  4B FF DB E9 */	bl setAngle__10daNpc_Kn_cFs
/* 80A3CF0C  38 7F 11 DC */	addi r3, r31, 0x11dc
/* 80A3CF10  4B 64 75 50 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80A3CF14  28 03 00 00 */	cmplwi r3, 0
/* 80A3CF18  41 82 00 44 */	beq lbl_80A3CF5C
/* 80A3CF1C  38 00 00 06 */	li r0, 6
/* 80A3CF20  B0 1F 0E 36 */	sth r0, 0xe36(r31)
/* 80A3CF24  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80A3CF28  D0 1F 16 F4 */	stfs f0, 0x16f4(r31)
/* 80A3CF2C  D0 1F 16 F8 */	stfs f0, 0x16f8(r31)
/* 80A3CF30  D0 1F 16 FC */	stfs f0, 0x16fc(r31)
/* 80A3CF34  38 00 00 00 */	li r0, 0
/* 80A3CF38  98 1F 17 0C */	stb r0, 0x170c(r31)
/* 80A3CF3C  98 1F 17 0D */	stb r0, 0x170d(r31)
/* 80A3CF40  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80A3CF44  3C 80 00 04 */	lis r4, 4
/* 80A3CF48  38 A0 00 28 */	li r5, 0x28
/* 80A3CF4C  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 80A3CF50  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A3CF54  7D 89 03 A6 */	mtctr r12
/* 80A3CF58  4E 80 04 21 */	bctrl 
lbl_80A3CF5C:
/* 80A3CF5C  38 60 00 01 */	li r3, 1
/* 80A3CF60  39 61 00 20 */	addi r11, r1, 0x20
/* 80A3CF64  4B 92 52 C4 */	b _restgpr_29
/* 80A3CF68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A3CF6C  7C 08 03 A6 */	mtlr r0
/* 80A3CF70  38 21 00 20 */	addi r1, r1, 0x20
/* 80A3CF74  4E 80 00 20 */	blr 
