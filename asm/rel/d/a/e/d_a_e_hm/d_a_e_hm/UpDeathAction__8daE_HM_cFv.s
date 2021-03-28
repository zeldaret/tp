lbl_806E1E78:
/* 806E1E78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E1E7C  7C 08 02 A6 */	mflr r0
/* 806E1E80  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E1E84  39 61 00 40 */	addi r11, r1, 0x40
/* 806E1E88  4B C8 03 54 */	b _savegpr_29
/* 806E1E8C  7C 7E 1B 78 */	mr r30, r3
/* 806E1E90  3C 60 80 6E */	lis r3, lit_3791@ha
/* 806E1E94  3B E3 59 20 */	addi r31, r3, lit_3791@l
/* 806E1E98  A8 1E 05 D6 */	lha r0, 0x5d6(r30)
/* 806E1E9C  2C 00 00 01 */	cmpwi r0, 1
/* 806E1EA0  41 82 01 FC */	beq lbl_806E209C
/* 806E1EA4  40 80 02 40 */	bge lbl_806E20E4
/* 806E1EA8  2C 00 00 00 */	cmpwi r0, 0
/* 806E1EAC  40 80 00 08 */	bge lbl_806E1EB4
/* 806E1EB0  48 00 02 34 */	b lbl_806E20E4
lbl_806E1EB4:
/* 806E1EB4  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 806E1EB8  28 00 00 00 */	cmplwi r0, 0
/* 806E1EBC  40 82 00 44 */	bne lbl_806E1F00
/* 806E1EC0  88 9E 05 AE */	lbz r4, 0x5ae(r30)
/* 806E1EC4  28 04 00 FF */	cmplwi r4, 0xff
/* 806E1EC8  41 82 00 38 */	beq lbl_806E1F00
/* 806E1ECC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E1ED0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E1ED4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806E1ED8  7C 05 07 74 */	extsb r5, r0
/* 806E1EDC  4B 95 34 84 */	b isSwitch__10dSv_info_cCFii
/* 806E1EE0  2C 03 00 00 */	cmpwi r3, 0
/* 806E1EE4  40 82 00 1C */	bne lbl_806E1F00
/* 806E1EE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E1EEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E1EF0  88 9E 05 AE */	lbz r4, 0x5ae(r30)
/* 806E1EF4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806E1EF8  7C 05 07 74 */	extsb r5, r0
/* 806E1EFC  4B 95 33 04 */	b onSwitch__10dSv_info_cFii
lbl_806E1F00:
/* 806E1F00  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 806E1F04  38 80 00 00 */	li r4, 0
/* 806E1F08  38 A0 10 00 */	li r5, 0x1000
/* 806E1F0C  4B B8 EC 84 */	b cLib_chaseAngleS__FPsss
/* 806E1F10  38 7E 05 CE */	addi r3, r30, 0x5ce
/* 806E1F14  38 80 00 00 */	li r4, 0
/* 806E1F18  38 A0 10 00 */	li r5, 0x1000
/* 806E1F1C  4B B8 EC 74 */	b cLib_chaseAngleS__FPsss
/* 806E1F20  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070244@ha */
/* 806E1F24  38 03 02 44 */	addi r0, r3, 0x0244 /* 0x00070244@l */
/* 806E1F28  90 01 00 20 */	stw r0, 0x20(r1)
/* 806E1F2C  38 7E 06 30 */	addi r3, r30, 0x630
/* 806E1F30  38 81 00 20 */	addi r4, r1, 0x20
/* 806E1F34  38 A0 FF FF */	li r5, -1
/* 806E1F38  81 9E 06 30 */	lwz r12, 0x630(r30)
/* 806E1F3C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E1F40  7D 89 03 A6 */	mtctr r12
/* 806E1F44  4E 80 04 21 */	bctrl 
/* 806E1F48  38 00 00 00 */	li r0, 0
/* 806E1F4C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806E1F50  80 1E 09 28 */	lwz r0, 0x928(r30)
/* 806E1F54  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E1F58  90 1E 09 28 */	stw r0, 0x928(r30)
/* 806E1F5C  80 1E 09 40 */	lwz r0, 0x940(r30)
/* 806E1F60  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E1F64  90 1E 09 40 */	stw r0, 0x940(r30)
/* 806E1F68  80 1E 07 40 */	lwz r0, 0x740(r30)
/* 806E1F6C  60 00 04 00 */	ori r0, r0, 0x400
/* 806E1F70  90 1E 07 40 */	stw r0, 0x740(r30)
/* 806E1F74  80 1E 07 40 */	lwz r0, 0x740(r30)
/* 806E1F78  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806E1F7C  41 82 00 10 */	beq lbl_806E1F8C
/* 806E1F80  7F C3 F3 78 */	mr r3, r30
/* 806E1F84  48 00 0D 85 */	bl DeathSpSet__8daE_HM_cFv
/* 806E1F88  48 00 00 0C */	b lbl_806E1F94
lbl_806E1F8C:
/* 806E1F8C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 806E1F90  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_806E1F94:
/* 806E1F94  7F C3 F3 78 */	mr r3, r30
/* 806E1F98  38 80 00 07 */	li r4, 7
/* 806E1F9C  38 A0 00 02 */	li r5, 2
/* 806E1FA0  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 806E1FA4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E1FA8  4B FF EE E5 */	bl SetAnm__8daE_HM_cFiiff
/* 806E1FAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E1FB0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 806E1FB4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806E1FB8  38 80 00 00 */	li r4, 0
/* 806E1FBC  90 81 00 08 */	stw r4, 8(r1)
/* 806E1FC0  38 00 FF FF */	li r0, -1
/* 806E1FC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E1FC8  90 81 00 10 */	stw r4, 0x10(r1)
/* 806E1FCC  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E1FD0  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E1FD4  38 80 00 00 */	li r4, 0
/* 806E1FD8  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084F3@ha */
/* 806E1FDC  38 A5 84 F3 */	addi r5, r5, 0x84F3 /* 0x000084F3@l */
/* 806E1FE0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806E1FE4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806E1FE8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806E1FEC  39 20 00 00 */	li r9, 0
/* 806E1FF0  39 40 00 FF */	li r10, 0xff
/* 806E1FF4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E1FF8  4B 96 AA 98 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E1FFC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806E2000  38 80 00 00 */	li r4, 0
/* 806E2004  90 81 00 08 */	stw r4, 8(r1)
/* 806E2008  38 00 FF FF */	li r0, -1
/* 806E200C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E2010  90 81 00 10 */	stw r4, 0x10(r1)
/* 806E2014  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E2018  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E201C  38 80 00 00 */	li r4, 0
/* 806E2020  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084F4@ha */
/* 806E2024  38 A5 84 F4 */	addi r5, r5, 0x84F4 /* 0x000084F4@l */
/* 806E2028  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806E202C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806E2030  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806E2034  39 20 00 00 */	li r9, 0
/* 806E2038  39 40 00 FF */	li r10, 0xff
/* 806E203C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E2040  4B 96 AA 50 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E2044  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806E2048  38 80 00 00 */	li r4, 0
/* 806E204C  90 81 00 08 */	stw r4, 8(r1)
/* 806E2050  38 00 FF FF */	li r0, -1
/* 806E2054  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E2058  90 81 00 10 */	stw r4, 0x10(r1)
/* 806E205C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E2060  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E2064  38 80 00 00 */	li r4, 0
/* 806E2068  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084F5@ha */
/* 806E206C  38 A5 84 F5 */	addi r5, r5, 0x84F5 /* 0x000084F5@l */
/* 806E2070  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806E2074  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806E2078  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806E207C  39 20 00 00 */	li r9, 0
/* 806E2080  39 40 00 FF */	li r10, 0xff
/* 806E2084  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E2088  4B 96 AA 08 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E208C  A8 7E 05 D6 */	lha r3, 0x5d6(r30)
/* 806E2090  38 03 00 01 */	addi r0, r3, 1
/* 806E2094  B0 1E 05 D6 */	sth r0, 0x5d6(r30)
/* 806E2098  48 00 00 4C */	b lbl_806E20E4
lbl_806E209C:
/* 806E209C  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 806E20A0  38 80 00 00 */	li r4, 0
/* 806E20A4  38 A0 10 00 */	li r5, 0x1000
/* 806E20A8  4B B8 EA E8 */	b cLib_chaseAngleS__FPsss
/* 806E20AC  38 7E 05 CE */	addi r3, r30, 0x5ce
/* 806E20B0  38 80 00 00 */	li r4, 0
/* 806E20B4  38 A0 10 00 */	li r5, 0x1000
/* 806E20B8  4B B8 EA D8 */	b cLib_chaseAngleS__FPsss
/* 806E20BC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806E20C0  38 80 00 00 */	li r4, 0
/* 806E20C4  38 A0 05 00 */	li r5, 0x500
/* 806E20C8  4B B8 EA C8 */	b cLib_chaseAngleS__FPsss
/* 806E20CC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806E20D0  38 80 00 00 */	li r4, 0
/* 806E20D4  38 A0 05 00 */	li r5, 0x500
/* 806E20D8  4B B8 EA B8 */	b cLib_chaseAngleS__FPsss
/* 806E20DC  7F C3 F3 78 */	mr r3, r30
/* 806E20E0  48 00 0C 61 */	bl DeathMotion__8daE_HM_cFv
lbl_806E20E4:
/* 806E20E4  39 61 00 40 */	addi r11, r1, 0x40
/* 806E20E8  4B C8 01 40 */	b _restgpr_29
/* 806E20EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E20F0  7C 08 03 A6 */	mtlr r0
/* 806E20F4  38 21 00 40 */	addi r1, r1, 0x40
/* 806E20F8  4E 80 00 20 */	blr 
