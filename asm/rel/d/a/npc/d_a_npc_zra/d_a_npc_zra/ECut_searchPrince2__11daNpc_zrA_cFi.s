lbl_80B8BCE8:
/* 80B8BCE8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B8BCEC  7C 08 02 A6 */	mflr r0
/* 80B8BCF0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B8BCF4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B8BCF8  4B 7D 64 D9 */	bl _savegpr_26
/* 80B8BCFC  7C 7D 1B 78 */	mr r29, r3
/* 80B8BD00  7C 9B 23 78 */	mr r27, r4
/* 80B8BD04  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B8BD08  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B8BD0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B8BD10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B8BD14  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80B8BD18  3B C0 00 00 */	li r30, 0
/* 80B8BD1C  3B 40 FF FF */	li r26, -1
/* 80B8BD20  7F 83 E3 78 */	mr r3, r28
/* 80B8BD24  3C A0 80 B9 */	lis r5, d_a_npc_zra__stringBase0@ha /* 0x80B8CD30@ha */
/* 80B8BD28  38 A5 CD 30 */	addi r5, r5, d_a_npc_zra__stringBase0@l /* 0x80B8CD30@l */
/* 80B8BD2C  38 A5 01 5B */	addi r5, r5, 0x15b
/* 80B8BD30  38 C0 00 03 */	li r6, 3
/* 80B8BD34  4B 4B C3 B9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B8BD38  28 03 00 00 */	cmplwi r3, 0
/* 80B8BD3C  41 82 00 08 */	beq lbl_80B8BD44
/* 80B8BD40  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B8BD44:
/* 80B8BD44  7F 83 E3 78 */	mr r3, r28
/* 80B8BD48  7F 64 DB 78 */	mr r4, r27
/* 80B8BD4C  4B 4B C0 01 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B8BD50  2C 03 00 00 */	cmpwi r3, 0
/* 80B8BD54  41 82 01 3C */	beq lbl_80B8BE90
/* 80B8BD58  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 80B8BD5C  41 82 00 A0 */	beq lbl_80B8BDFC
/* 80B8BD60  40 80 00 28 */	bge lbl_80B8BD88
/* 80B8BD64  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80B8BD68  41 82 01 28 */	beq lbl_80B8BE90
/* 80B8BD6C  40 80 00 10 */	bge lbl_80B8BD7C
/* 80B8BD70  2C 1A 00 00 */	cmpwi r26, 0
/* 80B8BD74  41 82 00 2C */	beq lbl_80B8BDA0
/* 80B8BD78  48 00 01 18 */	b lbl_80B8BE90
lbl_80B8BD7C:
/* 80B8BD7C  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80B8BD80  41 82 00 30 */	beq lbl_80B8BDB0
/* 80B8BD84  48 00 01 0C */	b lbl_80B8BE90
lbl_80B8BD88:
/* 80B8BD88  2C 1A 00 32 */	cmpwi r26, 0x32
/* 80B8BD8C  41 82 01 04 */	beq lbl_80B8BE90
/* 80B8BD90  40 80 01 00 */	bge lbl_80B8BE90
/* 80B8BD94  2C 1A 00 28 */	cmpwi r26, 0x28
/* 80B8BD98  41 82 00 A4 */	beq lbl_80B8BE3C
/* 80B8BD9C  48 00 00 F4 */	b lbl_80B8BE90
lbl_80B8BDA0:
/* 80B8BDA0  7F A3 EB 78 */	mr r3, r29
/* 80B8BDA4  38 80 00 04 */	li r4, 4
/* 80B8BDA8  4B FF 29 4D */	bl setLookMode__11daNpc_zrA_cFi
/* 80B8BDAC  48 00 00 E4 */	b lbl_80B8BE90
lbl_80B8BDB0:
/* 80B8BDB0  7F A3 EB 78 */	mr r3, r29
/* 80B8BDB4  38 80 00 00 */	li r4, 0
/* 80B8BDB8  4B FF 29 3D */	bl setLookMode__11daNpc_zrA_cFi
/* 80B8BDBC  7F A3 EB 78 */	mr r3, r29
/* 80B8BDC0  38 80 00 14 */	li r4, 0x14
/* 80B8BDC4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8BDC8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B8BDCC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8BDD0  7D 89 03 A6 */	mtctr r12
/* 80B8BDD4  4E 80 04 21 */	bctrl 
/* 80B8BDD8  7F A3 EB 78 */	mr r3, r29
/* 80B8BDDC  38 80 00 20 */	li r4, 0x20
/* 80B8BDE0  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8BDE4  38 A0 00 00 */	li r5, 0
/* 80B8BDE8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B8BDEC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8BDF0  7D 89 03 A6 */	mtctr r12
/* 80B8BDF4  4E 80 04 21 */	bctrl 
/* 80B8BDF8  48 00 00 98 */	b lbl_80B8BE90
lbl_80B8BDFC:
/* 80B8BDFC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8BE00  D0 1D 15 44 */	stfs f0, 0x1544(r29)
/* 80B8BE04  C0 1F 08 BC */	lfs f0, 0x8bc(r31)
/* 80B8BE08  D0 1D 15 48 */	stfs f0, 0x1548(r29)
/* 80B8BE0C  C0 1F 08 C0 */	lfs f0, 0x8c0(r31)
/* 80B8BE10  D0 1D 15 4C */	stfs f0, 0x154c(r29)
/* 80B8BE14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8BE18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8BE1C  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80B8BE20  4B 48 05 BD */	bl mDoMtx_YrotS__FPA4_fs
/* 80B8BE24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8BE28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8BE2C  38 9D 15 44 */	addi r4, r29, 0x1544
/* 80B8BE30  7C 85 23 78 */	mr r5, r4
/* 80B8BE34  4B 7B AF 39 */	bl PSMTXMultVec
/* 80B8BE38  48 00 00 58 */	b lbl_80B8BE90
lbl_80B8BE3C:
/* 80B8BE3C  7F A3 EB 78 */	mr r3, r29
/* 80B8BE40  38 80 00 14 */	li r4, 0x14
/* 80B8BE44  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8BE48  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B8BE4C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8BE50  7D 89 03 A6 */	mtctr r12
/* 80B8BE54  4E 80 04 21 */	bctrl 
/* 80B8BE58  7F A3 EB 78 */	mr r3, r29
/* 80B8BE5C  38 80 00 22 */	li r4, 0x22
/* 80B8BE60  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8BE64  38 A0 00 00 */	li r5, 0
/* 80B8BE68  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B8BE6C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8BE70  7D 89 03 A6 */	mtctr r12
/* 80B8BE74  4E 80 04 21 */	bctrl 
/* 80B8BE78  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B8BE7C  B0 1D 15 36 */	sth r0, 0x1536(r29)
/* 80B8BE80  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B8BE84  B0 1D 15 38 */	sth r0, 0x1538(r29)
/* 80B8BE88  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80B8BE8C  B0 1D 15 3A */	sth r0, 0x153a(r29)
lbl_80B8BE90:
/* 80B8BE90  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 80B8BE94  41 82 01 68 */	beq lbl_80B8BFFC
/* 80B8BE98  40 80 00 28 */	bge lbl_80B8BEC0
/* 80B8BE9C  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80B8BEA0  41 82 00 40 */	beq lbl_80B8BEE0
/* 80B8BEA4  40 80 00 10 */	bge lbl_80B8BEB4
/* 80B8BEA8  2C 1A 00 00 */	cmpwi r26, 0
/* 80B8BEAC  41 82 00 2C */	beq lbl_80B8BED8
/* 80B8BEB0  48 00 05 18 */	b lbl_80B8C3C8
lbl_80B8BEB4:
/* 80B8BEB4  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80B8BEB8  41 82 00 30 */	beq lbl_80B8BEE8
/* 80B8BEBC  48 00 05 0C */	b lbl_80B8C3C8
lbl_80B8BEC0:
/* 80B8BEC0  2C 1A 00 32 */	cmpwi r26, 0x32
/* 80B8BEC4  41 82 02 DC */	beq lbl_80B8C1A0
/* 80B8BEC8  40 80 05 00 */	bge lbl_80B8C3C8
/* 80B8BECC  2C 1A 00 28 */	cmpwi r26, 0x28
/* 80B8BED0  41 82 02 60 */	beq lbl_80B8C130
/* 80B8BED4  48 00 04 F4 */	b lbl_80B8C3C8
lbl_80B8BED8:
/* 80B8BED8  3B C0 00 01 */	li r30, 1
/* 80B8BEDC  48 00 04 F0 */	b lbl_80B8C3CC
lbl_80B8BEE0:
/* 80B8BEE0  3B C0 00 01 */	li r30, 1
/* 80B8BEE4  48 00 04 E8 */	b lbl_80B8C3CC
lbl_80B8BEE8:
/* 80B8BEE8  80 1D 14 EC */	lwz r0, 0x14ec(r29)
/* 80B8BEEC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80B8BEF0  40 82 00 FC */	bne lbl_80B8BFEC
/* 80B8BEF4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B8BEF8  38 80 00 01 */	li r4, 1
/* 80B8BEFC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80B8BF00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B8BF04  40 82 00 18 */	bne lbl_80B8BF1C
/* 80B8BF08  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B8BF0C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B8BF10  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B8BF14  41 82 00 08 */	beq lbl_80B8BF1C
/* 80B8BF18  38 80 00 00 */	li r4, 0
lbl_80B8BF1C:
/* 80B8BF1C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B8BF20  41 82 00 AC */	beq lbl_80B8BFCC
/* 80B8BF24  C0 1F 08 A4 */	lfs f0, 0x8a4(r31)
/* 80B8BF28  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B8BF2C  C0 1F 08 C4 */	lfs f0, 0x8c4(r31)
/* 80B8BF30  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B8BF34  C0 1F 08 C8 */	lfs f0, 0x8c8(r31)
/* 80B8BF38  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B8BF3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8BF40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8BF44  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80B8BF48  4B 48 04 95 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B8BF4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8BF50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8BF54  38 81 00 70 */	addi r4, r1, 0x70
/* 80B8BF58  7C 85 23 78 */	mr r5, r4
/* 80B8BF5C  4B 7B AE 11 */	bl PSMTXMultVec
/* 80B8BF60  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B8BF64  38 81 00 70 */	addi r4, r1, 0x70
/* 80B8BF68  7C 65 1B 78 */	mr r5, r3
/* 80B8BF6C  4B 7B B1 25 */	bl PSVECAdd
/* 80B8BF70  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B8BF74  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80B8BF78  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B8BF7C  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80B8BF80  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B8BF84  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80B8BF88  7F A3 EB 78 */	mr r3, r29
/* 80B8BF8C  38 80 00 14 */	li r4, 0x14
/* 80B8BF90  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B8BF94  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B8BF98  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8BF9C  7D 89 03 A6 */	mtctr r12
/* 80B8BFA0  4E 80 04 21 */	bctrl 
/* 80B8BFA4  7F A3 EB 78 */	mr r3, r29
/* 80B8BFA8  38 80 00 21 */	li r4, 0x21
/* 80B8BFAC  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B8BFB0  38 A0 00 00 */	li r5, 0
/* 80B8BFB4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B8BFB8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8BFBC  7D 89 03 A6 */	mtctr r12
/* 80B8BFC0  4E 80 04 21 */	bctrl 
/* 80B8BFC4  3B C0 00 01 */	li r30, 1
/* 80B8BFC8  48 00 04 04 */	b lbl_80B8C3CC
lbl_80B8BFCC:
/* 80B8BFCC  38 7D 08 F2 */	addi r3, r29, 0x8f2
/* 80B8BFD0  38 80 2D CA */	li r4, 0x2dca
/* 80B8BFD4  38 A0 02 00 */	li r5, 0x200
/* 80B8BFD8  4B 6E 4B B9 */	bl cLib_chaseAngleS__FPsss
/* 80B8BFDC  7F A3 EB 78 */	mr r3, r29
/* 80B8BFE0  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80B8BFE4  4B 5C 82 6D */	bl setAngle__8daNpcF_cFs
/* 80B8BFE8  48 00 03 E4 */	b lbl_80B8C3CC
lbl_80B8BFEC:
/* 80B8BFEC  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80B8BFF0  40 82 03 DC */	bne lbl_80B8C3CC
/* 80B8BFF4  3B C0 00 01 */	li r30, 1
/* 80B8BFF8  48 00 03 D4 */	b lbl_80B8C3CC
lbl_80B8BFFC:
/* 80B8BFFC  80 1D 14 EC */	lwz r0, 0x14ec(r29)
/* 80B8C000  2C 00 00 20 */	cmpwi r0, 0x20
/* 80B8C004  40 82 00 0C */	bne lbl_80B8C010
/* 80B8C008  3B C0 00 01 */	li r30, 1
/* 80B8C00C  48 00 01 00 */	b lbl_80B8C10C
lbl_80B8C010:
/* 80B8C010  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B8C014  38 81 00 10 */	addi r4, r1, 0x10
/* 80B8C018  4B 49 18 79 */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 80B8C01C  2C 03 00 00 */	cmpwi r3, 0
/* 80B8C020  41 82 00 EC */	beq lbl_80B8C10C
/* 80B8C024  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B8C028  80 63 00 04 */	lwz r3, 4(r3)
/* 80B8C02C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B8C030  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B8C034  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B8C038  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8C03C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8C040  4B 7B A4 71 */	bl PSMTXCopy
/* 80B8C044  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 80B8C048  4B 48 0E 29 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B8C04C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8C050  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8C054  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80B8C058  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80B8C05C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B8C060  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80B8C064  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B8C068  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B8C06C  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80B8C070  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 80B8C074  4C 40 13 82 */	cror 2, 0, 2
/* 80B8C078  40 82 00 94 */	bne lbl_80B8C10C
/* 80B8C07C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80B8C080  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80B8C084  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B8C088  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 80B8C08C  38 61 00 58 */	addi r3, r1, 0x58
/* 80B8C090  C0 3F 07 88 */	lfs f1, 0x788(r31)
/* 80B8C094  38 80 00 00 */	li r4, 0
/* 80B8C098  4B 49 37 E5 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 80B8C09C  7F A3 EB 78 */	mr r3, r29
/* 80B8C0A0  38 80 00 14 */	li r4, 0x14
/* 80B8C0A4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8C0A8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B8C0AC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8C0B0  7D 89 03 A6 */	mtctr r12
/* 80B8C0B4  4E 80 04 21 */	bctrl 
/* 80B8C0B8  7F A3 EB 78 */	mr r3, r29
/* 80B8C0BC  38 80 00 22 */	li r4, 0x22
/* 80B8C0C0  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8C0C4  38 A0 00 00 */	li r5, 0
/* 80B8C0C8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B8C0CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8C0D0  7D 89 03 A6 */	mtctr r12
/* 80B8C0D4  4E 80 04 21 */	bctrl 
/* 80B8C0D8  3B C0 00 01 */	li r30, 1
/* 80B8C0DC  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600C4@ha */
/* 80B8C0E0  38 03 00 C4 */	addi r0, r3, 0x00C4 /* 0x000600C4@l */
/* 80B8C0E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B8C0E8  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B8C0EC  38 81 00 0C */	addi r4, r1, 0xc
/* 80B8C0F0  38 A0 00 00 */	li r5, 0
/* 80B8C0F4  38 C0 FF FF */	li r6, -1
/* 80B8C0F8  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B8C0FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B8C100  7D 89 03 A6 */	mtctr r12
/* 80B8C104  4E 80 04 21 */	bctrl 
/* 80B8C108  48 00 02 C4 */	b lbl_80B8C3CC
lbl_80B8C10C:
/* 80B8C10C  C0 3D 15 48 */	lfs f1, 0x1548(r29)
/* 80B8C110  C0 1F 07 CC */	lfs f0, 0x7cc(r31)
/* 80B8C114  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B8C118  D0 1D 15 48 */	stfs f0, 0x1548(r29)
/* 80B8C11C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B8C120  38 9D 15 44 */	addi r4, r29, 0x1544
/* 80B8C124  7C 65 1B 78 */	mr r5, r3
/* 80B8C128  4B 7B AF 69 */	bl PSVECAdd
/* 80B8C12C  48 00 02 A0 */	b lbl_80B8C3CC
lbl_80B8C130:
/* 80B8C130  80 1D 14 EC */	lwz r0, 0x14ec(r29)
/* 80B8C134  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80B8C138  40 82 00 08 */	bne lbl_80B8C140
/* 80B8C13C  3B C0 00 01 */	li r30, 1
lbl_80B8C140:
/* 80B8C140  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8C144  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B8C148  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B8C14C  38 7F 00 00 */	addi r3, r31, 0
/* 80B8C150  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B8C154  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B8C158  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8C15C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8C160  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80B8C164  4B 48 02 79 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B8C168  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8C16C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8C170  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B8C174  7C 85 23 78 */	mr r5, r4
/* 80B8C178  4B 7B AB F5 */	bl PSMTXMultVec
/* 80B8C17C  38 7D 15 44 */	addi r3, r29, 0x1544
/* 80B8C180  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B8C184  C0 3F 08 28 */	lfs f1, 0x828(r31)
/* 80B8C188  4B 6E 46 25 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B8C18C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B8C190  38 9D 15 44 */	addi r4, r29, 0x1544
/* 80B8C194  7C 65 1B 78 */	mr r5, r3
/* 80B8C198  4B 7B AE F9 */	bl PSVECAdd
/* 80B8C19C  48 00 02 30 */	b lbl_80B8C3CC
lbl_80B8C1A0:
/* 80B8C1A0  C0 1F 08 CC */	lfs f0, 0x8cc(r31)
/* 80B8C1A4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B8C1A8  C0 1F 08 D0 */	lfs f0, 0x8d0(r31)
/* 80B8C1AC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B8C1B0  C0 1F 08 D4 */	lfs f0, 0x8d4(r31)
/* 80B8C1B4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B8C1B8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8C1BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B8C1C0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B8C1C4  3B 9F 00 00 */	addi r28, r31, 0
/* 80B8C1C8  C0 1C 00 6C */	lfs f0, 0x6c(r28)
/* 80B8C1CC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B8C1D0  38 61 00 40 */	addi r3, r1, 0x40
/* 80B8C1D4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B8C1D8  4B 6E 4A 9D */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B8C1DC  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80B8C1E0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B8C1E4  38 81 00 40 */	addi r4, r1, 0x40
/* 80B8C1E8  4B 6E 4A 1D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B8C1EC  3B 41 00 16 */	addi r26, r1, 0x16
/* 80B8C1F0  B0 61 00 16 */	sth r3, 0x16(r1)
/* 80B8C1F4  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80B8C1F8  3B 61 00 18 */	addi r27, r1, 0x18
/* 80B8C1FC  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80B8C200  C0 3C 00 6C */	lfs f1, 0x6c(r28)
/* 80B8C204  C0 1C 00 78 */	lfs f0, 0x78(r28)
/* 80B8C208  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B8C20C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B8C210  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B8C214  7F A3 EB 78 */	mr r3, r29
/* 80B8C218  38 81 00 14 */	addi r4, r1, 0x14
/* 80B8C21C  38 BD 15 36 */	addi r5, r29, 0x1536
/* 80B8C220  38 C0 00 17 */	li r6, 0x17
/* 80B8C224  A8 1C 00 74 */	lha r0, 0x74(r28)
/* 80B8C228  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B8C22C  7C 00 01 94 */	addze r0, r0
/* 80B8C230  7C 07 07 34 */	extsh r7, r0
/* 80B8C234  4B FF 62 C1 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B8C238  7F A3 EB 78 */	mr r3, r29
/* 80B8C23C  38 81 00 34 */	addi r4, r1, 0x34
/* 80B8C240  4B FF 63 45 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B8C244  7F A3 EB 78 */	mr r3, r29
/* 80B8C248  A8 1C 00 74 */	lha r0, 0x74(r28)
/* 80B8C24C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B8C250  7C 00 01 94 */	addze r0, r0
/* 80B8C254  7C 04 07 34 */	extsh r4, r0
/* 80B8C258  38 A0 00 10 */	li r5, 0x10
/* 80B8C25C  7F 46 D3 78 */	mr r6, r26
/* 80B8C260  7F 67 DB 78 */	mr r7, r27
/* 80B8C264  4B FF 5D 55 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B8C268  A8 01 00 18 */	lha r0, 0x18(r1)
/* 80B8C26C  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 80B8C270  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B8C274  B0 1D 08 F0 */	sth r0, 0x8f0(r29)
/* 80B8C278  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B8C27C  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80B8C280  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80B8C284  B0 1D 08 F4 */	sth r0, 0x8f4(r29)
/* 80B8C288  A8 1D 08 F0 */	lha r0, 0x8f0(r29)
/* 80B8C28C  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80B8C290  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B8C294  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B8C298  A8 1D 08 F4 */	lha r0, 0x8f4(r29)
/* 80B8C29C  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80B8C2A0  38 61 00 28 */	addi r3, r1, 0x28
/* 80B8C2A4  38 81 00 40 */	addi r4, r1, 0x40
/* 80B8C2A8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B8C2AC  4B 6D A8 89 */	bl __mi__4cXyzCFRC3Vec
/* 80B8C2B0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80B8C2B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B8C2B8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8C2BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B8C2C0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B8C2C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B8C2C8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B8C2CC  4B 7B AE 6D */	bl PSVECSquareMag
/* 80B8C2D0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8C2D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8C2D8  40 81 00 58 */	ble lbl_80B8C330
/* 80B8C2DC  FC 00 08 34 */	frsqrte f0, f1
/* 80B8C2E0  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B8C2E4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8C2E8  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B8C2EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8C2F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8C2F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8C2F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8C2FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8C300  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8C304  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8C308  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8C30C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8C310  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8C314  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8C318  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8C31C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8C320  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8C324  FC 21 00 32 */	fmul f1, f1, f0
/* 80B8C328  FC 20 08 18 */	frsp f1, f1
/* 80B8C32C  48 00 00 88 */	b lbl_80B8C3B4
lbl_80B8C330:
/* 80B8C330  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B8C334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8C338  40 80 00 10 */	bge lbl_80B8C348
/* 80B8C33C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B8C340  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B8C344  48 00 00 70 */	b lbl_80B8C3B4
lbl_80B8C348:
/* 80B8C348  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B8C34C  80 81 00 08 */	lwz r4, 8(r1)
/* 80B8C350  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B8C354  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B8C358  7C 03 00 00 */	cmpw r3, r0
/* 80B8C35C  41 82 00 14 */	beq lbl_80B8C370
/* 80B8C360  40 80 00 40 */	bge lbl_80B8C3A0
/* 80B8C364  2C 03 00 00 */	cmpwi r3, 0
/* 80B8C368  41 82 00 20 */	beq lbl_80B8C388
/* 80B8C36C  48 00 00 34 */	b lbl_80B8C3A0
lbl_80B8C370:
/* 80B8C370  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8C374  41 82 00 0C */	beq lbl_80B8C380
/* 80B8C378  38 00 00 01 */	li r0, 1
/* 80B8C37C  48 00 00 28 */	b lbl_80B8C3A4
lbl_80B8C380:
/* 80B8C380  38 00 00 02 */	li r0, 2
/* 80B8C384  48 00 00 20 */	b lbl_80B8C3A4
lbl_80B8C388:
/* 80B8C388  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8C38C  41 82 00 0C */	beq lbl_80B8C398
/* 80B8C390  38 00 00 05 */	li r0, 5
/* 80B8C394  48 00 00 10 */	b lbl_80B8C3A4
lbl_80B8C398:
/* 80B8C398  38 00 00 03 */	li r0, 3
/* 80B8C39C  48 00 00 08 */	b lbl_80B8C3A4
lbl_80B8C3A0:
/* 80B8C3A0  38 00 00 04 */	li r0, 4
lbl_80B8C3A4:
/* 80B8C3A4  2C 00 00 01 */	cmpwi r0, 1
/* 80B8C3A8  40 82 00 0C */	bne lbl_80B8C3B4
/* 80B8C3AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B8C3B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B8C3B4:
/* 80B8C3B4  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 80B8C3B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8C3BC  40 80 00 10 */	bge lbl_80B8C3CC
/* 80B8C3C0  3B C0 00 01 */	li r30, 1
/* 80B8C3C4  48 00 00 08 */	b lbl_80B8C3CC
lbl_80B8C3C8:
/* 80B8C3C8  3B C0 00 01 */	li r30, 1
lbl_80B8C3CC:
/* 80B8C3CC  7F C3 F3 78 */	mr r3, r30
/* 80B8C3D0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B8C3D4  4B 7D 5E 49 */	bl _restgpr_26
/* 80B8C3D8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B8C3DC  7C 08 03 A6 */	mtlr r0
/* 80B8C3E0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B8C3E4  4E 80 00 20 */	blr 
