lbl_80A9CD60:
/* 80A9CD60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9CD64  7C 08 02 A6 */	mflr r0
/* 80A9CD68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9CD6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9CD70  4B 8C 54 69 */	bl _savegpr_28
/* 80A9CD74  7C 7F 1B 78 */	mr r31, r3
/* 80A9CD78  3C 60 80 AA */	lis r3, m__24daNpc_Pachi_Taro_Param_c@ha /* 0x80AA1604@ha */
/* 80A9CD7C  3B C3 16 04 */	addi r30, r3, m__24daNpc_Pachi_Taro_Param_c@l /* 0x80AA1604@l */
/* 80A9CD80  38 7F 0F BC */	addi r3, r31, 0xfbc
/* 80A9CD84  38 1F 10 08 */	addi r0, r31, 0x1008
/* 80A9CD88  7F A3 00 50 */	subf r29, r3, r0
/* 80A9CD8C  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A9CD90  28 03 00 00 */	cmplwi r3, 0
/* 80A9CD94  41 82 00 08 */	beq lbl_80A9CD9C
/* 80A9CD98  4B 6A 89 CD */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80A9CD9C:
/* 80A9CD9C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A9CDA0  38 80 00 00 */	li r4, 0
/* 80A9CDA4  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A9CDA8  7C A3 00 50 */	subf r5, r3, r0
/* 80A9CDAC  4B 56 66 AD */	bl memset
/* 80A9CDB0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A9CDB4  4B 6A 8A E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A9CDB8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A9CDBC  4B 6A 8A DD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A9CDC0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A9CDC4  4B 6A 89 11 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A9CDC8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A9CDCC  4B 6A 89 09 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A9CDD0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A9CDD4  4B 6A 9E C5 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A9CDD8  38 A0 00 00 */	li r5, 0
/* 80A9CDDC  38 60 00 00 */	li r3, 0
/* 80A9CDE0  7C A4 2B 78 */	mr r4, r5
/* 80A9CDE4  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A9CDE8  38 00 00 02 */	li r0, 2
/* 80A9CDEC  7C 09 03 A6 */	mtctr r0
lbl_80A9CDF0:
/* 80A9CDF0  7C DF 22 14 */	add r6, r31, r4
/* 80A9CDF4  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A9CDF8  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A9CDFC  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A9CE00  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A9CE04  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A9CE08  38 63 00 04 */	addi r3, r3, 4
/* 80A9CE0C  38 84 00 06 */	addi r4, r4, 6
/* 80A9CE10  42 00 FF E0 */	bdnz lbl_80A9CDF0
/* 80A9CE14  38 00 00 00 */	li r0, 0
/* 80A9CE18  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A9CE1C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A9CE20  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A9CE24  38 00 FF FF */	li r0, -1
/* 80A9CE28  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A9CE2C  38 00 00 01 */	li r0, 1
/* 80A9CE30  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A9CE34  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80A9CE38  4B 7C AB 1D */	bl cM_rndF__Ff
/* 80A9CE3C  FC 00 08 1E */	fctiwz f0, f1
/* 80A9CE40  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A9CE44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A9CE48  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A9CE4C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80A9CE50  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A9CE54  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A9CE58  3B 80 00 00 */	li r28, 0
/* 80A9CE5C  3B C0 00 00 */	li r30, 0
lbl_80A9CE60:
/* 80A9CE60  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80A9CE64  7C 7F 1A 14 */	add r3, r31, r3
/* 80A9CE68  4B 6A 88 6D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A9CE6C  3B 9C 00 01 */	addi r28, r28, 1
/* 80A9CE70  2C 1C 00 06 */	cmpwi r28, 6
/* 80A9CE74  3B DE 00 08 */	addi r30, r30, 8
/* 80A9CE78  41 80 FF E8 */	blt lbl_80A9CE60
/* 80A9CE7C  38 7F 0F BC */	addi r3, r31, 0xfbc
/* 80A9CE80  38 80 00 00 */	li r4, 0
/* 80A9CE84  7F A5 EB 78 */	mr r5, r29
/* 80A9CE88  4B 56 65 D1 */	bl memset
/* 80A9CE8C  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80A9CE90  2C 00 00 00 */	cmpwi r0, 0
/* 80A9CE94  41 82 00 08 */	beq lbl_80A9CE9C
/* 80A9CE98  48 00 00 54 */	b lbl_80A9CEEC
lbl_80A9CE9C:
/* 80A9CE9C  38 00 00 02 */	li r0, 2
/* 80A9CEA0  90 1F 0F D4 */	stw r0, 0xfd4(r31)
/* 80A9CEA4  38 60 00 00 */	li r3, 0
/* 80A9CEA8  98 7F 0F DE */	stb r3, 0xfde(r31)
/* 80A9CEAC  98 7F 0F DF */	stb r3, 0xfdf(r31)
/* 80A9CEB0  98 7F 0F E0 */	stb r3, 0xfe0(r31)
/* 80A9CEB4  38 00 00 01 */	li r0, 1
/* 80A9CEB8  98 1F 0F E2 */	stb r0, 0xfe2(r31)
/* 80A9CEBC  98 1F 0F E3 */	stb r0, 0xfe3(r31)
/* 80A9CEC0  98 7F 0F E8 */	stb r3, 0xfe8(r31)
/* 80A9CEC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9CEC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9CECC  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80A9CED0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F4FF@ha */
/* 80A9CED4  38 84 F4 FF */	addi r4, r4, 0xF4FF /* 0x0000F4FF@l */
/* 80A9CED8  38 A0 00 00 */	li r5, 0
/* 80A9CEDC  4B 59 7B 05 */	bl setEventReg__11dSv_event_cFUsUc
/* 80A9CEE0  38 00 00 00 */	li r0, 0
/* 80A9CEE4  B0 1F 0F DC */	sth r0, 0xfdc(r31)
/* 80A9CEE8  98 1F 10 04 */	stb r0, 0x1004(r31)
lbl_80A9CEEC:
/* 80A9CEEC  7F E3 FB 78 */	mr r3, r31
/* 80A9CEF0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A9CEF4  4B 6A DB 25 */	bl setAngle__8daNpcT_cFs
/* 80A9CEF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9CEFC  4B 8C 53 29 */	bl _restgpr_28
/* 80A9CF00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9CF04  7C 08 03 A6 */	mtlr r0
/* 80A9CF08  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9CF0C  4E 80 00 20 */	blr 
