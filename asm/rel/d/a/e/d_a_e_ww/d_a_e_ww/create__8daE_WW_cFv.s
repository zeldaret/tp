lbl_807EE63C:
/* 807EE63C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807EE640  7C 08 02 A6 */	mflr r0
/* 807EE644  90 01 00 34 */	stw r0, 0x34(r1)
/* 807EE648  39 61 00 30 */	addi r11, r1, 0x30
/* 807EE64C  4B B7 3B 8C */	b _savegpr_28
/* 807EE650  7C 7D 1B 78 */	mr r29, r3
/* 807EE654  3C 80 80 7F */	lis r4, lit_3905@ha
/* 807EE658  3B E4 F7 70 */	addi r31, r4, lit_3905@l
/* 807EE65C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807EE660  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807EE664  40 82 00 C8 */	bne lbl_807EE72C
/* 807EE668  7F A0 EB 79 */	or. r0, r29, r29
/* 807EE66C  41 82 00 B4 */	beq lbl_807EE720
/* 807EE670  7C 1E 03 78 */	mr r30, r0
/* 807EE674  4B 82 A4 F0 */	b __ct__10fopAc_ac_cFv
/* 807EE678  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807EE67C  4B AD 28 E8 */	b __ct__15Z2CreatureEnemyFv
/* 807EE680  38 7E 07 60 */	addi r3, r30, 0x760
/* 807EE684  4B 88 78 28 */	b __ct__12dBgS_AcchCirFv
/* 807EE688  3B 9E 07 A0 */	addi r28, r30, 0x7a0
/* 807EE68C  7F 83 E3 78 */	mr r3, r28
/* 807EE690  4B 88 7A 10 */	b __ct__9dBgS_AcchFv
/* 807EE694  3C 60 80 7F */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 807EE698  38 63 FB 0C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 807EE69C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 807EE6A0  38 03 00 0C */	addi r0, r3, 0xc
/* 807EE6A4  90 1C 00 14 */	stw r0, 0x14(r28)
/* 807EE6A8  38 03 00 18 */	addi r0, r3, 0x18
/* 807EE6AC  90 1C 00 24 */	stw r0, 0x24(r28)
/* 807EE6B0  38 7C 00 14 */	addi r3, r28, 0x14
/* 807EE6B4  4B 88 A7 B4 */	b SetObj__16dBgS_PolyPassChkFv
/* 807EE6B8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 807EE6BC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 807EE6C0  90 1E 09 90 */	stw r0, 0x990(r30)
/* 807EE6C4  38 7E 09 94 */	addi r3, r30, 0x994
/* 807EE6C8  4B 89 50 98 */	b __ct__10dCcD_GSttsFv
/* 807EE6CC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 807EE6D0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 807EE6D4  90 7E 09 90 */	stw r3, 0x990(r30)
/* 807EE6D8  38 03 00 20 */	addi r0, r3, 0x20
/* 807EE6DC  90 1E 09 94 */	stw r0, 0x994(r30)
/* 807EE6E0  38 7E 09 B4 */	addi r3, r30, 0x9b4
/* 807EE6E4  3C 80 80 7F */	lis r4, __ct__8dCcD_SphFv@ha
/* 807EE6E8  38 84 EC 04 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 807EE6EC  3C A0 80 7F */	lis r5, __dt__8dCcD_SphFv@ha
/* 807EE6F0  38 A5 EB 38 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 807EE6F4  38 C0 01 38 */	li r6, 0x138
/* 807EE6F8  38 E0 00 02 */	li r7, 2
/* 807EE6FC  4B B7 36 64 */	b __construct_array
/* 807EE700  38 7E 0C 24 */	addi r3, r30, 0xc24
/* 807EE704  3C 80 80 7F */	lis r4, __ct__8dCcD_SphFv@ha
/* 807EE708  38 84 EC 04 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 807EE70C  3C A0 80 7F */	lis r5, __dt__8dCcD_SphFv@ha
/* 807EE710  38 A5 EB 38 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 807EE714  38 C0 01 38 */	li r6, 0x138
/* 807EE718  38 E0 00 02 */	li r7, 2
/* 807EE71C  4B B7 36 44 */	b __construct_array
lbl_807EE720:
/* 807EE720  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 807EE724  60 00 00 08 */	ori r0, r0, 8
/* 807EE728  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_807EE72C:
/* 807EE72C  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 807EE730  3C 80 80 7F */	lis r4, stringBase0@ha
/* 807EE734  38 84 F8 B8 */	addi r4, r4, stringBase0@l
/* 807EE738  4B 83 E7 84 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807EE73C  7C 7E 1B 78 */	mr r30, r3
/* 807EE740  2C 1E 00 04 */	cmpwi r30, 4
/* 807EE744  40 82 03 D8 */	bne lbl_807EEB1C
/* 807EE748  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807EE74C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 807EE750  98 1D 06 B4 */	stb r0, 0x6b4(r29)
/* 807EE754  88 1D 06 B4 */	lbz r0, 0x6b4(r29)
/* 807EE758  28 00 00 0F */	cmplwi r0, 0xf
/* 807EE75C  40 82 00 0C */	bne lbl_807EE768
/* 807EE760  38 00 00 00 */	li r0, 0
/* 807EE764  98 1D 06 B4 */	stb r0, 0x6b4(r29)
lbl_807EE768:
/* 807EE768  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807EE76C  54 00 E6 3E */	rlwinm r0, r0, 0x1c, 0x18, 0x1f
/* 807EE770  28 00 00 FF */	cmplwi r0, 0xff
/* 807EE774  41 82 00 0C */	beq lbl_807EE780
/* 807EE778  28 00 00 00 */	cmplwi r0, 0
/* 807EE77C  40 82 00 08 */	bne lbl_807EE784
lbl_807EE780:
/* 807EE780  38 00 00 1E */	li r0, 0x1e
lbl_807EE784:
/* 807EE784  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807EE788  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 807EE78C  C8 3F 01 20 */	lfd f1, 0x120(r31)
/* 807EE790  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807EE794  3C 00 43 30 */	lis r0, 0x4330
/* 807EE798  90 01 00 18 */	stw r0, 0x18(r1)
/* 807EE79C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 807EE7A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 807EE7A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 807EE7A8  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 807EE7AC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807EE7B0  54 00 A6 3E */	rlwinm r0, r0, 0x14, 0x18, 0x1f
/* 807EE7B4  98 1D 06 B5 */	stb r0, 0x6b5(r29)
/* 807EE7B8  88 1D 06 B5 */	lbz r0, 0x6b5(r29)
/* 807EE7BC  28 00 00 00 */	cmplwi r0, 0
/* 807EE7C0  40 82 00 0C */	bne lbl_807EE7CC
/* 807EE7C4  38 00 00 05 */	li r0, 5
/* 807EE7C8  98 1D 06 B5 */	stb r0, 0x6b5(r29)
lbl_807EE7CC:
/* 807EE7CC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807EE7D0  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 807EE7D4  98 1D 06 B6 */	stb r0, 0x6b6(r29)
/* 807EE7D8  88 1D 06 B6 */	lbz r0, 0x6b6(r29)
/* 807EE7DC  28 00 00 0F */	cmplwi r0, 0xf
/* 807EE7E0  41 82 00 0C */	beq lbl_807EE7EC
/* 807EE7E4  28 00 00 00 */	cmplwi r0, 0
/* 807EE7E8  40 82 00 0C */	bne lbl_807EE7F4
lbl_807EE7EC:
/* 807EE7EC  38 00 00 03 */	li r0, 3
/* 807EE7F0  98 1D 06 B6 */	stb r0, 0x6b6(r29)
lbl_807EE7F4:
/* 807EE7F4  88 1D 06 B6 */	lbz r0, 0x6b6(r29)
/* 807EE7F8  28 00 00 0A */	cmplwi r0, 0xa
/* 807EE7FC  40 81 00 0C */	ble lbl_807EE808
/* 807EE800  38 00 00 0A */	li r0, 0xa
/* 807EE804  98 1D 06 B6 */	stb r0, 0x6b6(r29)
lbl_807EE808:
/* 807EE808  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807EE80C  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 807EE810  98 1D 07 57 */	stb r0, 0x757(r29)
/* 807EE814  88 1D 07 57 */	lbz r0, 0x757(r29)
/* 807EE818  28 00 00 0F */	cmplwi r0, 0xf
/* 807EE81C  41 82 00 0C */	beq lbl_807EE828
/* 807EE820  28 00 00 00 */	cmplwi r0, 0
/* 807EE824  40 82 00 10 */	bne lbl_807EE834
lbl_807EE828:
/* 807EE828  38 00 00 01 */	li r0, 1
/* 807EE82C  98 1D 07 57 */	stb r0, 0x757(r29)
/* 807EE830  48 00 00 1C */	b lbl_807EE84C
lbl_807EE834:
/* 807EE834  28 00 00 02 */	cmplwi r0, 2
/* 807EE838  40 82 00 0C */	bne lbl_807EE844
/* 807EE83C  38 00 00 01 */	li r0, 1
/* 807EE840  98 1D 07 58 */	stb r0, 0x758(r29)
lbl_807EE844:
/* 807EE844  38 00 00 00 */	li r0, 0
/* 807EE848  98 1D 07 57 */	stb r0, 0x757(r29)
lbl_807EE84C:
/* 807EE84C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 807EE850  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 807EE854  28 00 00 FF */	cmplwi r0, 0xff
/* 807EE858  41 82 00 0C */	beq lbl_807EE864
/* 807EE85C  28 00 00 00 */	cmplwi r0, 0
/* 807EE860  40 82 00 1C */	bne lbl_807EE87C
lbl_807EE864:
/* 807EE864  88 1D 06 B4 */	lbz r0, 0x6b4(r29)
/* 807EE868  28 00 00 00 */	cmplwi r0, 0
/* 807EE86C  40 82 00 0C */	bne lbl_807EE878
/* 807EE870  38 00 00 05 */	li r0, 5
/* 807EE874  48 00 00 08 */	b lbl_807EE87C
lbl_807EE878:
/* 807EE878  38 00 00 0A */	li r0, 0xa
lbl_807EE87C:
/* 807EE87C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807EE880  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 807EE884  C8 3F 01 20 */	lfd f1, 0x120(r31)
/* 807EE888  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807EE88C  3C 00 43 30 */	lis r0, 0x4330
/* 807EE890  90 01 00 18 */	stw r0, 0x18(r1)
/* 807EE894  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 807EE898  EC 00 08 28 */	fsubs f0, f0, f1
/* 807EE89C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807EE8A0  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 807EE8A4  38 00 00 00 */	li r0, 0
/* 807EE8A8  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 807EE8AC  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 807EE8B0  7F A3 EB 78 */	mr r3, r29
/* 807EE8B4  3C 80 80 7F */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 807EE8B8  38 84 E6 1C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 807EE8BC  38 A0 1F 00 */	li r5, 0x1f00
/* 807EE8C0  4B 82 BB F0 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807EE8C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EE8C8  40 82 00 0C */	bne lbl_807EE8D4
/* 807EE8CC  38 60 00 05 */	li r3, 5
/* 807EE8D0  48 00 02 50 */	b lbl_807EEB20
lbl_807EE8D4:
/* 807EE8D4  3C 60 80 7F */	lis r3, struct_807EFBBC+0x1@ha
/* 807EE8D8  8C 03 FB BD */	lbzu r0, struct_807EFBBC+0x1@l(r3)
/* 807EE8DC  28 00 00 00 */	cmplwi r0, 0
/* 807EE8E0  40 82 00 20 */	bne lbl_807EE900
/* 807EE8E4  38 00 00 01 */	li r0, 1
/* 807EE8E8  98 03 00 00 */	stb r0, 0(r3)
/* 807EE8EC  98 1D 0E C4 */	stb r0, 0xec4(r29)
/* 807EE8F0  38 00 FF FF */	li r0, -1
/* 807EE8F4  3C 60 80 7F */	lis r3, l_HIO@ha
/* 807EE8F8  38 63 FB CC */	addi r3, r3, l_HIO@l
/* 807EE8FC  98 03 00 04 */	stb r0, 4(r3)
lbl_807EE900:
/* 807EE900  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807EE904  80 63 00 04 */	lwz r3, 4(r3)
/* 807EE908  38 03 00 24 */	addi r0, r3, 0x24
/* 807EE90C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 807EE910  7F A3 EB 78 */	mr r3, r29
/* 807EE914  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 807EE918  FC 40 08 90 */	fmr f2, f1
/* 807EE91C  FC 60 08 90 */	fmr f3, f1
/* 807EE920  4B 82 BC 08 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807EE924  7F A3 EB 78 */	mr r3, r29
/* 807EE928  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 807EE92C  FC 40 08 90 */	fmr f2, f1
/* 807EE930  FC 60 08 90 */	fmr f3, f1
/* 807EE934  4B 82 BC 04 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807EE938  88 1D 07 57 */	lbz r0, 0x757(r29)
/* 807EE93C  28 00 00 00 */	cmplwi r0, 0
/* 807EE940  41 82 00 18 */	beq lbl_807EE958
/* 807EE944  7F A3 EB 78 */	mr r3, r29
/* 807EE948  38 80 00 00 */	li r4, 0
/* 807EE94C  38 A0 00 00 */	li r5, 0
/* 807EE950  4B FF 92 8D */	bl setActionMode__8daE_WW_cFii
/* 807EE954  48 00 01 B8 */	b lbl_807EEB0C
lbl_807EE958:
/* 807EE958  38 00 00 00 */	li r0, 0
/* 807EE95C  90 01 00 08 */	stw r0, 8(r1)
/* 807EE960  38 7D 07 A0 */	addi r3, r29, 0x7a0
/* 807EE964  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807EE968  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 807EE96C  7F A6 EB 78 */	mr r6, r29
/* 807EE970  38 E0 00 01 */	li r7, 1
/* 807EE974  39 1D 07 60 */	addi r8, r29, 0x760
/* 807EE978  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 807EE97C  39 40 00 00 */	li r10, 0
/* 807EE980  4B 88 78 C8 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807EE984  38 7D 07 60 */	addi r3, r29, 0x760
/* 807EE988  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 807EE98C  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 807EE990  4B 88 75 C8 */	b SetWall__12dBgS_AcchCirFff
/* 807EE994  80 1D 07 CC */	lwz r0, 0x7cc(r29)
/* 807EE998  60 00 20 00 */	ori r0, r0, 0x2000
/* 807EE99C  90 1D 07 CC */	stw r0, 0x7cc(r29)
/* 807EE9A0  88 1D 06 B4 */	lbz r0, 0x6b4(r29)
/* 807EE9A4  28 00 00 01 */	cmplwi r0, 1
/* 807EE9A8  40 82 00 14 */	bne lbl_807EE9BC
/* 807EE9AC  38 00 00 01 */	li r0, 1
/* 807EE9B0  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 807EE9B4  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 807EE9B8  48 00 00 10 */	b lbl_807EE9C8
lbl_807EE9BC:
/* 807EE9BC  38 00 00 64 */	li r0, 0x64
/* 807EE9C0  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 807EE9C4  B0 1D 05 60 */	sth r0, 0x560(r29)
lbl_807EE9C8:
/* 807EE9C8  38 7D 09 78 */	addi r3, r29, 0x978
/* 807EE9CC  38 80 00 FE */	li r4, 0xfe
/* 807EE9D0  38 A0 00 00 */	li r5, 0
/* 807EE9D4  7F A6 EB 78 */	mr r6, r29
/* 807EE9D8  4B 89 4E 88 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807EE9DC  38 00 00 01 */	li r0, 1
/* 807EE9E0  98 1D 07 5D */	stb r0, 0x75d(r29)
/* 807EE9E4  38 00 00 04 */	li r0, 4
/* 807EE9E8  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807EE9EC  38 7D 09 B4 */	addi r3, r29, 0x9b4
/* 807EE9F0  3C 80 80 7F */	lis r4, data_807EF904@ha
/* 807EE9F4  38 84 F9 04 */	addi r4, r4, data_807EF904@l
/* 807EE9F8  4B 89 60 3C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807EE9FC  38 1D 09 78 */	addi r0, r29, 0x978
/* 807EEA00  90 1D 09 F8 */	stw r0, 0x9f8(r29)
/* 807EEA04  38 7D 0A EC */	addi r3, r29, 0xaec
/* 807EEA08  3C 80 80 7F */	lis r4, data_807EF904@ha
/* 807EEA0C  38 84 F9 04 */	addi r4, r4, data_807EF904@l
/* 807EEA10  4B 89 60 24 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807EEA14  38 1D 09 78 */	addi r0, r29, 0x978
/* 807EEA18  90 1D 0B 30 */	stw r0, 0xb30(r29)
/* 807EEA1C  38 7D 0C 24 */	addi r3, r29, 0xc24
/* 807EEA20  3C 80 80 7F */	lis r4, data_807EF944@ha
/* 807EEA24  38 84 F9 44 */	addi r4, r4, data_807EF944@l
/* 807EEA28  4B 89 60 0C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807EEA2C  38 1D 09 78 */	addi r0, r29, 0x978
/* 807EEA30  90 1D 0C 68 */	stw r0, 0xc68(r29)
/* 807EEA34  80 1D 0C C0 */	lwz r0, 0xcc0(r29)
/* 807EEA38  60 00 00 04 */	ori r0, r0, 4
/* 807EEA3C  90 1D 0C C0 */	stw r0, 0xcc0(r29)
/* 807EEA40  38 7D 0D 5C */	addi r3, r29, 0xd5c
/* 807EEA44  3C 80 80 7F */	lis r4, data_807EF944@ha
/* 807EEA48  38 84 F9 44 */	addi r4, r4, data_807EF944@l
/* 807EEA4C  4B 89 5F E8 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807EEA50  38 1D 09 78 */	addi r0, r29, 0x978
/* 807EEA54  90 1D 0D A0 */	stw r0, 0xda0(r29)
/* 807EEA58  80 1D 0D F8 */	lwz r0, 0xdf8(r29)
/* 807EEA5C  60 00 00 04 */	ori r0, r0, 4
/* 807EEA60  90 1D 0D F8 */	stw r0, 0xdf8(r29)
/* 807EEA64  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807EEA68  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807EEA6C  38 BD 05 38 */	addi r5, r29, 0x538
/* 807EEA70  38 C0 00 03 */	li r6, 3
/* 807EEA74  38 E0 00 01 */	li r7, 1
/* 807EEA78  4B AD 26 1C */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807EEA7C  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807EEA80  3C 80 80 7F */	lis r4, stringBase0@ha
/* 807EEA84  38 84 F8 B8 */	addi r4, r4, stringBase0@l
/* 807EEA88  38 84 00 0C */	addi r4, r4, 0xc
/* 807EEA8C  4B AD 31 04 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 807EEA90  38 1D 05 B8 */	addi r0, r29, 0x5b8
/* 807EEA94  90 1D 0E 9C */	stw r0, 0xe9c(r29)
/* 807EEA98  38 00 00 01 */	li r0, 1
/* 807EEA9C  98 1D 0E B2 */	stb r0, 0xeb2(r29)
/* 807EEAA0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807EEAA4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 807EEAA8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807EEAAC  4B A7 8E E0 */	b cM_rndFX__Ff
/* 807EEAB0  D0 3D 06 B0 */	stfs f1, 0x6b0(r29)
/* 807EEAB4  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 807EEAB8  D0 1D 06 68 */	stfs f0, 0x668(r29)
/* 807EEABC  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 807EEAC0  D0 1D 06 6C */	stfs f0, 0x66c(r29)
/* 807EEAC4  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 807EEAC8  D0 1D 06 70 */	stfs f0, 0x670(r29)
/* 807EEACC  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 807EEAD0  38 81 00 10 */	addi r4, r1, 0x10
/* 807EEAD4  4B 82 AE E8 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 807EEAD8  2C 03 00 00 */	cmpwi r3, 0
/* 807EEADC  41 82 00 20 */	beq lbl_807EEAFC
/* 807EEAE0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 807EEAE4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807EEAE8  D0 1D 06 68 */	stfs f0, 0x668(r29)
/* 807EEAEC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807EEAF0  D0 1D 06 6C */	stfs f0, 0x66c(r29)
/* 807EEAF4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807EEAF8  D0 1D 06 70 */	stfs f0, 0x670(r29)
lbl_807EEAFC:
/* 807EEAFC  7F A3 EB 78 */	mr r3, r29
/* 807EEB00  38 80 00 01 */	li r4, 1
/* 807EEB04  38 A0 00 00 */	li r5, 0
/* 807EEB08  4B FF 90 D5 */	bl setActionMode__8daE_WW_cFii
lbl_807EEB0C:
/* 807EEB0C  38 00 00 34 */	li r0, 0x34
/* 807EEB10  98 1D 05 46 */	stb r0, 0x546(r29)
/* 807EEB14  7F A3 EB 78 */	mr r3, r29
/* 807EEB18  4B FF F3 55 */	bl daE_WW_Execute__FP8daE_WW_c
lbl_807EEB1C:
/* 807EEB1C  7F C3 F3 78 */	mr r3, r30
lbl_807EEB20:
/* 807EEB20  39 61 00 30 */	addi r11, r1, 0x30
/* 807EEB24  4B B7 37 00 */	b _restgpr_28
/* 807EEB28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807EEB2C  7C 08 03 A6 */	mtlr r0
/* 807EEB30  38 21 00 30 */	addi r1, r1, 0x30
/* 807EEB34  4E 80 00 20 */	blr 
