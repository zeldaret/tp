lbl_80655F10:
/* 80655F10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80655F14  7C 08 02 A6 */	mflr r0
/* 80655F18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80655F1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80655F20  4B D0 C2 BD */	bl _savegpr_29
/* 80655F24  7C 7F 1B 78 */	mr r31, r3
/* 80655F28  3C 60 80 65 */	lis r3, m__16daBullet_Param_c@ha /* 0x80656744@ha */
/* 80655F2C  C0 03 67 44 */	lfs f0, m__16daBullet_Param_c@l(r3)  /* 0x80656744@l */
/* 80655F30  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80655F34  88 1F 09 57 */	lbz r0, 0x957(r31)
/* 80655F38  28 00 00 00 */	cmplwi r0, 0
/* 80655F3C  40 82 00 C4 */	bne lbl_80656000
/* 80655F40  38 7F 09 44 */	addi r3, r31, 0x944
/* 80655F44  4B D0 C0 D5 */	bl __ptmf_test
/* 80655F48  2C 03 00 00 */	cmpwi r3, 0
/* 80655F4C  41 82 00 18 */	beq lbl_80655F64
/* 80655F50  7F E3 FB 78 */	mr r3, r31
/* 80655F54  38 80 00 00 */	li r4, 0
/* 80655F58  39 9F 09 44 */	addi r12, r31, 0x944
/* 80655F5C  4B D0 C1 29 */	bl __ptmf_scall
/* 80655F60  60 00 00 00 */	nop 
lbl_80655F64:
/* 80655F64  7F E3 FB 78 */	mr r3, r31
/* 80655F68  38 9F 07 4C */	addi r4, r31, 0x74c
/* 80655F6C  4B 9C 47 61 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80655F70  38 7F 05 74 */	addi r3, r31, 0x574
/* 80655F74  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80655F78  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80655F7C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80655F80  4B A2 0B 2D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80655F84  80 1F 06 50 */	lwz r0, 0x650(r31)
/* 80655F88  90 1F 09 00 */	stw r0, 0x900(r31)
/* 80655F8C  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 80655F90  90 1F 09 04 */	stw r0, 0x904(r31)
/* 80655F94  80 1F 06 58 */	lwz r0, 0x658(r31)
/* 80655F98  90 1F 09 08 */	stw r0, 0x908(r31)
/* 80655F9C  88 1F 06 5C */	lbz r0, 0x65c(r31)
/* 80655FA0  98 1F 09 0C */	stb r0, 0x90c(r31)
/* 80655FA4  A0 1F 06 64 */	lhz r0, 0x664(r31)
/* 80655FA8  B0 1F 09 14 */	sth r0, 0x914(r31)
/* 80655FAC  A0 1F 06 66 */	lhz r0, 0x666(r31)
/* 80655FB0  B0 1F 09 16 */	sth r0, 0x916(r31)
/* 80655FB4  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80655FB8  90 1F 09 18 */	stw r0, 0x918(r31)
/* 80655FBC  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 80655FC0  90 1F 09 1C */	stw r0, 0x91c(r31)
/* 80655FC4  C0 1F 06 74 */	lfs f0, 0x674(r31)
/* 80655FC8  D0 1F 09 24 */	stfs f0, 0x924(r31)
/* 80655FCC  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80655FD0  D0 1F 09 28 */	stfs f0, 0x928(r31)
/* 80655FD4  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 80655FD8  D0 1F 09 2C */	stfs f0, 0x92c(r31)
/* 80655FDC  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 80655FE0  90 1F 09 30 */	stw r0, 0x930(r31)
/* 80655FE4  C0 1F 06 84 */	lfs f0, 0x684(r31)
/* 80655FE8  D0 1F 09 34 */	stfs f0, 0x934(r31)
/* 80655FEC  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 80655FF0  90 1F 09 38 */	stw r0, 0x938(r31)
/* 80655FF4  C0 1F 06 0C */	lfs f0, 0x60c(r31)
/* 80655FF8  D0 1F 09 40 */	stfs f0, 0x940(r31)
/* 80655FFC  48 00 00 10 */	b lbl_8065600C
lbl_80656000:
/* 80656000  3C 60 80 65 */	lis r3, lit_3824@ha /* 0x8065675C@ha */
/* 80656004  C0 03 67 5C */	lfs f0, lit_3824@l(r3)  /* 0x8065675C@l */
/* 80656008  D0 1F 09 40 */	stfs f0, 0x940(r31)
lbl_8065600C:
/* 8065600C  3C 60 80 65 */	lis r3, lit_3824@ha /* 0x8065675C@ha */
/* 80656010  C0 23 67 5C */	lfs f1, lit_3824@l(r3)  /* 0x8065675C@l */
/* 80656014  C0 1F 09 40 */	lfs f0, 0x940(r31)
/* 80656018  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065601C  41 82 00 34 */	beq lbl_80656050
/* 80656020  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80656024  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80656028  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8065602C  7F C3 F3 78 */	mr r3, r30
/* 80656030  38 9F 09 14 */	addi r4, r31, 0x914
/* 80656034  4B A1 F0 CD */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80656038  7C 7D 1B 78 */	mr r29, r3
/* 8065603C  7F C3 F3 78 */	mr r3, r30
/* 80656040  38 9F 09 14 */	addi r4, r31, 0x914
/* 80656044  4B A1 EB A5 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80656048  98 7F 04 8D */	stb r3, 0x48d(r31)
/* 8065604C  48 00 00 10 */	b lbl_8065605C
lbl_80656050:
/* 80656050  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80656054  8B A3 0D 64 */	lbz r29, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80656058  7F BD 07 74 */	extsb r29, r29
lbl_8065605C:
/* 8065605C  9B BF 04 8C */	stb r29, 0x48c(r31)
/* 80656060  88 1F 04 8C */	lbz r0, 0x48c(r31)
/* 80656064  98 1F 04 E2 */	stb r0, 0x4e2(r31)
/* 80656068  38 00 00 00 */	li r0, 0
/* 8065606C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80656070  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80656074  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80656078  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8065607C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80656080  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80656084  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80656088  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 8065608C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80656090  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80656094  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80656098  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 8065609C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806560A0  88 1F 09 57 */	lbz r0, 0x957(r31)
/* 806560A4  28 00 00 00 */	cmplwi r0, 0
/* 806560A8  40 82 00 30 */	bne lbl_806560D8
/* 806560AC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806560B0  4B 9B 6C B5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 806560B4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 806560B8  4B 9B 6E 8D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806560BC  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 806560C0  4B 9B 6D B1 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 806560C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806560C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806560CC  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 806560D0  38 84 00 24 */	addi r4, r4, 0x24
/* 806560D4  4B CF 03 DD */	bl PSMTXCopy
lbl_806560D8:
/* 806560D8  38 00 00 00 */	li r0, 0
/* 806560DC  98 1F 09 57 */	stb r0, 0x957(r31)
/* 806560E0  38 60 00 01 */	li r3, 1
/* 806560E4  39 61 00 20 */	addi r11, r1, 0x20
/* 806560E8  4B D0 C1 41 */	bl _restgpr_29
/* 806560EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806560F0  7C 08 03 A6 */	mtlr r0
/* 806560F4  38 21 00 20 */	addi r1, r1, 0x20
/* 806560F8  4E 80 00 20 */	blr 
