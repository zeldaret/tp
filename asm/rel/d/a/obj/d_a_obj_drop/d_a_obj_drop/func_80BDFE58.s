lbl_80BDFE58:
/* 80BDFE58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDFE5C  7C 08 02 A6 */	mflr r0
/* 80BDFE60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDFE64  39 61 00 20 */	addi r11, r1, 0x20
/* 80BDFE68  4B 78 23 75 */	bl _savegpr_29
/* 80BDFE6C  7C 7F 1B 78 */	mr r31, r3
/* 80BDFE70  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BDFE74  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BDFE78  40 82 01 88 */	bne lbl_80BE0000
/* 80BDFE7C  7F E0 FB 79 */	or. r0, r31, r31
/* 80BDFE80  41 82 01 74 */	beq lbl_80BDFFF4
/* 80BDFE84  7C 1E 03 78 */	mr r30, r0
/* 80BDFE88  4B 43 8C DD */	bl __ct__10fopAc_ac_cFv
/* 80BDFE8C  38 7E 05 68 */	addi r3, r30, 0x568
/* 80BDFE90  3C 80 80 BE */	lis r4, __ct__4cXyzFv@ha /* 0x80BE0354@ha */
/* 80BDFE94  38 84 03 54 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BE0354@l */
/* 80BDFE98  3C A0 80 BE */	lis r5, __dt__4cXyzFv@ha /* 0x80BE0318@ha */
/* 80BDFE9C  38 A5 03 18 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BE0318@l */
/* 80BDFEA0  38 C0 00 0C */	li r6, 0xc
/* 80BDFEA4  38 E0 00 03 */	li r7, 3
/* 80BDFEA8  4B 78 1E B9 */	bl __construct_array
/* 80BDFEAC  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80BDFEB0  3C 80 80 BE */	lis r4, __ct__4cXyzFv@ha /* 0x80BE0354@ha */
/* 80BDFEB4  38 84 03 54 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BE0354@l */
/* 80BDFEB8  3C A0 80 BE */	lis r5, __dt__4cXyzFv@ha /* 0x80BE0318@ha */
/* 80BDFEBC  38 A5 03 18 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BE0318@l */
/* 80BDFEC0  38 C0 00 0C */	li r6, 0xc
/* 80BDFEC4  38 E0 00 03 */	li r7, 3
/* 80BDFEC8  4B 78 1E 99 */	bl __construct_array
/* 80BDFECC  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80BDFED0  3C 80 80 BE */	lis r4, __ct__5csXyzFv@ha /* 0x80BE0314@ha */
/* 80BDFED4  38 84 03 14 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80BE0314@l */
/* 80BDFED8  3C A0 80 BE */	lis r5, __dt__5csXyzFv@ha /* 0x80BE02D8@ha */
/* 80BDFEDC  38 A5 02 D8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80BE02D8@l */
/* 80BDFEE0  38 C0 00 06 */	li r6, 6
/* 80BDFEE4  38 E0 00 03 */	li r7, 3
/* 80BDFEE8  4B 78 1E 79 */	bl __construct_array
/* 80BDFEEC  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80BDFEF0  3C 80 80 BE */	lis r4, __defctor__19dPa_followEcallBackFv@ha /* 0x80BE02B0@ha */
/* 80BDFEF4  38 84 02 B0 */	addi r4, r4, __defctor__19dPa_followEcallBackFv@l /* 0x80BE02B0@l */
/* 80BDFEF8  3C A0 80 BE */	lis r5, __dt__19dPa_followEcallBackFv@ha /* 0x80BE0228@ha */
/* 80BDFEFC  38 A5 02 28 */	addi r5, r5, __dt__19dPa_followEcallBackFv@l /* 0x80BE0228@l */
/* 80BDFF00  38 C0 00 14 */	li r6, 0x14
/* 80BDFF04  38 E0 00 03 */	li r7, 3
/* 80BDFF08  4B 78 1E 59 */	bl __construct_array
/* 80BDFF0C  38 7E 06 2C */	addi r3, r30, 0x62c
/* 80BDFF10  3C 80 80 BE */	lis r4, __defctor__19dPa_followEcallBackFv@ha /* 0x80BE02B0@ha */
/* 80BDFF14  38 84 02 B0 */	addi r4, r4, __defctor__19dPa_followEcallBackFv@l /* 0x80BE02B0@l */
/* 80BDFF18  3C A0 80 BE */	lis r5, __dt__19dPa_followEcallBackFv@ha /* 0x80BE0228@ha */
/* 80BDFF1C  38 A5 02 28 */	addi r5, r5, __dt__19dPa_followEcallBackFv@l /* 0x80BE0228@l */
/* 80BDFF20  38 C0 00 14 */	li r6, 0x14
/* 80BDFF24  38 E0 00 06 */	li r7, 6
/* 80BDFF28  4B 78 1E 39 */	bl __construct_array
/* 80BDFF2C  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 80BDFF30  4B 6D E9 15 */	bl __ct__16Z2SoundObjSimpleFv
/* 80BDFF34  38 7E 06 E0 */	addi r3, r30, 0x6e0
/* 80BDFF38  4B 49 5F 75 */	bl __ct__12dBgS_AcchCirFv
/* 80BDFF3C  3B BE 07 20 */	addi r29, r30, 0x720
/* 80BDFF40  7F A3 EB 78 */	mr r3, r29
/* 80BDFF44  4B 49 61 5D */	bl __ct__9dBgS_AcchFv
/* 80BDFF48  3C 60 80 BE */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80BE2214@ha */
/* 80BDFF4C  38 63 22 14 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80BE2214@l */
/* 80BDFF50  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80BDFF54  38 03 00 0C */	addi r0, r3, 0xc
/* 80BDFF58  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80BDFF5C  38 03 00 18 */	addi r0, r3, 0x18
/* 80BDFF60  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80BDFF64  38 7D 00 14 */	addi r3, r29, 0x14
/* 80BDFF68  4B 49 8F 01 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BDFF6C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BDFF70  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BDFF74  90 1E 09 10 */	stw r0, 0x910(r30)
/* 80BDFF78  38 7E 09 14 */	addi r3, r30, 0x914
/* 80BDFF7C  4B 4A 37 E5 */	bl __ct__10dCcD_GSttsFv
/* 80BDFF80  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BDFF84  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BDFF88  90 7E 09 10 */	stw r3, 0x910(r30)
/* 80BDFF8C  38 03 00 20 */	addi r0, r3, 0x20
/* 80BDFF90  90 1E 09 14 */	stw r0, 0x914(r30)
/* 80BDFF94  3B BE 09 34 */	addi r29, r30, 0x934
/* 80BDFF98  7F A3 EB 78 */	mr r3, r29
/* 80BDFF9C  4B 4A 3A 8D */	bl __ct__12dCcD_GObjInfFv
/* 80BDFFA0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BDFFA4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BDFFA8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BDFFAC  3C 60 80 BE */	lis r3, __vt__8cM3dGAab@ha /* 0x80BE2208@ha */
/* 80BDFFB0  38 03 22 08 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BE2208@l */
/* 80BDFFB4  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80BDFFB8  3C 60 80 BE */	lis r3, __vt__8cM3dGSph@ha /* 0x80BE21FC@ha */
/* 80BDFFBC  38 03 21 FC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BE21FC@l */
/* 80BDFFC0  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80BDFFC4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BDFFC8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BDFFCC  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80BDFFD0  38 03 00 58 */	addi r0, r3, 0x58
/* 80BDFFD4  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80BDFFD8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BDFFDC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BDFFE0  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80BDFFE4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BDFFE8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BDFFEC  38 03 00 84 */	addi r0, r3, 0x84
/* 80BDFFF0  90 1D 01 34 */	stw r0, 0x134(r29)
lbl_80BDFFF4:
/* 80BDFFF4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BDFFF8  60 00 00 08 */	ori r0, r0, 8
/* 80BDFFFC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BE0000:
/* 80BE0000  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE0004  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE0008  38 63 09 58 */	addi r3, r3, 0x958
/* 80BE000C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE0010  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 80BE0014  4B 45 47 D5 */	bl isTbox__12dSv_memBit_cCFi
/* 80BE0018  2C 03 00 00 */	cmpwi r3, 0
/* 80BE001C  41 82 00 0C */	beq lbl_80BE0028
/* 80BE0020  38 60 00 05 */	li r3, 5
/* 80BE0024  48 00 00 20 */	b lbl_80BE0044
lbl_80BE0028:
/* 80BE0028  7F E3 FB 78 */	mr r3, r31
/* 80BE002C  48 00 08 75 */	bl modeInit__11daObjDrop_cFv
/* 80BE0030  7F E3 FB 78 */	mr r3, r31
/* 80BE0034  4B FF FD 59 */	bl Create__11daObjDrop_cFv
/* 80BE0038  20 03 00 00 */	subfic r0, r3, 0
/* 80BE003C  7C 60 01 10 */	subfe r3, r0, r0
/* 80BE0040  38 63 00 05 */	addi r3, r3, 5
lbl_80BE0044:
/* 80BE0044  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE0048  4B 78 21 E1 */	bl _restgpr_29
/* 80BE004C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE0050  7C 08 03 A6 */	mtlr r0
/* 80BE0054  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE0058  4E 80 00 20 */	blr 
