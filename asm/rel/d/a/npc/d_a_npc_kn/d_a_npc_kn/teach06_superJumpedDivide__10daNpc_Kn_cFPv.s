lbl_80A30D44:
/* 80A30D44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A30D48  7C 08 02 A6 */	mflr r0
/* 80A30D4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A30D50  39 61 00 20 */	addi r11, r1, 0x20
/* 80A30D54  4B 93 14 89 */	bl _savegpr_29
/* 80A30D58  7C 7F 1B 78 */	mr r31, r3
/* 80A30D5C  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A30D60  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A30D64  A0 1F 0E 2A */	lhz r0, 0xe2a(r31)
/* 80A30D68  2C 00 00 02 */	cmpwi r0, 2
/* 80A30D6C  41 82 00 40 */	beq lbl_80A30DAC
/* 80A30D70  40 80 01 50 */	bge lbl_80A30EC0
/* 80A30D74  2C 00 00 00 */	cmpwi r0, 0
/* 80A30D78  40 80 00 0C */	bge lbl_80A30D84
/* 80A30D7C  48 00 01 44 */	b lbl_80A30EC0
/* 80A30D80  48 00 01 40 */	b lbl_80A30EC0
lbl_80A30D84:
/* 80A30D84  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A30D88  D0 1F 15 B0 */	stfs f0, 0x15b0(r31)
/* 80A30D8C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A30D90  D0 1F 15 B4 */	stfs f0, 0x15b4(r31)
/* 80A30D94  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A30D98  D0 1F 15 B8 */	stfs f0, 0x15b8(r31)
/* 80A30D9C  38 00 00 00 */	li r0, 0
/* 80A30DA0  98 1F 15 BC */	stb r0, 0x15bc(r31)
/* 80A30DA4  38 00 00 02 */	li r0, 2
/* 80A30DA8  B0 1F 0E 2A */	sth r0, 0xe2a(r31)
lbl_80A30DAC:
/* 80A30DAC  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A30DB0  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A30DB4  41 82 00 0C */	beq lbl_80A30DC0
/* 80A30DB8  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A30DBC  40 82 00 40 */	bne lbl_80A30DFC
lbl_80A30DC0:
/* 80A30DC0  80 1F 0B B8 */	lwz r0, 0xbb8(r31)
/* 80A30DC4  2C 00 00 00 */	cmpwi r0, 0
/* 80A30DC8  41 81 00 F8 */	bgt lbl_80A30EC0
/* 80A30DCC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A30DD0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A30DD4  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 80A30DD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A30DDC  4C 41 13 82 */	cror 2, 1, 2
/* 80A30DE0  40 82 00 E0 */	bne lbl_80A30EC0
/* 80A30DE4  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 80A30DE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A30DEC  40 80 00 D4 */	bge lbl_80A30EC0
/* 80A30DF0  7F E3 FB 78 */	mr r3, r31
/* 80A30DF4  48 00 67 65 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A30DF8  48 00 00 C8 */	b lbl_80A30EC0
lbl_80A30DFC:
/* 80A30DFC  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80A30E00  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A30E04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A30E08  4C 40 13 82 */	cror 2, 0, 2
/* 80A30E0C  40 82 00 B4 */	bne lbl_80A30EC0
/* 80A30E10  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 80A30E14  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A30E18  41 82 00 A8 */	beq lbl_80A30EC0
/* 80A30E1C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A30E20  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A30E24  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A30E28  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A30E2C  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A30E30  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A30E34  40 82 00 30 */	bne lbl_80A30E64
/* 80A30E38  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A30E3C  41 82 00 50 */	beq lbl_80A30E8C
/* 80A30E40  83 BF 0B B4 */	lwz r29, 0xbb4(r31)
/* 80A30E44  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A30E48  4B 71 4A 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A30E4C  93 BF 0B B4 */	stw r29, 0xbb4(r31)
/* 80A30E50  38 00 00 13 */	li r0, 0x13
/* 80A30E54  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A30E58  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A30E5C  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
/* 80A30E60  48 00 00 2C */	b lbl_80A30E8C
lbl_80A30E64:
/* 80A30E64  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A30E68  41 82 00 24 */	beq lbl_80A30E8C
/* 80A30E6C  83 BF 0B B4 */	lwz r29, 0xbb4(r31)
/* 80A30E70  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A30E74  4B 71 4A 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A30E78  93 BF 0B B4 */	stw r29, 0xbb4(r31)
/* 80A30E7C  38 00 00 0F */	li r0, 0xf
/* 80A30E80  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A30E84  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A30E88  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A30E8C:
/* 80A30E8C  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A30E90  2C 00 00 01 */	cmpwi r0, 1
/* 80A30E94  41 82 00 24 */	beq lbl_80A30EB8
/* 80A30E98  83 BF 0B 90 */	lwz r29, 0xb90(r31)
/* 80A30E9C  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A30EA0  4B 71 49 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A30EA4  93 BF 0B 90 */	stw r29, 0xb90(r31)
/* 80A30EA8  38 00 00 01 */	li r0, 1
/* 80A30EAC  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A30EB0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A30EB4  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A30EB8:
/* 80A30EB8  7F E3 FB 78 */	mr r3, r31
/* 80A30EBC  48 00 66 9D */	bl setLandingPrtcl__10daNpc_Kn_cFv
lbl_80A30EC0:
/* 80A30EC0  38 60 00 01 */	li r3, 1
/* 80A30EC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A30EC8  4B 93 13 61 */	bl _restgpr_29
/* 80A30ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A30ED0  7C 08 03 A6 */	mtlr r0
/* 80A30ED4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A30ED8  4E 80 00 20 */	blr 
