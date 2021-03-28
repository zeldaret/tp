lbl_80BF6AE0:
/* 80BF6AE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BF6AE4  7C 08 02 A6 */	mflr r0
/* 80BF6AE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BF6AEC  39 61 00 40 */	addi r11, r1, 0x40
/* 80BF6AF0  4B 76 B6 DC */	b _savegpr_25
/* 80BF6AF4  7C 7E 1B 78 */	mr r30, r3
/* 80BF6AF8  3C 80 80 BF */	lis r4, lit_3890@ha
/* 80BF6AFC  3B E4 6D BC */	addi r31, r4, lit_3890@l
/* 80BF6B00  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BF6B04  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BF6B08  40 82 00 40 */	bne lbl_80BF6B48
/* 80BF6B0C  7F C0 F3 79 */	or. r0, r30, r30
/* 80BF6B10  41 82 00 2C */	beq lbl_80BF6B3C
/* 80BF6B14  7C 19 03 78 */	mr r25, r0
/* 80BF6B18  4B 42 20 4C */	b __ct__10fopAc_ac_cFv
/* 80BF6B1C  38 79 05 94 */	addi r3, r25, 0x594
/* 80BF6B20  3C 80 80 BF */	lis r4, __ct__4cXyzFv@ha
/* 80BF6B24  38 84 6D B0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80BF6B28  3C A0 80 BF */	lis r5, __dt__4cXyzFv@ha
/* 80BF6B2C  38 A5 67 8C */	addi r5, r5, __dt__4cXyzFv@l
/* 80BF6B30  38 C0 00 0C */	li r6, 0xc
/* 80BF6B34  38 E0 00 14 */	li r7, 0x14
/* 80BF6B38  4B 76 B2 28 */	b __construct_array
lbl_80BF6B3C:
/* 80BF6B3C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BF6B40  60 00 00 08 */	ori r0, r0, 8
/* 80BF6B44  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BF6B48:
/* 80BF6B48  38 7E 05 68 */	addi r3, r30, 0x568
/* 80BF6B4C  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BF6B50  38 84 6D EC */	addi r4, r4, stringBase0@l
/* 80BF6B54  38 84 00 08 */	addi r4, r4, 8
/* 80BF6B58  4B 43 63 64 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BF6B5C  7C 7D 1B 78 */	mr r29, r3
/* 80BF6B60  2C 1D 00 04 */	cmpwi r29, 4
/* 80BF6B64  40 82 02 30 */	bne lbl_80BF6D94
/* 80BF6B68  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BF6B6C  98 1E 05 7C */	stb r0, 0x57c(r30)
/* 80BF6B70  88 1E 05 7C */	lbz r0, 0x57c(r30)
/* 80BF6B74  28 00 00 FF */	cmplwi r0, 0xff
/* 80BF6B78  40 82 00 0C */	bne lbl_80BF6B84
/* 80BF6B7C  38 00 00 00 */	li r0, 0
/* 80BF6B80  98 1E 05 7C */	stb r0, 0x57c(r30)
lbl_80BF6B84:
/* 80BF6B84  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BF6B88  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BF6B8C  7C 03 03 78 */	mr r3, r0
/* 80BF6B90  28 00 00 FF */	cmplwi r0, 0xff
/* 80BF6B94  40 82 00 1C */	bne lbl_80BF6BB0
/* 80BF6B98  88 1E 05 7C */	lbz r0, 0x57c(r30)
/* 80BF6B9C  28 00 00 00 */	cmplwi r0, 0
/* 80BF6BA0  40 82 00 0C */	bne lbl_80BF6BAC
/* 80BF6BA4  38 60 00 64 */	li r3, 0x64
/* 80BF6BA8  48 00 00 08 */	b lbl_80BF6BB0
lbl_80BF6BAC:
/* 80BF6BAC  38 60 00 0A */	li r3, 0xa
lbl_80BF6BB0:
/* 80BF6BB0  88 1E 05 7C */	lbz r0, 0x57c(r30)
/* 80BF6BB4  28 00 00 00 */	cmplwi r0, 0
/* 80BF6BB8  40 82 00 30 */	bne lbl_80BF6BE8
/* 80BF6BBC  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80BF6BC0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BF6BC4  C8 3F 00 28 */	lfd f1, 0x28(r31)
/* 80BF6BC8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BF6BCC  3C 00 43 30 */	lis r0, 0x4330
/* 80BF6BD0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BF6BD4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BF6BD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BF6BDC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BF6BE0  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80BF6BE4  48 00 00 2C */	b lbl_80BF6C10
lbl_80BF6BE8:
/* 80BF6BE8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80BF6BEC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BF6BF0  C8 3F 00 28 */	lfd f1, 0x28(r31)
/* 80BF6BF4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BF6BF8  3C 00 43 30 */	lis r0, 0x4330
/* 80BF6BFC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BF6C00  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BF6C04  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BF6C08  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BF6C0C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
lbl_80BF6C10:
/* 80BF6C10  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80BF6C14  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80BF6C18  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BF6C1C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80BF6C20  C8 3F 00 28 */	lfd f1, 0x28(r31)
/* 80BF6C24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BF6C28  3C 00 43 30 */	lis r0, 0x4330
/* 80BF6C2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BF6C30  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BF6C34  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BF6C38  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BF6C3C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BF6C40  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80BF6C44  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BF6C48  54 00 46 3E */	srwi r0, r0, 0x18
/* 80BF6C4C  98 1E 05 7D */	stb r0, 0x57d(r30)
/* 80BF6C50  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80BF6C54  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BF6C58  90 1E 05 80 */	stw r0, 0x580(r30)
/* 80BF6C5C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80BF6C60  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BF6C64  90 1E 05 84 */	stw r0, 0x584(r30)
/* 80BF6C68  38 00 00 00 */	li r0, 0
/* 80BF6C6C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80BF6C70  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80BF6C74  7F C3 F3 78 */	mr r3, r30
/* 80BF6C78  3C 80 80 BF */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80BF6C7C  38 84 68 2C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80BF6C80  88 1E 05 7C */	lbz r0, 0x57c(r30)
/* 80BF6C84  28 00 00 00 */	cmplwi r0, 0
/* 80BF6C88  38 A0 13 20 */	li r5, 0x1320
/* 80BF6C8C  40 82 00 08 */	bne lbl_80BF6C94
/* 80BF6C90  38 A0 1C 40 */	li r5, 0x1c40
lbl_80BF6C94:
/* 80BF6C94  4B 42 38 1C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BF6C98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF6C9C  40 82 00 0C */	bne lbl_80BF6CA8
/* 80BF6CA0  38 60 00 05 */	li r3, 5
/* 80BF6CA4  48 00 00 F4 */	b lbl_80BF6D98
lbl_80BF6CA8:
/* 80BF6CA8  80 9E 06 B8 */	lwz r4, 0x6b8(r30)
/* 80BF6CAC  28 04 00 00 */	cmplwi r4, 0
/* 80BF6CB0  41 82 00 28 */	beq lbl_80BF6CD8
/* 80BF6CB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF6CB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF6CBC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BF6CC0  7F C5 F3 78 */	mr r5, r30
/* 80BF6CC4  4B 47 DD 44 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80BF6CC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF6CCC  41 82 00 0C */	beq lbl_80BF6CD8
/* 80BF6CD0  38 60 00 05 */	li r3, 5
/* 80BF6CD4  48 00 00 C4 */	b lbl_80BF6D98
lbl_80BF6CD8:
/* 80BF6CD8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80BF6CDC  4B 67 0C 78 */	b cM_rndF__Ff
/* 80BF6CE0  FC 00 08 1E */	fctiwz f0, f1
/* 80BF6CE4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80BF6CE8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80BF6CEC  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 80BF6CF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF6CF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF6CF8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80BF6CFC  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BF6D00  38 84 6D EC */	addi r4, r4, stringBase0@l
/* 80BF6D04  4B 77 1C 90 */	b strcmp
/* 80BF6D08  2C 03 00 00 */	cmpwi r3, 0
/* 80BF6D0C  41 82 00 0C */	beq lbl_80BF6D18
/* 80BF6D10  38 00 00 01 */	li r0, 1
/* 80BF6D14  B0 1E 05 88 */	sth r0, 0x588(r30)
lbl_80BF6D18:
/* 80BF6D18  3B 40 00 00 */	li r26, 0
/* 80BF6D1C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80BF6D20  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80BF6D24  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BF6D28  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BF6D2C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BF6D30  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BF6D34  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BF6D38  3B 20 00 00 */	li r25, 0
/* 80BF6D3C  3B E0 00 00 */	li r31, 0
/* 80BF6D40  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BF6D44  3B 83 07 68 */	addi r28, r3, calc_mtx@l
lbl_80BF6D48:
/* 80BF6D48  80 7C 00 00 */	lwz r3, 0(r28)
/* 80BF6D4C  7F 44 D3 78 */	mr r4, r26
/* 80BF6D50  4B 41 56 8C */	b mDoMtx_YrotS__FPA4_fs
/* 80BF6D54  38 61 00 08 */	addi r3, r1, 8
/* 80BF6D58  3B 7F 05 94 */	addi r27, r31, 0x594
/* 80BF6D5C  7F 7E DA 14 */	add r27, r30, r27
/* 80BF6D60  7F 64 DB 78 */	mr r4, r27
/* 80BF6D64  4B 67 A1 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BF6D68  7F 63 DB 78 */	mr r3, r27
/* 80BF6D6C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BF6D70  7F 65 DB 78 */	mr r5, r27
/* 80BF6D74  4B 75 03 1C */	b PSVECAdd
/* 80BF6D78  3B 39 00 01 */	addi r25, r25, 1
/* 80BF6D7C  2C 19 00 14 */	cmpwi r25, 0x14
/* 80BF6D80  3B FF 00 0C */	addi r31, r31, 0xc
/* 80BF6D84  3B 5A 0C CC */	addi r26, r26, 0xccc
/* 80BF6D88  41 80 FF C0 */	blt lbl_80BF6D48
/* 80BF6D8C  7F C3 F3 78 */	mr r3, r30
/* 80BF6D90  4B FF F6 69 */	bl daObj_Gb_Execute__FP12obj_gb_class
lbl_80BF6D94:
/* 80BF6D94  7F A3 EB 78 */	mr r3, r29
lbl_80BF6D98:
/* 80BF6D98  39 61 00 40 */	addi r11, r1, 0x40
/* 80BF6D9C  4B 76 B4 7C */	b _restgpr_25
/* 80BF6DA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BF6DA4  7C 08 03 A6 */	mtlr r0
/* 80BF6DA8  38 21 00 40 */	addi r1, r1, 0x40
/* 80BF6DAC  4E 80 00 20 */	blr 
