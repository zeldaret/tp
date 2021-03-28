lbl_805B2AF8:
/* 805B2AF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B2AFC  7C 08 02 A6 */	mflr r0
/* 805B2B00  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B2B04  39 61 00 40 */	addi r11, r1, 0x40
/* 805B2B08  4B DA F6 C0 */	b _savegpr_24
/* 805B2B0C  7C 7F 1B 78 */	mr r31, r3
/* 805B2B10  3C 80 80 5B */	lis r4, lit_1109@ha
/* 805B2B14  3B A4 33 B0 */	addi r29, r4, lit_1109@l
/* 805B2B18  3C 80 80 5B */	lis r4, lit_3764@ha
/* 805B2B1C  3B C4 31 40 */	addi r30, r4, lit_3764@l
/* 805B2B20  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805B2B24  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805B2B28  40 82 01 9C */	bne lbl_805B2CC4
/* 805B2B2C  7F E0 FB 79 */	or. r0, r31, r31
/* 805B2B30  41 82 01 88 */	beq lbl_805B2CB8
/* 805B2B34  7C 19 03 78 */	mr r25, r0
/* 805B2B38  4B A6 60 2C */	b __ct__10fopAc_ac_cFv
/* 805B2B3C  38 79 05 BC */	addi r3, r25, 0x5bc
/* 805B2B40  4B D0 E4 24 */	b __ct__15Z2CreatureEnemyFv
/* 805B2B44  38 79 06 BC */	addi r3, r25, 0x6bc
/* 805B2B48  3C 80 80 5B */	lis r4, __ct__4cXyzFv@ha
/* 805B2B4C  38 84 30 94 */	addi r4, r4, __ct__4cXyzFv@l
/* 805B2B50  3C A0 80 5B */	lis r5, __dt__4cXyzFv@ha
/* 805B2B54  38 A5 EB 04 */	addi r5, r5, __dt__4cXyzFv@l
/* 805B2B58  38 C0 00 0C */	li r6, 0xc
/* 805B2B5C  38 E0 00 12 */	li r7, 0x12
/* 805B2B60  4B DA F2 00 */	b __construct_array
/* 805B2B64  38 79 07 94 */	addi r3, r25, 0x794
/* 805B2B68  3C 80 80 5B */	lis r4, __ct__5csXyzFv@ha
/* 805B2B6C  38 84 30 90 */	addi r4, r4, __ct__5csXyzFv@l
/* 805B2B70  3C A0 80 5B */	lis r5, __dt__5csXyzFv@ha
/* 805B2B74  38 A5 30 54 */	addi r5, r5, __dt__5csXyzFv@l
/* 805B2B78  38 C0 00 06 */	li r6, 6
/* 805B2B7C  38 E0 00 12 */	li r7, 0x12
/* 805B2B80  4B DA F1 E0 */	b __construct_array
/* 805B2B84  38 79 09 A8 */	addi r3, r25, 0x9a8
/* 805B2B88  3C 80 80 5B */	lis r4, __ct__5csXyzFv@ha
/* 805B2B8C  38 84 30 90 */	addi r4, r4, __ct__5csXyzFv@l
/* 805B2B90  3C A0 80 5B */	lis r5, __dt__5csXyzFv@ha
/* 805B2B94  38 A5 30 54 */	addi r5, r5, __dt__5csXyzFv@l
/* 805B2B98  38 C0 00 06 */	li r6, 6
/* 805B2B9C  38 E0 00 12 */	li r7, 0x12
/* 805B2BA0  4B DA F1 C0 */	b __construct_array
/* 805B2BA4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 805B2BA8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 805B2BAC  90 19 0A 4C */	stw r0, 0xa4c(r25)
/* 805B2BB0  38 79 0A 50 */	addi r3, r25, 0xa50
/* 805B2BB4  4B AD 0B AC */	b __ct__10dCcD_GSttsFv
/* 805B2BB8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805B2BBC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805B2BC0  90 79 0A 4C */	stw r3, 0xa4c(r25)
/* 805B2BC4  38 03 00 20 */	addi r0, r3, 0x20
/* 805B2BC8  90 19 0A 50 */	stw r0, 0xa50(r25)
/* 805B2BCC  3B 19 0A 70 */	addi r24, r25, 0xa70
/* 805B2BD0  7F 03 C3 78 */	mr r3, r24
/* 805B2BD4  4B AD 0E 54 */	b __ct__12dCcD_GObjInfFv
/* 805B2BD8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805B2BDC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805B2BE0  90 18 01 20 */	stw r0, 0x120(r24)
/* 805B2BE4  3C 60 80 5B */	lis r3, __vt__8cM3dGAab@ha
/* 805B2BE8  38 03 33 8C */	addi r0, r3, __vt__8cM3dGAab@l
/* 805B2BEC  90 18 01 1C */	stw r0, 0x11c(r24)
/* 805B2BF0  3C 60 80 5B */	lis r3, __vt__8cM3dGSph@ha
/* 805B2BF4  38 03 33 80 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805B2BF8  90 18 01 34 */	stw r0, 0x134(r24)
/* 805B2BFC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805B2C00  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805B2C04  90 78 01 20 */	stw r3, 0x120(r24)
/* 805B2C08  3B 83 00 58 */	addi r28, r3, 0x58
/* 805B2C0C  93 98 01 34 */	stw r28, 0x134(r24)
/* 805B2C10  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805B2C14  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805B2C18  90 78 00 3C */	stw r3, 0x3c(r24)
/* 805B2C1C  3B 63 00 2C */	addi r27, r3, 0x2c
/* 805B2C20  93 78 01 20 */	stw r27, 0x120(r24)
/* 805B2C24  3B 43 00 84 */	addi r26, r3, 0x84
/* 805B2C28  93 58 01 34 */	stw r26, 0x134(r24)
/* 805B2C2C  3B 19 0B A8 */	addi r24, r25, 0xba8
/* 805B2C30  7F 03 C3 78 */	mr r3, r24
/* 805B2C34  4B AD 0D F4 */	b __ct__12dCcD_GObjInfFv
/* 805B2C38  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805B2C3C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805B2C40  90 18 01 20 */	stw r0, 0x120(r24)
/* 805B2C44  3C 60 80 5B */	lis r3, __vt__8cM3dGAab@ha
/* 805B2C48  38 03 33 8C */	addi r0, r3, __vt__8cM3dGAab@l
/* 805B2C4C  90 18 01 1C */	stw r0, 0x11c(r24)
/* 805B2C50  3C 60 80 5B */	lis r3, __vt__8cM3dGSph@ha
/* 805B2C54  38 03 33 80 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805B2C58  90 18 01 34 */	stw r0, 0x134(r24)
/* 805B2C5C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805B2C60  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 805B2C64  90 18 01 20 */	stw r0, 0x120(r24)
/* 805B2C68  93 98 01 34 */	stw r28, 0x134(r24)
/* 805B2C6C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805B2C70  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 805B2C74  90 18 00 3C */	stw r0, 0x3c(r24)
/* 805B2C78  93 78 01 20 */	stw r27, 0x120(r24)
/* 805B2C7C  93 58 01 34 */	stw r26, 0x134(r24)
/* 805B2C80  38 79 0D 08 */	addi r3, r25, 0xd08
/* 805B2C84  4B AC 32 28 */	b __ct__12dBgS_AcchCirFv
/* 805B2C88  3B 19 0D 48 */	addi r24, r25, 0xd48
/* 805B2C8C  7F 03 C3 78 */	mr r3, r24
/* 805B2C90  4B AC 34 10 */	b __ct__9dBgS_AcchFv
/* 805B2C94  3C 60 80 5B */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 805B2C98  38 63 33 5C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 805B2C9C  90 78 00 10 */	stw r3, 0x10(r24)
/* 805B2CA0  38 03 00 0C */	addi r0, r3, 0xc
/* 805B2CA4  90 18 00 14 */	stw r0, 0x14(r24)
/* 805B2CA8  38 03 00 18 */	addi r0, r3, 0x18
/* 805B2CAC  90 18 00 24 */	stw r0, 0x24(r24)
/* 805B2CB0  38 78 00 14 */	addi r3, r24, 0x14
/* 805B2CB4  4B AC 61 B4 */	b SetObj__16dBgS_PolyPassChkFv
lbl_805B2CB8:
/* 805B2CB8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805B2CBC  60 00 00 08 */	ori r0, r0, 8
/* 805B2CC0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805B2CC4:
/* 805B2CC4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 805B2CC8  3C 80 80 5B */	lis r4, stringBase0@ha
/* 805B2CCC  38 84 32 2C */	addi r4, r4, stringBase0@l
/* 805B2CD0  4B A7 A1 EC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805B2CD4  7C 7A 1B 78 */	mr r26, r3
/* 805B2CD8  2C 1A 00 04 */	cmpwi r26, 4
/* 805B2CDC  40 82 02 5C */	bne lbl_805B2F38
/* 805B2CE0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805B2CE4  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 805B2CE8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805B2CEC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 805B2CF0  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 805B2CF4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805B2CF8  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 805B2CFC  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 805B2D00  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805B2D04  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 805B2D08  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 805B2D0C  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 805B2D10  28 00 00 FF */	cmplwi r0, 0xff
/* 805B2D14  40 82 00 0C */	bne lbl_805B2D20
/* 805B2D18  38 60 00 05 */	li r3, 5
/* 805B2D1C  48 00 02 20 */	b lbl_805B2F3C
lbl_805B2D20:
/* 805B2D20  7F E3 FB 78 */	mr r3, r31
/* 805B2D24  3C 80 80 5B */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 805B2D28  38 84 28 B0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 805B2D2C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000DB20@ha */
/* 805B2D30  38 A5 DB 20 */	addi r5, r5, 0xDB20 /* 0x0000DB20@l */
/* 805B2D34  4B A6 77 7C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805B2D38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805B2D3C  40 82 00 0C */	bne lbl_805B2D48
/* 805B2D40  38 60 00 05 */	li r3, 5
/* 805B2D44  48 00 01 F8 */	b lbl_805B2F3C
lbl_805B2D48:
/* 805B2D48  88 1D 00 3D */	lbz r0, 0x3d(r29)
/* 805B2D4C  28 00 00 00 */	cmplwi r0, 0
/* 805B2D50  40 82 00 1C */	bne lbl_805B2D6C
/* 805B2D54  38 00 00 01 */	li r0, 1
/* 805B2D58  98 1F 0F 48 */	stb r0, 0xf48(r31)
/* 805B2D5C  98 1D 00 3D */	stb r0, 0x3d(r29)
/* 805B2D60  38 00 FF FF */	li r0, -1
/* 805B2D64  38 7D 00 4C */	addi r3, r29, 0x4c
/* 805B2D68  98 03 00 04 */	stb r0, 4(r3)
lbl_805B2D6C:
/* 805B2D6C  38 00 00 04 */	li r0, 4
/* 805B2D70  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805B2D74  38 00 00 01 */	li r0, 1
/* 805B2D78  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 805B2D7C  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 805B2D80  38 7F 0A 34 */	addi r3, r31, 0xa34
/* 805B2D84  38 80 00 FD */	li r4, 0xfd
/* 805B2D88  38 A0 00 00 */	li r5, 0
/* 805B2D8C  7F E6 FB 78 */	mr r6, r31
/* 805B2D90  4B AD 0A D0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805B2D94  38 7F 0A 70 */	addi r3, r31, 0xa70
/* 805B2D98  3C 80 80 5B */	lis r4, cc_sph_src@ha
/* 805B2D9C  38 84 32 8C */	addi r4, r4, cc_sph_src@l
/* 805B2DA0  4B AD 1C 94 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805B2DA4  38 1F 0A 34 */	addi r0, r31, 0xa34
/* 805B2DA8  90 1F 0A B4 */	stw r0, 0xab4(r31)
/* 805B2DAC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 805B2DB0  3C 80 80 5B */	lis r4, tg_sph_src@ha
/* 805B2DB4  38 84 32 CC */	addi r4, r4, tg_sph_src@l
/* 805B2DB8  4B AD 1C 7C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805B2DBC  38 1F 0A 34 */	addi r0, r31, 0xa34
/* 805B2DC0  90 1F 0B EC */	stw r0, 0xbec(r31)
/* 805B2DC4  80 1F 0C 44 */	lwz r0, 0xc44(r31)
/* 805B2DC8  60 00 00 04 */	ori r0, r0, 4
/* 805B2DCC  90 1F 0C 44 */	stw r0, 0xc44(r31)
/* 805B2DD0  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 805B2DD4  90 1F 0C EC */	stw r0, 0xcec(r31)
/* 805B2DD8  38 00 00 2D */	li r0, 0x2d
/* 805B2DDC  90 1F 0C FC */	stw r0, 0xcfc(r31)
/* 805B2DE0  38 00 00 00 */	li r0, 0
/* 805B2DE4  90 01 00 08 */	stw r0, 8(r1)
/* 805B2DE8  38 7F 0D 48 */	addi r3, r31, 0xd48
/* 805B2DEC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805B2DF0  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 805B2DF4  7F E6 FB 78 */	mr r6, r31
/* 805B2DF8  38 E0 00 01 */	li r7, 1
/* 805B2DFC  39 1F 0D 08 */	addi r8, r31, 0xd08
/* 805B2E00  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 805B2E04  39 40 00 00 */	li r10, 0
/* 805B2E08  4B AC 34 40 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805B2E0C  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 805B2E10  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 805B2E14  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B2E18  4B AC 31 40 */	b SetWall__12dBgS_AcchCirFff
/* 805B2E1C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 805B2E20  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805B2E24  38 BF 05 38 */	addi r5, r31, 0x538
/* 805B2E28  38 C0 00 03 */	li r6, 3
/* 805B2E2C  38 E0 00 01 */	li r7, 1
/* 805B2E30  4B D0 E2 64 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 805B2E34  38 00 00 16 */	li r0, 0x16
/* 805B2E38  98 1F 05 46 */	stb r0, 0x546(r31)
/* 805B2E3C  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 805B2E40  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 805B2E44  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B2E48  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 805B2E4C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 805B2E50  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 805B2E54  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 805B2E58  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 805B2E5C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 805B2E60  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
/* 805B2E64  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 805B2E68  54 00 10 3A */	slwi r0, r0, 2
/* 805B2E6C  38 7D 00 64 */	addi r3, r29, 0x64
/* 805B2E70  7F E3 01 2E */	stwx r31, r3, r0
/* 805B2E74  38 60 00 00 */	li r3, 0
/* 805B2E78  4B A7 9B 04 */	b getLayerNo__14dComIfG_play_cFi
/* 805B2E7C  2C 03 00 04 */	cmpwi r3, 4
/* 805B2E80  40 82 00 34 */	bne lbl_805B2EB4
/* 805B2E84  38 00 00 0B */	li r0, 0xb
/* 805B2E88  B0 1F 06 6A */	sth r0, 0x66a(r31)
/* 805B2E8C  38 00 00 00 */	li r0, 0
/* 805B2E90  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 805B2E94  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 805B2E98  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 805B2E9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B2EA0  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 805B2EA4  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 805B2EA8  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 805B2EAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B2EB0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_805B2EB4:
/* 805B2EB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B2EB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805B2EBC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805B2EC0  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 805B2EC4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805B2EC8  7C 05 07 74 */	extsb r5, r0
/* 805B2ECC  4B A8 24 94 */	b isSwitch__10dSv_info_cCFii
/* 805B2ED0  2C 03 00 00 */	cmpwi r3, 0
/* 805B2ED4  40 82 00 44 */	bne lbl_805B2F18
/* 805B2ED8  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 805B2EDC  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)
/* 805B2EE0  28 00 00 00 */	cmplwi r0, 0
/* 805B2EE4  40 82 00 34 */	bne lbl_805B2F18
/* 805B2EE8  38 00 00 32 */	li r0, 0x32
/* 805B2EEC  B0 1F 06 6A */	sth r0, 0x66a(r31)
/* 805B2EF0  38 00 00 00 */	li r0, 0
/* 805B2EF4  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 805B2EF8  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 805B2EFC  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 805B2F00  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B2F04  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 805B2F08  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 805B2F0C  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 805B2F10  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B2F14  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_805B2F18:
/* 805B2F18  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 805B2F1C  4B CB 4A 38 */	b cM_rndF__Ff
/* 805B2F20  FC 00 08 1E */	fctiwz f0, f1
/* 805B2F24  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805B2F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B2F2C  B0 1F 06 68 */	sth r0, 0x668(r31)
/* 805B2F30  7F E3 FB 78 */	mr r3, r31
/* 805B2F34  4B FF F1 DD */	bl daB_BH_Execute__FP10b_bh_class
lbl_805B2F38:
/* 805B2F38  7F 43 D3 78 */	mr r3, r26
lbl_805B2F3C:
/* 805B2F3C  39 61 00 40 */	addi r11, r1, 0x40
/* 805B2F40  4B DA F2 D4 */	b _restgpr_24
/* 805B2F44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B2F48  7C 08 03 A6 */	mtlr r0
/* 805B2F4C  38 21 00 40 */	addi r1, r1, 0x40
/* 805B2F50  4E 80 00 20 */	blr 
