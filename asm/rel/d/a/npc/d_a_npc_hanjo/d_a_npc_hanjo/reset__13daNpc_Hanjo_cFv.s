lbl_809F9D9C:
/* 809F9D9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809F9DA0  7C 08 02 A6 */	mflr r0
/* 809F9DA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 809F9DA8  39 61 00 40 */	addi r11, r1, 0x40
/* 809F9DAC  4B 96 84 29 */	bl _savegpr_27
/* 809F9DB0  7C 7E 1B 78 */	mr r30, r3
/* 809F9DB4  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha /* 0x80A00600@ha */
/* 809F9DB8  3B E3 06 00 */	addi r31, r3, m__19daNpc_Hanjo_Param_c@l /* 0x80A00600@l */
/* 809F9DBC  38 7E 16 E0 */	addi r3, r30, 0x16e0
/* 809F9DC0  38 1E 17 28 */	addi r0, r30, 0x1728
/* 809F9DC4  7F 83 00 50 */	subf r28, r3, r0
/* 809F9DC8  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 809F9DCC  28 03 00 00 */	cmplwi r3, 0
/* 809F9DD0  41 82 00 08 */	beq lbl_809F9DD8
/* 809F9DD4  4B 74 B9 91 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_809F9DD8:
/* 809F9DD8  38 7E 0D 24 */	addi r3, r30, 0xd24
/* 809F9DDC  38 80 00 00 */	li r4, 0
/* 809F9DE0  38 1E 0E 38 */	addi r0, r30, 0xe38
/* 809F9DE4  7C A3 00 50 */	subf r5, r3, r0
/* 809F9DE8  4B 60 96 71 */	bl memset
/* 809F9DEC  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809F9DF0  4B 74 BA A9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809F9DF4  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809F9DF8  4B 74 BA A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809F9DFC  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809F9E00  4B 74 B8 D5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809F9E04  38 7E 0B A0 */	addi r3, r30, 0xba0
/* 809F9E08  4B 74 B8 CD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809F9E0C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809F9E10  4B 74 CE 89 */	bl initialize__15daNpcT_JntAnm_cFv
/* 809F9E14  38 A0 00 00 */	li r5, 0
/* 809F9E18  38 60 00 00 */	li r3, 0
/* 809F9E1C  7C A4 2B 78 */	mr r4, r5
/* 809F9E20  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809F9E24  38 00 00 02 */	li r0, 2
/* 809F9E28  7C 09 03 A6 */	mtctr r0
lbl_809F9E2C:
/* 809F9E2C  7C DE 22 14 */	add r6, r30, r4
/* 809F9E30  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 809F9E34  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 809F9E38  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 809F9E3C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809F9E40  7C 1E 05 2E */	stfsx f0, r30, r0
/* 809F9E44  38 63 00 04 */	addi r3, r3, 4
/* 809F9E48  38 84 00 06 */	addi r4, r4, 6
/* 809F9E4C  42 00 FF E0 */	bdnz lbl_809F9E2C
/* 809F9E50  38 00 00 00 */	li r0, 0
/* 809F9E54  B0 1E 0D 1C */	sth r0, 0xd1c(r30)
/* 809F9E58  B0 1E 0D 1E */	sth r0, 0xd1e(r30)
/* 809F9E5C  98 1E 0D 20 */	stb r0, 0xd20(r30)
/* 809F9E60  38 00 FF FF */	li r0, -1
/* 809F9E64  90 1E 0D 90 */	stw r0, 0xd90(r30)
/* 809F9E68  38 00 00 01 */	li r0, 1
/* 809F9E6C  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 809F9E70  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 809F9E74  4B 86 DA E1 */	bl cM_rndF__Ff
/* 809F9E78  FC 00 08 1E */	fctiwz f0, f1
/* 809F9E7C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 809F9E80  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 809F9E84  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 809F9E88  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 809F9E8C  D0 1E 0D E0 */	stfs f0, 0xde0(r30)
/* 809F9E90  D0 1E 0D E4 */	stfs f0, 0xde4(r30)
/* 809F9E94  3B 60 00 00 */	li r27, 0
/* 809F9E98  3B A0 00 00 */	li r29, 0
lbl_809F9E9C:
/* 809F9E9C  38 7D 10 C8 */	addi r3, r29, 0x10c8
/* 809F9EA0  7C 7E 1A 14 */	add r3, r30, r3
/* 809F9EA4  4B 74 B8 31 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809F9EA8  3B 7B 00 01 */	addi r27, r27, 1
/* 809F9EAC  2C 1B 00 04 */	cmpwi r27, 4
/* 809F9EB0  3B BD 00 08 */	addi r29, r29, 8
/* 809F9EB4  41 80 FF E8 */	blt lbl_809F9E9C
/* 809F9EB8  38 7E 16 E0 */	addi r3, r30, 0x16e0
/* 809F9EBC  38 80 00 00 */	li r4, 0
/* 809F9EC0  7F 85 E3 78 */	mr r5, r28
/* 809F9EC4  4B 60 95 95 */	bl memset
/* 809F9EC8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 809F9ECC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 809F9ED0  28 00 00 FF */	cmplwi r0, 0xff
/* 809F9ED4  41 82 00 28 */	beq lbl_809F9EFC
/* 809F9ED8  38 7E 10 E8 */	addi r3, r30, 0x10e8
/* 809F9EDC  4B 74 BD 65 */	bl initialize__13daNpcT_Path_cFv
/* 809F9EE0  38 7E 10 E8 */	addi r3, r30, 0x10e8
/* 809F9EE4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 809F9EE8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 809F9EEC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809F9EF0  7C 05 07 74 */	extsb r5, r0
/* 809F9EF4  38 C0 00 00 */	li r6, 0
/* 809F9EF8  4B 74 BD 7D */	bl setPathInfo__13daNpcT_Path_cFUcScUc
lbl_809F9EFC:
/* 809F9EFC  38 00 00 00 */	li r0, 0
/* 809F9F00  B0 01 00 10 */	sth r0, 0x10(r1)
/* 809F9F04  B0 01 00 12 */	sth r0, 0x12(r1)
/* 809F9F08  B0 01 00 14 */	sth r0, 0x14(r1)
/* 809F9F0C  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 809F9F10  B0 01 00 12 */	sth r0, 0x12(r1)
/* 809F9F14  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 809F9F18  2C 00 00 01 */	cmpwi r0, 1
/* 809F9F1C  41 82 00 34 */	beq lbl_809F9F50
/* 809F9F20  40 80 00 58 */	bge lbl_809F9F78
/* 809F9F24  2C 00 00 00 */	cmpwi r0, 0
/* 809F9F28  40 80 00 0C */	bge lbl_809F9F34
/* 809F9F2C  48 00 00 4C */	b lbl_809F9F78
/* 809F9F30  48 00 00 48 */	b lbl_809F9F78
lbl_809F9F34:
/* 809F9F34  38 60 00 AD */	li r3, 0xad
/* 809F9F38  4B 75 2B 75 */	bl daNpcT_chkEvtBit__FUl
/* 809F9F3C  2C 03 00 00 */	cmpwi r3, 0
/* 809F9F40  41 82 00 38 */	beq lbl_809F9F78
/* 809F9F44  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 809F9F48  D0 1E 17 18 */	stfs f0, 0x1718(r30)
/* 809F9F4C  48 00 00 2C */	b lbl_809F9F78
lbl_809F9F50:
/* 809F9F50  38 60 00 CF */	li r3, 0xcf
/* 809F9F54  4B 75 2B 59 */	bl daNpcT_chkEvtBit__FUl
/* 809F9F58  2C 03 00 00 */	cmpwi r3, 0
/* 809F9F5C  41 82 00 1C */	beq lbl_809F9F78
/* 809F9F60  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 809F9F64  3C 63 00 01 */	addis r3, r3, 1
/* 809F9F68  38 03 80 00 */	addi r0, r3, -32768
/* 809F9F6C  B0 1E 04 B6 */	sth r0, 0x4b6(r30)
/* 809F9F70  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 809F9F74  B0 01 00 12 */	sth r0, 0x12(r1)
lbl_809F9F78:
/* 809F9F78  38 60 00 AC */	li r3, 0xac
/* 809F9F7C  4B 75 2B B1 */	bl daNpcT_offTmpBit__FUl
/* 809F9F80  38 60 00 B1 */	li r3, 0xb1
/* 809F9F84  4B 75 2B 29 */	bl daNpcT_chkEvtBit__FUl
/* 809F9F88  2C 03 00 00 */	cmpwi r3, 0
/* 809F9F8C  41 82 00 0C */	beq lbl_809F9F98
/* 809F9F90  38 60 00 AC */	li r3, 0xac
/* 809F9F94  4B 75 2B 59 */	bl daNpcT_onTmpBit__FUl
lbl_809F9F98:
/* 809F9F98  80 01 00 10 */	lwz r0, 0x10(r1)
/* 809F9F9C  90 01 00 08 */	stw r0, 8(r1)
/* 809F9FA0  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 809F9FA4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 809F9FA8  7F C3 F3 78 */	mr r3, r30
/* 809F9FAC  38 81 00 08 */	addi r4, r1, 8
/* 809F9FB0  4B 75 09 ED */	bl setAngle__8daNpcT_cF5csXyz
/* 809F9FB4  39 61 00 40 */	addi r11, r1, 0x40
/* 809F9FB8  4B 96 82 69 */	bl _restgpr_27
/* 809F9FBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809F9FC0  7C 08 03 A6 */	mtlr r0
/* 809F9FC4  38 21 00 40 */	addi r1, r1, 0x40
/* 809F9FC8  4E 80 00 20 */	blr 
