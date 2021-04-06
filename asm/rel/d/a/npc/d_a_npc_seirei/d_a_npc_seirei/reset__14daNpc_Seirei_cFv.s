lbl_80AD5D34:
/* 80AD5D34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD5D38  7C 08 02 A6 */	mflr r0
/* 80AD5D3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD5D40  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD5D44  4B 88 C4 99 */	bl _savegpr_29
/* 80AD5D48  7C 7E 1B 78 */	mr r30, r3
/* 80AD5D4C  3C 60 80 AD */	lis r3, m__20daNpc_Seirei_Param_c@ha /* 0x80AD7CA8@ha */
/* 80AD5D50  3B E3 7C A8 */	addi r31, r3, m__20daNpc_Seirei_Param_c@l /* 0x80AD7CA8@l */
/* 80AD5D54  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80AD5D58  38 1E 0E 84 */	addi r0, r30, 0xe84
/* 80AD5D5C  7F A3 00 50 */	subf r29, r3, r0
/* 80AD5D60  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80AD5D64  28 03 00 00 */	cmplwi r3, 0
/* 80AD5D68  41 82 00 08 */	beq lbl_80AD5D70
/* 80AD5D6C  4B 66 F9 F9 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80AD5D70:
/* 80AD5D70  38 7E 0D 24 */	addi r3, r30, 0xd24
/* 80AD5D74  38 80 00 00 */	li r4, 0
/* 80AD5D78  38 1E 0E 38 */	addi r0, r30, 0xe38
/* 80AD5D7C  7C A3 00 50 */	subf r5, r3, r0
/* 80AD5D80  4B 52 D6 D9 */	bl memset
/* 80AD5D84  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80AD5D88  4B 66 FB 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD5D8C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80AD5D90  4B 66 FB 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD5D94  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80AD5D98  4B 66 F9 3D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD5D9C  38 7E 0B A0 */	addi r3, r30, 0xba0
/* 80AD5DA0  4B 66 F9 35 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD5DA4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AD5DA8  4B 67 0E F1 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AD5DAC  38 A0 00 00 */	li r5, 0
/* 80AD5DB0  38 60 00 00 */	li r3, 0
/* 80AD5DB4  7C A4 2B 78 */	mr r4, r5
/* 80AD5DB8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80AD5DBC  38 00 00 02 */	li r0, 2
/* 80AD5DC0  7C 09 03 A6 */	mtctr r0
lbl_80AD5DC4:
/* 80AD5DC4  7C DE 22 14 */	add r6, r30, r4
/* 80AD5DC8  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AD5DCC  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AD5DD0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AD5DD4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AD5DD8  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80AD5DDC  38 63 00 04 */	addi r3, r3, 4
/* 80AD5DE0  38 84 00 06 */	addi r4, r4, 6
/* 80AD5DE4  42 00 FF E0 */	bdnz lbl_80AD5DC4
/* 80AD5DE8  38 00 00 00 */	li r0, 0
/* 80AD5DEC  B0 1E 0D 1C */	sth r0, 0xd1c(r30)
/* 80AD5DF0  B0 1E 0D 1E */	sth r0, 0xd1e(r30)
/* 80AD5DF4  98 1E 0D 20 */	stb r0, 0xd20(r30)
/* 80AD5DF8  38 00 FF FF */	li r0, -1
/* 80AD5DFC  90 1E 0D 90 */	stw r0, 0xd90(r30)
/* 80AD5E00  38 00 00 01 */	li r0, 1
/* 80AD5E04  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 80AD5E08  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80AD5E0C  4B 79 1B 49 */	bl cM_rndF__Ff
/* 80AD5E10  FC 00 08 1E */	fctiwz f0, f1
/* 80AD5E14  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AD5E18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AD5E1C  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80AD5E20  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80AD5E24  D0 1E 0D E0 */	stfs f0, 0xde0(r30)
/* 80AD5E28  D0 1E 0D E4 */	stfs f0, 0xde4(r30)
/* 80AD5E2C  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80AD5E30  38 80 00 00 */	li r4, 0
/* 80AD5E34  7F A5 EB 78 */	mr r5, r29
/* 80AD5E38  4B 52 D6 21 */	bl memset
/* 80AD5E3C  88 1E 0E 44 */	lbz r0, 0xe44(r30)
/* 80AD5E40  2C 00 00 00 */	cmpwi r0, 0
/* 80AD5E44  41 82 00 0C */	beq lbl_80AD5E50
/* 80AD5E48  41 80 00 10 */	blt lbl_80AD5E58
/* 80AD5E4C  48 00 00 0C */	b lbl_80AD5E58
lbl_80AD5E50:
/* 80AD5E50  38 00 FF FF */	li r0, -1
/* 80AD5E54  90 1E 0D 90 */	stw r0, 0xd90(r30)
lbl_80AD5E58:
/* 80AD5E58  88 1E 0E 45 */	lbz r0, 0xe45(r30)
/* 80AD5E5C  28 00 00 00 */	cmplwi r0, 0
/* 80AD5E60  41 82 00 3C */	beq lbl_80AD5E9C
/* 80AD5E64  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80AD5E68  2C 00 00 00 */	cmpwi r0, 0
/* 80AD5E6C  41 82 00 24 */	beq lbl_80AD5E90
/* 80AD5E70  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80AD5E74  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80AD5E78  4B 66 FA 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD5E7C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80AD5E80  38 00 00 00 */	li r0, 0
/* 80AD5E84  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80AD5E88  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80AD5E8C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80AD5E90:
/* 80AD5E90  38 00 00 03 */	li r0, 3
/* 80AD5E94  90 1E 0E 60 */	stw r0, 0xe60(r30)
/* 80AD5E98  48 00 00 30 */	b lbl_80AD5EC8
lbl_80AD5E9C:
/* 80AD5E9C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80AD5EA0  2C 00 00 02 */	cmpwi r0, 2
/* 80AD5EA4  41 82 00 24 */	beq lbl_80AD5EC8
/* 80AD5EA8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80AD5EAC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80AD5EB0  4B 66 F9 E9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD5EB4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80AD5EB8  38 00 00 02 */	li r0, 2
/* 80AD5EBC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80AD5EC0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80AD5EC4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80AD5EC8:
/* 80AD5EC8  7F C3 F3 78 */	mr r3, r30
/* 80AD5ECC  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80AD5ED0  4B 67 4B 49 */	bl setAngle__8daNpcT_cFs
/* 80AD5ED4  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD5ED8  4B 88 C3 51 */	bl _restgpr_29
/* 80AD5EDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD5EE0  7C 08 03 A6 */	mtlr r0
/* 80AD5EE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD5EE8  4E 80 00 20 */	blr 
