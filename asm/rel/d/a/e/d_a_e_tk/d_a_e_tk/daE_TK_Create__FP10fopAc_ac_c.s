lbl_807B9DB8:
/* 807B9DB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807B9DBC  7C 08 02 A6 */	mflr r0
/* 807B9DC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 807B9DC4  39 61 00 20 */	addi r11, r1, 0x20
/* 807B9DC8  4B BA 84 11 */	bl _savegpr_28
/* 807B9DCC  7C 7E 1B 78 */	mr r30, r3
/* 807B9DD0  3C 80 80 7C */	lis r4, lit_3762@ha /* 0x807BA26C@ha */
/* 807B9DD4  3B E4 A2 6C */	addi r31, r4, lit_3762@l /* 0x807BA26C@l */
/* 807B9DD8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807B9DDC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807B9DE0  40 82 00 E8 */	bne lbl_807B9EC8
/* 807B9DE4  7F C0 F3 79 */	or. r0, r30, r30
/* 807B9DE8  41 82 00 D4 */	beq lbl_807B9EBC
/* 807B9DEC  7C 1D 03 78 */	mr r29, r0
/* 807B9DF0  4B 85 ED 75 */	bl __ct__10fopAc_ac_cFv
/* 807B9DF4  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 807B9DF8  4B B0 71 6D */	bl __ct__15Z2CreatureEnemyFv
/* 807B9DFC  38 7D 06 B0 */	addi r3, r29, 0x6b0
/* 807B9E00  4B 8B C0 AD */	bl __ct__12dBgS_AcchCirFv
/* 807B9E04  3B 9D 06 F0 */	addi r28, r29, 0x6f0
/* 807B9E08  7F 83 E3 78 */	mr r3, r28
/* 807B9E0C  4B 8B C2 95 */	bl __ct__9dBgS_AcchFv
/* 807B9E10  3C 60 80 7C */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x807BA400@ha */
/* 807B9E14  38 63 A4 00 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x807BA400@l */
/* 807B9E18  90 7C 00 10 */	stw r3, 0x10(r28)
/* 807B9E1C  38 03 00 0C */	addi r0, r3, 0xc
/* 807B9E20  90 1C 00 14 */	stw r0, 0x14(r28)
/* 807B9E24  38 03 00 18 */	addi r0, r3, 0x18
/* 807B9E28  90 1C 00 24 */	stw r0, 0x24(r28)
/* 807B9E2C  38 7C 00 14 */	addi r3, r28, 0x14
/* 807B9E30  4B 8B F0 39 */	bl SetObj__16dBgS_PolyPassChkFv
/* 807B9E34  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 807B9E38  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 807B9E3C  90 1D 08 E0 */	stw r0, 0x8e0(r29)
/* 807B9E40  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 807B9E44  4B 8C 99 1D */	bl __ct__10dCcD_GSttsFv
/* 807B9E48  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 807B9E4C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 807B9E50  90 7D 08 E0 */	stw r3, 0x8e0(r29)
/* 807B9E54  38 03 00 20 */	addi r0, r3, 0x20
/* 807B9E58  90 1D 08 E4 */	stw r0, 0x8e4(r29)
/* 807B9E5C  3B 9D 09 04 */	addi r28, r29, 0x904
/* 807B9E60  7F 83 E3 78 */	mr r3, r28
/* 807B9E64  4B 8C 9B C5 */	bl __ct__12dCcD_GObjInfFv
/* 807B9E68  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807B9E6C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807B9E70  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807B9E74  3C 60 80 7C */	lis r3, __vt__8cM3dGAab@ha /* 0x807BA3F4@ha */
/* 807B9E78  38 03 A3 F4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807BA3F4@l */
/* 807B9E7C  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 807B9E80  3C 60 80 7C */	lis r3, __vt__8cM3dGSph@ha /* 0x807BA3E8@ha */
/* 807B9E84  38 03 A3 E8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x807BA3E8@l */
/* 807B9E88  90 1C 01 34 */	stw r0, 0x134(r28)
/* 807B9E8C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807B9E90  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807B9E94  90 7C 01 20 */	stw r3, 0x120(r28)
/* 807B9E98  38 03 00 58 */	addi r0, r3, 0x58
/* 807B9E9C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 807B9EA0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807B9EA4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807B9EA8  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 807B9EAC  38 03 00 2C */	addi r0, r3, 0x2c
/* 807B9EB0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807B9EB4  38 03 00 84 */	addi r0, r3, 0x84
/* 807B9EB8  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_807B9EBC:
/* 807B9EBC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 807B9EC0  60 00 00 08 */	ori r0, r0, 8
/* 807B9EC4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_807B9EC8:
/* 807B9EC8  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 807B9ECC  3C 80 80 7C */	lis r4, d_a_e_tk__stringBase0@ha /* 0x807BA2F0@ha */
/* 807B9ED0  38 84 A2 F0 */	addi r4, r4, d_a_e_tk__stringBase0@l /* 0x807BA2F0@l */
/* 807B9ED4  4B 87 2F E9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807B9ED8  7C 7D 1B 78 */	mr r29, r3
/* 807B9EDC  2C 1D 00 04 */	cmpwi r29, 4
/* 807B9EE0  40 82 01 C8 */	bne lbl_807BA0A8
/* 807B9EE4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807B9EE8  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 807B9EEC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807B9EF0  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 807B9EF4  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 807B9EF8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807B9EFC  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 807B9F00  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 807B9F04  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807B9F08  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 807B9F0C  98 1E 05 B7 */	stb r0, 0x5b7(r30)
/* 807B9F10  7F C3 F3 78 */	mr r3, r30
/* 807B9F14  3C 80 80 7C */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x807B9CC0@ha */
/* 807B9F18  38 84 9C C0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x807B9CC0@l */
/* 807B9F1C  38 A0 1E 20 */	li r5, 0x1e20
/* 807B9F20  4B 86 05 91 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807B9F24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807B9F28  40 82 00 0C */	bne lbl_807B9F34
/* 807B9F2C  38 60 00 05 */	li r3, 5
/* 807B9F30  48 00 01 7C */	b lbl_807BA0AC
lbl_807B9F34:
/* 807B9F34  88 7E 05 B7 */	lbz r3, 0x5b7(r30)
/* 807B9F38  28 03 00 FF */	cmplwi r3, 0xff
/* 807B9F3C  41 82 00 44 */	beq lbl_807B9F80
/* 807B9F40  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807B9F44  7C 04 07 74 */	extsb r4, r0
/* 807B9F48  4B 89 78 A5 */	bl dPath_GetRoomPath__Fii
/* 807B9F4C  90 7E 05 BC */	stw r3, 0x5bc(r30)
/* 807B9F50  80 1E 05 BC */	lwz r0, 0x5bc(r30)
/* 807B9F54  28 00 00 00 */	cmplwi r0, 0
/* 807B9F58  40 82 00 0C */	bne lbl_807B9F64
/* 807B9F5C  38 60 00 05 */	li r3, 5
/* 807B9F60  48 00 01 4C */	b lbl_807BA0AC
lbl_807B9F64:
/* 807B9F64  88 7E 05 B7 */	lbz r3, 0x5b7(r30)
/* 807B9F68  38 03 00 01 */	addi r0, r3, 1
/* 807B9F6C  98 1E 05 B8 */	stb r0, 0x5b8(r30)
/* 807B9F70  38 00 00 01 */	li r0, 1
/* 807B9F74  98 1E 05 C1 */	stb r0, 0x5c1(r30)
/* 807B9F78  38 00 00 05 */	li r0, 5
/* 807B9F7C  B0 1E 06 76 */	sth r0, 0x676(r30)
lbl_807B9F80:
/* 807B9F80  3C 60 80 7C */	lis r3, data_807BA438@ha /* 0x807BA438@ha */
/* 807B9F84  8C 03 A4 38 */	lbzu r0, data_807BA438@l(r3)  /* 0x807BA438@l */
/* 807B9F88  28 00 00 00 */	cmplwi r0, 0
/* 807B9F8C  40 82 00 20 */	bne lbl_807B9FAC
/* 807B9F90  38 00 00 01 */	li r0, 1
/* 807B9F94  98 1E 0A 60 */	stb r0, 0xa60(r30)
/* 807B9F98  98 03 00 00 */	stb r0, 0(r3)
/* 807B9F9C  38 00 FF FF */	li r0, -1
/* 807B9FA0  3C 60 80 7C */	lis r3, l_HIO@ha /* 0x807BA448@ha */
/* 807B9FA4  38 63 A4 48 */	addi r3, r3, l_HIO@l /* 0x807BA448@l */
/* 807B9FA8  98 03 00 04 */	stb r0, 4(r3)
lbl_807B9FAC:
/* 807B9FAC  38 00 00 04 */	li r0, 4
/* 807B9FB0  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807B9FB4  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 807B9FB8  80 63 00 04 */	lwz r3, 4(r3)
/* 807B9FBC  38 03 00 24 */	addi r0, r3, 0x24
/* 807B9FC0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 807B9FC4  7F C3 F3 78 */	mr r3, r30
/* 807B9FC8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 807B9FCC  FC 40 08 90 */	fmr f2, f1
/* 807B9FD0  FC 60 08 90 */	fmr f3, f1
/* 807B9FD4  4B 86 05 55 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807B9FD8  7F C3 F3 78 */	mr r3, r30
/* 807B9FDC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 807B9FE0  FC 40 08 90 */	fmr f2, f1
/* 807B9FE4  FC 60 08 90 */	fmr f3, f1
/* 807B9FE8  4B 86 05 51 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807B9FEC  38 00 00 04 */	li r0, 4
/* 807B9FF0  98 1E 05 46 */	stb r0, 0x546(r30)
/* 807B9FF4  38 00 00 0A */	li r0, 0xa
/* 807B9FF8  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 807B9FFC  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 807BA000  38 7E 08 C8 */	addi r3, r30, 0x8c8
/* 807BA004  38 80 00 64 */	li r4, 0x64
/* 807BA008  38 A0 00 00 */	li r5, 0
/* 807BA00C  7F C6 F3 78 */	mr r6, r30
/* 807BA010  4B 8C 98 51 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807BA014  38 7E 09 04 */	addi r3, r30, 0x904
/* 807BA018  3C 80 80 7C */	lis r4, cc_sph_src@ha /* 0x807BA358@ha */
/* 807BA01C  38 84 A3 58 */	addi r4, r4, cc_sph_src@l /* 0x807BA358@l */
/* 807BA020  4B 8C AA 15 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807BA024  38 1E 08 C8 */	addi r0, r30, 0x8c8
/* 807BA028  90 1E 09 48 */	stw r0, 0x948(r30)
/* 807BA02C  38 00 00 00 */	li r0, 0
/* 807BA030  90 01 00 08 */	stw r0, 8(r1)
/* 807BA034  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 807BA038  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807BA03C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 807BA040  7F C6 F3 78 */	mr r6, r30
/* 807BA044  38 E0 00 01 */	li r7, 1
/* 807BA048  39 1E 06 B0 */	addi r8, r30, 0x6b0
/* 807BA04C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 807BA050  39 40 00 00 */	li r10, 0
/* 807BA054  4B 8B C1 F5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807BA058  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 807BA05C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 807BA060  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 807BA064  4B 8B BE F5 */	bl SetWall__12dBgS_AcchCirFff
/* 807BA068  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 807BA06C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807BA070  38 BE 05 38 */	addi r5, r30, 0x538
/* 807BA074  38 C0 00 03 */	li r6, 3
/* 807BA078  38 E0 00 01 */	li r7, 1
/* 807BA07C  4B B0 70 19 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807BA080  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 807BA084  3C 80 80 7C */	lis r4, d_a_e_tk__stringBase0@ha /* 0x807BA2F0@ha */
/* 807BA088  38 84 A2 F0 */	addi r4, r4, d_a_e_tk__stringBase0@l /* 0x807BA2F0@l */
/* 807BA08C  4B B0 7B 05 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 807BA090  38 1E 05 CC */	addi r0, r30, 0x5cc
/* 807BA094  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 807BA098  38 00 00 14 */	li r0, 0x14
/* 807BA09C  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 807BA0A0  7F C3 F3 78 */	mr r3, r30
/* 807BA0A4  4B FF F4 B1 */	bl daE_TK_Execute__FP10e_tk_class
lbl_807BA0A8:
/* 807BA0A8  7F A3 EB 78 */	mr r3, r29
lbl_807BA0AC:
/* 807BA0AC  39 61 00 20 */	addi r11, r1, 0x20
/* 807BA0B0  4B BA 81 75 */	bl _restgpr_28
/* 807BA0B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807BA0B8  7C 08 03 A6 */	mtlr r0
/* 807BA0BC  38 21 00 20 */	addi r1, r1, 0x20
/* 807BA0C0  4E 80 00 20 */	blr 
