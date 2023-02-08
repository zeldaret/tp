lbl_80BE9DDC:
/* 80BE9DDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BE9DE0  7C 08 02 A6 */	mflr r0
/* 80BE9DE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BE9DE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80BE9DEC  4B 77 83 F1 */	bl _savegpr_29
/* 80BE9DF0  7C 7E 1B 78 */	mr r30, r3
/* 80BE9DF4  3C 60 80 BF */	lis r3, lit_3656@ha /* 0x80BEB4C4@ha */
/* 80BE9DF8  3B E3 B4 C4 */	addi r31, r3, lit_3656@l /* 0x80BEB4C4@l */
/* 80BE9DFC  A0 7E 09 7A */	lhz r3, 0x97a(r30)
/* 80BE9E00  54 60 E7 3E */	rlwinm r0, r3, 0x1c, 0x1c, 0x1f
/* 80BE9E04  28 00 00 01 */	cmplwi r0, 1
/* 80BE9E08  40 82 00 84 */	bne lbl_80BE9E8C
/* 80BE9E0C  54 60 07 3E */	clrlwi r0, r3, 0x1c
/* 80BE9E10  2C 00 00 01 */	cmpwi r0, 1
/* 80BE9E14  41 82 00 30 */	beq lbl_80BE9E44
/* 80BE9E18  40 80 00 10 */	bge lbl_80BE9E28
/* 80BE9E1C  2C 00 00 00 */	cmpwi r0, 0
/* 80BE9E20  40 80 00 14 */	bge lbl_80BE9E34
/* 80BE9E24  48 00 00 3C */	b lbl_80BE9E60
lbl_80BE9E28:
/* 80BE9E28  2C 00 00 03 */	cmpwi r0, 3
/* 80BE9E2C  40 80 00 34 */	bge lbl_80BE9E60
/* 80BE9E30  48 00 00 24 */	b lbl_80BE9E54
lbl_80BE9E34:
/* 80BE9E34  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BE9E38  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80BE9E3C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80BE9E40  48 00 00 20 */	b lbl_80BE9E60
lbl_80BE9E44:
/* 80BE9E44  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BE9E48  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80BE9E4C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80BE9E50  48 00 00 10 */	b lbl_80BE9E60
lbl_80BE9E54:
/* 80BE9E54  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BE9E58  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80BE9E5C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
lbl_80BE9E60:
/* 80BE9E60  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80BE9E64  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80BE9E68  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80BE9E6C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BE9E70  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BE9E74  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80BE9E78  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80BE9E7C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BE9E80  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80BE9E84  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80BE9E88  48 00 00 18 */	b lbl_80BE9EA0
lbl_80BE9E8C:
/* 80BE9E8C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BE9E90  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80BE9E94  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BE9E98  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80BE9E9C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
lbl_80BE9EA0:
/* 80BE9EA0  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80BE9EA4  D0 1E 09 B0 */	stfs f0, 0x9b0(r30)
/* 80BE9EA8  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80BE9EAC  D0 1E 09 B4 */	stfs f0, 0x9b4(r30)
/* 80BE9EB0  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80BE9EB4  D0 1E 09 B8 */	stfs f0, 0x9b8(r30)
/* 80BE9EB8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BE9EBC  D0 1E 09 B4 */	stfs f0, 0x9b4(r30)
/* 80BE9EC0  38 00 00 01 */	li r0, 1
/* 80BE9EC4  98 1E 09 E8 */	stb r0, 0x9e8(r30)
/* 80BE9EC8  7F C3 F3 78 */	mr r3, r30
/* 80BE9ECC  4B FF FE 0D */	bl initBaseMtx__15daObjFPillar2_cFv
/* 80BE9ED0  38 7E 07 94 */	addi r3, r30, 0x794
/* 80BE9ED4  38 80 00 00 */	li r4, 0
/* 80BE9ED8  38 A0 00 FF */	li r5, 0xff
/* 80BE9EDC  7F C6 F3 78 */	mr r6, r30
/* 80BE9EE0  4B 49 99 81 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BE9EE4  38 7E 07 D0 */	addi r3, r30, 0x7d0
/* 80BE9EE8  3C 80 80 BF */	lis r4, l_cps_src@ha /* 0x80BEB564@ha */
/* 80BE9EEC  38 84 B5 64 */	addi r4, r4, l_cps_src@l /* 0x80BEB564@l */
/* 80BE9EF0  4B 49 A8 E1 */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80BE9EF4  38 1E 07 94 */	addi r0, r30, 0x794
/* 80BE9EF8  90 1E 08 14 */	stw r0, 0x814(r30)
/* 80BE9EFC  A0 1E 09 7A */	lhz r0, 0x97a(r30)
/* 80BE9F00  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80BE9F04  28 00 00 01 */	cmplwi r0, 1
/* 80BE9F08  40 82 00 0C */	bne lbl_80BE9F14
/* 80BE9F0C  38 00 00 00 */	li r0, 0
/* 80BE9F10  98 1E 08 47 */	stb r0, 0x847(r30)
lbl_80BE9F14:
/* 80BE9F14  7F C3 F3 78 */	mr r3, r30
/* 80BE9F18  3C 80 80 BF */	lis r4, l_cull_box@ha /* 0x80BEB54C@ha */
/* 80BE9F1C  C4 24 B5 4C */	lfsu f1, l_cull_box@l(r4)  /* 0x80BEB54C@l */
/* 80BE9F20  C0 44 00 04 */	lfs f2, 4(r4)
/* 80BE9F24  C0 64 00 08 */	lfs f3, 8(r4)
/* 80BE9F28  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80BE9F2C  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80BE9F30  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80BE9F34  4B 43 06 15 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BE9F38  38 1E 09 14 */	addi r0, r30, 0x914
/* 80BE9F3C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BE9F40  38 7E 09 BC */	addi r3, r30, 0x9bc
/* 80BE9F44  38 9E 09 DC */	addi r4, r30, 0x9dc
/* 80BE9F48  38 A0 00 01 */	li r5, 1
/* 80BE9F4C  81 9E 09 CC */	lwz r12, 0x9cc(r30)
/* 80BE9F50  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BE9F54  7D 89 03 A6 */	mtctr r12
/* 80BE9F58  4E 80 04 21 */	bctrl 
/* 80BE9F5C  A0 1E 09 7A */	lhz r0, 0x97a(r30)
/* 80BE9F60  54 00 E7 3F */	rlwinm. r0, r0, 0x1c, 0x1c, 0x1f
/* 80BE9F64  40 82 00 AC */	bne lbl_80BEA010
/* 80BE9F68  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BE9F6C  7C 04 07 74 */	extsb r4, r0
/* 80BE9F70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE9F74  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE9F78  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BE9F7C  38 00 00 00 */	li r0, 0
/* 80BE9F80  90 01 00 08 */	stw r0, 8(r1)
/* 80BE9F84  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE9F88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE9F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9F90  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BE9F94  38 80 00 00 */	li r4, 0
/* 80BE9F98  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084DF@ha */
/* 80BE9F9C  38 A5 84 DF */	addi r5, r5, 0x84DF /* 0x000084DF@l */
/* 80BE9FA0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BE9FA4  38 E0 00 00 */	li r7, 0
/* 80BE9FA8  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80BE9FAC  39 20 00 00 */	li r9, 0
/* 80BE9FB0  39 40 00 FF */	li r10, 0xff
/* 80BE9FB4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BE9FB8  4B 46 2A D9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE9FBC  90 7E 09 80 */	stw r3, 0x980(r30)
/* 80BE9FC0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BE9FC4  7C 04 07 74 */	extsb r4, r0
/* 80BE9FC8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BE9FCC  38 00 00 00 */	li r0, 0
/* 80BE9FD0  90 01 00 08 */	stw r0, 8(r1)
/* 80BE9FD4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE9FD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE9FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9FE0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BE9FE4  38 80 00 00 */	li r4, 0
/* 80BE9FE8  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084E0@ha */
/* 80BE9FEC  38 A5 84 E0 */	addi r5, r5, 0x84E0 /* 0x000084E0@l */
/* 80BE9FF0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BE9FF4  38 E0 00 00 */	li r7, 0
/* 80BE9FF8  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80BE9FFC  39 20 00 00 */	li r9, 0
/* 80BEA000  39 40 00 FF */	li r10, 0xff
/* 80BEA004  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BEA008  4B 46 2A 89 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BEA00C  90 7E 09 84 */	stw r3, 0x984(r30)
lbl_80BEA010:
/* 80BEA010  7F C3 F3 78 */	mr r3, r30
/* 80BEA014  48 00 07 F5 */	bl actionOffInit__15daObjFPillar2_cFv
/* 80BEA018  38 60 00 01 */	li r3, 1
/* 80BEA01C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BEA020  4B 77 82 09 */	bl _restgpr_29
/* 80BEA024  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BEA028  7C 08 03 A6 */	mtlr r0
/* 80BEA02C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BEA030  4E 80 00 20 */	blr 
