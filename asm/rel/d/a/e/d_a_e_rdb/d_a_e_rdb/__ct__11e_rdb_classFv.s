lbl_8076AA0C:
/* 8076AA0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8076AA10  7C 08 02 A6 */	mflr r0
/* 8076AA14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8076AA18  39 61 00 20 */	addi r11, r1, 0x20
/* 8076AA1C  4B BF 77 C0 */	b _savegpr_29
/* 8076AA20  7C 7E 1B 78 */	mr r30, r3
/* 8076AA24  4B 8A E1 40 */	b __ct__10fopAc_ac_cFv
/* 8076AA28  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8076AA2C  4B B5 65 38 */	b __ct__15Z2CreatureEnemyFv
/* 8076AA30  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 8076AA34  4B 90 B4 78 */	b __ct__12dBgS_AcchCirFv
/* 8076AA38  3B FE 07 30 */	addi r31, r30, 0x730
/* 8076AA3C  7F E3 FB 78 */	mr r3, r31
/* 8076AA40  4B 90 B6 60 */	b __ct__9dBgS_AcchFv
/* 8076AA44  3C 60 80 77 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8076AA48  38 63 B9 8C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8076AA4C  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8076AA50  38 03 00 0C */	addi r0, r3, 0xc
/* 8076AA54  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8076AA58  38 03 00 18 */	addi r0, r3, 0x18
/* 8076AA5C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8076AA60  38 7F 00 14 */	addi r3, r31, 0x14
/* 8076AA64  4B 90 E4 04 */	b SetObj__16dBgS_PolyPassChkFv
/* 8076AA68  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8076AA6C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8076AA70  90 1E 09 20 */	stw r0, 0x920(r30)
/* 8076AA74  38 7E 09 24 */	addi r3, r30, 0x924
/* 8076AA78  4B 91 8C E8 */	b __ct__10dCcD_GSttsFv
/* 8076AA7C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8076AA80  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8076AA84  90 7E 09 20 */	stw r3, 0x920(r30)
/* 8076AA88  3B E3 00 20 */	addi r31, r3, 0x20
/* 8076AA8C  93 FE 09 24 */	stw r31, 0x924(r30)
/* 8076AA90  38 7E 09 44 */	addi r3, r30, 0x944
/* 8076AA94  3C 80 80 77 */	lis r4, __ct__8dCcD_SphFv@ha
/* 8076AA98  38 84 AD 5C */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 8076AA9C  3C A0 80 77 */	lis r5, __dt__8dCcD_SphFv@ha
/* 8076AAA0  38 A5 AC 90 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 8076AAA4  38 C0 01 38 */	li r6, 0x138
/* 8076AAA8  38 E0 00 03 */	li r7, 3
/* 8076AAAC  4B BF 72 B4 */	b __construct_array
/* 8076AAB0  3B BE 0C EC */	addi r29, r30, 0xcec
/* 8076AAB4  7F A3 EB 78 */	mr r3, r29
/* 8076AAB8  4B 91 8F 70 */	b __ct__12dCcD_GObjInfFv
/* 8076AABC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8076AAC0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8076AAC4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8076AAC8  3C 60 80 77 */	lis r3, __vt__8cM3dGAab@ha
/* 8076AACC  38 03 B9 80 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8076AAD0  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 8076AAD4  3C 60 80 77 */	lis r3, __vt__8cM3dGCyl@ha
/* 8076AAD8  38 03 B9 74 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8076AADC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8076AAE0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8076AAE4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8076AAE8  90 7D 01 20 */	stw r3, 0x120(r29)
/* 8076AAEC  38 03 00 58 */	addi r0, r3, 0x58
/* 8076AAF0  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8076AAF4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8076AAF8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8076AAFC  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 8076AB00  38 03 00 2C */	addi r0, r3, 0x2c
/* 8076AB04  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8076AB08  38 03 00 84 */	addi r0, r3, 0x84
/* 8076AB0C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8076AB10  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8076AB14  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8076AB18  90 1E 0E 40 */	stw r0, 0xe40(r30)
/* 8076AB1C  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 8076AB20  4B 91 8C 40 */	b __ct__10dCcD_GSttsFv
/* 8076AB24  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8076AB28  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 8076AB2C  90 1E 0E 40 */	stw r0, 0xe40(r30)
/* 8076AB30  93 FE 0E 44 */	stw r31, 0xe44(r30)
/* 8076AB34  3B BE 0E 64 */	addi r29, r30, 0xe64
/* 8076AB38  7F A3 EB 78 */	mr r3, r29
/* 8076AB3C  4B 91 8E EC */	b __ct__12dCcD_GObjInfFv
/* 8076AB40  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8076AB44  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8076AB48  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8076AB4C  3C 60 80 77 */	lis r3, __vt__8cM3dGAab@ha
/* 8076AB50  38 03 B9 80 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8076AB54  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 8076AB58  3C 60 80 77 */	lis r3, __vt__8cM3dGSph@ha
/* 8076AB5C  38 03 B9 68 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8076AB60  90 1D 01 34 */	stw r0, 0x134(r29)
/* 8076AB64  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8076AB68  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8076AB6C  90 7D 01 20 */	stw r3, 0x120(r29)
/* 8076AB70  38 03 00 58 */	addi r0, r3, 0x58
/* 8076AB74  90 1D 01 34 */	stw r0, 0x134(r29)
/* 8076AB78  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8076AB7C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8076AB80  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 8076AB84  38 03 00 2C */	addi r0, r3, 0x2c
/* 8076AB88  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8076AB8C  38 03 00 84 */	addi r0, r3, 0x84
/* 8076AB90  90 1D 01 34 */	stw r0, 0x134(r29)
/* 8076AB94  38 7E 11 08 */	addi r3, r30, 0x1108
/* 8076AB98  4B AD F3 68 */	b __ct__10dMsgFlow_cFv
/* 8076AB9C  7F C3 F3 78 */	mr r3, r30
/* 8076ABA0  39 61 00 20 */	addi r11, r1, 0x20
/* 8076ABA4  4B BF 76 84 */	b _restgpr_29
/* 8076ABA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8076ABAC  7C 08 03 A6 */	mtlr r0
/* 8076ABB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8076ABB4  4E 80 00 20 */	blr 
