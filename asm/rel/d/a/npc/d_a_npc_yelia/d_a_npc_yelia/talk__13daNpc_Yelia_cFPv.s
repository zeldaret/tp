lbl_80B50B60:
/* 80B50B60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B50B64  7C 08 02 A6 */	mflr r0
/* 80B50B68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B50B6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B50B70  4B 81 16 6C */	b _savegpr_29
/* 80B50B74  7C 7E 1B 78 */	mr r30, r3
/* 80B50B78  3C 60 80 B5 */	lis r3, cNullVec__6Z2Calc@ha
/* 80B50B7C  3B E3 24 DC */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80B50B80  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80B50B84  2C 00 00 02 */	cmpwi r0, 2
/* 80B50B88  41 82 00 B0 */	beq lbl_80B50C38
/* 80B50B8C  40 80 03 38 */	bge lbl_80B50EC4
/* 80B50B90  2C 00 00 00 */	cmpwi r0, 0
/* 80B50B94  40 80 00 0C */	bge lbl_80B50BA0
/* 80B50B98  48 00 03 2C */	b lbl_80B50EC4
/* 80B50B9C  48 00 03 28 */	b lbl_80B50EC4
lbl_80B50BA0:
/* 80B50BA0  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B50BA4  2C 00 00 00 */	cmpwi r0, 0
/* 80B50BA8  40 82 00 90 */	bne lbl_80B50C38
/* 80B50BAC  38 7F 0D 14 */	addi r3, r31, 0xd14
/* 80B50BB0  38 9E 0F A4 */	addi r4, r30, 0xfa4
/* 80B50BB4  4B 81 14 94 */	b __ptmf_cmpr
/* 80B50BB8  2C 03 00 00 */	cmpwi r3, 0
/* 80B50BBC  40 82 00 64 */	bne lbl_80B50C20
/* 80B50BC0  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B50BC4  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B50BC8  41 82 00 28 */	beq lbl_80B50BF0
/* 80B50BCC  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B50BD0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B50BD4  4B 5F 4C C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50BD8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B50BDC  38 00 00 0D */	li r0, 0xd
/* 80B50BE0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B50BE4  3C 60 80 B5 */	lis r3, lit_4778@ha
/* 80B50BE8  C0 03 23 94 */	lfs f0, lit_4778@l(r3)
/* 80B50BEC  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B50BF0:
/* 80B50BF0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B50BF4  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B50BF8  41 82 00 28 */	beq lbl_80B50C20
/* 80B50BFC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B50C00  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B50C04  4B 5F 4C 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50C08  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B50C0C  38 00 00 1A */	li r0, 0x1a
/* 80B50C10  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B50C14  3C 60 80 B5 */	lis r3, lit_4778@ha
/* 80B50C18  C0 03 23 94 */	lfs f0, lit_4778@l(r3)
/* 80B50C1C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B50C20:
/* 80B50C20  7F C3 F3 78 */	mr r3, r30
/* 80B50C24  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 80B50C28  38 A0 00 00 */	li r5, 0
/* 80B50C2C  4B 5F AF C4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B50C30  38 00 00 02 */	li r0, 2
/* 80B50C34  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B50C38:
/* 80B50C38  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B50C3C  2C 00 00 00 */	cmpwi r0, 0
/* 80B50C40  40 82 02 84 */	bne lbl_80B50EC4
/* 80B50C44  38 7F 0D 20 */	addi r3, r31, 0xd20
/* 80B50C48  38 9E 0F A4 */	addi r4, r30, 0xfa4
/* 80B50C4C  4B 81 13 FC */	b __ptmf_cmpr
/* 80B50C50  2C 03 00 00 */	cmpwi r3, 0
/* 80B50C54  40 82 00 88 */	bne lbl_80B50CDC
/* 80B50C58  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B50C5C  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B50C60  40 82 00 7C */	bne lbl_80B50CDC
/* 80B50C64  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B50C68  4B 5F 4D BC */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80B50C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80B50C70  41 82 00 64 */	beq lbl_80B50CD4
/* 80B50C74  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B50C78  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B50C7C  41 82 00 28 */	beq lbl_80B50CA4
/* 80B50C80  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B50C84  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B50C88  4B 5F 4C 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50C8C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B50C90  38 00 00 1A */	li r0, 0x1a
/* 80B50C94  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B50C98  3C 60 80 B5 */	lis r3, lit_4778@ha
/* 80B50C9C  C0 03 23 94 */	lfs f0, lit_4778@l(r3)
/* 80B50CA0  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B50CA4:
/* 80B50CA4  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B50CA8  2C 00 00 05 */	cmpwi r0, 5
/* 80B50CAC  41 82 00 28 */	beq lbl_80B50CD4
/* 80B50CB0  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B50CB4  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B50CB8  4B 5F 4B E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50CBC  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B50CC0  38 00 00 05 */	li r0, 5
/* 80B50CC4  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B50CC8  3C 60 80 B5 */	lis r3, lit_4778@ha
/* 80B50CCC  C0 03 23 94 */	lfs f0, lit_4778@l(r3)
/* 80B50CD0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B50CD4:
/* 80B50CD4  38 60 00 00 */	li r3, 0
/* 80B50CD8  48 00 01 F0 */	b lbl_80B50EC8
lbl_80B50CDC:
/* 80B50CDC  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B50CE0  28 00 00 00 */	cmplwi r0, 0
/* 80B50CE4  40 82 00 50 */	bne lbl_80B50D34
/* 80B50CE8  A8 7E 0D C8 */	lha r3, 0xdc8(r30)
/* 80B50CEC  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B50CF0  7C 03 00 00 */	cmpw r3, r0
/* 80B50CF4  41 82 00 40 */	beq lbl_80B50D34
/* 80B50CF8  38 7F 0D 2C */	addi r3, r31, 0xd2c
/* 80B50CFC  38 9E 0F A4 */	addi r4, r30, 0xfa4
/* 80B50D00  4B 81 13 48 */	b __ptmf_cmpr
/* 80B50D04  2C 03 00 00 */	cmpwi r3, 0
/* 80B50D08  41 82 00 2C */	beq lbl_80B50D34
/* 80B50D0C  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B50D10  28 00 00 03 */	cmplwi r0, 3
/* 80B50D14  40 82 00 14 */	bne lbl_80B50D28
/* 80B50D18  38 60 01 1F */	li r3, 0x11f
/* 80B50D1C  4B 5F BD 90 */	b daNpcT_chkEvtBit__FUl
/* 80B50D20  2C 03 00 00 */	cmpwi r3, 0
/* 80B50D24  41 82 00 10 */	beq lbl_80B50D34
lbl_80B50D28:
/* 80B50D28  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B50D2C  28 00 00 05 */	cmplwi r0, 5
/* 80B50D30  40 82 00 F4 */	bne lbl_80B50E24
lbl_80B50D34:
/* 80B50D34  7F C3 F3 78 */	mr r3, r30
/* 80B50D38  38 80 00 00 */	li r4, 0
/* 80B50D3C  38 A0 00 00 */	li r5, 0
/* 80B50D40  38 C0 00 00 */	li r6, 0
/* 80B50D44  38 E0 00 00 */	li r7, 0
/* 80B50D48  4B 5F AF 30 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B50D4C  2C 03 00 00 */	cmpwi r3, 0
/* 80B50D50  41 82 00 3C */	beq lbl_80B50D8C
/* 80B50D54  88 1E 09 9A */	lbz r0, 0x99a(r30)
/* 80B50D58  28 00 00 01 */	cmplwi r0, 1
/* 80B50D5C  40 82 00 30 */	bne lbl_80B50D8C
/* 80B50D60  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B50D64  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B50D68  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B50D6C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B50D70  4B 5F 49 70 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B50D74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B50D78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B50D7C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B50D80  4B 4F 16 E8 */	b reset__14dEvt_control_cFv
/* 80B50D84  38 00 00 03 */	li r0, 3
/* 80B50D88  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B50D8C:
/* 80B50D8C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B50D90  2C 00 00 01 */	cmpwi r0, 1
/* 80B50D94  41 82 00 2C */	beq lbl_80B50DC0
/* 80B50D98  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B50D9C  4B 5F 49 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B50DA0  38 00 00 00 */	li r0, 0
/* 80B50DA4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B50DA8  3C 60 80 B5 */	lis r3, lit_4330@ha
/* 80B50DAC  C0 03 23 7C */	lfs f0, lit_4330@l(r3)
/* 80B50DB0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B50DB4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B50DB8  38 00 00 01 */	li r0, 1
/* 80B50DBC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B50DC0:
/* 80B50DC0  38 00 00 00 */	li r0, 0
/* 80B50DC4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B50DC8  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B50DCC  28 00 00 00 */	cmplwi r0, 0
/* 80B50DD0  40 82 00 18 */	bne lbl_80B50DE8
/* 80B50DD4  38 7F 0D 38 */	addi r3, r31, 0xd38
/* 80B50DD8  38 9E 0F A4 */	addi r4, r30, 0xfa4
/* 80B50DDC  4B 81 12 6C */	b __ptmf_cmpr
/* 80B50DE0  2C 03 00 00 */	cmpwi r3, 0
/* 80B50DE4  40 82 00 E0 */	bne lbl_80B50EC4
lbl_80B50DE8:
/* 80B50DE8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B50DEC  2C 00 00 00 */	cmpwi r0, 0
/* 80B50DF0  41 82 00 28 */	beq lbl_80B50E18
/* 80B50DF4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B50DF8  4B 5F 49 04 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B50DFC  38 00 00 00 */	li r0, 0
/* 80B50E00  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B50E04  3C 60 80 B5 */	lis r3, lit_4330@ha
/* 80B50E08  C0 03 23 7C */	lfs f0, lit_4330@l(r3)
/* 80B50E0C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B50E10  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B50E14  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B50E18:
/* 80B50E18  38 00 00 00 */	li r0, 0
/* 80B50E1C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B50E20  48 00 00 A4 */	b lbl_80B50EC4
lbl_80B50E24:
/* 80B50E24  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B50E28  2C 00 00 01 */	cmpwi r0, 1
/* 80B50E2C  41 82 00 2C */	beq lbl_80B50E58
/* 80B50E30  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B50E34  4B 5F 48 C8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B50E38  38 00 00 00 */	li r0, 0
/* 80B50E3C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B50E40  3C 60 80 B5 */	lis r3, lit_4330@ha
/* 80B50E44  C0 03 23 7C */	lfs f0, lit_4330@l(r3)
/* 80B50E48  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B50E4C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B50E50  38 00 00 01 */	li r0, 1
/* 80B50E54  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B50E58:
/* 80B50E58  38 00 00 00 */	li r0, 0
/* 80B50E5C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B50E60  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B50E64  28 00 00 03 */	cmplwi r0, 3
/* 80B50E68  40 82 00 14 */	bne lbl_80B50E7C
/* 80B50E6C  38 60 01 1F */	li r3, 0x11f
/* 80B50E70  4B 5F BC 3C */	b daNpcT_chkEvtBit__FUl
/* 80B50E74  2C 03 00 00 */	cmpwi r3, 0
/* 80B50E78  40 82 00 10 */	bne lbl_80B50E88
lbl_80B50E7C:
/* 80B50E7C  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B50E80  28 00 00 06 */	cmplwi r0, 6
/* 80B50E84  40 82 00 24 */	bne lbl_80B50EA8
lbl_80B50E88:
/* 80B50E88  7F C3 F3 78 */	mr r3, r30
/* 80B50E8C  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 80B50E90  38 A0 00 15 */	li r5, 0x15
/* 80B50E94  38 C0 00 1F */	li r6, 0x1f
/* 80B50E98  38 E0 00 0F */	li r7, 0xf
/* 80B50E9C  39 00 00 00 */	li r8, 0
/* 80B50EA0  4B 5F A7 A8 */	b step__8daNpcT_cFsiiii
/* 80B50EA4  48 00 00 20 */	b lbl_80B50EC4
lbl_80B50EA8:
/* 80B50EA8  7F C3 F3 78 */	mr r3, r30
/* 80B50EAC  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 80B50EB0  38 A0 00 1A */	li r5, 0x1a
/* 80B50EB4  38 C0 00 1E */	li r6, 0x1e
/* 80B50EB8  38 E0 00 0F */	li r7, 0xf
/* 80B50EBC  39 00 00 00 */	li r8, 0
/* 80B50EC0  4B 5F A7 88 */	b step__8daNpcT_cFsiiii
lbl_80B50EC4:
/* 80B50EC4  38 60 00 00 */	li r3, 0
lbl_80B50EC8:
/* 80B50EC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B50ECC  4B 81 13 5C */	b _restgpr_29
/* 80B50ED0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B50ED4  7C 08 03 A6 */	mtlr r0
/* 80B50ED8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B50EDC  4E 80 00 20 */	blr 
