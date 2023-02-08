lbl_80673EC0:
/* 80673EC0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80673EC4  7C 08 02 A6 */	mflr r0
/* 80673EC8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80673ECC  39 61 00 50 */	addi r11, r1, 0x50
/* 80673ED0  4B CE E2 F5 */	bl _savegpr_23
/* 80673ED4  7C 7F 1B 78 */	mr r31, r3
/* 80673ED8  3C 80 80 67 */	lis r4, l_staff_name@ha /* 0x80677558@ha */
/* 80673EDC  3B A4 75 58 */	addi r29, r4, l_staff_name@l /* 0x80677558@l */
/* 80673EE0  4B FF FF 99 */	bl getDemoAction__12daMBdoorL1_cFv
/* 80673EE4  7C 7B 1B 78 */	mr r27, r3
/* 80673EE8  80 1F 05 F0 */	lwz r0, 0x5f0(r31)
/* 80673EEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80673EF0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80673EF4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80673EF8  38 81 00 18 */	addi r4, r1, 0x18
/* 80673EFC  4B 9A 58 FD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80673F00  7C 79 1B 78 */	mr r25, r3
/* 80673F04  7F E3 FB 78 */	mr r3, r31
/* 80673F08  4B 9C 62 D5 */	bl getSwbit2__13door_param2_cFP10fopAc_ac_c
/* 80673F0C  7C 7A 1B 78 */	mr r26, r3
/* 80673F10  3B 00 00 00 */	li r24, 0
/* 80673F14  7F E3 FB 78 */	mr r3, r31
/* 80673F18  4B FF E9 21 */	bl getNowLevel__FP10fopAc_ac_c
/* 80673F1C  7C 7C 1B 78 */	mr r28, r3
/* 80673F20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80673F24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80673F28  3A E3 0F 38 */	addi r23, r3, 0xf38
/* 80673F2C  3B D7 40 C0 */	addi r30, r23, 0x40c0
/* 80673F30  7F C3 F3 78 */	mr r3, r30
/* 80673F34  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80673F38  4B 9D 3E 15 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80673F3C  2C 03 00 00 */	cmpwi r3, 0
/* 80673F40  41 82 05 74 */	beq lbl_806744B4
/* 80673F44  28 1B 00 19 */	cmplwi r27, 0x19
/* 80673F48  41 81 05 6C */	bgt lbl_806744B4
/* 80673F4C  3C 60 80 67 */	lis r3, lit_4678@ha /* 0x80677B58@ha */
/* 80673F50  38 63 7B 58 */	addi r3, r3, lit_4678@l /* 0x80677B58@l */
/* 80673F54  57 60 10 3A */	slwi r0, r27, 2
/* 80673F58  7C 03 00 2E */	lwzx r0, r3, r0
/* 80673F5C  7C 09 03 A6 */	mtctr r0
/* 80673F60  4E 80 04 20 */	bctr 
lbl_80673F64:
/* 80673F64  7F C3 F3 78 */	mr r3, r30
/* 80673F68  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80673F6C  3C A0 80 67 */	lis r5, d_a_door_mbossL1__stringBase0@ha /* 0x80677660@ha */
/* 80673F70  38 A5 76 60 */	addi r5, r5, d_a_door_mbossL1__stringBase0@l /* 0x80677660@l */
/* 80673F74  38 A5 02 ED */	addi r5, r5, 0x2ed
/* 80673F78  38 C0 00 03 */	li r6, 3
/* 80673F7C  4B 9D 41 71 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80673F80  28 03 00 00 */	cmplwi r3, 0
/* 80673F84  40 82 00 10 */	bne lbl_80673F94
/* 80673F88  38 00 00 01 */	li r0, 1
/* 80673F8C  90 1F 05 EC */	stw r0, 0x5ec(r31)
/* 80673F90  48 00 05 24 */	b lbl_806744B4
lbl_80673F94:
/* 80673F94  80 03 00 00 */	lwz r0, 0(r3)
/* 80673F98  90 1F 05 EC */	stw r0, 0x5ec(r31)
/* 80673F9C  48 00 05 18 */	b lbl_806744B4
lbl_80673FA0:
/* 80673FA0  2C 1C 00 05 */	cmpwi r28, 5
/* 80673FA4  41 82 00 0C */	beq lbl_80673FB0
/* 80673FA8  2C 1C 00 0B */	cmpwi r28, 0xb
/* 80673FAC  40 82 00 28 */	bne lbl_80673FD4
lbl_80673FB0:
/* 80673FB0  7F E3 FB 78 */	mr r3, r31
/* 80673FB4  48 00 1B 29 */	bl setAngleQuickly__12daMBdoorL1_cFv
/* 80673FB8  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80673FBC  28 00 00 01 */	cmplwi r0, 1
/* 80673FC0  40 82 04 F4 */	bne lbl_806744B4
/* 80673FC4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80673FC8  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80673FCC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80673FD0  48 00 04 E4 */	b lbl_806744B4
lbl_80673FD4:
/* 80673FD4  38 00 00 05 */	li r0, 5
/* 80673FD8  98 1F 05 CD */	stb r0, 0x5cd(r31)
/* 80673FDC  48 00 04 D8 */	b lbl_806744B4
lbl_80673FE0:
/* 80673FE0  7F E3 FB 78 */	mr r3, r31
/* 80673FE4  48 00 24 ED */	bl checkFrontKey__12daMBdoorL1_cFv
/* 80673FE8  2C 03 00 00 */	cmpwi r3, 0
/* 80673FEC  41 82 00 10 */	beq lbl_80673FFC
/* 80673FF0  7F E3 FB 78 */	mr r3, r31
/* 80673FF4  4B 9C 61 DD */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80673FF8  48 00 00 08 */	b lbl_80674000
lbl_80673FFC:
/* 80673FFC  38 60 00 FF */	li r3, 0xff
lbl_80674000:
/* 80674000  7C 7A 1B 78 */	mr r26, r3
/* 80674004  54 77 06 3E */	clrlwi r23, r3, 0x18
/* 80674008  28 17 00 FF */	cmplwi r23, 0xff
/* 8067400C  41 82 04 A8 */	beq lbl_806744B4
/* 80674010  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80674014  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80674018  7E E4 BB 78 */	mr r4, r23
/* 8067401C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80674020  7C 05 07 74 */	extsb r5, r0
/* 80674024  4B 9C 13 3D */	bl isSwitch__10dSv_info_cCFii
/* 80674028  2C 03 00 00 */	cmpwi r3, 0
/* 8067402C  40 82 04 88 */	bne lbl_806744B4
/* 80674030  7F E3 FB 78 */	mr r3, r31
/* 80674034  48 00 13 99 */	bl unlockInit__12daMBdoorL1_cFv
/* 80674038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067403C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80674040  7E E4 BB 78 */	mr r4, r23
/* 80674044  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80674048  7C 05 07 74 */	extsb r5, r0
/* 8067404C  4B 9C 11 B5 */	bl onSwitch__10dSv_info_cFii
/* 80674050  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80674054  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80674058  A8 64 5D C8 */	lha r3, 0x5dc8(r4)
/* 8067405C  38 03 FF FF */	addi r0, r3, -1
/* 80674060  B0 04 5D C8 */	sth r0, 0x5dc8(r4)
/* 80674064  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80674068  7C 03 07 74 */	extsb r3, r0
/* 8067406C  4B 9B 90 01 */	bl dComIfGp_getReverb__Fi
/* 80674070  7C 67 1B 78 */	mr r7, r3
/* 80674074  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B6@ha */
/* 80674078  38 03 00 B6 */	addi r0, r3, 0x00B6 /* 0x000800B6@l */
/* 8067407C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80674080  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80674084  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80674088  80 63 00 00 */	lwz r3, 0(r3)
/* 8067408C  38 81 00 14 */	addi r4, r1, 0x14
/* 80674090  38 BF 05 38 */	addi r5, r31, 0x538
/* 80674094  38 C0 00 00 */	li r6, 0
/* 80674098  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 8067409C  FC 40 08 90 */	fmr f2, f1
/* 806740A0  C0 7D 00 48 */	lfs f3, 0x48(r29)
/* 806740A4  FC 80 18 90 */	fmr f4, f3
/* 806740A8  39 00 00 00 */	li r8, 0
/* 806740AC  4B C3 78 D9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806740B0  48 00 04 04 */	b lbl_806744B4
lbl_806740B4:
/* 806740B4  28 19 00 00 */	cmplwi r25, 0
/* 806740B8  41 82 00 0C */	beq lbl_806740C4
/* 806740BC  38 00 00 05 */	li r0, 5
/* 806740C0  98 19 09 3C */	stb r0, 0x93c(r25)
lbl_806740C4:
/* 806740C4  7F E3 FB 78 */	mr r3, r31
/* 806740C8  48 00 0A 2D */	bl openInit__12daMBdoorL1_cFv
/* 806740CC  48 00 03 E8 */	b lbl_806744B4
lbl_806740D0:
/* 806740D0  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 806740D4  28 00 00 01 */	cmplwi r0, 1
/* 806740D8  40 82 00 18 */	bne lbl_806740F0
/* 806740DC  7F E3 FB 78 */	mr r3, r31
/* 806740E0  38 81 00 1C */	addi r4, r1, 0x1c
/* 806740E4  38 A0 00 01 */	li r5, 1
/* 806740E8  48 00 17 AD */	bl calcGoal__12daMBdoorL1_cFP4cXyzi
/* 806740EC  48 00 00 14 */	b lbl_80674100
lbl_806740F0:
/* 806740F0  7F E3 FB 78 */	mr r3, r31
/* 806740F4  38 81 00 1C */	addi r4, r1, 0x1c
/* 806740F8  38 A0 00 00 */	li r5, 0
/* 806740FC  48 00 17 99 */	bl calcGoal__12daMBdoorL1_cFP4cXyzi
lbl_80674100:
/* 80674100  7F C3 F3 78 */	mr r3, r30
/* 80674104  38 81 00 1C */	addi r4, r1, 0x1c
/* 80674108  4B 9D 42 BD */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 8067410C  48 00 03 A8 */	b lbl_806744B4
lbl_80674110:
/* 80674110  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80674114  28 00 00 01 */	cmplwi r0, 1
/* 80674118  40 82 00 18 */	bne lbl_80674130
/* 8067411C  7F E3 FB 78 */	mr r3, r31
/* 80674120  38 81 00 1C */	addi r4, r1, 0x1c
/* 80674124  38 A0 00 02 */	li r5, 2
/* 80674128  48 00 17 6D */	bl calcGoal__12daMBdoorL1_cFP4cXyzi
/* 8067412C  48 00 00 14 */	b lbl_80674140
lbl_80674130:
/* 80674130  7F E3 FB 78 */	mr r3, r31
/* 80674134  38 81 00 1C */	addi r4, r1, 0x1c
/* 80674138  38 A0 00 03 */	li r5, 3
/* 8067413C  48 00 17 59 */	bl calcGoal__12daMBdoorL1_cFP4cXyzi
lbl_80674140:
/* 80674140  7F C3 F3 78 */	mr r3, r30
/* 80674144  38 81 00 1C */	addi r4, r1, 0x1c
/* 80674148  4B 9D 42 7D */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 8067414C  48 00 03 68 */	b lbl_806744B4
lbl_80674150:
/* 80674150  7F E3 FB 78 */	mr r3, r31
/* 80674154  48 00 0F 15 */	bl closeInit__12daMBdoorL1_cFv
/* 80674158  48 00 03 5C */	b lbl_806744B4
lbl_8067415C:
/* 8067415C  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80674160  28 00 00 00 */	cmplwi r0, 0
/* 80674164  40 82 00 10 */	bne lbl_80674174
/* 80674168  7F E3 FB 78 */	mr r3, r31
/* 8067416C  4B 9C 60 65 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80674170  48 00 00 0C */	b lbl_8067417C
lbl_80674174:
/* 80674174  7F E3 FB 78 */	mr r3, r31
/* 80674178  4B 9C 60 65 */	bl getSwbit2__13door_param2_cFP10fopAc_ac_c
lbl_8067417C:
/* 8067417C  7C 7A 1B 78 */	mr r26, r3
/* 80674180  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80674184  28 04 00 FF */	cmplwi r4, 0xff
/* 80674188  41 82 03 2C */	beq lbl_806744B4
/* 8067418C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80674190  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80674194  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80674198  7C 05 07 74 */	extsb r5, r0
/* 8067419C  4B 9C 11 C5 */	bl isSwitch__10dSv_info_cCFii
/* 806741A0  2C 03 00 00 */	cmpwi r3, 0
/* 806741A4  40 82 03 10 */	bne lbl_806744B4
/* 806741A8  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 806741AC  7F E4 FB 78 */	mr r4, r31
/* 806741B0  38 A0 00 01 */	li r5, 1
/* 806741B4  4B FF E7 BD */	bl closeInit__13dDoor_stop2_cFP10fopAc_ac_cUc
/* 806741B8  2C 1C 00 01 */	cmpwi r28, 1
/* 806741BC  41 82 02 F8 */	beq lbl_806744B4
/* 806741C0  38 00 00 01 */	li r0, 1
/* 806741C4  98 1F 06 00 */	stb r0, 0x600(r31)
/* 806741C8  48 00 02 EC */	b lbl_806744B4
lbl_806741CC:
/* 806741CC  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 806741D0  7F E4 FB 78 */	mr r4, r31
/* 806741D4  38 A0 00 01 */	li r5, 1
/* 806741D8  4B FF E9 99 */	bl openInit__13dDoor_stop2_cFP10fopAc_ac_cUc
/* 806741DC  48 00 02 D8 */	b lbl_806744B4
lbl_806741E0:
/* 806741E0  38 00 00 00 */	li r0, 0
/* 806741E4  B0 1F 05 CE */	sth r0, 0x5ce(r31)
/* 806741E8  48 00 02 CC */	b lbl_806744B4
lbl_806741EC:
/* 806741EC  38 00 00 1E */	li r0, 0x1e
/* 806741F0  90 1F 05 EC */	stw r0, 0x5ec(r31)
/* 806741F4  48 00 02 C0 */	b lbl_806744B4
lbl_806741F8:
/* 806741F8  38 00 00 0A */	li r0, 0xa
/* 806741FC  98 1F 05 CD */	stb r0, 0x5cd(r31)
/* 80674200  48 00 02 B4 */	b lbl_806744B4
lbl_80674204:
/* 80674204  7F E3 FB 78 */	mr r3, r31
/* 80674208  38 80 00 00 */	li r4, 0
/* 8067420C  48 00 12 65 */	bl openInitKnob__12daMBdoorL1_cFi
/* 80674210  48 00 02 A4 */	b lbl_806744B4
lbl_80674214:
/* 80674214  7F E3 FB 78 */	mr r3, r31
/* 80674218  38 80 00 01 */	li r4, 1
/* 8067421C  48 00 12 55 */	bl openInitKnob__12daMBdoorL1_cFi
/* 80674220  48 00 02 94 */	b lbl_806744B4
lbl_80674224:
/* 80674224  7F E3 FB 78 */	mr r3, r31
/* 80674228  38 80 00 02 */	li r4, 2
/* 8067422C  48 00 12 45 */	bl openInitKnob__12daMBdoorL1_cFi
/* 80674230  48 00 02 84 */	b lbl_806744B4
lbl_80674234:
/* 80674234  7F E3 FB 78 */	mr r3, r31
/* 80674238  38 80 00 03 */	li r4, 3
/* 8067423C  48 00 12 35 */	bl openInitKnob__12daMBdoorL1_cFi
/* 80674240  48 00 02 74 */	b lbl_806744B4
lbl_80674244:
/* 80674244  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80674248  28 00 00 00 */	cmplwi r0, 0
/* 8067424C  40 82 00 10 */	bne lbl_8067425C
/* 80674250  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80674254  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80674258  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_8067425C:
/* 8067425C  7F E3 FB 78 */	mr r3, r31
/* 80674260  C0 3D 00 78 */	lfs f1, 0x78(r29)
/* 80674264  C0 5D 00 7C */	lfs f2, 0x7c(r29)
/* 80674268  48 00 1C 7D */	bl setStart__12daMBdoorL1_cFff
/* 8067426C  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80674270  4B BF 3F 65 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80674274  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80674278  41 82 00 10 */	beq lbl_80674288
/* 8067427C  7E E3 BB 78 */	mr r3, r23
/* 80674280  80 9F 05 98 */	lwz r4, 0x598(r31)
/* 80674284  4B 9F FF CD */	bl Release__4cBgSFP9dBgW_Base
lbl_80674288:
/* 80674288  2C 1C 00 05 */	cmpwi r28, 5
/* 8067428C  41 82 00 0C */	beq lbl_80674298
/* 80674290  2C 1C 00 0B */	cmpwi r28, 0xb
/* 80674294  40 82 02 20 */	bne lbl_806744B4
lbl_80674298:
/* 80674298  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 8067429C  28 00 00 00 */	cmplwi r0, 0
/* 806742A0  40 82 00 10 */	bne lbl_806742B0
/* 806742A4  7F E3 FB 78 */	mr r3, r31
/* 806742A8  4B 9C 5F 29 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 806742AC  48 00 00 0C */	b lbl_806742B8
lbl_806742B0:
/* 806742B0  7F E3 FB 78 */	mr r3, r31
/* 806742B4  4B 9C 5F 29 */	bl getSwbit2__13door_param2_cFP10fopAc_ac_c
lbl_806742B8:
/* 806742B8  7C 7A 1B 78 */	mr r26, r3
/* 806742BC  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 806742C0  28 04 00 FF */	cmplwi r4, 0xff
/* 806742C4  41 82 00 3C */	beq lbl_80674300
/* 806742C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806742CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806742D0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 806742D4  7C 05 07 74 */	extsb r5, r0
/* 806742D8  4B 9C 10 89 */	bl isSwitch__10dSv_info_cCFii
/* 806742DC  2C 03 00 00 */	cmpwi r3, 0
/* 806742E0  40 82 00 20 */	bne lbl_80674300
/* 806742E4  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 806742E8  7F E4 FB 78 */	mr r4, r31
/* 806742EC  38 A0 00 00 */	li r5, 0
/* 806742F0  4B FF E6 81 */	bl closeInit__13dDoor_stop2_cFP10fopAc_ac_cUc
/* 806742F4  38 00 00 01 */	li r0, 1
/* 806742F8  98 1F 06 00 */	stb r0, 0x600(r31)
/* 806742FC  48 00 01 B8 */	b lbl_806744B4
lbl_80674300:
/* 80674300  38 00 00 00 */	li r0, 0
/* 80674304  98 1F 06 00 */	stb r0, 0x600(r31)
/* 80674308  48 00 01 AC */	b lbl_806744B4
lbl_8067430C:
/* 8067430C  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80674310  28 00 00 00 */	cmplwi r0, 0
/* 80674314  40 82 00 10 */	bne lbl_80674324
/* 80674318  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8067431C  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80674320  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80674324:
/* 80674324  7F E3 FB 78 */	mr r3, r31
/* 80674328  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 8067432C  C0 5D 00 7C */	lfs f2, 0x7c(r29)
/* 80674330  48 00 1B B5 */	bl setStart__12daMBdoorL1_cFff
/* 80674334  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80674338  4B BF 3E 9D */	bl ChkUsed__9cBgW_BgIdCFv
/* 8067433C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80674340  41 82 00 10 */	beq lbl_80674350
/* 80674344  7E E3 BB 78 */	mr r3, r23
/* 80674348  80 9F 05 98 */	lwz r4, 0x598(r31)
/* 8067434C  4B 9F FF 05 */	bl Release__4cBgSFP9dBgW_Base
lbl_80674350:
/* 80674350  2C 1C 00 05 */	cmpwi r28, 5
/* 80674354  41 82 00 0C */	beq lbl_80674360
/* 80674358  2C 1C 00 0B */	cmpwi r28, 0xb
/* 8067435C  40 82 01 58 */	bne lbl_806744B4
lbl_80674360:
/* 80674360  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80674364  28 00 00 00 */	cmplwi r0, 0
/* 80674368  40 82 00 10 */	bne lbl_80674378
/* 8067436C  7F E3 FB 78 */	mr r3, r31
/* 80674370  4B 9C 5E 61 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80674374  48 00 00 0C */	b lbl_80674380
lbl_80674378:
/* 80674378  7F E3 FB 78 */	mr r3, r31
/* 8067437C  4B 9C 5E 61 */	bl getSwbit2__13door_param2_cFP10fopAc_ac_c
lbl_80674380:
/* 80674380  7C 7A 1B 78 */	mr r26, r3
/* 80674384  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80674388  28 04 00 FF */	cmplwi r4, 0xff
/* 8067438C  41 82 00 3C */	beq lbl_806743C8
/* 80674390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80674394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80674398  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8067439C  7C 05 07 74 */	extsb r5, r0
/* 806743A0  4B 9C 0F C1 */	bl isSwitch__10dSv_info_cCFii
/* 806743A4  2C 03 00 00 */	cmpwi r3, 0
/* 806743A8  40 82 00 20 */	bne lbl_806743C8
/* 806743AC  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 806743B0  7F E4 FB 78 */	mr r4, r31
/* 806743B4  38 A0 00 00 */	li r5, 0
/* 806743B8  4B FF E5 B9 */	bl closeInit__13dDoor_stop2_cFP10fopAc_ac_cUc
/* 806743BC  38 00 00 01 */	li r0, 1
/* 806743C0  98 1F 06 00 */	stb r0, 0x600(r31)
/* 806743C4  48 00 00 F0 */	b lbl_806744B4
lbl_806743C8:
/* 806743C8  38 00 00 00 */	li r0, 0
/* 806743CC  98 1F 06 00 */	stb r0, 0x600(r31)
/* 806743D0  48 00 00 E4 */	b lbl_806744B4
lbl_806743D4:
/* 806743D4  7E E3 BB 78 */	mr r3, r23
/* 806743D8  80 9F 05 98 */	lwz r4, 0x598(r31)
/* 806743DC  4B 9F FE 75 */	bl Release__4cBgSFP9dBgW_Base
/* 806743E0  7F E3 FB 78 */	mr r3, r31
/* 806743E4  48 00 19 CD */	bl setPos__12daMBdoorL1_cFv
/* 806743E8  48 00 00 CC */	b lbl_806744B4
lbl_806743EC:
/* 806743EC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806743F0  7C 03 07 74 */	extsb r3, r0
/* 806743F4  4B 9B 8C 79 */	bl dComIfGp_getReverb__Fi
/* 806743F8  7C 67 1B 78 */	mr r7, r3
/* 806743FC  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021B@ha */
/* 80674400  38 03 02 1B */	addi r0, r3, 0x021B /* 0x0008021B@l */
/* 80674404  90 01 00 10 */	stw r0, 0x10(r1)
/* 80674408  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8067440C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80674410  80 63 00 00 */	lwz r3, 0(r3)
/* 80674414  38 81 00 10 */	addi r4, r1, 0x10
/* 80674418  38 BF 05 38 */	addi r5, r31, 0x538
/* 8067441C  38 C0 00 00 */	li r6, 0
/* 80674420  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 80674424  FC 40 08 90 */	fmr f2, f1
/* 80674428  C0 7D 00 48 */	lfs f3, 0x48(r29)
/* 8067442C  FC 80 18 90 */	fmr f4, f3
/* 80674430  39 00 00 00 */	li r8, 0
/* 80674434  4B C3 75 51 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80674438  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 8067443C  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 80674440  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80674444  48 00 00 70 */	b lbl_806744B4
lbl_80674448:
/* 80674448  2C 1C 00 08 */	cmpwi r28, 8
/* 8067444C  40 82 00 68 */	bne lbl_806744B4
/* 80674450  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80674454  7C 03 07 74 */	extsb r3, r0
/* 80674458  4B 9B 8C 15 */	bl dComIfGp_getReverb__Fi
/* 8067445C  7C 67 1B 78 */	mr r7, r3
/* 80674460  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021B@ha */
/* 80674464  38 03 02 1B */	addi r0, r3, 0x021B /* 0x0008021B@l */
/* 80674468  90 01 00 0C */	stw r0, 0xc(r1)
/* 8067446C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80674470  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80674474  80 63 00 00 */	lwz r3, 0(r3)
/* 80674478  38 81 00 0C */	addi r4, r1, 0xc
/* 8067447C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80674480  38 C0 00 00 */	li r6, 0
/* 80674484  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 80674488  FC 40 08 90 */	fmr f2, f1
/* 8067448C  C0 7D 00 48 */	lfs f3, 0x48(r29)
/* 80674490  FC 80 18 90 */	fmr f4, f3
/* 80674494  39 00 00 00 */	li r8, 0
/* 80674498  4B C3 74 ED */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8067449C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 806744A0  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 806744A4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806744A8  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 806744AC  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 806744B0  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_806744B4:
/* 806744B4  28 1B 00 19 */	cmplwi r27, 0x19
/* 806744B8  41 81 06 18 */	bgt lbl_80674AD0
/* 806744BC  3C 60 80 67 */	lis r3, lit_4679@ha /* 0x80677AF0@ha */
/* 806744C0  38 63 7A F0 */	addi r3, r3, lit_4679@l /* 0x80677AF0@l */
/* 806744C4  57 60 10 3A */	slwi r0, r27, 2
/* 806744C8  7C 03 00 2E */	lwzx r0, r3, r0
/* 806744CC  7C 09 03 A6 */	mtctr r0
/* 806744D0  4E 80 04 20 */	bctr 
lbl_806744D4:
/* 806744D4  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 806744D8  48 00 30 35 */	bl func_8067750C
/* 806744DC  2C 03 00 00 */	cmpwi r3, 0
/* 806744E0  40 82 05 FC */	bne lbl_80674ADC
/* 806744E4  7F C3 F3 78 */	mr r3, r30
/* 806744E8  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 806744EC  4B 9D 3C 91 */	bl cutEnd__16dEvent_manager_cFi
/* 806744F0  48 00 05 EC */	b lbl_80674ADC
lbl_806744F4:
/* 806744F4  2C 1C 00 05 */	cmpwi r28, 5
/* 806744F8  41 82 00 0C */	beq lbl_80674504
/* 806744FC  2C 1C 00 0B */	cmpwi r28, 0xb
/* 80674500  40 82 00 14 */	bne lbl_80674514
lbl_80674504:
/* 80674504  7F C3 F3 78 */	mr r3, r30
/* 80674508  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 8067450C  4B 9D 3C 71 */	bl cutEnd__16dEvent_manager_cFi
/* 80674510  48 00 05 CC */	b lbl_80674ADC
lbl_80674514:
/* 80674514  7F E3 FB 78 */	mr r3, r31
/* 80674518  48 00 14 CD */	bl setAngle__12daMBdoorL1_cFv
/* 8067451C  2C 03 00 00 */	cmpwi r3, 0
/* 80674520  41 82 05 BC */	beq lbl_80674ADC
/* 80674524  7F C3 F3 78 */	mr r3, r30
/* 80674528  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 8067452C  4B 9D 3C 51 */	bl cutEnd__16dEvent_manager_cFi
/* 80674530  48 00 05 AC */	b lbl_80674ADC
lbl_80674534:
/* 80674534  7F E3 FB 78 */	mr r3, r31
/* 80674538  48 00 0E DD */	bl unlock__12daMBdoorL1_cFv
/* 8067453C  2C 03 00 00 */	cmpwi r3, 0
/* 80674540  41 82 05 9C */	beq lbl_80674ADC
/* 80674544  7F C3 F3 78 */	mr r3, r30
/* 80674548  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 8067454C  4B 9D 3C 31 */	bl cutEnd__16dEvent_manager_cFi
/* 80674550  48 00 05 8C */	b lbl_80674ADC
lbl_80674554:
/* 80674554  7F E3 FB 78 */	mr r3, r31
/* 80674558  48 00 08 4D */	bl openProc__12daMBdoorL1_cFv
/* 8067455C  2C 03 00 00 */	cmpwi r3, 0
/* 80674560  41 82 05 7C */	beq lbl_80674ADC
/* 80674564  7F E3 FB 78 */	mr r3, r31
/* 80674568  48 00 0A 75 */	bl openEnd__12daMBdoorL1_cFv
/* 8067456C  7F C3 F3 78 */	mr r3, r30
/* 80674570  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674574  4B 9D 3C 09 */	bl cutEnd__16dEvent_manager_cFi
/* 80674578  48 00 05 64 */	b lbl_80674ADC
lbl_8067457C:
/* 8067457C  7F C3 F3 78 */	mr r3, r30
/* 80674580  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674584  4B 9D 3B F9 */	bl cutEnd__16dEvent_manager_cFi
/* 80674588  48 00 05 54 */	b lbl_80674ADC
lbl_8067458C:
/* 8067458C  7F E3 FB 78 */	mr r3, r31
/* 80674590  48 00 0D 2D */	bl closeProc__12daMBdoorL1_cFv
/* 80674594  2C 03 00 00 */	cmpwi r3, 0
/* 80674598  41 82 05 44 */	beq lbl_80674ADC
/* 8067459C  2C 1C 00 08 */	cmpwi r28, 8
/* 806745A0  40 82 00 98 */	bne lbl_80674638
/* 806745A4  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 806745A8  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 806745AC  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 806745B0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806745B4  40 82 00 58 */	bne lbl_8067460C
/* 806745B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806745BC  7C 03 07 74 */	extsb r3, r0
/* 806745C0  4B 9B 8A AD */	bl dComIfGp_getReverb__Fi
/* 806745C4  7C 67 1B 78 */	mr r7, r3
/* 806745C8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021C@ha */
/* 806745CC  38 03 02 1C */	addi r0, r3, 0x021C /* 0x0008021C@l */
/* 806745D0  90 01 00 08 */	stw r0, 8(r1)
/* 806745D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806745D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806745DC  80 63 00 00 */	lwz r3, 0(r3)
/* 806745E0  38 81 00 08 */	addi r4, r1, 8
/* 806745E4  38 BF 05 38 */	addi r5, r31, 0x538
/* 806745E8  38 C0 00 00 */	li r6, 0
/* 806745EC  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 806745F0  FC 40 08 90 */	fmr f2, f1
/* 806745F4  C0 7D 00 48 */	lfs f3, 0x48(r29)
/* 806745F8  FC 80 18 90 */	fmr f4, f3
/* 806745FC  39 00 00 00 */	li r8, 0
/* 80674600  4B C3 73 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80674604  7F E3 FB 78 */	mr r3, r31
/* 80674608  48 00 0C FD */	bl closeEnd__12daMBdoorL1_cFv
lbl_8067460C:
/* 8067460C  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 80674610  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 80674614  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80674618  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 8067461C  4B 99 8E 0D */	bl play__14mDoExt_baseAnmFv
/* 80674620  2C 03 00 00 */	cmpwi r3, 0
/* 80674624  41 82 04 B8 */	beq lbl_80674ADC
/* 80674628  7F C3 F3 78 */	mr r3, r30
/* 8067462C  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674630  4B 9D 3B 4D */	bl cutEnd__16dEvent_manager_cFi
/* 80674634  48 00 04 A8 */	b lbl_80674ADC
lbl_80674638:
/* 80674638  7F E3 FB 78 */	mr r3, r31
/* 8067463C  48 00 0C C9 */	bl closeEnd__12daMBdoorL1_cFv
/* 80674640  2C 1C 00 01 */	cmpwi r28, 1
/* 80674644  40 82 00 34 */	bne lbl_80674678
/* 80674648  28 19 00 00 */	cmplwi r25, 0
/* 8067464C  41 82 00 2C */	beq lbl_80674678
/* 80674650  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80674654  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80674658  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 8067465C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80674660  7C 05 07 74 */	extsb r5, r0
/* 80674664  4B 9C 0C FD */	bl isSwitch__10dSv_info_cCFii
/* 80674668  2C 03 00 00 */	cmpwi r3, 0
/* 8067466C  40 82 00 0C */	bne lbl_80674678
/* 80674670  38 00 00 07 */	li r0, 7
/* 80674674  98 19 09 3C */	stb r0, 0x93c(r25)
lbl_80674678:
/* 80674678  7F C3 F3 78 */	mr r3, r30
/* 8067467C  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674680  4B 9D 3A FD */	bl cutEnd__16dEvent_manager_cFi
/* 80674684  48 00 04 58 */	b lbl_80674ADC
lbl_80674688:
/* 80674688  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 8067468C  28 00 00 00 */	cmplwi r0, 0
/* 80674690  40 82 00 10 */	bne lbl_806746A0
/* 80674694  7F E3 FB 78 */	mr r3, r31
/* 80674698  4B 9C 5B 39 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 8067469C  48 00 00 0C */	b lbl_806746A8
lbl_806746A0:
/* 806746A0  7F E3 FB 78 */	mr r3, r31
/* 806746A4  4B 9C 5B 39 */	bl getSwbit2__13door_param2_cFP10fopAc_ac_c
lbl_806746A8:
/* 806746A8  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 806746AC  28 04 00 FF */	cmplwi r4, 0xff
/* 806746B0  41 82 00 20 */	beq lbl_806746D0
/* 806746B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806746B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806746BC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 806746C0  7C 05 07 74 */	extsb r5, r0
/* 806746C4  4B 9C 0C 9D */	bl isSwitch__10dSv_info_cCFii
/* 806746C8  2C 03 00 00 */	cmpwi r3, 0
/* 806746CC  40 82 00 0C */	bne lbl_806746D8
lbl_806746D0:
/* 806746D0  2C 1C 00 01 */	cmpwi r28, 1
/* 806746D4  40 82 00 14 */	bne lbl_806746E8
lbl_806746D8:
/* 806746D8  7F C3 F3 78 */	mr r3, r30
/* 806746DC  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 806746E0  4B 9D 3A 9D */	bl cutEnd__16dEvent_manager_cFi
/* 806746E4  48 00 03 F8 */	b lbl_80674ADC
lbl_806746E8:
/* 806746E8  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 806746EC  7F E4 FB 78 */	mr r4, r31
/* 806746F0  4B FF E3 F5 */	bl closeProc__13dDoor_stop2_cFP10fopAc_ac_c
/* 806746F4  2C 03 00 02 */	cmpwi r3, 2
/* 806746F8  40 82 00 44 */	bne lbl_8067473C
/* 806746FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80674700  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80674704  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 80674708  38 00 00 03 */	li r0, 3
/* 8067470C  B0 05 06 04 */	sth r0, 0x604(r5)
/* 80674710  38 60 00 00 */	li r3, 0
/* 80674714  90 65 06 0C */	stw r3, 0x60c(r5)
/* 80674718  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8067471C  38 00 00 19 */	li r0, 0x19
/* 80674720  90 04 06 14 */	stw r0, 0x614(r4)
/* 80674724  90 64 06 0C */	stw r3, 0x60c(r4)
/* 80674728  90 64 06 10 */	stw r3, 0x610(r4)
/* 8067472C  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 80674730  7F C3 F3 78 */	mr r3, r30
/* 80674734  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674738  4B 9D 3A 45 */	bl cutEnd__16dEvent_manager_cFi
lbl_8067473C:
/* 8067473C  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80674740  7F E4 FB 78 */	mr r4, r31
/* 80674744  4B FF E1 71 */	bl calcMtx__13dDoor_stop2_cFP10fopAc_ac_c
/* 80674748  48 00 03 94 */	b lbl_80674ADC
lbl_8067474C:
/* 8067474C  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80674750  7F E4 FB 78 */	mr r4, r31
/* 80674754  4B FF E5 85 */	bl openProc__13dDoor_stop2_cFP10fopAc_ac_c
/* 80674758  2C 03 00 02 */	cmpwi r3, 2
/* 8067475C  40 82 00 18 */	bne lbl_80674774
/* 80674760  38 00 00 00 */	li r0, 0
/* 80674764  98 1F 06 00 */	stb r0, 0x600(r31)
/* 80674768  7F C3 F3 78 */	mr r3, r30
/* 8067476C  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674770  4B 9D 3A 0D */	bl cutEnd__16dEvent_manager_cFi
lbl_80674774:
/* 80674774  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80674778  7F E4 FB 78 */	mr r4, r31
/* 8067477C  4B FF E1 39 */	bl calcMtx__13dDoor_stop2_cFP10fopAc_ac_c
/* 80674780  48 00 03 5C */	b lbl_80674ADC
lbl_80674784:
/* 80674784  7F C3 F3 78 */	mr r3, r30
/* 80674788  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 8067478C  4B 9D 39 F1 */	bl cutEnd__16dEvent_manager_cFi
/* 80674790  48 00 03 4C */	b lbl_80674ADC
lbl_80674794:
/* 80674794  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80674798  28 00 00 00 */	cmplwi r0, 0
/* 8067479C  40 82 00 10 */	bne lbl_806747AC
/* 806747A0  7F E3 FB 78 */	mr r3, r31
/* 806747A4  4B 9C 5A 2D */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 806747A8  48 00 00 0C */	b lbl_806747B4
lbl_806747AC:
/* 806747AC  7F E3 FB 78 */	mr r3, r31
/* 806747B0  4B 9C 5A 2D */	bl getSwbit2__13door_param2_cFP10fopAc_ac_c
lbl_806747B4:
/* 806747B4  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 806747B8  28 04 00 FF */	cmplwi r4, 0xff
/* 806747BC  41 82 00 38 */	beq lbl_806747F4
/* 806747C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806747C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806747C8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 806747CC  7C 05 07 74 */	extsb r5, r0
/* 806747D0  4B 9C 0B 91 */	bl isSwitch__10dSv_info_cCFii
/* 806747D4  2C 03 00 00 */	cmpwi r3, 0
/* 806747D8  40 82 00 1C */	bne lbl_806747F4
/* 806747DC  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 806747E0  48 00 2D 2D */	bl func_8067750C
/* 806747E4  2C 03 00 00 */	cmpwi r3, 0
/* 806747E8  40 82 00 10 */	bne lbl_806747F8
/* 806747EC  3B 00 00 01 */	li r24, 1
/* 806747F0  48 00 00 08 */	b lbl_806747F8
lbl_806747F4:
/* 806747F4  3B 00 00 01 */	li r24, 1
lbl_806747F8:
/* 806747F8  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 806747FC  41 82 02 E0 */	beq lbl_80674ADC
/* 80674800  7F E3 FB 78 */	mr r3, r31
/* 80674804  48 00 20 49 */	bl startDemoEnd__12daMBdoorL1_cFv
/* 80674808  7F C3 F3 78 */	mr r3, r30
/* 8067480C  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674810  4B 9D 39 6D */	bl cutEnd__16dEvent_manager_cFi
/* 80674814  48 00 02 C8 */	b lbl_80674ADC
lbl_80674818:
/* 80674818  A8 1F 05 CE */	lha r0, 0x5ce(r31)
/* 8067481C  2C 00 00 00 */	cmpwi r0, 0
/* 80674820  40 82 00 38 */	bne lbl_80674858
/* 80674824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80674828  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067482C  82 E3 5D AC */	lwz r23, 0x5dac(r3)
/* 80674830  7F E3 FB 78 */	mr r3, r31
/* 80674834  4B 9C 59 F1 */	bl getExitNo__13door_param2_cFP10fopAc_ac_c
/* 80674838  7C 64 1B 78 */	mr r4, r3
/* 8067483C  7E E3 BB 78 */	mr r3, r23
/* 80674840  38 A0 00 FF */	li r5, 0xff
/* 80674844  38 C0 00 00 */	li r6, 0
/* 80674848  81 97 06 28 */	lwz r12, 0x628(r23)
/* 8067484C  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 80674850  7D 89 03 A6 */	mtctr r12
/* 80674854  4E 80 04 21 */	bctrl 
lbl_80674858:
/* 80674858  A8 7F 05 CE */	lha r3, 0x5ce(r31)
/* 8067485C  38 03 FF FF */	addi r0, r3, -1
/* 80674860  B0 1F 05 CE */	sth r0, 0x5ce(r31)
/* 80674864  48 00 02 78 */	b lbl_80674ADC
lbl_80674868:
/* 80674868  7F E3 FB 78 */	mr r3, r31
/* 8067486C  48 00 12 C5 */	bl adjustmentProc__12daMBdoorL1_cFv
/* 80674870  2C 03 00 00 */	cmpwi r3, 0
/* 80674874  41 82 02 68 */	beq lbl_80674ADC
/* 80674878  7F C3 F3 78 */	mr r3, r30
/* 8067487C  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674880  4B 9D 38 FD */	bl cutEnd__16dEvent_manager_cFi
/* 80674884  48 00 02 58 */	b lbl_80674ADC
lbl_80674888:
/* 80674888  7F E3 FB 78 */	mr r3, r31
/* 8067488C  7F 64 DB 78 */	mr r4, r27
/* 80674890  48 00 0D E9 */	bl openProcKnob__12daMBdoorL1_cFi
/* 80674894  48 00 02 48 */	b lbl_80674ADC
lbl_80674898:
/* 80674898  2C 1C 00 05 */	cmpwi r28, 5
/* 8067489C  41 82 00 0C */	beq lbl_806748A8
/* 806748A0  2C 1C 00 0B */	cmpwi r28, 0xb
/* 806748A4  40 82 01 9C */	bne lbl_80674A40
lbl_806748A8:
/* 806748A8  88 1F 05 E0 */	lbz r0, 0x5e0(r31)
/* 806748AC  2C 00 00 03 */	cmpwi r0, 3
/* 806748B0  41 82 00 F8 */	beq lbl_806749A8
/* 806748B4  40 80 00 1C */	bge lbl_806748D0
/* 806748B8  2C 00 00 01 */	cmpwi r0, 1
/* 806748BC  41 82 00 C0 */	beq lbl_8067497C
/* 806748C0  40 80 02 1C */	bge lbl_80674ADC
/* 806748C4  2C 00 00 00 */	cmpwi r0, 0
/* 806748C8  40 80 00 20 */	bge lbl_806748E8
/* 806748CC  48 00 02 10 */	b lbl_80674ADC
lbl_806748D0:
/* 806748D0  2C 00 00 64 */	cmpwi r0, 0x64
/* 806748D4  41 82 01 5C */	beq lbl_80674A30
/* 806748D8  40 80 02 04 */	bge lbl_80674ADC
/* 806748DC  2C 00 00 05 */	cmpwi r0, 5
/* 806748E0  40 80 01 FC */	bge lbl_80674ADC
/* 806748E4  48 00 01 2C */	b lbl_80674A10
lbl_806748E8:
/* 806748E8  7F E3 FB 78 */	mr r3, r31
/* 806748EC  7F 64 DB 78 */	mr r4, r27
/* 806748F0  48 00 0D 89 */	bl openProcKnob__12daMBdoorL1_cFi
/* 806748F4  2C 03 00 00 */	cmpwi r3, 0
/* 806748F8  41 82 01 E4 */	beq lbl_80674ADC
/* 806748FC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80674900  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80674904  7F E3 FB 78 */	mr r3, r31
/* 80674908  38 80 00 00 */	li r4, 0
/* 8067490C  48 00 0E 29 */	bl openEndKnob__12daMBdoorL1_cFi
/* 80674910  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80674914  28 00 00 01 */	cmplwi r0, 1
/* 80674918  40 82 00 10 */	bne lbl_80674928
/* 8067491C  7F E3 FB 78 */	mr r3, r31
/* 80674920  4B 9C 58 BD */	bl getSwbit2__13door_param2_cFP10fopAc_ac_c
/* 80674924  48 00 00 0C */	b lbl_80674930
lbl_80674928:
/* 80674928  7F E3 FB 78 */	mr r3, r31
/* 8067492C  4B 9C 58 A5 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
lbl_80674930:
/* 80674930  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80674934  28 04 00 FF */	cmplwi r4, 0xff
/* 80674938  41 82 00 34 */	beq lbl_8067496C
/* 8067493C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80674940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80674944  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80674948  7C 05 07 74 */	extsb r5, r0
/* 8067494C  4B 9C 0A 15 */	bl isSwitch__10dSv_info_cCFii
/* 80674950  2C 03 00 00 */	cmpwi r3, 0
/* 80674954  40 82 00 18 */	bne lbl_8067496C
/* 80674958  38 00 00 0F */	li r0, 0xf
/* 8067495C  90 1F 05 EC */	stw r0, 0x5ec(r31)
/* 80674960  38 00 00 01 */	li r0, 1
/* 80674964  98 1F 05 E0 */	stb r0, 0x5e0(r31)
/* 80674968  48 00 01 74 */	b lbl_80674ADC
lbl_8067496C:
/* 8067496C  7F C3 F3 78 */	mr r3, r30
/* 80674970  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674974  4B 9D 38 09 */	bl cutEnd__16dEvent_manager_cFi
/* 80674978  48 00 01 64 */	b lbl_80674ADC
lbl_8067497C:
/* 8067497C  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80674980  48 00 2B 8D */	bl func_8067750C
/* 80674984  2C 03 00 00 */	cmpwi r3, 0
/* 80674988  40 82 01 54 */	bne lbl_80674ADC
/* 8067498C  38 00 00 03 */	li r0, 3
/* 80674990  98 1F 05 E0 */	stb r0, 0x5e0(r31)
/* 80674994  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80674998  7F E4 FB 78 */	mr r4, r31
/* 8067499C  38 A0 00 01 */	li r5, 1
/* 806749A0  4B FF DF D1 */	bl closeInit__13dDoor_stop2_cFP10fopAc_ac_cUc
/* 806749A4  48 00 01 38 */	b lbl_80674ADC
lbl_806749A8:
/* 806749A8  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 806749AC  7F E4 FB 78 */	mr r4, r31
/* 806749B0  4B FF E1 35 */	bl closeProc__13dDoor_stop2_cFP10fopAc_ac_c
/* 806749B4  2C 03 00 02 */	cmpwi r3, 2
/* 806749B8  40 82 00 48 */	bne lbl_80674A00
/* 806749BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806749C0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806749C4  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 806749C8  38 00 00 03 */	li r0, 3
/* 806749CC  B0 05 06 04 */	sth r0, 0x604(r5)
/* 806749D0  38 60 00 00 */	li r3, 0
/* 806749D4  90 65 06 0C */	stw r3, 0x60c(r5)
/* 806749D8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806749DC  38 00 00 19 */	li r0, 0x19
/* 806749E0  90 04 06 14 */	stw r0, 0x614(r4)
/* 806749E4  90 64 06 0C */	stw r3, 0x60c(r4)
/* 806749E8  90 64 06 10 */	stw r3, 0x610(r4)
/* 806749EC  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 806749F0  38 00 00 0F */	li r0, 0xf
/* 806749F4  90 1F 05 EC */	stw r0, 0x5ec(r31)
/* 806749F8  38 00 00 04 */	li r0, 4
/* 806749FC  98 1F 05 E0 */	stb r0, 0x5e0(r31)
lbl_80674A00:
/* 80674A00  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80674A04  7F E4 FB 78 */	mr r4, r31
/* 80674A08  4B FF DE AD */	bl calcMtx__13dDoor_stop2_cFP10fopAc_ac_c
/* 80674A0C  48 00 00 D0 */	b lbl_80674ADC
lbl_80674A10:
/* 80674A10  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80674A14  48 00 2A F9 */	bl func_8067750C
/* 80674A18  2C 03 00 00 */	cmpwi r3, 0
/* 80674A1C  40 82 00 C0 */	bne lbl_80674ADC
/* 80674A20  7F C3 F3 78 */	mr r3, r30
/* 80674A24  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674A28  4B 9D 37 55 */	bl cutEnd__16dEvent_manager_cFi
/* 80674A2C  48 00 00 B0 */	b lbl_80674ADC
lbl_80674A30:
/* 80674A30  7F C3 F3 78 */	mr r3, r30
/* 80674A34  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674A38  4B 9D 37 45 */	bl cutEnd__16dEvent_manager_cFi
/* 80674A3C  48 00 00 A0 */	b lbl_80674ADC
lbl_80674A40:
/* 80674A40  7F E3 FB 78 */	mr r3, r31
/* 80674A44  7F 64 DB 78 */	mr r4, r27
/* 80674A48  48 00 0C 31 */	bl openProcKnob__12daMBdoorL1_cFi
/* 80674A4C  2C 03 00 00 */	cmpwi r3, 0
/* 80674A50  41 82 00 8C */	beq lbl_80674ADC
/* 80674A54  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80674A58  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80674A5C  7F E3 FB 78 */	mr r3, r31
/* 80674A60  38 80 00 00 */	li r4, 0
/* 80674A64  48 00 0C D1 */	bl openEndKnob__12daMBdoorL1_cFi
/* 80674A68  7F C3 F3 78 */	mr r3, r30
/* 80674A6C  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674A70  4B 9D 37 0D */	bl cutEnd__16dEvent_manager_cFi
/* 80674A74  48 00 00 68 */	b lbl_80674ADC
lbl_80674A78:
/* 80674A78  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 80674A7C  4B 99 89 AD */	bl play__14mDoExt_baseAnmFv
/* 80674A80  2C 03 00 00 */	cmpwi r3, 0
/* 80674A84  41 82 00 58 */	beq lbl_80674ADC
/* 80674A88  7F C3 F3 78 */	mr r3, r30
/* 80674A8C  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674A90  4B 9D 36 ED */	bl cutEnd__16dEvent_manager_cFi
/* 80674A94  48 00 00 48 */	b lbl_80674ADC
lbl_80674A98:
/* 80674A98  2C 1C 00 08 */	cmpwi r28, 8
/* 80674A9C  40 82 00 24 */	bne lbl_80674AC0
/* 80674AA0  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 80674AA4  4B 99 89 85 */	bl play__14mDoExt_baseAnmFv
/* 80674AA8  2C 03 00 00 */	cmpwi r3, 0
/* 80674AAC  41 82 00 30 */	beq lbl_80674ADC
/* 80674AB0  7F C3 F3 78 */	mr r3, r30
/* 80674AB4  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674AB8  4B 9D 36 C5 */	bl cutEnd__16dEvent_manager_cFi
/* 80674ABC  48 00 00 20 */	b lbl_80674ADC
lbl_80674AC0:
/* 80674AC0  7F C3 F3 78 */	mr r3, r30
/* 80674AC4  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674AC8  4B 9D 36 B5 */	bl cutEnd__16dEvent_manager_cFi
/* 80674ACC  48 00 00 10 */	b lbl_80674ADC
lbl_80674AD0:
/* 80674AD0  7F C3 F3 78 */	mr r3, r30
/* 80674AD4  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80674AD8  4B 9D 36 A5 */	bl cutEnd__16dEvent_manager_cFi
lbl_80674ADC:
/* 80674ADC  39 61 00 50 */	addi r11, r1, 0x50
/* 80674AE0  4B CE D7 31 */	bl _restgpr_23
/* 80674AE4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80674AE8  7C 08 03 A6 */	mtlr r0
/* 80674AEC  38 21 00 50 */	addi r1, r1, 0x50
/* 80674AF0  4E 80 00 20 */	blr 
