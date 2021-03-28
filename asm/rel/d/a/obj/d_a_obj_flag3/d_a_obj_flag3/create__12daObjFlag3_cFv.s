lbl_80BEF95C:
/* 80BEF95C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BEF960  7C 08 02 A6 */	mflr r0
/* 80BEF964  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BEF968  39 61 00 20 */	addi r11, r1, 0x20
/* 80BEF96C  4B 77 28 70 */	b _savegpr_29
/* 80BEF970  7C 7F 1B 78 */	mr r31, r3
/* 80BEF974  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BEF978  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BEF97C  40 82 01 80 */	bne lbl_80BEFAFC
/* 80BEF980  7F E0 FB 79 */	or. r0, r31, r31
/* 80BEF984  41 82 01 6C */	beq lbl_80BEFAF0
/* 80BEF988  7C 1E 03 78 */	mr r30, r0
/* 80BEF98C  4B 42 91 D8 */	b __ct__10fopAc_ac_cFv
/* 80BEF990  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80BEF994  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80BEF998  90 1E 05 80 */	stw r0, 0x580(r30)
/* 80BEF99C  38 00 00 00 */	li r0, 0
/* 80BEF9A0  90 1E 05 84 */	stw r0, 0x584(r30)
/* 80BEF9A4  90 1E 05 88 */	stw r0, 0x588(r30)
/* 80BEF9A8  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80BEF9AC  3C 60 80 BF */	lis r3, __vt__12FlagCloth2_c@ha
/* 80BEF9B0  38 03 06 0C */	addi r0, r3, __vt__12FlagCloth2_c@l
/* 80BEF9B4  90 1E 05 80 */	stw r0, 0x580(r30)
/* 80BEF9B8  3B BE 05 B0 */	addi r29, r30, 0x5b0
/* 80BEF9BC  7F A3 EB 78 */	mr r3, r29
/* 80BEF9C0  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 80BEF9C4  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 80BEF9C8  4B 73 5C FC */	b __as__12J3DLightInfoFRC12J3DLightInfo
/* 80BEF9CC  38 7D 00 74 */	addi r3, r29, 0x74
/* 80BEF9D0  3C 80 80 BF */	lis r4, __ct__11J3DLightObjFv@ha
/* 80BEF9D4  38 84 00 20 */	addi r4, r4, __ct__11J3DLightObjFv@l
/* 80BEF9D8  38 A0 00 00 */	li r5, 0
/* 80BEF9DC  38 C0 00 74 */	li r6, 0x74
/* 80BEF9E0  38 E0 00 06 */	li r7, 6
/* 80BEF9E4  4B 77 23 7C */	b __construct_array
/* 80BEF9E8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BEF9EC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BEF9F0  90 1E 09 50 */	stw r0, 0x950(r30)
/* 80BEF9F4  38 7E 09 54 */	addi r3, r30, 0x954
/* 80BEF9F8  4B 49 3D 68 */	b __ct__10dCcD_GSttsFv
/* 80BEF9FC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BEFA00  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BEFA04  90 7E 09 50 */	stw r3, 0x950(r30)
/* 80BEFA08  38 03 00 20 */	addi r0, r3, 0x20
/* 80BEFA0C  90 1E 09 54 */	stw r0, 0x954(r30)
/* 80BEFA10  3B BE 09 74 */	addi r29, r30, 0x974
/* 80BEFA14  7F A3 EB 78 */	mr r3, r29
/* 80BEFA18  4B 49 40 10 */	b __ct__12dCcD_GObjInfFv
/* 80BEFA1C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BEFA20  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BEFA24  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BEFA28  3C 60 80 BF */	lis r3, __vt__8cM3dGAab@ha
/* 80BEFA2C  38 03 05 F4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BEFA30  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80BEFA34  3C 60 80 BF */	lis r3, __vt__8cM3dGSph@ha
/* 80BEFA38  38 03 06 00 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80BEFA3C  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80BEFA40  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80BEFA44  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80BEFA48  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80BEFA4C  38 03 00 58 */	addi r0, r3, 0x58
/* 80BEFA50  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80BEFA54  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80BEFA58  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80BEFA5C  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80BEFA60  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BEFA64  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BEFA68  38 03 00 84 */	addi r0, r3, 0x84
/* 80BEFA6C  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80BEFA70  38 7E 0A C0 */	addi r3, r30, 0xac0
/* 80BEFA74  3C 80 80 BF */	lis r4, __ct__4cXyzFv@ha
/* 80BEFA78  38 84 FF 30 */	addi r4, r4, __ct__4cXyzFv@l
/* 80BEFA7C  3C A0 80 BF */	lis r5, __dt__4cXyzFv@ha
/* 80BEFA80  38 A5 ED A8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80BEFA84  38 C0 00 0C */	li r6, 0xc
/* 80BEFA88  38 E0 00 24 */	li r7, 0x24
/* 80BEFA8C  4B 77 22 D4 */	b __construct_array
/* 80BEFA90  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80BEFA94  3C 80 80 BF */	lis r4, __ct__4cXyzFv@ha
/* 80BEFA98  38 84 FF 30 */	addi r4, r4, __ct__4cXyzFv@l
/* 80BEFA9C  3C A0 80 BF */	lis r5, __dt__4cXyzFv@ha
/* 80BEFAA0  38 A5 ED A8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80BEFAA4  38 C0 00 0C */	li r6, 0xc
/* 80BEFAA8  38 E0 00 24 */	li r7, 0x24
/* 80BEFAAC  4B 77 22 B4 */	b __construct_array
/* 80BEFAB0  38 7E 0E 40 */	addi r3, r30, 0xe40
/* 80BEFAB4  3C 80 80 BF */	lis r4, __ct__4cXyzFv@ha
/* 80BEFAB8  38 84 FF 30 */	addi r4, r4, __ct__4cXyzFv@l
/* 80BEFABC  3C A0 80 BF */	lis r5, __dt__4cXyzFv@ha
/* 80BEFAC0  38 A5 ED A8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80BEFAC4  38 C0 00 0C */	li r6, 0xc
/* 80BEFAC8  38 E0 00 24 */	li r7, 0x24
/* 80BEFACC  4B 77 22 94 */	b __construct_array
/* 80BEFAD0  38 7E 11 20 */	addi r3, r30, 0x1120
/* 80BEFAD4  3C 80 80 BF */	lis r4, __ct__4cXyzFv@ha
/* 80BEFAD8  38 84 FF 30 */	addi r4, r4, __ct__4cXyzFv@l
/* 80BEFADC  3C A0 80 BF */	lis r5, __dt__4cXyzFv@ha
/* 80BEFAE0  38 A5 ED A8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80BEFAE4  38 C0 00 0C */	li r6, 0xc
/* 80BEFAE8  38 E0 00 24 */	li r7, 0x24
/* 80BEFAEC  4B 77 22 74 */	b __construct_array
lbl_80BEFAF0:
/* 80BEFAF0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BEFAF4  60 00 00 08 */	ori r0, r0, 8
/* 80BEFAF8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BEFAFC:
/* 80BEFAFC  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80BEFB00  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BEFB04  7C 05 07 74 */	extsb r5, r0
/* 80BEFB08  2C 05 FF FF */	cmpwi r5, -1
/* 80BEFB0C  40 81 00 0C */	ble lbl_80BEFB18
/* 80BEFB10  2C 05 00 63 */	cmpwi r5, 0x63
/* 80BEFB14  40 81 00 10 */	ble lbl_80BEFB24
lbl_80BEFB18:
/* 80BEFB18  38 00 00 00 */	li r0, 0
/* 80BEFB1C  98 1F 13 2C */	stb r0, 0x132c(r31)
/* 80BEFB20  48 00 00 3C */	b lbl_80BEFB5C
lbl_80BEFB24:
/* 80BEFB24  38 00 00 01 */	li r0, 1
/* 80BEFB28  98 1F 13 2C */	stb r0, 0x132c(r31)
/* 80BEFB2C  38 7F 13 2D */	addi r3, r31, 0x132d
/* 80BEFB30  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BEFB34  38 84 05 54 */	addi r4, r4, stringBase0@l
/* 80BEFB38  38 84 00 21 */	addi r4, r4, 0x21
/* 80BEFB3C  4C C6 31 82 */	crclr 6
/* 80BEFB40  4B 77 69 9C */	b sprintf
/* 80BEFB44  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80BEFB48  38 9F 13 2D */	addi r4, r31, 0x132d
/* 80BEFB4C  4B 43 D3 70 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BEFB50  2C 03 00 04 */	cmpwi r3, 4
/* 80BEFB54  41 82 00 08 */	beq lbl_80BEFB5C
/* 80BEFB58  48 00 00 54 */	b lbl_80BEFBAC
lbl_80BEFB5C:
/* 80BEFB5C  7F E3 FB 78 */	mr r3, r31
/* 80BEFB60  4B 44 1D 10 */	b getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 80BEFB64  7C 64 1B 78 */	mr r4, r3
/* 80BEFB68  38 7F 05 74 */	addi r3, r31, 0x574
/* 80BEFB6C  4B 43 D3 50 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BEFB70  7C 7D 1B 78 */	mr r29, r3
/* 80BEFB74  2C 1D 00 04 */	cmpwi r29, 4
/* 80BEFB78  40 82 00 30 */	bne lbl_80BEFBA8
/* 80BEFB7C  7F E3 FB 78 */	mr r3, r31
/* 80BEFB80  3C 80 80 BF */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha
/* 80BEFB84  38 84 EC 3C */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l
/* 80BEFB88  38 A0 40 00 */	li r5, 0x4000
/* 80BEFB8C  4B 42 A9 24 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BEFB90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BEFB94  40 82 00 0C */	bne lbl_80BEFBA0
/* 80BEFB98  38 60 00 05 */	li r3, 5
/* 80BEFB9C  48 00 00 10 */	b lbl_80BEFBAC
lbl_80BEFBA0:
/* 80BEFBA0  7F E3 FB 78 */	mr r3, r31
/* 80BEFBA4  48 00 00 21 */	bl create_init__12daObjFlag3_cFv
lbl_80BEFBA8:
/* 80BEFBA8  7F A3 EB 78 */	mr r3, r29
lbl_80BEFBAC:
/* 80BEFBAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BEFBB0  4B 77 26 78 */	b _restgpr_29
/* 80BEFBB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BEFBB8  7C 08 03 A6 */	mtlr r0
/* 80BEFBBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BEFBC0  4E 80 00 20 */	blr 
