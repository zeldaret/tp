lbl_80B0BD24:
/* 80B0BD24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B0BD28  7C 08 02 A6 */	mflr r0
/* 80B0BD2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B0BD30  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0BD34  4B 85 64 A4 */	b _savegpr_28
/* 80B0BD38  7C 7D 1B 78 */	mr r29, r3
/* 80B0BD3C  3C 80 80 B1 */	lis r4, lit_3999@ha
/* 80B0BD40  3B E4 C1 C4 */	addi r31, r4, lit_3999@l
/* 80B0BD44  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B0BD48  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B0BD4C  40 82 01 10 */	bne lbl_80B0BE5C
/* 80B0BD50  7F A0 EB 79 */	or. r0, r29, r29
/* 80B0BD54  41 82 00 FC */	beq lbl_80B0BE50
/* 80B0BD58  7C 1E 03 78 */	mr r30, r0
/* 80B0BD5C  4B 50 CE 08 */	b __ct__10fopAc_ac_cFv
/* 80B0BD60  38 7E 05 74 */	addi r3, r30, 0x574
/* 80B0BD64  4B 7B 46 64 */	b __ct__10Z2CreatureFv
/* 80B0BD68  38 7E 06 3C */	addi r3, r30, 0x63c
/* 80B0BD6C  3C 80 80 B1 */	lis r4, __ct__4cXyzFv@ha
/* 80B0BD70  38 84 C0 E0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B0BD74  3C A0 80 B0 */	lis r5, __dt__4cXyzFv@ha
/* 80B0BD78  38 A5 16 78 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B0BD7C  38 C0 00 0C */	li r6, 0xc
/* 80B0BD80  38 E0 00 05 */	li r7, 5
/* 80B0BD84  4B 85 5F DC */	b __construct_array
/* 80B0BD88  38 7E 07 24 */	addi r3, r30, 0x724
/* 80B0BD8C  4B 73 E1 74 */	b __ct__10dMsgFlow_cFv
/* 80B0BD90  38 7E 07 70 */	addi r3, r30, 0x770
/* 80B0BD94  4B 56 A1 18 */	b __ct__12dBgS_AcchCirFv
/* 80B0BD98  3B 9E 07 B0 */	addi r28, r30, 0x7b0
/* 80B0BD9C  7F 83 E3 78 */	mr r3, r28
/* 80B0BDA0  4B 56 A3 00 */	b __ct__9dBgS_AcchFv
/* 80B0BDA4  3C 60 80 B1 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B0BDA8  38 63 C5 7C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B0BDAC  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80B0BDB0  38 03 00 0C */	addi r0, r3, 0xc
/* 80B0BDB4  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80B0BDB8  38 03 00 18 */	addi r0, r3, 0x18
/* 80B0BDBC  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80B0BDC0  38 7C 00 14 */	addi r3, r28, 0x14
/* 80B0BDC4  4B 56 D0 A4 */	b SetObj__16dBgS_PolyPassChkFv
/* 80B0BDC8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B0BDCC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B0BDD0  90 1E 09 A0 */	stw r0, 0x9a0(r30)
/* 80B0BDD4  38 7E 09 A4 */	addi r3, r30, 0x9a4
/* 80B0BDD8  4B 57 79 88 */	b __ct__10dCcD_GSttsFv
/* 80B0BDDC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B0BDE0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B0BDE4  90 7E 09 A0 */	stw r3, 0x9a0(r30)
/* 80B0BDE8  38 03 00 20 */	addi r0, r3, 0x20
/* 80B0BDEC  90 1E 09 A4 */	stw r0, 0x9a4(r30)
/* 80B0BDF0  3B 9E 09 C4 */	addi r28, r30, 0x9c4
/* 80B0BDF4  7F 83 E3 78 */	mr r3, r28
/* 80B0BDF8  4B 57 7C 30 */	b __ct__12dCcD_GObjInfFv
/* 80B0BDFC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B0BE00  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B0BE04  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80B0BE08  3C 60 80 B1 */	lis r3, __vt__8cM3dGAab@ha
/* 80B0BE0C  38 03 C5 70 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B0BE10  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80B0BE14  3C 60 80 B1 */	lis r3, __vt__8cM3dGSph@ha
/* 80B0BE18  38 03 C5 64 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80B0BE1C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80B0BE20  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80B0BE24  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80B0BE28  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80B0BE2C  38 03 00 58 */	addi r0, r3, 0x58
/* 80B0BE30  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80B0BE34  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80B0BE38  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80B0BE3C  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80B0BE40  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B0BE44  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80B0BE48  38 03 00 84 */	addi r0, r3, 0x84
/* 80B0BE4C  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_80B0BE50:
/* 80B0BE50  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B0BE54  60 00 00 08 */	ori r0, r0, 8
/* 80B0BE58  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B0BE5C:
/* 80B0BE5C  38 7D 05 68 */	addi r3, r29, 0x568
/* 80B0BE60  3C 80 80 B1 */	lis r4, struct_80B0C3A0+0x0@ha
/* 80B0BE64  38 84 C3 A0 */	addi r4, r4, struct_80B0C3A0+0x0@l
/* 80B0BE68  4B 52 10 54 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B0BE6C  7C 7E 1B 78 */	mr r30, r3
/* 80B0BE70  3C 60 80 B1 */	lis r3, struct_80B0C3A0+0x0@ha
/* 80B0BE74  38 03 C3 A0 */	addi r0, r3, struct_80B0C3A0+0x0@l
/* 80B0BE78  90 1D 01 00 */	stw r0, 0x100(r29)
/* 80B0BE7C  2C 1E 00 04 */	cmpwi r30, 4
/* 80B0BE80  40 82 01 44 */	bne lbl_80B0BFC4
/* 80B0BE84  7F A3 EB 78 */	mr r3, r29
/* 80B0BE88  3C 80 80 B1 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80B0BE8C  38 84 BD 04 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80B0BE90  38 A0 25 40 */	li r5, 0x2540
/* 80B0BE94  4B 50 E6 1C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B0BE98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B0BE9C  40 82 00 0C */	bne lbl_80B0BEA8
/* 80B0BEA0  38 60 00 05 */	li r3, 5
/* 80B0BEA4  48 00 01 24 */	b lbl_80B0BFC8
lbl_80B0BEA8:
/* 80B0BEA8  3C 60 80 B1 */	lis r3, data_80B0C5FC@ha
/* 80B0BEAC  8C 03 C5 FC */	lbzu r0, data_80B0C5FC@l(r3)
/* 80B0BEB0  28 00 00 00 */	cmplwi r0, 0
/* 80B0BEB4  40 82 00 20 */	bne lbl_80B0BED4
/* 80B0BEB8  38 00 00 01 */	li r0, 1
/* 80B0BEBC  98 1D 0B 40 */	stb r0, 0xb40(r29)
/* 80B0BEC0  98 03 00 00 */	stb r0, 0(r3)
/* 80B0BEC4  38 00 FF FF */	li r0, -1
/* 80B0BEC8  3C 60 80 B1 */	lis r3, l_HIO@ha
/* 80B0BECC  38 63 C6 0C */	addi r3, r3, l_HIO@l
/* 80B0BED0  98 03 00 04 */	stb r0, 4(r3)
lbl_80B0BED4:
/* 80B0BED4  38 00 00 00 */	li r0, 0
/* 80B0BED8  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80B0BEDC  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80B0BEE0  80 63 00 04 */	lwz r3, 4(r3)
/* 80B0BEE4  38 03 00 24 */	addi r0, r3, 0x24
/* 80B0BEE8  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B0BEEC  7F A3 EB 78 */	mr r3, r29
/* 80B0BEF0  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 80B0BEF4  FC 40 08 90 */	fmr f2, f1
/* 80B0BEF8  FC 60 08 90 */	fmr f3, f1
/* 80B0BEFC  4B 50 E6 2C */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80B0BF00  7F A3 EB 78 */	mr r3, r29
/* 80B0BF04  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80B0BF08  FC 40 08 90 */	fmr f2, f1
/* 80B0BF0C  FC 60 08 90 */	fmr f3, f1
/* 80B0BF10  4B 50 E6 28 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80B0BF14  38 00 00 00 */	li r0, 0
/* 80B0BF18  90 01 00 08 */	stw r0, 8(r1)
/* 80B0BF1C  38 7D 07 B0 */	addi r3, r29, 0x7b0
/* 80B0BF20  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B0BF24  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B0BF28  7F A6 EB 78 */	mr r6, r29
/* 80B0BF2C  38 E0 00 01 */	li r7, 1
/* 80B0BF30  39 1D 07 70 */	addi r8, r29, 0x770
/* 80B0BF34  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B0BF38  39 40 00 00 */	li r10, 0
/* 80B0BF3C  4B 56 A3 0C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B0BF40  80 1D 07 DC */	lwz r0, 0x7dc(r29)
/* 80B0BF44  60 00 20 00 */	ori r0, r0, 0x2000
/* 80B0BF48  90 1D 07 DC */	stw r0, 0x7dc(r29)
/* 80B0BF4C  38 7D 07 70 */	addi r3, r29, 0x770
/* 80B0BF50  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 80B0BF54  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80B0BF58  4B 56 A0 00 */	b SetWall__12dBgS_AcchCirFff
/* 80B0BF5C  38 00 00 64 */	li r0, 0x64
/* 80B0BF60  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80B0BF64  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 80B0BF68  38 7D 09 88 */	addi r3, r29, 0x988
/* 80B0BF6C  38 80 00 64 */	li r4, 0x64
/* 80B0BF70  38 A0 00 00 */	li r5, 0
/* 80B0BF74  7F A6 EB 78 */	mr r6, r29
/* 80B0BF78  4B 57 78 E8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B0BF7C  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B0BF80  3C 80 80 B1 */	lis r4, cc_sph_src@ha
/* 80B0BF84  38 84 C4 D4 */	addi r4, r4, cc_sph_src@l
/* 80B0BF88  4B 57 8A AC */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80B0BF8C  38 1D 09 88 */	addi r0, r29, 0x988
/* 80B0BF90  90 1D 0A 08 */	stw r0, 0xa08(r29)
/* 80B0BF94  38 7D 05 74 */	addi r3, r29, 0x574
/* 80B0BF98  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B0BF9C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B0BFA0  38 C0 00 03 */	li r6, 3
/* 80B0BFA4  38 E0 00 01 */	li r7, 1
/* 80B0BFA8  4B 7B 45 88 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80B0BFAC  38 1D 05 74 */	addi r0, r29, 0x574
/* 80B0BFB0  90 1D 0B 04 */	stw r0, 0xb04(r29)
/* 80B0BFB4  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B0BFB8  D0 1D 05 34 */	stfs f0, 0x534(r29)
/* 80B0BFBC  7F A3 EB 78 */	mr r3, r29
/* 80B0BFC0  4B FF F9 31 */	bl daNPC_TK_Execute__FP10daNPC_TK_c
lbl_80B0BFC4:
/* 80B0BFC4  7F C3 F3 78 */	mr r3, r30
lbl_80B0BFC8:
/* 80B0BFC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0BFCC  4B 85 62 58 */	b _restgpr_28
/* 80B0BFD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B0BFD4  7C 08 03 A6 */	mtlr r0
/* 80B0BFD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B0BFDC  4E 80 00 20 */	blr 
