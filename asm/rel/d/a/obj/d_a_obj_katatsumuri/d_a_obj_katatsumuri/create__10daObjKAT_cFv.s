lbl_80C3BC58:
/* 80C3BC58  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80C3BC5C  7C 08 02 A6 */	mflr r0
/* 80C3BC60  90 01 01 34 */	stw r0, 0x134(r1)
/* 80C3BC64  39 61 01 30 */	addi r11, r1, 0x130
/* 80C3BC68  4B 72 65 61 */	bl _savegpr_24
/* 80C3BC6C  7C 7A 1B 78 */	mr r26, r3
/* 80C3BC70  3C 80 80 C4 */	lis r4, lit_3775@ha /* 0x80C3C674@ha */
/* 80C3BC74  3B E4 C6 74 */	addi r31, r4, lit_3775@l /* 0x80C3C674@l */
/* 80C3BC78  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C3BC7C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C3BC80  40 82 00 FC */	bne lbl_80C3BD7C
/* 80C3BC84  7F 40 D3 79 */	or. r0, r26, r26
/* 80C3BC88  41 82 00 E8 */	beq lbl_80C3BD70
/* 80C3BC8C  7C 1B 03 78 */	mr r27, r0
/* 80C3BC90  4B 52 23 81 */	bl __ct__9dInsect_cFv
/* 80C3BC94  3C 60 80 C4 */	lis r3, __vt__10daObjKAT_c@ha /* 0x80C3C7FC@ha */
/* 80C3BC98  38 03 C7 FC */	addi r0, r3, __vt__10daObjKAT_c@l /* 0x80C3C7FC@l */
/* 80C3BC9C  90 1B 05 68 */	stw r0, 0x568(r27)
/* 80C3BCA0  3B 1B 05 90 */	addi r24, r27, 0x590
/* 80C3BCA4  7F 03 C3 78 */	mr r3, r24
/* 80C3BCA8  4B 43 A3 F9 */	bl __ct__9dBgS_AcchFv
/* 80C3BCAC  3C 60 80 C4 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C3C7D8@ha */
/* 80C3BCB0  38 63 C7 D8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C3C7D8@l */
/* 80C3BCB4  90 78 00 10 */	stw r3, 0x10(r24)
/* 80C3BCB8  38 03 00 0C */	addi r0, r3, 0xc
/* 80C3BCBC  90 18 00 14 */	stw r0, 0x14(r24)
/* 80C3BCC0  38 03 00 18 */	addi r0, r3, 0x18
/* 80C3BCC4  90 18 00 24 */	stw r0, 0x24(r24)
/* 80C3BCC8  38 78 00 14 */	addi r3, r24, 0x14
/* 80C3BCCC  4B 43 D1 9D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C3BCD0  38 7B 07 68 */	addi r3, r27, 0x768
/* 80C3BCD4  4B 43 B8 A9 */	bl __ct__11dBgS_GndChkFv
/* 80C3BCD8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C3BCDC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C3BCE0  90 1B 08 28 */	stw r0, 0x828(r27)
/* 80C3BCE4  38 7B 08 2C */	addi r3, r27, 0x82c
/* 80C3BCE8  4B 44 7A 79 */	bl __ct__10dCcD_GSttsFv
/* 80C3BCEC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C3BCF0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C3BCF4  90 7B 08 28 */	stw r3, 0x828(r27)
/* 80C3BCF8  38 03 00 20 */	addi r0, r3, 0x20
/* 80C3BCFC  90 1B 08 2C */	stw r0, 0x82c(r27)
/* 80C3BD00  3B 1B 08 4C */	addi r24, r27, 0x84c
/* 80C3BD04  7F 03 C3 78 */	mr r3, r24
/* 80C3BD08  4B 44 7D 21 */	bl __ct__12dCcD_GObjInfFv
/* 80C3BD0C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C3BD10  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C3BD14  90 18 01 20 */	stw r0, 0x120(r24)
/* 80C3BD18  3C 60 80 C4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C3C7CC@ha */
/* 80C3BD1C  38 03 C7 CC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C3C7CC@l */
/* 80C3BD20  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80C3BD24  3C 60 80 C4 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C3C7C0@ha */
/* 80C3BD28  38 03 C7 C0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C3C7C0@l */
/* 80C3BD2C  90 18 01 34 */	stw r0, 0x134(r24)
/* 80C3BD30  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C3BD34  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C3BD38  90 78 01 20 */	stw r3, 0x120(r24)
/* 80C3BD3C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C3BD40  90 18 01 34 */	stw r0, 0x134(r24)
/* 80C3BD44  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C3BD48  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C3BD4C  90 78 00 3C */	stw r3, 0x3c(r24)
/* 80C3BD50  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C3BD54  90 18 01 20 */	stw r0, 0x120(r24)
/* 80C3BD58  38 03 00 84 */	addi r0, r3, 0x84
/* 80C3BD5C  90 18 01 34 */	stw r0, 0x134(r24)
/* 80C3BD60  38 7B 09 94 */	addi r3, r27, 0x994
/* 80C3BD64  4B 68 46 65 */	bl __ct__10Z2CreatureFv
/* 80C3BD68  38 7B 0A 24 */	addi r3, r27, 0xa24
/* 80C3BD6C  4B 43 A1 41 */	bl __ct__12dBgS_AcchCirFv
lbl_80C3BD70:
/* 80C3BD70  80 1A 04 A0 */	lwz r0, 0x4a0(r26)
/* 80C3BD74  60 00 00 08 */	ori r0, r0, 8
/* 80C3BD78  90 1A 04 A0 */	stw r0, 0x4a0(r26)
lbl_80C3BD7C:
/* 80C3BD7C  38 7A 0A 68 */	addi r3, r26, 0xa68
/* 80C3BD80  3C 80 80 C4 */	lis r4, d_a_obj_katatsumuri__stringBase0@ha /* 0x80C3C764@ha */
/* 80C3BD84  38 84 C7 64 */	addi r4, r4, d_a_obj_katatsumuri__stringBase0@l /* 0x80C3C764@l */
/* 80C3BD88  4B 3F 11 35 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C3BD8C  7C 7C 1B 78 */	mr r28, r3
/* 80C3BD90  2C 1C 00 04 */	cmpwi r28, 4
/* 80C3BD94  40 82 07 14 */	bne lbl_80C3C4A8
/* 80C3BD98  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80C3BD9C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C3BDA0  98 1A 08 08 */	stb r0, 0x808(r26)
/* 80C3BDA4  88 1A 08 08 */	lbz r0, 0x808(r26)
/* 80C3BDA8  28 00 00 02 */	cmplwi r0, 2
/* 80C3BDAC  40 82 00 28 */	bne lbl_80C3BDD4
/* 80C3BDB0  38 00 00 00 */	li r0, 0
/* 80C3BDB4  98 1A 05 6C */	stb r0, 0x56c(r26)
/* 80C3BDB8  A8 7A 04 E4 */	lha r3, 0x4e4(r26)
/* 80C3BDBC  38 03 E0 00 */	addi r0, r3, -8192
/* 80C3BDC0  B0 1A 04 E4 */	sth r0, 0x4e4(r26)
/* 80C3BDC4  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 80C3BDC8  60 00 40 00 */	ori r0, r0, 0x4000
/* 80C3BDCC  90 1A 04 9C */	stw r0, 0x49c(r26)
/* 80C3BDD0  48 00 00 0C */	b lbl_80C3BDDC
lbl_80C3BDD4:
/* 80C3BDD4  38 00 00 01 */	li r0, 1
/* 80C3BDD8  98 1A 05 6D */	stb r0, 0x56d(r26)
lbl_80C3BDDC:
/* 80C3BDDC  38 00 00 5D */	li r0, 0x5d
/* 80C3BDE0  98 1A 05 48 */	stb r0, 0x548(r26)
/* 80C3BDE4  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80C3BDE8  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80C3BDEC  98 1A 05 81 */	stb r0, 0x581(r26)
/* 80C3BDF0  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80C3BDF4  38 7F 00 04 */	addi r3, r31, 4
/* 80C3BDF8  7C 03 00 AE */	lbzx r0, r3, r0
/* 80C3BDFC  98 1A 05 80 */	stb r0, 0x580(r26)
/* 80C3BE00  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80C3BE04  54 00 08 3C */	slwi r0, r0, 1
/* 80C3BE08  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 80C3BE0C  7C 03 02 2E */	lhzx r0, r3, r0
/* 80C3BE10  B0 1A 05 82 */	sth r0, 0x582(r26)
/* 80C3BE14  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80C3BE18  28 00 00 01 */	cmplwi r0, 1
/* 80C3BE1C  40 82 00 20 */	bne lbl_80C3BE3C
/* 80C3BE20  3C 60 80 C4 */	lis r3, l_HIO@ha /* 0x80C3C848@ha */
/* 80C3BE24  38 63 C8 48 */	addi r3, r3, l_HIO@l /* 0x80C3C848@l */
/* 80C3BE28  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C3BE2C  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80C3BE30  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80C3BE34  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80C3BE38  48 00 00 24 */	b lbl_80C3BE5C
lbl_80C3BE3C:
/* 80C3BE3C  28 00 00 00 */	cmplwi r0, 0
/* 80C3BE40  40 82 00 1C */	bne lbl_80C3BE5C
/* 80C3BE44  3C 60 80 C4 */	lis r3, l_HIO@ha /* 0x80C3C848@ha */
/* 80C3BE48  38 63 C8 48 */	addi r3, r3, l_HIO@l /* 0x80C3C848@l */
/* 80C3BE4C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C3BE50  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80C3BE54  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80C3BE58  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
lbl_80C3BE5C:
/* 80C3BE5C  7F 43 D3 78 */	mr r3, r26
/* 80C3BE60  4B FF FC 4D */	bl CreateChk__10daObjKAT_cFv
/* 80C3BE64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3BE68  40 82 00 0C */	bne lbl_80C3BE74
/* 80C3BE6C  38 60 00 05 */	li r3, 5
/* 80C3BE70  48 00 06 3C */	b lbl_80C3C4AC
lbl_80C3BE74:
/* 80C3BE74  7F 43 D3 78 */	mr r3, r26
/* 80C3BE78  3C 80 80 C4 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80C39B78@ha */
/* 80C3BE7C  38 84 9B 78 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80C39B78@l */
/* 80C3BE80  38 A0 0E A0 */	li r5, 0xea0
/* 80C3BE84  4B 3D E6 2D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C3BE88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3BE8C  40 82 00 0C */	bne lbl_80C3BE98
/* 80C3BE90  38 60 00 05 */	li r3, 5
/* 80C3BE94  48 00 06 18 */	b lbl_80C3C4AC
lbl_80C3BE98:
/* 80C3BE98  3C 60 80 C4 */	lis r3, data_80C3C838@ha /* 0x80C3C838@ha */
/* 80C3BE9C  8C 03 C8 38 */	lbzu r0, data_80C3C838@l(r3)  /* 0x80C3C838@l */
/* 80C3BEA0  28 00 00 00 */	cmplwi r0, 0
/* 80C3BEA4  40 82 00 20 */	bne lbl_80C3BEC4
/* 80C3BEA8  38 00 00 01 */	li r0, 1
/* 80C3BEAC  98 03 00 00 */	stb r0, 0(r3)
/* 80C3BEB0  98 1A 0A 70 */	stb r0, 0xa70(r26)
/* 80C3BEB4  38 00 FF FF */	li r0, -1
/* 80C3BEB8  3C 60 80 C4 */	lis r3, l_HIO@ha /* 0x80C3C848@ha */
/* 80C3BEBC  38 63 C8 48 */	addi r3, r3, l_HIO@l /* 0x80C3C848@l */
/* 80C3BEC0  98 03 00 04 */	stb r0, 4(r3)
lbl_80C3BEC4:
/* 80C3BEC4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C3BEC8  D0 3A 05 30 */	stfs f1, 0x530(r26)
/* 80C3BECC  3B 60 00 00 */	li r27, 0
/* 80C3BED0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80C3BED4  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80C3BED8  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80C3BEDC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C3BEE0  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80C3BEE4  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80C3BEE8  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80C3BEEC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C3BEF0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C3BEF4  4B 43 BD 75 */	bl __ct__11dBgS_LinChkFv
/* 80C3BEF8  3B C1 00 F8 */	addi r30, r1, 0xf8
/* 80C3BEFC  7F C3 F3 78 */	mr r3, r30
/* 80C3BF00  4B 43 CF 69 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C3BF04  3B 00 00 00 */	li r24, 0
/* 80C3BF08  3B 20 00 00 */	li r25, 0
/* 80C3BF0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3BF10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3BF14  3B A3 0F 38 */	addi r29, r3, 0xf38
lbl_80C3BF18:
/* 80C3BF18  38 61 00 54 */	addi r3, r1, 0x54
/* 80C3BF1C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C3BF20  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80C3BF24  7C 00 CA 14 */	add r0, r0, r25
/* 80C3BF28  7C 05 07 34 */	extsh r5, r0
/* 80C3BF2C  38 C1 00 6C */	addi r6, r1, 0x6c
/* 80C3BF30  4B 63 4E 91 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C3BF34  38 61 00 48 */	addi r3, r1, 0x48
/* 80C3BF38  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C3BF3C  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80C3BF40  7C 00 CA 14 */	add r0, r0, r25
/* 80C3BF44  7C 05 07 34 */	extsh r5, r0
/* 80C3BF48  38 C1 00 60 */	addi r6, r1, 0x60
/* 80C3BF4C  4B 63 4E 75 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C3BF50  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C3BF54  38 81 00 54 */	addi r4, r1, 0x54
/* 80C3BF58  38 A1 00 48 */	addi r5, r1, 0x48
/* 80C3BF5C  38 C0 00 00 */	li r6, 0
/* 80C3BF60  4B 43 BE 05 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C3BF64  7F C3 F3 78 */	mr r3, r30
/* 80C3BF68  4B 43 CF 01 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C3BF6C  7F A3 EB 78 */	mr r3, r29
/* 80C3BF70  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80C3BF74  4B 43 84 41 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C3BF78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3BF7C  41 82 01 B8 */	beq lbl_80C3C134
/* 80C3BF80  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C3C808@ha */
/* 80C3BF84  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C3C808@l */
/* 80C3BF88  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80C3BF8C  7F A3 EB 78 */	mr r3, r29
/* 80C3BF90  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80C3BF94  38 A1 00 8C */	addi r5, r1, 0x8c
/* 80C3BF98  4B 43 87 AD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C3BF9C  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80C3BFA0  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80C3BFA4  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80C3BFA8  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80C3BFAC  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80C3BFB0  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80C3BFB4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C3BFB8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C3BFBC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C3BFC0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C3BFC4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C3BFC8  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80C3BFCC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C3BFD0  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80C3BFD4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C3BFD8  38 61 00 3C */	addi r3, r1, 0x3c
/* 80C3BFDC  38 81 00 30 */	addi r4, r1, 0x30
/* 80C3BFE0  4B 70 B3 BD */	bl PSVECSquareDistance
/* 80C3BFE4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C3BFE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3BFEC  40 81 00 58 */	ble lbl_80C3C044
/* 80C3BFF0  FC 00 08 34 */	frsqrte f0, f1
/* 80C3BFF4  C8 9F 00 78 */	lfd f4, 0x78(r31)
/* 80C3BFF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3BFFC  C8 7F 00 80 */	lfd f3, 0x80(r31)
/* 80C3C000  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3C004  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3C008  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3C00C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3C010  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3C014  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3C018  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3C01C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3C020  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3C024  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3C028  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3C02C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3C030  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3C034  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3C038  FC 41 00 32 */	fmul f2, f1, f0
/* 80C3C03C  FC 40 10 18 */	frsp f2, f2
/* 80C3C040  48 00 00 90 */	b lbl_80C3C0D0
lbl_80C3C044:
/* 80C3C044  C8 1F 00 88 */	lfd f0, 0x88(r31)
/* 80C3C048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3C04C  40 80 00 10 */	bge lbl_80C3C05C
/* 80C3C050  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C3C054  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C3C058  48 00 00 78 */	b lbl_80C3C0D0
lbl_80C3C05C:
/* 80C3C05C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C3C060  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C3C064  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C3C068  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C3C06C  7C 03 00 00 */	cmpw r3, r0
/* 80C3C070  41 82 00 14 */	beq lbl_80C3C084
/* 80C3C074  40 80 00 40 */	bge lbl_80C3C0B4
/* 80C3C078  2C 03 00 00 */	cmpwi r3, 0
/* 80C3C07C  41 82 00 20 */	beq lbl_80C3C09C
/* 80C3C080  48 00 00 34 */	b lbl_80C3C0B4
lbl_80C3C084:
/* 80C3C084  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3C088  41 82 00 0C */	beq lbl_80C3C094
/* 80C3C08C  38 00 00 01 */	li r0, 1
/* 80C3C090  48 00 00 28 */	b lbl_80C3C0B8
lbl_80C3C094:
/* 80C3C094  38 00 00 02 */	li r0, 2
/* 80C3C098  48 00 00 20 */	b lbl_80C3C0B8
lbl_80C3C09C:
/* 80C3C09C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3C0A0  41 82 00 0C */	beq lbl_80C3C0AC
/* 80C3C0A4  38 00 00 05 */	li r0, 5
/* 80C3C0A8  48 00 00 10 */	b lbl_80C3C0B8
lbl_80C3C0AC:
/* 80C3C0AC  38 00 00 03 */	li r0, 3
/* 80C3C0B0  48 00 00 08 */	b lbl_80C3C0B8
lbl_80C3C0B4:
/* 80C3C0B4  38 00 00 04 */	li r0, 4
lbl_80C3C0B8:
/* 80C3C0B8  2C 00 00 01 */	cmpwi r0, 1
/* 80C3C0BC  40 82 00 10 */	bne lbl_80C3C0CC
/* 80C3C0C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C3C0C4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C3C0C8  48 00 00 08 */	b lbl_80C3C0D0
lbl_80C3C0CC:
/* 80C3C0CC  FC 40 08 90 */	fmr f2, f1
lbl_80C3C0D0:
/* 80C3C0D0  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80C3C0D4  4B 62 B5 A1 */	bl cM_atan2s__Fff
/* 80C3C0D8  7C 03 00 D0 */	neg r0, r3
/* 80C3C0DC  B0 1A 07 EE */	sth r0, 0x7ee(r26)
/* 80C3C0E0  B0 1A 07 C6 */	sth r0, 0x7c6(r26)
/* 80C3C0E4  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80C3C0E8  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80C3C0EC  4B 62 B5 89 */	bl cM_atan2s__Fff
/* 80C3C0F0  B0 7A 07 EA */	sth r3, 0x7ea(r26)
/* 80C3C0F4  B0 7A 07 C2 */	sth r3, 0x7c2(r26)
/* 80C3C0F8  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80C3C0FC  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 80C3C100  4B 62 B5 75 */	bl cM_atan2s__Fff
/* 80C3C104  B0 7A 07 F6 */	sth r3, 0x7f6(r26)
/* 80C3C108  3B 60 00 01 */	li r27, 1
/* 80C3C10C  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3C110  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80C3C114  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80C3C118  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80C3C11C  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C3C120  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80C3C124  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C3C808@ha */
/* 80C3C128  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C3C808@l */
/* 80C3C12C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80C3C130  48 00 00 14 */	b lbl_80C3C144
lbl_80C3C134:
/* 80C3C134  3B 18 00 01 */	addi r24, r24, 1
/* 80C3C138  2C 18 00 04 */	cmpwi r24, 4
/* 80C3C13C  3B 39 40 00 */	addi r25, r25, 0x4000
/* 80C3C140  41 80 FD D8 */	blt lbl_80C3BF18
lbl_80C3C144:
/* 80C3C144  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80C3C148  40 82 02 04 */	bne lbl_80C3C34C
/* 80C3C14C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C3C150  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80C3C154  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80C3C158  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C3C15C  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80C3C160  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80C3C164  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80C3C168  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C3C16C  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80C3C170  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C3C174  38 81 00 6C */	addi r4, r1, 0x6c
/* 80C3C178  38 A1 00 54 */	addi r5, r1, 0x54
/* 80C3C17C  38 C0 00 00 */	li r6, 0
/* 80C3C180  4B 43 BB E5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C3C184  7F C3 F3 78 */	mr r3, r30
/* 80C3C188  4B 43 CC E1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C3C18C  7F A3 EB 78 */	mr r3, r29
/* 80C3C190  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80C3C194  4B 43 82 21 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C3C198  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3C19C  41 82 01 B0 */	beq lbl_80C3C34C
/* 80C3C1A0  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C3C808@ha */
/* 80C3C1A4  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C3C808@l */
/* 80C3C1A8  90 01 00 88 */	stw r0, 0x88(r1)
/* 80C3C1AC  7F A3 EB 78 */	mr r3, r29
/* 80C3C1B0  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80C3C1B4  38 A1 00 78 */	addi r5, r1, 0x78
/* 80C3C1B8  4B 43 85 8D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C3C1BC  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80C3C1C0  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80C3C1C4  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80C3C1C8  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80C3C1CC  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80C3C1D0  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80C3C1D4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C3C1D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C3C1DC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C3C1E0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C3C1E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C3C1E8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C3C1EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C3C1F0  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80C3C1F4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C3C1F8  38 61 00 24 */	addi r3, r1, 0x24
/* 80C3C1FC  38 81 00 18 */	addi r4, r1, 0x18
/* 80C3C200  4B 70 B1 9D */	bl PSVECSquareDistance
/* 80C3C204  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C3C208  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3C20C  40 81 00 58 */	ble lbl_80C3C264
/* 80C3C210  FC 00 08 34 */	frsqrte f0, f1
/* 80C3C214  C8 9F 00 78 */	lfd f4, 0x78(r31)
/* 80C3C218  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3C21C  C8 7F 00 80 */	lfd f3, 0x80(r31)
/* 80C3C220  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3C224  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3C228  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3C22C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3C230  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3C234  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3C238  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3C23C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3C240  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3C244  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3C248  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3C24C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3C250  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3C254  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3C258  FC 41 00 32 */	fmul f2, f1, f0
/* 80C3C25C  FC 40 10 18 */	frsp f2, f2
/* 80C3C260  48 00 00 90 */	b lbl_80C3C2F0
lbl_80C3C264:
/* 80C3C264  C8 1F 00 88 */	lfd f0, 0x88(r31)
/* 80C3C268  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3C26C  40 80 00 10 */	bge lbl_80C3C27C
/* 80C3C270  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C3C274  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C3C278  48 00 00 78 */	b lbl_80C3C2F0
lbl_80C3C27C:
/* 80C3C27C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C3C280  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80C3C284  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C3C288  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C3C28C  7C 03 00 00 */	cmpw r3, r0
/* 80C3C290  41 82 00 14 */	beq lbl_80C3C2A4
/* 80C3C294  40 80 00 40 */	bge lbl_80C3C2D4
/* 80C3C298  2C 03 00 00 */	cmpwi r3, 0
/* 80C3C29C  41 82 00 20 */	beq lbl_80C3C2BC
/* 80C3C2A0  48 00 00 34 */	b lbl_80C3C2D4
lbl_80C3C2A4:
/* 80C3C2A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3C2A8  41 82 00 0C */	beq lbl_80C3C2B4
/* 80C3C2AC  38 00 00 01 */	li r0, 1
/* 80C3C2B0  48 00 00 28 */	b lbl_80C3C2D8
lbl_80C3C2B4:
/* 80C3C2B4  38 00 00 02 */	li r0, 2
/* 80C3C2B8  48 00 00 20 */	b lbl_80C3C2D8
lbl_80C3C2BC:
/* 80C3C2BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3C2C0  41 82 00 0C */	beq lbl_80C3C2CC
/* 80C3C2C4  38 00 00 05 */	li r0, 5
/* 80C3C2C8  48 00 00 10 */	b lbl_80C3C2D8
lbl_80C3C2CC:
/* 80C3C2CC  38 00 00 03 */	li r0, 3
/* 80C3C2D0  48 00 00 08 */	b lbl_80C3C2D8
lbl_80C3C2D4:
/* 80C3C2D4  38 00 00 04 */	li r0, 4
lbl_80C3C2D8:
/* 80C3C2D8  2C 00 00 01 */	cmpwi r0, 1
/* 80C3C2DC  40 82 00 10 */	bne lbl_80C3C2EC
/* 80C3C2E0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C3C2E4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C3C2E8  48 00 00 08 */	b lbl_80C3C2F0
lbl_80C3C2EC:
/* 80C3C2EC  FC 40 08 90 */	fmr f2, f1
lbl_80C3C2F0:
/* 80C3C2F0  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80C3C2F4  4B 62 B3 81 */	bl cM_atan2s__Fff
/* 80C3C2F8  7C 03 00 D0 */	neg r0, r3
/* 80C3C2FC  B0 1A 07 EE */	sth r0, 0x7ee(r26)
/* 80C3C300  B0 1A 07 C6 */	sth r0, 0x7c6(r26)
/* 80C3C304  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 80C3C308  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 80C3C30C  4B 62 B3 69 */	bl cM_atan2s__Fff
/* 80C3C310  B0 7A 07 EA */	sth r3, 0x7ea(r26)
/* 80C3C314  B0 7A 07 C2 */	sth r3, 0x7c2(r26)
/* 80C3C318  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80C3C31C  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 80C3C320  4B 62 B3 55 */	bl cM_atan2s__Fff
/* 80C3C324  B0 7A 07 F6 */	sth r3, 0x7f6(r26)
/* 80C3C328  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3C32C  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80C3C330  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80C3C334  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80C3C338  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C3C33C  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80C3C340  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C3C808@ha */
/* 80C3C344  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C3C808@l */
/* 80C3C348  90 01 00 88 */	stw r0, 0x88(r1)
lbl_80C3C34C:
/* 80C3C34C  38 7A 0A 24 */	addi r3, r26, 0xa24
/* 80C3C350  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C3C354  FC 40 08 90 */	fmr f2, f1
/* 80C3C358  4B 43 9C 01 */	bl SetWall__12dBgS_AcchCirFff
/* 80C3C35C  38 00 00 00 */	li r0, 0
/* 80C3C360  90 01 00 08 */	stw r0, 8(r1)
/* 80C3C364  38 7A 05 90 */	addi r3, r26, 0x590
/* 80C3C368  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C3C36C  38 BA 04 BC */	addi r5, r26, 0x4bc
/* 80C3C370  7F 46 D3 78 */	mr r6, r26
/* 80C3C374  38 E0 00 01 */	li r7, 1
/* 80C3C378  39 1A 0A 24 */	addi r8, r26, 0xa24
/* 80C3C37C  39 3A 04 F8 */	addi r9, r26, 0x4f8
/* 80C3C380  39 40 00 00 */	li r10, 0
/* 80C3C384  4B 43 9E C5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C3C388  80 7A 0A 64 */	lwz r3, 0xa64(r26)
/* 80C3C38C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80C3C390  93 45 00 14 */	stw r26, 0x14(r5)
/* 80C3C394  38 E0 00 00 */	li r7, 0
/* 80C3C398  3C 60 80 C4 */	lis r3, JointCallBack__FP8J3DJointi@ha /* 0x80C39B2C@ha */
/* 80C3C39C  38 83 9B 2C */	addi r4, r3, JointCallBack__FP8J3DJointi@l /* 0x80C39B2C@l */
/* 80C3C3A0  48 00 00 20 */	b lbl_80C3C3C0
lbl_80C3C3A4:
/* 80C3C3A4  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 80C3C3A8  41 82 00 14 */	beq lbl_80C3C3BC
/* 80C3C3AC  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80C3C3B0  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80C3C3B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C3C3B8  90 83 00 04 */	stw r4, 4(r3)
lbl_80C3C3BC:
/* 80C3C3BC  38 E7 00 01 */	addi r7, r7, 1
lbl_80C3C3C0:
/* 80C3C3C0  80 C5 00 04 */	lwz r6, 4(r5)
/* 80C3C3C4  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80C3C3C8  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80C3C3CC  7C 00 18 40 */	cmplw r0, r3
/* 80C3C3D0  41 80 FF D4 */	blt lbl_80C3C3A4
/* 80C3C3D4  88 1A 08 08 */	lbz r0, 0x808(r26)
/* 80C3C3D8  28 00 00 00 */	cmplwi r0, 0
/* 80C3C3DC  40 82 00 0C */	bne lbl_80C3C3E8
/* 80C3C3E0  7F 43 D3 78 */	mr r3, r26
/* 80C3C3E4  4B FF D5 B1 */	bl InitCcSph__10daObjKAT_cFv
lbl_80C3C3E8:
/* 80C3C3E8  88 1A 08 08 */	lbz r0, 0x808(r26)
/* 80C3C3EC  28 00 00 02 */	cmplwi r0, 2
/* 80C3C3F0  40 82 00 3C */	bne lbl_80C3C42C
/* 80C3C3F4  3C 60 80 C4 */	lis r3, d_a_obj_katatsumuri__stringBase0@ha /* 0x80C3C764@ha */
/* 80C3C3F8  38 63 C7 64 */	addi r3, r3, d_a_obj_katatsumuri__stringBase0@l /* 0x80C3C764@l */
/* 80C3C3FC  38 63 00 04 */	addi r3, r3, 4
/* 80C3C400  38 9D 3E C8 */	addi r4, r29, 0x3ec8
/* 80C3C404  4B 72 C5 91 */	bl strcmp
/* 80C3C408  2C 03 00 00 */	cmpwi r3, 0
/* 80C3C40C  40 82 00 20 */	bne lbl_80C3C42C
/* 80C3C410  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3C414  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3C418  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80C3C41C  2C 00 00 03 */	cmpwi r0, 3
/* 80C3C420  40 82 00 0C */	bne lbl_80C3C42C
/* 80C3C424  38 00 00 03 */	li r0, 3
/* 80C3C428  98 1A 08 08 */	stb r0, 0x808(r26)
lbl_80C3C42C:
/* 80C3C42C  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3C430  D0 1A 07 C8 */	stfs f0, 0x7c8(r26)
/* 80C3C434  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80C3C438  D0 1A 07 CC */	stfs f0, 0x7cc(r26)
/* 80C3C43C  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C3C440  D0 1A 07 D0 */	stfs f0, 0x7d0(r26)
/* 80C3C444  80 7A 0A 64 */	lwz r3, 0xa64(r26)
/* 80C3C448  80 63 00 04 */	lwz r3, 4(r3)
/* 80C3C44C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C3C450  90 1A 05 04 */	stw r0, 0x504(r26)
/* 80C3C454  7F 43 D3 78 */	mr r3, r26
/* 80C3C458  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80C3C45C  FC 40 08 90 */	fmr f2, f1
/* 80C3C460  FC 60 08 90 */	fmr f3, f1
/* 80C3C464  4B 3D E0 C5 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80C3C468  7F 43 D3 78 */	mr r3, r26
/* 80C3C46C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80C3C470  FC 40 08 90 */	fmr f2, f1
/* 80C3C474  FC 60 08 90 */	fmr f3, f1
/* 80C3C478  4B 3D E0 C1 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80C3C47C  38 7A 09 94 */	addi r3, r26, 0x994
/* 80C3C480  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C3C484  38 BA 05 38 */	addi r5, r26, 0x538
/* 80C3C488  38 C0 00 03 */	li r6, 3
/* 80C3C48C  38 E0 00 01 */	li r7, 1
/* 80C3C490  4B 68 40 A1 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80C3C494  7F 43 D3 78 */	mr r3, r26
/* 80C3C498  4B FF F5 F5 */	bl daObjKAT_Execute__FP10daObjKAT_c
/* 80C3C49C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C3C4A0  38 80 FF FF */	li r4, -1
/* 80C3C4A4  4B 43 B8 39 */	bl __dt__11dBgS_LinChkFv
lbl_80C3C4A8:
/* 80C3C4A8  7F 83 E3 78 */	mr r3, r28
lbl_80C3C4AC:
/* 80C3C4AC  39 61 01 30 */	addi r11, r1, 0x130
/* 80C3C4B0  4B 72 5D 65 */	bl _restgpr_24
/* 80C3C4B4  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80C3C4B8  7C 08 03 A6 */	mtlr r0
/* 80C3C4BC  38 21 01 30 */	addi r1, r1, 0x130
/* 80C3C4C0  4E 80 00 20 */	blr 
