lbl_80A03BDC:
/* 80A03BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A03BE0  7C 08 02 A6 */	mflr r0
/* 80A03BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A03BE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A03BEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A03BF0  7C 7F 1B 78 */	mr r31, r3
/* 80A03BF4  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A03BF8  2C 00 00 02 */	cmpwi r0, 2
/* 80A03BFC  41 82 01 38 */	beq lbl_80A03D34
/* 80A03C00  40 80 03 70 */	bge lbl_80A03F70
/* 80A03C04  2C 00 00 00 */	cmpwi r0, 0
/* 80A03C08  40 80 00 0C */	bge lbl_80A03C14
/* 80A03C0C  48 00 03 64 */	b lbl_80A03F70
/* 80A03C10  48 00 03 60 */	b lbl_80A03F70
lbl_80A03C14:
/* 80A03C14  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A03C18  2C 00 00 22 */	cmpwi r0, 0x22
/* 80A03C1C  41 82 00 28 */	beq lbl_80A03C44
/* 80A03C20  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A03C24  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A03C28  4B 74 1C 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A03C2C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A03C30  38 00 00 22 */	li r0, 0x22
/* 80A03C34  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A03C38  3C 60 80 A0 */	lis r3, lit_4832@ha
/* 80A03C3C  C0 03 67 20 */	lfs f0, lit_4832@l(r3)
/* 80A03C40  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A03C44:
/* 80A03C44  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A03C48  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A03C4C  41 82 00 24 */	beq lbl_80A03C70
/* 80A03C50  40 80 00 14 */	bge lbl_80A03C64
/* 80A03C54  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A03C58  41 82 00 18 */	beq lbl_80A03C70
/* 80A03C5C  40 80 00 44 */	bge lbl_80A03CA0
/* 80A03C60  48 00 00 A0 */	b lbl_80A03D00
lbl_80A03C64:
/* 80A03C64  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80A03C68  41 82 00 68 */	beq lbl_80A03CD0
/* 80A03C6C  48 00 00 94 */	b lbl_80A03D00
lbl_80A03C70:
/* 80A03C70  2C 00 00 21 */	cmpwi r0, 0x21
/* 80A03C74  41 82 00 B8 */	beq lbl_80A03D2C
/* 80A03C78  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A03C7C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A03C80  4B 74 1C 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A03C84  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A03C88  38 00 00 21 */	li r0, 0x21
/* 80A03C8C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A03C90  3C 60 80 A0 */	lis r3, lit_4832@ha
/* 80A03C94  C0 03 67 20 */	lfs f0, lit_4832@l(r3)
/* 80A03C98  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A03C9C  48 00 00 90 */	b lbl_80A03D2C
lbl_80A03CA0:
/* 80A03CA0  2C 00 00 22 */	cmpwi r0, 0x22
/* 80A03CA4  41 82 00 88 */	beq lbl_80A03D2C
/* 80A03CA8  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A03CAC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A03CB0  4B 74 1B E8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A03CB4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A03CB8  38 00 00 22 */	li r0, 0x22
/* 80A03CBC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A03CC0  3C 60 80 A0 */	lis r3, lit_4832@ha
/* 80A03CC4  C0 03 67 20 */	lfs f0, lit_4832@l(r3)
/* 80A03CC8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A03CCC  48 00 00 60 */	b lbl_80A03D2C
lbl_80A03CD0:
/* 80A03CD0  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80A03CD4  41 82 00 58 */	beq lbl_80A03D2C
/* 80A03CD8  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A03CDC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A03CE0  4B 74 1B B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A03CE4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A03CE8  38 00 00 1F */	li r0, 0x1f
/* 80A03CEC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A03CF0  3C 60 80 A0 */	lis r3, lit_4832@ha
/* 80A03CF4  C0 03 67 20 */	lfs f0, lit_4832@l(r3)
/* 80A03CF8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A03CFC  48 00 00 30 */	b lbl_80A03D2C
lbl_80A03D00:
/* 80A03D00  2C 00 00 00 */	cmpwi r0, 0
/* 80A03D04  41 82 00 28 */	beq lbl_80A03D2C
/* 80A03D08  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A03D0C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A03D10  4B 74 1B 88 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A03D14  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A03D18  38 00 00 00 */	li r0, 0
/* 80A03D1C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A03D20  3C 60 80 A0 */	lis r3, lit_4832@ha
/* 80A03D24  C0 03 67 20 */	lfs f0, lit_4832@l(r3)
/* 80A03D28  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A03D2C:
/* 80A03D2C  38 00 00 02 */	li r0, 2
/* 80A03D30  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A03D34:
/* 80A03D34  80 1F 0F 84 */	lwz r0, 0xf84(r31)
/* 80A03D38  28 00 00 00 */	cmplwi r0, 0
/* 80A03D3C  40 82 00 30 */	bne lbl_80A03D6C
/* 80A03D40  3C 60 80 A0 */	lis r3, s_sub__FPvPv@ha
/* 80A03D44  38 63 1E BC */	addi r3, r3, s_sub__FPvPv@l
/* 80A03D48  7F E4 FB 78 */	mr r4, r31
/* 80A03D4C  4B 61 D5 EC */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A03D50  90 7F 0F 84 */	stw r3, 0xf84(r31)
/* 80A03D54  38 00 00 00 */	li r0, 0
/* 80A03D58  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80A03D5C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80A03D60  98 03 00 BC */	stb r0, 0xbc(r3)
/* 80A03D64  38 80 00 00 */	li r4, 0
/* 80A03D68  4B 81 A5 00 */	b setMiniGameCount__13dMeter2Info_cFSc
lbl_80A03D6C:
/* 80A03D6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A03D70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A03D74  38 63 09 78 */	addi r3, r3, 0x978
/* 80A03D78  38 80 00 3E */	li r4, 0x3e
/* 80A03D7C  4B 63 0E 6C */	b isSwitch__12dSv_danBit_cCFi
/* 80A03D80  2C 03 00 00 */	cmpwi r3, 0
/* 80A03D84  41 82 00 1C */	beq lbl_80A03DA0
/* 80A03D88  38 00 00 01 */	li r0, 1
/* 80A03D8C  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80A03D90  38 00 00 02 */	li r0, 2
/* 80A03D94  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A03D98  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A03D9C  48 00 01 D4 */	b lbl_80A03F70
lbl_80A03DA0:
/* 80A03DA0  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A03DA4  4B 74 19 64 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A03DA8  28 03 00 00 */	cmplwi r3, 0
/* 80A03DAC  40 82 00 48 */	bne lbl_80A03DF4
/* 80A03DB0  3C 60 80 A0 */	lis r3, s_subCanoe__FPvPv@ha
/* 80A03DB4  38 63 1F 08 */	addi r3, r3, s_subCanoe__FPvPv@l
/* 80A03DB8  7F E4 FB 78 */	mr r4, r31
/* 80A03DBC  4B 61 D5 7C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A03DC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A03DC4  41 82 00 30 */	beq lbl_80A03DF4
/* 80A03DC8  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A03DCC  7F C4 F3 78 */	mr r4, r30
/* 80A03DD0  4B 74 19 10 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A03DD4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A03DD8  D0 1F 0F 90 */	stfs f0, 0xf90(r31)
/* 80A03DDC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A03DE0  D0 1F 0F 94 */	stfs f0, 0xf94(r31)
/* 80A03DE4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A03DE8  D0 1F 0F 98 */	stfs f0, 0xf98(r31)
/* 80A03DEC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A03DF0  B0 1F 0F 9C */	sth r0, 0xf9c(r31)
lbl_80A03DF4:
/* 80A03DF4  38 60 00 7F */	li r3, 0x7f
/* 80A03DF8  4B 74 8C B4 */	b daNpcT_chkEvtBit__FUl
/* 80A03DFC  2C 03 00 00 */	cmpwi r3, 0
/* 80A03E00  40 82 00 10 */	bne lbl_80A03E10
/* 80A03E04  38 00 00 01 */	li r0, 1
/* 80A03E08  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80A03E0C  48 00 00 20 */	b lbl_80A03E2C
lbl_80A03E10:
/* 80A03E10  88 1F 0F 8E */	lbz r0, 0xf8e(r31)
/* 80A03E14  28 00 00 01 */	cmplwi r0, 1
/* 80A03E18  40 82 00 14 */	bne lbl_80A03E2C
/* 80A03E1C  38 00 00 08 */	li r0, 8
/* 80A03E20  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A03E24  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A03E28  48 00 01 48 */	b lbl_80A03F70
lbl_80A03E2C:
/* 80A03E2C  88 1F 0F 8D */	lbz r0, 0xf8d(r31)
/* 80A03E30  28 00 00 00 */	cmplwi r0, 0
/* 80A03E34  41 82 00 44 */	beq lbl_80A03E78
/* 80A03E38  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A03E3C  2C 00 00 01 */	cmpwi r0, 1
/* 80A03E40  41 82 00 2C */	beq lbl_80A03E6C
/* 80A03E44  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A03E48  4B 74 18 B4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A03E4C  38 00 00 00 */	li r0, 0
/* 80A03E50  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A03E54  3C 60 80 A0 */	lis r3, lit_4337@ha
/* 80A03E58  C0 03 67 0C */	lfs f0, lit_4337@l(r3)
/* 80A03E5C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A03E60  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03E64  38 00 00 01 */	li r0, 1
/* 80A03E68  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A03E6C:
/* 80A03E6C  38 00 00 00 */	li r0, 0
/* 80A03E70  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03E74  48 00 00 FC */	b lbl_80A03F70
lbl_80A03E78:
/* 80A03E78  7F E3 FB 78 */	mr r3, r31
/* 80A03E7C  4B 74 74 BC */	b srchPlayerActor__8daNpcT_cFv
/* 80A03E80  2C 03 00 00 */	cmpwi r3, 0
/* 80A03E84  41 82 00 44 */	beq lbl_80A03EC8
/* 80A03E88  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A03E8C  2C 00 00 01 */	cmpwi r0, 1
/* 80A03E90  41 82 00 2C */	beq lbl_80A03EBC
/* 80A03E94  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A03E98  4B 74 18 64 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A03E9C  38 00 00 00 */	li r0, 0
/* 80A03EA0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A03EA4  3C 60 80 A0 */	lis r3, lit_4337@ha
/* 80A03EA8  C0 03 67 0C */	lfs f0, lit_4337@l(r3)
/* 80A03EAC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A03EB0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03EB4  38 00 00 01 */	li r0, 1
/* 80A03EB8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A03EBC:
/* 80A03EBC  38 00 00 00 */	li r0, 0
/* 80A03EC0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03EC4  48 00 00 74 */	b lbl_80A03F38
lbl_80A03EC8:
/* 80A03EC8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A03ECC  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A03ED0  7C 04 00 00 */	cmpw r4, r0
/* 80A03ED4  41 82 00 2C */	beq lbl_80A03F00
/* 80A03ED8  7F E3 FB 78 */	mr r3, r31
/* 80A03EDC  38 A0 FF FF */	li r5, -1
/* 80A03EE0  38 C0 FF FF */	li r6, -1
/* 80A03EE4  38 E0 00 0F */	li r7, 0xf
/* 80A03EE8  39 00 00 00 */	li r8, 0
/* 80A03EEC  4B 74 77 5C */	b step__8daNpcT_cFsiiii
/* 80A03EF0  2C 03 00 00 */	cmpwi r3, 0
/* 80A03EF4  41 82 00 0C */	beq lbl_80A03F00
/* 80A03EF8  38 00 00 01 */	li r0, 1
/* 80A03EFC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A03F00:
/* 80A03F00  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A03F04  2C 00 00 00 */	cmpwi r0, 0
/* 80A03F08  41 82 00 28 */	beq lbl_80A03F30
/* 80A03F0C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A03F10  4B 74 17 EC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A03F14  38 00 00 00 */	li r0, 0
/* 80A03F18  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A03F1C  3C 60 80 A0 */	lis r3, lit_4337@ha
/* 80A03F20  C0 03 67 0C */	lfs f0, lit_4337@l(r3)
/* 80A03F24  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A03F28  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03F2C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A03F30:
/* 80A03F30  38 00 00 00 */	li r0, 0
/* 80A03F34  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A03F38:
/* 80A03F38  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A03F3C  4B 74 17 CC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A03F40  28 03 00 00 */	cmplwi r3, 0
/* 80A03F44  41 82 00 2C */	beq lbl_80A03F70
/* 80A03F48  A8 1F 0F 9C */	lha r0, 0xf9c(r31)
/* 80A03F4C  C0 1F 0F 90 */	lfs f0, 0xf90(r31)
/* 80A03F50  D0 03 14 D0 */	stfs f0, 0x14d0(r3)
/* 80A03F54  C0 1F 0F 94 */	lfs f0, 0xf94(r31)
/* 80A03F58  D0 03 14 D4 */	stfs f0, 0x14d4(r3)
/* 80A03F5C  C0 1F 0F 98 */	lfs f0, 0xf98(r31)
/* 80A03F60  D0 03 14 D8 */	stfs f0, 0x14d8(r3)
/* 80A03F64  B0 03 14 4A */	sth r0, 0x144a(r3)
/* 80A03F68  38 00 00 01 */	li r0, 1
/* 80A03F6C  98 03 14 46 */	stb r0, 0x1446(r3)
lbl_80A03F70:
/* 80A03F70  38 60 00 01 */	li r3, 1
/* 80A03F74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A03F78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A03F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A03F80  7C 08 03 A6 */	mtlr r0
/* 80A03F84  38 21 00 10 */	addi r1, r1, 0x10
/* 80A03F88  4E 80 00 20 */	blr 
