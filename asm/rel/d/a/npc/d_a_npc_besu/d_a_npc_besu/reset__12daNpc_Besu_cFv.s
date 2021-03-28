lbl_80537DE4:
/* 80537DE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80537DE8  7C 08 02 A6 */	mflr r0
/* 80537DEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80537DF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80537DF4  4B E2 A3 E4 */	b _savegpr_28
/* 80537DF8  7C 7F 1B 78 */	mr r31, r3
/* 80537DFC  3C 60 80 54 */	lis r3, m__18daNpc_Besu_Param_c@ha
/* 80537E00  3B C3 E7 54 */	addi r30, r3, m__18daNpc_Besu_Param_c@l
/* 80537E04  38 7F 11 00 */	addi r3, r31, 0x1100
/* 80537E08  38 1F 11 34 */	addi r0, r31, 0x1134
/* 80537E0C  7F A3 00 50 */	subf r29, r3, r0
/* 80537E10  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80537E14  28 03 00 00 */	cmplwi r3, 0
/* 80537E18  41 82 00 08 */	beq lbl_80537E20
/* 80537E1C  4B C0 D9 48 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80537E20:
/* 80537E20  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80537E24  38 80 00 00 */	li r4, 0
/* 80537E28  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80537E2C  7C A3 00 50 */	subf r5, r3, r0
/* 80537E30  4B AC B6 28 */	b memset
/* 80537E34  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80537E38  4B C0 DA 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80537E3C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80537E40  4B C0 DA 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80537E44  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80537E48  4B C0 D8 8C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80537E4C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80537E50  4B C0 D8 84 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80537E54  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80537E58  4B C0 EE 40 */	b initialize__15daNpcT_JntAnm_cFv
/* 80537E5C  38 A0 00 00 */	li r5, 0
/* 80537E60  38 60 00 00 */	li r3, 0
/* 80537E64  7C A4 2B 78 */	mr r4, r5
/* 80537E68  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80537E6C  38 00 00 02 */	li r0, 2
/* 80537E70  7C 09 03 A6 */	mtctr r0
lbl_80537E74:
/* 80537E74  7C DF 22 14 */	add r6, r31, r4
/* 80537E78  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80537E7C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80537E80  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80537E84  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80537E88  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80537E8C  38 63 00 04 */	addi r3, r3, 4
/* 80537E90  38 84 00 06 */	addi r4, r4, 6
/* 80537E94  42 00 FF E0 */	bdnz lbl_80537E74
/* 80537E98  38 00 00 00 */	li r0, 0
/* 80537E9C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80537EA0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80537EA4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80537EA8  38 00 FF FF */	li r0, -1
/* 80537EAC  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80537EB0  38 00 00 01 */	li r0, 1
/* 80537EB4  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80537EB8  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80537EBC  4B D2 FA 98 */	b cM_rndF__Ff
/* 80537EC0  FC 00 08 1E */	fctiwz f0, f1
/* 80537EC4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80537EC8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80537ECC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80537ED0  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 80537ED4  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80537ED8  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80537EDC  3B 80 00 00 */	li r28, 0
/* 80537EE0  3B C0 00 00 */	li r30, 0
lbl_80537EE4:
/* 80537EE4  38 7E 10 C8 */	addi r3, r30, 0x10c8
/* 80537EE8  7C 7F 1A 14 */	add r3, r31, r3
/* 80537EEC  4B C0 D7 E8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80537EF0  3B 9C 00 01 */	addi r28, r28, 1
/* 80537EF4  2C 1C 00 07 */	cmpwi r28, 7
/* 80537EF8  3B DE 00 08 */	addi r30, r30, 8
/* 80537EFC  41 80 FF E8 */	blt lbl_80537EE4
/* 80537F00  38 7F 11 00 */	addi r3, r31, 0x1100
/* 80537F04  38 80 00 00 */	li r4, 0
/* 80537F08  7F A5 EB 78 */	mr r5, r29
/* 80537F0C  4B AC B5 4C */	b memset
/* 80537F10  38 80 00 00 */	li r4, 0
/* 80537F14  B0 81 00 10 */	sth r4, 0x10(r1)
/* 80537F18  B0 81 00 12 */	sth r4, 0x12(r1)
/* 80537F1C  B0 81 00 14 */	sth r4, 0x14(r1)
/* 80537F20  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80537F24  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80537F28  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 80537F2C  28 00 00 10 */	cmplwi r0, 0x10
/* 80537F30  41 81 00 64 */	bgt lbl_80537F94
/* 80537F34  3C 60 80 54 */	lis r3, lit_4719@ha
/* 80537F38  38 63 F9 6C */	addi r3, r3, lit_4719@l
/* 80537F3C  54 00 10 3A */	slwi r0, r0, 2
/* 80537F40  7C 03 00 2E */	lwzx r0, r3, r0
/* 80537F44  7C 09 03 A6 */	mtctr r0
/* 80537F48  4E 80 04 20 */	bctr 
lbl_80537F4C:
/* 80537F4C  98 9F 00 FF */	stb r4, 0xff(r31)
/* 80537F50  48 00 00 44 */	b lbl_80537F94
lbl_80537F54:
/* 80537F54  38 60 00 1F */	li r3, 0x1f
/* 80537F58  4B C1 4B 54 */	b daNpcT_chkEvtBit__FUl
/* 80537F5C  7C 60 00 34 */	cntlzw r0, r3
/* 80537F60  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80537F64  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 80537F68  38 00 00 01 */	li r0, 1
/* 80537F6C  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80537F70  48 00 00 24 */	b lbl_80537F94
lbl_80537F74:
/* 80537F74  38 00 00 01 */	li r0, 1
/* 80537F78  98 1F 11 2D */	stb r0, 0x112d(r31)
/* 80537F7C  48 00 00 18 */	b lbl_80537F94
lbl_80537F80:
/* 80537F80  38 00 00 01 */	li r0, 1
/* 80537F84  98 1F 11 2E */	stb r0, 0x112e(r31)
/* 80537F88  48 00 00 0C */	b lbl_80537F94
lbl_80537F8C:
/* 80537F8C  38 00 00 01 */	li r0, 1
/* 80537F90  98 1F 11 2D */	stb r0, 0x112d(r31)
lbl_80537F94:
/* 80537F94  38 60 00 64 */	li r3, 0x64
/* 80537F98  4B C1 4B 94 */	b daNpcT_offTmpBit__FUl
/* 80537F9C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80537FA0  90 01 00 08 */	stw r0, 8(r1)
/* 80537FA4  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80537FA8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80537FAC  7F E3 FB 78 */	mr r3, r31
/* 80537FB0  38 81 00 08 */	addi r4, r1, 8
/* 80537FB4  4B C1 29 E8 */	b setAngle__8daNpcT_cF5csXyz
/* 80537FB8  39 61 00 30 */	addi r11, r1, 0x30
/* 80537FBC  4B E2 A2 68 */	b _restgpr_28
/* 80537FC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80537FC4  7C 08 03 A6 */	mtlr r0
/* 80537FC8  38 21 00 30 */	addi r1, r1, 0x30
/* 80537FCC  4E 80 00 20 */	blr 
