lbl_80BA88C4:
/* 80BA88C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA88C8  7C 08 02 A6 */	mflr r0
/* 80BA88CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA88D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BA88D4  4B 7B 99 04 */	b _savegpr_28
/* 80BA88D8  7C 7D 1B 78 */	mr r29, r3
/* 80BA88DC  3C 80 80 BB */	lis r4, lit_3656@ha
/* 80BA88E0  3B E4 8E 0C */	addi r31, r4, lit_3656@l
/* 80BA88E4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BA88E8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BA88EC  40 82 00 E0 */	bne lbl_80BA89CC
/* 80BA88F0  7F A0 EB 79 */	or. r0, r29, r29
/* 80BA88F4  41 82 00 CC */	beq lbl_80BA89C0
/* 80BA88F8  7C 1E 03 78 */	mr r30, r0
/* 80BA88FC  4B 47 02 68 */	b __ct__10fopAc_ac_cFv
/* 80BA8900  38 7E 05 88 */	addi r3, r30, 0x588
/* 80BA8904  4B 4C D5 A8 */	b __ct__12dBgS_AcchCirFv
/* 80BA8908  3B 9E 05 C8 */	addi r28, r30, 0x5c8
/* 80BA890C  7F 83 E3 78 */	mr r3, r28
/* 80BA8910  4B 4C D7 90 */	b __ct__9dBgS_AcchFv
/* 80BA8914  3C 60 80 BB */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BA8918  38 63 8F 74 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BA891C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80BA8920  38 03 00 0C */	addi r0, r3, 0xc
/* 80BA8924  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80BA8928  38 03 00 18 */	addi r0, r3, 0x18
/* 80BA892C  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80BA8930  38 7C 00 14 */	addi r3, r28, 0x14
/* 80BA8934  4B 4D 05 34 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BA8938  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BA893C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BA8940  90 1E 07 B8 */	stw r0, 0x7b8(r30)
/* 80BA8944  38 7E 07 BC */	addi r3, r30, 0x7bc
/* 80BA8948  4B 4D AE 18 */	b __ct__10dCcD_GSttsFv
/* 80BA894C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BA8950  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BA8954  90 7E 07 B8 */	stw r3, 0x7b8(r30)
/* 80BA8958  38 03 00 20 */	addi r0, r3, 0x20
/* 80BA895C  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 80BA8960  3B 9E 07 DC */	addi r28, r30, 0x7dc
/* 80BA8964  7F 83 E3 78 */	mr r3, r28
/* 80BA8968  4B 4D B0 C0 */	b __ct__12dCcD_GObjInfFv
/* 80BA896C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BA8970  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BA8974  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BA8978  3C 60 80 BB */	lis r3, __vt__8cM3dGAab@ha
/* 80BA897C  38 03 8F 68 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BA8980  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80BA8984  3C 60 80 BB */	lis r3, __vt__8cM3dGSph@ha
/* 80BA8988  38 03 8F 5C */	addi r0, r3, __vt__8cM3dGSph@l
/* 80BA898C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80BA8990  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80BA8994  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80BA8998  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80BA899C  38 03 00 58 */	addi r0, r3, 0x58
/* 80BA89A0  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80BA89A4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80BA89A8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80BA89AC  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80BA89B0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BA89B4  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BA89B8  38 03 00 84 */	addi r0, r3, 0x84
/* 80BA89BC  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_80BA89C0:
/* 80BA89C0  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80BA89C4  60 00 00 08 */	ori r0, r0, 8
/* 80BA89C8  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80BA89CC:
/* 80BA89CC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80BA89D0  98 1D 05 78 */	stb r0, 0x578(r29)
/* 80BA89D4  88 1D 05 78 */	lbz r0, 0x578(r29)
/* 80BA89D8  28 00 00 FF */	cmplwi r0, 0xff
/* 80BA89DC  40 82 00 0C */	bne lbl_80BA89E8
/* 80BA89E0  38 00 00 00 */	li r0, 0
/* 80BA89E4  98 1D 05 78 */	stb r0, 0x578(r29)
lbl_80BA89E8:
/* 80BA89E8  38 7D 05 68 */	addi r3, r29, 0x568
/* 80BA89EC  3C 80 80 BB */	lis r4, stringBase0@ha
/* 80BA89F0  38 84 8E 54 */	addi r4, r4, stringBase0@l
/* 80BA89F4  4B 48 44 C8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BA89F8  7C 7E 1B 78 */	mr r30, r3
/* 80BA89FC  2C 1E 00 04 */	cmpwi r30, 4
/* 80BA8A00  40 82 01 14 */	bne lbl_80BA8B14
/* 80BA8A04  7F A3 EB 78 */	mr r3, r29
/* 80BA8A08  3C 80 80 BB */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80BA8A0C  38 84 88 A4 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80BA8A10  38 A0 0D 60 */	li r5, 0xd60
/* 80BA8A14  4B 47 1A 9C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BA8A18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA8A1C  40 82 00 0C */	bne lbl_80BA8A28
/* 80BA8A20  38 60 00 05 */	li r3, 5
/* 80BA8A24  48 00 00 F4 */	b lbl_80BA8B18
lbl_80BA8A28:
/* 80BA8A28  3C 60 80 BB */	lis r3, data_80BA8FFC@ha
/* 80BA8A2C  8C 03 8F FC */	lbzu r0, data_80BA8FFC@l(r3)
/* 80BA8A30  28 00 00 00 */	cmplwi r0, 0
/* 80BA8A34  40 82 00 20 */	bne lbl_80BA8A54
/* 80BA8A38  38 00 00 01 */	li r0, 1
/* 80BA8A3C  98 1D 09 14 */	stb r0, 0x914(r29)
/* 80BA8A40  98 03 00 00 */	stb r0, 0(r3)
/* 80BA8A44  38 00 FF FF */	li r0, -1
/* 80BA8A48  3C 60 80 BB */	lis r3, l_HIO@ha
/* 80BA8A4C  38 63 90 0C */	addi r3, r3, l_HIO@l
/* 80BA8A50  98 03 00 04 */	stb r0, 4(r3)
lbl_80BA8A54:
/* 80BA8A54  38 00 00 00 */	li r0, 0
/* 80BA8A58  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80BA8A5C  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80BA8A60  38 03 00 24 */	addi r0, r3, 0x24
/* 80BA8A64  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80BA8A68  7F A3 EB 78 */	mr r3, r29
/* 80BA8A6C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80BA8A70  FC 40 08 90 */	fmr f2, f1
/* 80BA8A74  FC 60 08 90 */	fmr f3, f1
/* 80BA8A78  4B 47 1A B0 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80BA8A7C  7F A3 EB 78 */	mr r3, r29
/* 80BA8A80  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80BA8A84  FC 40 08 90 */	fmr f2, f1
/* 80BA8A88  FC 60 08 90 */	fmr f3, f1
/* 80BA8A8C  4B 47 1A AC */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80BA8A90  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80BA8A94  D0 1D 05 20 */	stfs f0, 0x520(r29)
/* 80BA8A98  38 00 00 00 */	li r0, 0
/* 80BA8A9C  90 01 00 08 */	stw r0, 8(r1)
/* 80BA8AA0  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 80BA8AA4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BA8AA8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80BA8AAC  7F A6 EB 78 */	mr r6, r29
/* 80BA8AB0  38 E0 00 01 */	li r7, 1
/* 80BA8AB4  39 1D 05 88 */	addi r8, r29, 0x588
/* 80BA8AB8  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80BA8ABC  39 40 00 00 */	li r10, 0
/* 80BA8AC0  4B 4C D7 88 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BA8AC4  38 7D 05 88 */	addi r3, r29, 0x588
/* 80BA8AC8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BA8ACC  FC 40 08 90 */	fmr f2, f1
/* 80BA8AD0  4B 4C D4 88 */	b SetWall__12dBgS_AcchCirFff
/* 80BA8AD4  38 00 00 3C */	li r0, 0x3c
/* 80BA8AD8  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80BA8ADC  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 80BA8AE0  38 7D 07 A0 */	addi r3, r29, 0x7a0
/* 80BA8AE4  38 80 00 FF */	li r4, 0xff
/* 80BA8AE8  38 A0 00 00 */	li r5, 0
/* 80BA8AEC  7F A6 EB 78 */	mr r6, r29
/* 80BA8AF0  4B 4D AD 70 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BA8AF4  38 7D 07 DC */	addi r3, r29, 0x7dc
/* 80BA8AF8  3C 80 80 BB */	lis r4, cc_sph_src@ha
/* 80BA8AFC  38 84 8E A8 */	addi r4, r4, cc_sph_src@l
/* 80BA8B00  4B 4D BF 34 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BA8B04  38 1D 07 A0 */	addi r0, r29, 0x7a0
/* 80BA8B08  90 1D 08 20 */	stw r0, 0x820(r29)
/* 80BA8B0C  7F A3 EB 78 */	mr r3, r29
/* 80BA8B10  4B FF FB FD */	bl daObj_Balloon_Execute__FP15daObj_Balloon_c
lbl_80BA8B14:
/* 80BA8B14  7F C3 F3 78 */	mr r3, r30
lbl_80BA8B18:
/* 80BA8B18  39 61 00 20 */	addi r11, r1, 0x20
/* 80BA8B1C  4B 7B 97 08 */	b _restgpr_28
/* 80BA8B20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA8B24  7C 08 03 A6 */	mtlr r0
/* 80BA8B28  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA8B2C  4E 80 00 20 */	blr 
