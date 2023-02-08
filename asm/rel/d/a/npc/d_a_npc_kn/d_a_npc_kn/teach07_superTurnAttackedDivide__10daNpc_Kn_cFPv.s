lbl_80A31E24:
/* 80A31E24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A31E28  7C 08 02 A6 */	mflr r0
/* 80A31E2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A31E30  39 61 00 20 */	addi r11, r1, 0x20
/* 80A31E34  4B 93 03 A9 */	bl _savegpr_29
/* 80A31E38  7C 7F 1B 78 */	mr r31, r3
/* 80A31E3C  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A31E40  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A31E44  A0 1F 0E 2A */	lhz r0, 0xe2a(r31)
/* 80A31E48  2C 00 00 02 */	cmpwi r0, 2
/* 80A31E4C  41 82 00 40 */	beq lbl_80A31E8C
/* 80A31E50  40 80 01 50 */	bge lbl_80A31FA0
/* 80A31E54  2C 00 00 00 */	cmpwi r0, 0
/* 80A31E58  40 80 00 0C */	bge lbl_80A31E64
/* 80A31E5C  48 00 01 44 */	b lbl_80A31FA0
/* 80A31E60  48 00 01 40 */	b lbl_80A31FA0
lbl_80A31E64:
/* 80A31E64  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A31E68  D0 1F 15 B0 */	stfs f0, 0x15b0(r31)
/* 80A31E6C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A31E70  D0 1F 15 B4 */	stfs f0, 0x15b4(r31)
/* 80A31E74  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A31E78  D0 1F 15 B8 */	stfs f0, 0x15b8(r31)
/* 80A31E7C  38 00 00 00 */	li r0, 0
/* 80A31E80  98 1F 15 BC */	stb r0, 0x15bc(r31)
/* 80A31E84  38 00 00 02 */	li r0, 2
/* 80A31E88  B0 1F 0E 2A */	sth r0, 0xe2a(r31)
lbl_80A31E8C:
/* 80A31E8C  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A31E90  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A31E94  41 82 00 0C */	beq lbl_80A31EA0
/* 80A31E98  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A31E9C  40 82 00 40 */	bne lbl_80A31EDC
lbl_80A31EA0:
/* 80A31EA0  80 1F 0B B8 */	lwz r0, 0xbb8(r31)
/* 80A31EA4  2C 00 00 00 */	cmpwi r0, 0
/* 80A31EA8  41 81 00 F8 */	bgt lbl_80A31FA0
/* 80A31EAC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A31EB0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A31EB4  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 80A31EB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A31EBC  4C 41 13 82 */	cror 2, 1, 2
/* 80A31EC0  40 82 00 E0 */	bne lbl_80A31FA0
/* 80A31EC4  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 80A31EC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A31ECC  40 80 00 D4 */	bge lbl_80A31FA0
/* 80A31ED0  7F E3 FB 78 */	mr r3, r31
/* 80A31ED4  48 00 56 85 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A31ED8  48 00 00 C8 */	b lbl_80A31FA0
lbl_80A31EDC:
/* 80A31EDC  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80A31EE0  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A31EE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A31EE8  4C 40 13 82 */	cror 2, 0, 2
/* 80A31EEC  40 82 00 B4 */	bne lbl_80A31FA0
/* 80A31EF0  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 80A31EF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A31EF8  41 82 00 A8 */	beq lbl_80A31FA0
/* 80A31EFC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A31F00  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A31F04  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A31F08  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A31F0C  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A31F10  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A31F14  40 82 00 30 */	bne lbl_80A31F44
/* 80A31F18  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A31F1C  41 82 00 50 */	beq lbl_80A31F6C
/* 80A31F20  83 BF 0B B4 */	lwz r29, 0xbb4(r31)
/* 80A31F24  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A31F28  4B 71 39 71 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31F2C  93 BF 0B B4 */	stw r29, 0xbb4(r31)
/* 80A31F30  38 00 00 13 */	li r0, 0x13
/* 80A31F34  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A31F38  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31F3C  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A31F40  48 00 00 2C */	b lbl_80A31F6C
lbl_80A31F44:
/* 80A31F44  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A31F48  41 82 00 24 */	beq lbl_80A31F6C
/* 80A31F4C  83 BF 0B B4 */	lwz r29, 0xbb4(r31)
/* 80A31F50  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A31F54  4B 71 39 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31F58  93 BF 0B B4 */	stw r29, 0xbb4(r31)
/* 80A31F5C  38 00 00 0F */	li r0, 0xf
/* 80A31F60  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A31F64  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31F68  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A31F6C:
/* 80A31F6C  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A31F70  2C 00 00 01 */	cmpwi r0, 1
/* 80A31F74  41 82 00 24 */	beq lbl_80A31F98
/* 80A31F78  83 BF 0B 90 */	lwz r29, 0xb90(r31)
/* 80A31F7C  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A31F80  4B 71 39 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31F84  93 BF 0B 90 */	stw r29, 0xb90(r31)
/* 80A31F88  38 00 00 01 */	li r0, 1
/* 80A31F8C  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A31F90  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31F94  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A31F98:
/* 80A31F98  7F E3 FB 78 */	mr r3, r31
/* 80A31F9C  48 00 55 BD */	bl setLandingPrtcl__10daNpc_Kn_cFv
lbl_80A31FA0:
/* 80A31FA0  38 60 00 01 */	li r3, 1
/* 80A31FA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A31FA8  4B 93 02 81 */	bl _restgpr_29
/* 80A31FAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A31FB0  7C 08 03 A6 */	mtlr r0
/* 80A31FB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A31FB8  4E 80 00 20 */	blr 
