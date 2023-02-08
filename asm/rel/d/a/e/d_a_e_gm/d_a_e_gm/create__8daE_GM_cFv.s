lbl_806D6CF0:
/* 806D6CF0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806D6CF4  7C 08 02 A6 */	mflr r0
/* 806D6CF8  90 01 00 64 */	stw r0, 0x64(r1)
/* 806D6CFC  39 61 00 60 */	addi r11, r1, 0x60
/* 806D6D00  4B C8 B4 D1 */	bl _savegpr_26
/* 806D6D04  7C 7B 1B 78 */	mr r27, r3
/* 806D6D08  3C 80 80 6D */	lis r4, lit_1109@ha /* 0x806D7E78@ha */
/* 806D6D0C  3B A4 7E 78 */	addi r29, r4, lit_1109@l /* 0x806D7E78@l */
/* 806D6D10  3C 80 80 6D */	lis r4, cNullVec__6Z2Calc@ha /* 0x806D7AFC@ha */
/* 806D6D14  3B C4 7A FC */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x806D7AFC@l */
/* 806D6D18  3C 80 80 6D */	lis r4, lit_3906@ha /* 0x806D79A0@ha */
/* 806D6D1C  3B E4 79 A0 */	addi r31, r4, lit_3906@l /* 0x806D79A0@l */
/* 806D6D20  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806D6D24  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806D6D28  40 82 00 E8 */	bne lbl_806D6E10
/* 806D6D2C  7F 60 DB 79 */	or. r0, r27, r27
/* 806D6D30  41 82 00 D4 */	beq lbl_806D6E04
/* 806D6D34  7C 1C 03 78 */	mr r28, r0
/* 806D6D38  4B 94 1E 2D */	bl __ct__10fopAc_ac_cFv
/* 806D6D3C  38 7C 05 B4 */	addi r3, r28, 0x5b4
/* 806D6D40  4B 99 F1 6D */	bl __ct__12dBgS_AcchCirFv
/* 806D6D44  3B 5C 05 F4 */	addi r26, r28, 0x5f4
/* 806D6D48  7F 43 D3 78 */	mr r3, r26
/* 806D6D4C  4B 99 F3 55 */	bl __ct__9dBgS_AcchFv
/* 806D6D50  3C 60 80 6D */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806D7E40@ha */
/* 806D6D54  38 63 7E 40 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806D7E40@l */
/* 806D6D58  90 7A 00 10 */	stw r3, 0x10(r26)
/* 806D6D5C  38 03 00 0C */	addi r0, r3, 0xc
/* 806D6D60  90 1A 00 14 */	stw r0, 0x14(r26)
/* 806D6D64  38 03 00 18 */	addi r0, r3, 0x18
/* 806D6D68  90 1A 00 24 */	stw r0, 0x24(r26)
/* 806D6D6C  38 7A 00 14 */	addi r3, r26, 0x14
/* 806D6D70  4B 9A 20 F9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 806D6D74  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806D6D78  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806D6D7C  90 1C 07 E4 */	stw r0, 0x7e4(r28)
/* 806D6D80  38 7C 07 E8 */	addi r3, r28, 0x7e8
/* 806D6D84  4B 9A C9 DD */	bl __ct__10dCcD_GSttsFv
/* 806D6D88  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806D6D8C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806D6D90  90 7C 07 E4 */	stw r3, 0x7e4(r28)
/* 806D6D94  38 03 00 20 */	addi r0, r3, 0x20
/* 806D6D98  90 1C 07 E8 */	stw r0, 0x7e8(r28)
/* 806D6D9C  3B 5C 08 08 */	addi r26, r28, 0x808
/* 806D6DA0  7F 43 D3 78 */	mr r3, r26
/* 806D6DA4  4B 9A CC 85 */	bl __ct__12dCcD_GObjInfFv
/* 806D6DA8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806D6DAC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806D6DB0  90 1A 01 20 */	stw r0, 0x120(r26)
/* 806D6DB4  3C 60 80 6D */	lis r3, __vt__8cM3dGAab@ha /* 0x806D7E34@ha */
/* 806D6DB8  38 03 7E 34 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806D7E34@l */
/* 806D6DBC  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 806D6DC0  3C 60 80 6D */	lis r3, __vt__8cM3dGSph@ha /* 0x806D7E28@ha */
/* 806D6DC4  38 03 7E 28 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806D7E28@l */
/* 806D6DC8  90 1A 01 34 */	stw r0, 0x134(r26)
/* 806D6DCC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806D6DD0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806D6DD4  90 7A 01 20 */	stw r3, 0x120(r26)
/* 806D6DD8  38 03 00 58 */	addi r0, r3, 0x58
/* 806D6DDC  90 1A 01 34 */	stw r0, 0x134(r26)
/* 806D6DE0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806D6DE4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806D6DE8  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 806D6DEC  38 03 00 2C */	addi r0, r3, 0x2c
/* 806D6DF0  90 1A 01 20 */	stw r0, 0x120(r26)
/* 806D6DF4  38 03 00 84 */	addi r0, r3, 0x84
/* 806D6DF8  90 1A 01 34 */	stw r0, 0x134(r26)
/* 806D6DFC  38 7C 09 6C */	addi r3, r28, 0x96c
/* 806D6E00  4B BE A1 65 */	bl __ct__15Z2CreatureEnemyFv
lbl_806D6E04:
/* 806D6E04  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 806D6E08  60 00 00 08 */	ori r0, r0, 8
/* 806D6E0C  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_806D6E10:
/* 806D6E10  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 806D6E14  98 1B 0A 6F */	stb r0, 0xa6f(r27)
/* 806D6E18  88 1B 0A 6F */	lbz r0, 0xa6f(r27)
/* 806D6E1C  28 00 00 FF */	cmplwi r0, 0xff
/* 806D6E20  40 82 00 0C */	bne lbl_806D6E2C
/* 806D6E24  38 00 00 00 */	li r0, 0
/* 806D6E28  98 1B 0A 6F */	stb r0, 0xa6f(r27)
lbl_806D6E2C:
/* 806D6E2C  88 1D 00 A5 */	lbz r0, 0xa5(r29)
/* 806D6E30  98 1B 0A 73 */	stb r0, 0xa73(r27)
/* 806D6E34  88 7D 00 A5 */	lbz r3, 0xa5(r29)
/* 806D6E38  38 03 00 01 */	addi r0, r3, 1
/* 806D6E3C  98 1D 00 A5 */	stb r0, 0xa5(r29)
/* 806D6E40  88 1B 0A 6F */	lbz r0, 0xa6f(r27)
/* 806D6E44  28 00 00 02 */	cmplwi r0, 2
/* 806D6E48  40 82 00 7C */	bne lbl_806D6EC4
/* 806D6E4C  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 806D6E50  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806D6E54  98 1B 0A 70 */	stb r0, 0xa70(r27)
/* 806D6E58  88 9B 0A 70 */	lbz r4, 0xa70(r27)
/* 806D6E5C  28 04 00 FF */	cmplwi r4, 0xff
/* 806D6E60  41 82 00 28 */	beq lbl_806D6E88
/* 806D6E64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D6E68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D6E6C  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 806D6E70  7C 05 07 74 */	extsb r5, r0
/* 806D6E74  4B 95 E4 ED */	bl isSwitch__10dSv_info_cCFii
/* 806D6E78  2C 03 00 00 */	cmpwi r3, 0
/* 806D6E7C  41 82 00 0C */	beq lbl_806D6E88
/* 806D6E80  38 60 00 05 */	li r3, 5
/* 806D6E84  48 00 03 58 */	b lbl_806D71DC
lbl_806D6E88:
/* 806D6E88  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 806D6E8C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 806D6E90  28 00 00 FF */	cmplwi r0, 0xff
/* 806D6E94  40 82 00 08 */	bne lbl_806D6E9C
/* 806D6E98  38 00 00 0A */	li r0, 0xa
lbl_806D6E9C:
/* 806D6E9C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806D6EA0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 806D6EA4  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 806D6EA8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806D6EAC  3C 00 43 30 */	lis r0, 0x4330
/* 806D6EB0  90 01 00 38 */	stw r0, 0x38(r1)
/* 806D6EB4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 806D6EB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 806D6EBC  EC 02 00 32 */	fmuls f0, f2, f0
/* 806D6EC0  D0 1B 0A 54 */	stfs f0, 0xa54(r27)
lbl_806D6EC4:
/* 806D6EC4  88 1B 0A 6F */	lbz r0, 0xa6f(r27)
/* 806D6EC8  28 00 00 03 */	cmplwi r0, 3
/* 806D6ECC  40 82 00 1C */	bne lbl_806D6EE8
/* 806D6ED0  38 7B 05 AC */	addi r3, r27, 0x5ac
/* 806D6ED4  3C 80 80 6D */	lis r4, d_a_e_gm__stringBase0@ha /* 0x806D7AF0@ha */
/* 806D6ED8  38 84 7A F0 */	addi r4, r4, d_a_e_gm__stringBase0@l /* 0x806D7AF0@l */
/* 806D6EDC  38 84 00 05 */	addi r4, r4, 5
/* 806D6EE0  4B 95 5F DD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806D6EE4  48 00 00 14 */	b lbl_806D6EF8
lbl_806D6EE8:
/* 806D6EE8  38 7B 05 AC */	addi r3, r27, 0x5ac
/* 806D6EEC  3C 80 80 6D */	lis r4, d_a_e_gm__stringBase0@ha /* 0x806D7AF0@ha */
/* 806D6EF0  38 84 7A F0 */	addi r4, r4, d_a_e_gm__stringBase0@l /* 0x806D7AF0@l */
/* 806D6EF4  4B 95 5F C9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
lbl_806D6EF8:
/* 806D6EF8  7C 7C 1B 78 */	mr r28, r3
/* 806D6EFC  2C 03 00 04 */	cmpwi r3, 4
/* 806D6F00  40 82 02 D8 */	bne lbl_806D71D8
/* 806D6F04  7F 63 DB 78 */	mr r3, r27
/* 806D6F08  3C 80 80 6D */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806D6CD0@ha */
/* 806D6F0C  38 84 6C D0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806D6CD0@l */
/* 806D6F10  88 1B 0A 6F */	lbz r0, 0xa6f(r27)
/* 806D6F14  54 00 08 3C */	slwi r0, r0, 1
/* 806D6F18  38 BF 01 40 */	addi r5, r31, 0x140
/* 806D6F1C  7C A5 02 2E */	lhzx r5, r5, r0
/* 806D6F20  4B 94 35 91 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806D6F24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806D6F28  40 82 00 0C */	bne lbl_806D6F34
/* 806D6F2C  38 60 00 05 */	li r3, 5
/* 806D6F30  48 00 02 AC */	b lbl_806D71DC
lbl_806D6F34:
/* 806D6F34  88 1D 00 3D */	lbz r0, 0x3d(r29)
/* 806D6F38  28 00 00 00 */	cmplwi r0, 0
/* 806D6F3C  40 82 00 1C */	bne lbl_806D6F58
/* 806D6F40  38 00 00 01 */	li r0, 1
/* 806D6F44  98 1D 00 3D */	stb r0, 0x3d(r29)
/* 806D6F48  98 1B 0A 77 */	stb r0, 0xa77(r27)
/* 806D6F4C  38 00 FF FF */	li r0, -1
/* 806D6F50  38 7D 00 4C */	addi r3, r29, 0x4c
/* 806D6F54  98 03 00 04 */	stb r0, 4(r3)
lbl_806D6F58:
/* 806D6F58  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806D6F5C  D0 1B 0A 10 */	stfs f0, 0xa10(r27)
/* 806D6F60  D0 1B 0A 14 */	stfs f0, 0xa14(r27)
/* 806D6F64  D0 1B 0A 18 */	stfs f0, 0xa18(r27)
/* 806D6F68  38 7B 08 08 */	addi r3, r27, 0x808
/* 806D6F6C  38 9E 00 40 */	addi r4, r30, 0x40
/* 806D6F70  4B 9A DA C5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806D6F74  38 1B 07 CC */	addi r0, r27, 0x7cc
/* 806D6F78  90 1B 08 4C */	stw r0, 0x84c(r27)
/* 806D6F7C  38 00 00 00 */	li r0, 0
/* 806D6F80  90 01 00 08 */	stw r0, 8(r1)
/* 806D6F84  38 7B 05 F4 */	addi r3, r27, 0x5f4
/* 806D6F88  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 806D6F8C  38 BB 04 BC */	addi r5, r27, 0x4bc
/* 806D6F90  7F 66 DB 78 */	mr r6, r27
/* 806D6F94  38 E0 00 01 */	li r7, 1
/* 806D6F98  39 1B 05 B4 */	addi r8, r27, 0x5b4
/* 806D6F9C  39 3B 04 F8 */	addi r9, r27, 0x4f8
/* 806D6FA0  39 40 00 00 */	li r10, 0
/* 806D6FA4  4B 99 F2 A5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806D6FA8  80 1B 06 20 */	lwz r0, 0x620(r27)
/* 806D6FAC  60 00 20 00 */	ori r0, r0, 0x2000
/* 806D6FB0  90 1B 06 20 */	stw r0, 0x620(r27)
/* 806D6FB4  38 7B 05 B4 */	addi r3, r27, 0x5b4
/* 806D6FB8  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 806D6FBC  C0 1B 04 F0 */	lfs f0, 0x4f0(r27)
/* 806D6FC0  EC 22 00 32 */	fmuls f1, f2, f0
/* 806D6FC4  C0 1B 04 EC */	lfs f0, 0x4ec(r27)
/* 806D6FC8  EC 42 00 32 */	fmuls f2, f2, f0
/* 806D6FCC  4B 99 EF 8D */	bl SetWall__12dBgS_AcchCirFff
/* 806D6FD0  88 1B 0A 6F */	lbz r0, 0xa6f(r27)
/* 806D6FD4  28 00 00 03 */	cmplwi r0, 3
/* 806D6FD8  40 82 00 30 */	bne lbl_806D7008
/* 806D6FDC  38 7B 07 CC */	addi r3, r27, 0x7cc
/* 806D6FE0  38 80 00 FF */	li r4, 0xff
/* 806D6FE4  38 A0 00 00 */	li r5, 0
/* 806D6FE8  7F 66 DB 78 */	mr r6, r27
/* 806D6FEC  4B 9A C8 75 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806D6FF0  38 7B 09 6C */	addi r3, r27, 0x96c
/* 806D6FF4  3C 80 80 6D */	lis r4, d_a_e_gm__stringBase0@ha /* 0x806D7AF0@ha */
/* 806D6FF8  38 84 7A F0 */	addi r4, r4, d_a_e_gm__stringBase0@l /* 0x806D7AF0@l */
/* 806D6FFC  38 84 00 05 */	addi r4, r4, 5
/* 806D7000  4B BE AB 91 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 806D7004  48 00 00 28 */	b lbl_806D702C
lbl_806D7008:
/* 806D7008  38 7B 07 CC */	addi r3, r27, 0x7cc
/* 806D700C  38 80 00 32 */	li r4, 0x32
/* 806D7010  38 A0 00 00 */	li r5, 0
/* 806D7014  7F 66 DB 78 */	mr r6, r27
/* 806D7018  4B 9A C8 49 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806D701C  38 7B 09 6C */	addi r3, r27, 0x96c
/* 806D7020  3C 80 80 6D */	lis r4, d_a_e_gm__stringBase0@ha /* 0x806D7AF0@ha */
/* 806D7024  38 84 7A F0 */	addi r4, r4, d_a_e_gm__stringBase0@l /* 0x806D7AF0@l */
/* 806D7028  4B BE AB 69 */	bl setEnemyName__15Z2CreatureEnemyFPCc
lbl_806D702C:
/* 806D702C  38 7B 09 6C */	addi r3, r27, 0x96c
/* 806D7030  90 7B 09 48 */	stw r3, 0x948(r27)
/* 806D7034  38 00 00 01 */	li r0, 1
/* 806D7038  B0 1B 05 62 */	sth r0, 0x562(r27)
/* 806D703C  B0 1B 05 60 */	sth r0, 0x560(r27)
/* 806D7040  88 1B 0A 6F */	lbz r0, 0xa6f(r27)
/* 806D7044  38 9F 01 3C */	addi r4, r31, 0x13c
/* 806D7048  7C 04 00 AE */	lbzx r0, r4, r0
/* 806D704C  98 1B 0A 74 */	stb r0, 0xa74(r27)
/* 806D7050  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 806D7054  D0 1B 0A 48 */	stfs f0, 0xa48(r27)
/* 806D7058  38 00 00 00 */	li r0, 0
/* 806D705C  98 1B 0A 76 */	stb r0, 0xa76(r27)
/* 806D7060  38 00 00 04 */	li r0, 4
/* 806D7064  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 806D7068  88 1B 0A 6F */	lbz r0, 0xa6f(r27)
/* 806D706C  28 00 00 02 */	cmplwi r0, 2
/* 806D7070  40 82 00 58 */	bne lbl_806D70C8
/* 806D7074  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 806D7078  38 A0 00 00 */	li r5, 0
/* 806D707C  38 C0 00 02 */	li r6, 2
/* 806D7080  38 E0 00 01 */	li r7, 1
/* 806D7084  4B BE A0 11 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806D7088  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 806D708C  64 00 00 01 */	oris r0, r0, 1
/* 806D7090  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 806D7094  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 806D7098  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 806D709C  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 806D70A0  80 7E 02 94 */	lwz r3, 0x294(r30)
/* 806D70A4  80 1E 02 98 */	lwz r0, 0x298(r30)
/* 806D70A8  90 61 00 28 */	stw r3, 0x28(r1)
/* 806D70AC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806D70B0  80 1E 02 9C */	lwz r0, 0x29c(r30)
/* 806D70B4  90 01 00 30 */	stw r0, 0x30(r1)
/* 806D70B8  7F 63 DB 78 */	mr r3, r27
/* 806D70BC  38 81 00 28 */	addi r4, r1, 0x28
/* 806D70C0  4B FF A2 09 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D70C4  48 00 00 FC */	b lbl_806D71C0
lbl_806D70C8:
/* 806D70C8  28 00 00 03 */	cmplwi r0, 3
/* 806D70CC  40 82 00 80 */	bne lbl_806D714C
/* 806D70D0  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 806D70D4  38 BB 05 38 */	addi r5, r27, 0x538
/* 806D70D8  38 C0 00 03 */	li r6, 3
/* 806D70DC  38 E0 00 01 */	li r7, 1
/* 806D70E0  4B BE 9F B5 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806D70E4  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 806D70E8  3C 03 00 01 */	addis r0, r3, 1
/* 806D70EC  28 00 FF FF */	cmplwi r0, 0xffff
/* 806D70F0  40 82 00 1C */	bne lbl_806D710C
/* 806D70F4  28 1B 00 00 */	cmplwi r27, 0
/* 806D70F8  41 82 00 0C */	beq lbl_806D7104
/* 806D70FC  80 1B 00 04 */	lwz r0, 4(r27)
/* 806D7100  48 00 00 08 */	b lbl_806D7108
lbl_806D7104:
/* 806D7104  38 00 FF FF */	li r0, -1
lbl_806D7108:
/* 806D7108  90 1E 00 3C */	stw r0, 0x3c(r30)
lbl_806D710C:
/* 806D710C  38 00 00 00 */	li r0, 0
/* 806D7110  98 1B 0A 68 */	stb r0, 0xa68(r27)
/* 806D7114  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 806D7118  38 00 00 64 */	li r0, 0x64
/* 806D711C  B0 1B 05 62 */	sth r0, 0x562(r27)
/* 806D7120  B0 1B 05 60 */	sth r0, 0x560(r27)
/* 806D7124  80 7E 02 A0 */	lwz r3, 0x2a0(r30)
/* 806D7128  80 1E 02 A4 */	lwz r0, 0x2a4(r30)
/* 806D712C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 806D7130  90 01 00 20 */	stw r0, 0x20(r1)
/* 806D7134  80 1E 02 A8 */	lwz r0, 0x2a8(r30)
/* 806D7138  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D713C  7F 63 DB 78 */	mr r3, r27
/* 806D7140  38 81 00 1C */	addi r4, r1, 0x1c
/* 806D7144  4B FF A1 85 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D7148  48 00 00 78 */	b lbl_806D71C0
lbl_806D714C:
/* 806D714C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 806D7150  38 A0 00 00 */	li r5, 0
/* 806D7154  38 C0 00 02 */	li r6, 2
/* 806D7158  38 E0 00 01 */	li r7, 1
/* 806D715C  4B BE 9F 39 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806D7160  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 806D7164  64 00 00 01 */	oris r0, r0, 1
/* 806D7168  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 806D716C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806D7170  D0 1B 0A 50 */	stfs f0, 0xa50(r27)
/* 806D7174  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806D7178  4B B9 08 15 */	bl cM_rndFX__Ff
/* 806D717C  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 806D7180  EC 00 08 2A */	fadds f0, f0, f1
/* 806D7184  FC 00 00 1E */	fctiwz f0, f0
/* 806D7188  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806D718C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806D7190  B0 1B 0A 66 */	sth r0, 0xa66(r27)
/* 806D7194  A8 1B 0A 66 */	lha r0, 0xa66(r27)
/* 806D7198  B0 1B 0A 64 */	sth r0, 0xa64(r27)
/* 806D719C  80 7E 02 AC */	lwz r3, 0x2ac(r30)
/* 806D71A0  80 1E 02 B0 */	lwz r0, 0x2b0(r30)
/* 806D71A4  90 61 00 10 */	stw r3, 0x10(r1)
/* 806D71A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D71AC  80 1E 02 B4 */	lwz r0, 0x2b4(r30)
/* 806D71B0  90 01 00 18 */	stw r0, 0x18(r1)
/* 806D71B4  7F 63 DB 78 */	mr r3, r27
/* 806D71B8  38 81 00 10 */	addi r4, r1, 0x10
/* 806D71BC  4B FF A1 0D */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
lbl_806D71C0:
/* 806D71C0  38 00 00 01 */	li r0, 1
/* 806D71C4  98 1B 0A 75 */	stb r0, 0xa75(r27)
/* 806D71C8  38 00 00 2C */	li r0, 0x2c
/* 806D71CC  98 1B 05 64 */	stb r0, 0x564(r27)
/* 806D71D0  7F 63 DB 78 */	mr r3, r27
/* 806D71D4  4B FF F7 85 */	bl daE_GM_Execute__FP8daE_GM_c
lbl_806D71D8:
/* 806D71D8  7F 83 E3 78 */	mr r3, r28
lbl_806D71DC:
/* 806D71DC  39 61 00 60 */	addi r11, r1, 0x60
/* 806D71E0  4B C8 B0 3D */	bl _restgpr_26
/* 806D71E4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806D71E8  7C 08 03 A6 */	mtlr r0
/* 806D71EC  38 21 00 60 */	addi r1, r1, 0x60
/* 806D71F0  4E 80 00 20 */	blr 
