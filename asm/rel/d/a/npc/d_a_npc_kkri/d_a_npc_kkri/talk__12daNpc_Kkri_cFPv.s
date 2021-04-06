lbl_80551DA4:
/* 80551DA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80551DA8  7C 08 02 A6 */	mflr r0
/* 80551DAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80551DB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80551DB4  7C 7F 1B 78 */	mr r31, r3
/* 80551DB8  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80551DBC  2C 00 00 02 */	cmpwi r0, 2
/* 80551DC0  41 82 00 FC */	beq lbl_80551EBC
/* 80551DC4  40 80 02 C4 */	bge lbl_80552088
/* 80551DC8  2C 00 00 00 */	cmpwi r0, 0
/* 80551DCC  40 80 00 0C */	bge lbl_80551DD8
/* 80551DD0  48 00 02 B8 */	b lbl_80552088
/* 80551DD4  48 00 02 B4 */	b lbl_80552088
lbl_80551DD8:
/* 80551DD8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80551DDC  2C 00 00 00 */	cmpwi r0, 0
/* 80551DE0  40 82 00 DC */	bne lbl_80551EBC
/* 80551DE4  80 1F 0A 7C */	lwz r0, 0xa7c(r31)
/* 80551DE8  2C 00 00 65 */	cmpwi r0, 0x65
/* 80551DEC  41 82 00 0C */	beq lbl_80551DF8
/* 80551DF0  2C 00 00 6D */	cmpwi r0, 0x6d
/* 80551DF4  40 82 00 28 */	bne lbl_80551E1C
lbl_80551DF8:
/* 80551DF8  88 1F 0F D5 */	lbz r0, 0xfd5(r31)
/* 80551DFC  28 00 00 00 */	cmplwi r0, 0
/* 80551E00  40 82 00 1C */	bne lbl_80551E1C
/* 80551E04  38 60 00 0B */	li r3, 0xb
/* 80551E08  4B BF AD 25 */	bl daNpcT_offTmpBit__FUl
/* 80551E0C  38 60 00 0C */	li r3, 0xc
/* 80551E10  4B BF AD 1D */	bl daNpcT_offTmpBit__FUl
/* 80551E14  38 60 00 2A */	li r3, 0x2a
/* 80551E18  4B BF AD 15 */	bl daNpcT_offTmpBit__FUl
lbl_80551E1C:
/* 80551E1C  38 60 01 59 */	li r3, 0x159
/* 80551E20  4B BF AC 8D */	bl daNpcT_chkEvtBit__FUl
/* 80551E24  2C 03 00 00 */	cmpwi r3, 0
/* 80551E28  40 82 00 7C */	bne lbl_80551EA4
/* 80551E2C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80551E30  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80551E34  28 04 00 FF */	cmplwi r4, 0xff
/* 80551E38  41 82 00 34 */	beq lbl_80551E6C
/* 80551E3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80551E40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80551E44  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80551E48  7C 05 07 74 */	extsb r5, r0
/* 80551E4C  4B AE 35 15 */	bl isSwitch__10dSv_info_cCFii
/* 80551E50  2C 03 00 00 */	cmpwi r3, 0
/* 80551E54  41 82 00 18 */	beq lbl_80551E6C
/* 80551E58  7F E3 FB 78 */	mr r3, r31
/* 80551E5C  38 80 00 7A */	li r4, 0x7a
/* 80551E60  38 A0 00 00 */	li r5, 0
/* 80551E64  4B BF 9D 8D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80551E68  48 00 00 4C */	b lbl_80551EB4
lbl_80551E6C:
/* 80551E6C  38 60 00 80 */	li r3, 0x80
/* 80551E70  4B BF AC 3D */	bl daNpcT_chkEvtBit__FUl
/* 80551E74  2C 03 00 00 */	cmpwi r3, 0
/* 80551E78  40 82 00 18 */	bne lbl_80551E90
/* 80551E7C  88 1F 0F D5 */	lbz r0, 0xfd5(r31)
/* 80551E80  28 00 00 00 */	cmplwi r0, 0
/* 80551E84  40 82 00 0C */	bne lbl_80551E90
/* 80551E88  38 60 00 0B */	li r3, 0xb
/* 80551E8C  4B BF AC A1 */	bl daNpcT_offTmpBit__FUl
lbl_80551E90:
/* 80551E90  7F E3 FB 78 */	mr r3, r31
/* 80551E94  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80551E98  38 A0 00 00 */	li r5, 0
/* 80551E9C  4B BF 9D 55 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80551EA0  48 00 00 14 */	b lbl_80551EB4
lbl_80551EA4:
/* 80551EA4  7F E3 FB 78 */	mr r3, r31
/* 80551EA8  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80551EAC  38 A0 00 00 */	li r5, 0
/* 80551EB0  4B BF 9D 41 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80551EB4:
/* 80551EB4  38 00 00 02 */	li r0, 2
/* 80551EB8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80551EBC:
/* 80551EBC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80551EC0  2C 00 00 00 */	cmpwi r0, 0
/* 80551EC4  40 82 01 C4 */	bne lbl_80552088
/* 80551EC8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80551ECC  28 00 00 00 */	cmplwi r0, 0
/* 80551ED0  40 82 00 10 */	bne lbl_80551EE0
/* 80551ED4  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80551ED8  28 00 00 00 */	cmplwi r0, 0
/* 80551EDC  40 82 01 54 */	bne lbl_80552030
lbl_80551EE0:
/* 80551EE0  7F E3 FB 78 */	mr r3, r31
/* 80551EE4  38 80 00 00 */	li r4, 0
/* 80551EE8  38 A0 00 00 */	li r5, 0
/* 80551EEC  38 C0 00 00 */	li r6, 0
/* 80551EF0  38 E0 00 00 */	li r7, 0
/* 80551EF4  4B BF 9D 85 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80551EF8  2C 03 00 00 */	cmpwi r3, 0
/* 80551EFC  41 82 00 B0 */	beq lbl_80551FAC
/* 80551F00  38 7F 09 74 */	addi r3, r31, 0x974
/* 80551F04  38 81 00 08 */	addi r4, r1, 8
/* 80551F08  4B CF 86 21 */	bl getEventId__10dMsgFlow_cFPi
/* 80551F0C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80551F10  38 00 00 00 */	li r0, 0
/* 80551F14  98 1F 0F D5 */	stb r0, 0xfd5(r31)
/* 80551F18  2C 03 00 01 */	cmpwi r3, 1
/* 80551F1C  41 82 00 08 */	beq lbl_80551F24
/* 80551F20  48 00 00 60 */	b lbl_80551F80
lbl_80551F24:
/* 80551F24  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80551F28  3C 03 00 01 */	addis r0, r3, 1
/* 80551F2C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80551F30  40 82 00 28 */	bne lbl_80551F58
/* 80551F34  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80551F38  80 81 00 08 */	lwz r4, 8(r1)
/* 80551F3C  38 A0 00 00 */	li r5, 0
/* 80551F40  38 C0 FF FF */	li r6, -1
/* 80551F44  38 E0 FF FF */	li r7, -1
/* 80551F48  39 00 00 00 */	li r8, 0
/* 80551F4C  39 20 00 00 */	li r9, 0
/* 80551F50  4B AC 9C 99 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80551F54  90 7F 0D 90 */	stw r3, 0xd90(r31)
lbl_80551F58:
/* 80551F58  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80551F5C  4B AC F4 41 */	bl fpcEx_IsExist__FUi
/* 80551F60  2C 03 00 00 */	cmpwi r3, 0
/* 80551F64  41 82 00 48 */	beq lbl_80551FAC
/* 80551F68  38 00 00 01 */	li r0, 1
/* 80551F6C  98 1F 0F D5 */	stb r0, 0xfd5(r31)
/* 80551F70  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80551F74  7F E3 FB 78 */	mr r3, r31
/* 80551F78  4B BF 82 AD */	bl evtChange__8daNpcT_cFv
/* 80551F7C  48 00 00 30 */	b lbl_80551FAC
lbl_80551F80:
/* 80551F80  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80551F84  28 00 00 01 */	cmplwi r0, 1
/* 80551F88  40 82 00 24 */	bne lbl_80551FAC
/* 80551F8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80551F90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80551F94  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80551F98  4B AF 04 D1 */	bl reset__14dEvt_control_cFv
/* 80551F9C  38 00 00 00 */	li r0, 0
/* 80551FA0  98 1F 0F D5 */	stb r0, 0xfd5(r31)
/* 80551FA4  38 00 00 03 */	li r0, 3
/* 80551FA8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80551FAC:
/* 80551FAC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80551FB0  2C 00 00 01 */	cmpwi r0, 1
/* 80551FB4  41 82 00 2C */	beq lbl_80551FE0
/* 80551FB8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80551FBC  4B BF 37 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80551FC0  38 00 00 00 */	li r0, 0
/* 80551FC4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80551FC8  3C 60 80 55 */	lis r3, lit_4243@ha /* 0x8055353C@ha */
/* 80551FCC  C0 03 35 3C */	lfs f0, lit_4243@l(r3)  /* 0x8055353C@l */
/* 80551FD0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80551FD4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80551FD8  38 00 00 01 */	li r0, 1
/* 80551FDC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80551FE0:
/* 80551FE0  38 00 00 00 */	li r0, 0
/* 80551FE4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80551FE8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80551FEC  28 00 00 00 */	cmplwi r0, 0
/* 80551FF0  41 82 00 98 */	beq lbl_80552088
/* 80551FF4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80551FF8  2C 00 00 00 */	cmpwi r0, 0
/* 80551FFC  41 82 00 28 */	beq lbl_80552024
/* 80552000  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80552004  4B BF 36 F9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80552008  38 00 00 00 */	li r0, 0
/* 8055200C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80552010  3C 60 80 55 */	lis r3, lit_4243@ha /* 0x8055353C@ha */
/* 80552014  C0 03 35 3C */	lfs f0, lit_4243@l(r3)  /* 0x8055353C@l */
/* 80552018  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8055201C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80552020  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80552024:
/* 80552024  38 00 00 00 */	li r0, 0
/* 80552028  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8055202C  48 00 00 5C */	b lbl_80552088
lbl_80552030:
/* 80552030  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80552034  2C 00 00 01 */	cmpwi r0, 1
/* 80552038  41 82 00 2C */	beq lbl_80552064
/* 8055203C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80552040  4B BF 36 BD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80552044  38 00 00 00 */	li r0, 0
/* 80552048  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8055204C  3C 60 80 55 */	lis r3, lit_4243@ha /* 0x8055353C@ha */
/* 80552050  C0 03 35 3C */	lfs f0, lit_4243@l(r3)  /* 0x8055353C@l */
/* 80552054  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80552058  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8055205C  38 00 00 01 */	li r0, 1
/* 80552060  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80552064:
/* 80552064  38 00 00 00 */	li r0, 0
/* 80552068  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8055206C  7F E3 FB 78 */	mr r3, r31
/* 80552070  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80552074  38 A0 FF FF */	li r5, -1
/* 80552078  38 C0 FF FF */	li r6, -1
/* 8055207C  38 E0 00 0F */	li r7, 0xf
/* 80552080  39 00 00 00 */	li r8, 0
/* 80552084  4B BF 95 C5 */	bl step__8daNpcT_cFsiiii
lbl_80552088:
/* 80552088  38 60 00 00 */	li r3, 0
/* 8055208C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80552090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80552094  7C 08 03 A6 */	mtlr r0
/* 80552098  38 21 00 20 */	addi r1, r1, 0x20
/* 8055209C  4E 80 00 20 */	blr 
