lbl_806FE6B8:
/* 806FE6B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806FE6BC  7C 08 02 A6 */	mflr r0
/* 806FE6C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806FE6C4  39 61 00 40 */	addi r11, r1, 0x40
/* 806FE6C8  4B C6 3B 01 */	bl _savegpr_24
/* 806FE6CC  7C 7F 1B 78 */	mr r31, r3
/* 806FE6D0  3C 80 80 70 */	lis r4, lit_3792@ha /* 0x806FF5E8@ha */
/* 806FE6D4  3B C4 F5 E8 */	addi r30, r4, lit_3792@l /* 0x806FF5E8@l */
/* 806FE6D8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806FE6DC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806FE6E0  40 82 01 C8 */	bne lbl_806FE8A8
/* 806FE6E4  7F E0 FB 79 */	or. r0, r31, r31
/* 806FE6E8  41 82 01 B4 */	beq lbl_806FE89C
/* 806FE6EC  7C 1B 03 78 */	mr r27, r0
/* 806FE6F0  4B 91 A4 75 */	bl __ct__10fopAc_ac_cFv
/* 806FE6F4  38 7B 05 BC */	addi r3, r27, 0x5bc
/* 806FE6F8  4B BC 28 6D */	bl __ct__15Z2CreatureEnemyFv
/* 806FE6FC  38 7B 06 B0 */	addi r3, r27, 0x6b0
/* 806FE700  3C 80 80 70 */	lis r4, __ct__4cXyzFv@ha /* 0x806FF084@ha */
/* 806FE704  38 84 F0 84 */	addi r4, r4, __ct__4cXyzFv@l /* 0x806FF084@l */
/* 806FE708  3C A0 80 70 */	lis r5, __dt__4cXyzFv@ha /* 0x806FF598@ha */
/* 806FE70C  38 A5 F5 98 */	addi r5, r5, __dt__4cXyzFv@l /* 0x806FF598@l */
/* 806FE710  38 C0 00 0C */	li r6, 0xc
/* 806FE714  38 E0 00 03 */	li r7, 3
/* 806FE718  4B C6 36 49 */	bl __construct_array
/* 806FE71C  38 7B 06 D4 */	addi r3, r27, 0x6d4
/* 806FE720  3C 80 80 70 */	lis r4, __ct__4cXyzFv@ha /* 0x806FF084@ha */
/* 806FE724  38 84 F0 84 */	addi r4, r4, __ct__4cXyzFv@l /* 0x806FF084@l */
/* 806FE728  3C A0 80 70 */	lis r5, __dt__4cXyzFv@ha /* 0x806FF598@ha */
/* 806FE72C  38 A5 F5 98 */	addi r5, r5, __dt__4cXyzFv@l /* 0x806FF598@l */
/* 806FE730  38 C0 00 0C */	li r6, 0xc
/* 806FE734  38 E0 00 03 */	li r7, 3
/* 806FE738  4B C6 36 29 */	bl __construct_array
/* 806FE73C  38 7B 06 F8 */	addi r3, r27, 0x6f8
/* 806FE740  3C 80 80 70 */	lis r4, __ct__4cXyzFv@ha /* 0x806FF084@ha */
/* 806FE744  38 84 F0 84 */	addi r4, r4, __ct__4cXyzFv@l /* 0x806FF084@l */
/* 806FE748  3C A0 80 70 */	lis r5, __dt__4cXyzFv@ha /* 0x806FF598@ha */
/* 806FE74C  38 A5 F5 98 */	addi r5, r5, __dt__4cXyzFv@l /* 0x806FF598@l */
/* 806FE750  38 C0 00 0C */	li r6, 0xc
/* 806FE754  38 E0 00 06 */	li r7, 6
/* 806FE758  4B C6 36 09 */	bl __construct_array
/* 806FE75C  38 7B 07 70 */	addi r3, r27, 0x770
/* 806FE760  4B 97 77 4D */	bl __ct__12dBgS_AcchCirFv
/* 806FE764  3B 1B 07 B0 */	addi r24, r27, 0x7b0
/* 806FE768  7F 03 C3 78 */	mr r3, r24
/* 806FE76C  4B 97 79 35 */	bl __ct__9dBgS_AcchFv
/* 806FE770  3C 60 80 70 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806FF844@ha */
/* 806FE774  38 63 F8 44 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806FF844@l */
/* 806FE778  90 78 00 10 */	stw r3, 0x10(r24)
/* 806FE77C  38 03 00 0C */	addi r0, r3, 0xc
/* 806FE780  90 18 00 14 */	stw r0, 0x14(r24)
/* 806FE784  38 03 00 18 */	addi r0, r3, 0x18
/* 806FE788  90 18 00 24 */	stw r0, 0x24(r24)
/* 806FE78C  38 78 00 14 */	addi r3, r24, 0x14
/* 806FE790  4B 97 A6 D9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 806FE794  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806FE798  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806FE79C  90 1B 09 A0 */	stw r0, 0x9a0(r27)
/* 806FE7A0  38 7B 09 A4 */	addi r3, r27, 0x9a4
/* 806FE7A4  4B 98 4F BD */	bl __ct__10dCcD_GSttsFv
/* 806FE7A8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806FE7AC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806FE7B0  90 7B 09 A0 */	stw r3, 0x9a0(r27)
/* 806FE7B4  38 03 00 20 */	addi r0, r3, 0x20
/* 806FE7B8  90 1B 09 A4 */	stw r0, 0x9a4(r27)
/* 806FE7BC  3B 1B 09 C4 */	addi r24, r27, 0x9c4
/* 806FE7C0  7F 03 C3 78 */	mr r3, r24
/* 806FE7C4  4B 98 52 65 */	bl __ct__12dCcD_GObjInfFv
/* 806FE7C8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806FE7CC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806FE7D0  90 18 01 20 */	stw r0, 0x120(r24)
/* 806FE7D4  3C 60 80 70 */	lis r3, __vt__8cM3dGAab@ha /* 0x806FF838@ha */
/* 806FE7D8  38 03 F8 38 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806FF838@l */
/* 806FE7DC  90 18 01 1C */	stw r0, 0x11c(r24)
/* 806FE7E0  3C 60 80 70 */	lis r3, __vt__8cM3dGCyl@ha /* 0x806FF82C@ha */
/* 806FE7E4  38 03 F8 2C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x806FF82C@l */
/* 806FE7E8  90 18 01 38 */	stw r0, 0x138(r24)
/* 806FE7EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 806FE7F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 806FE7F4  90 78 01 20 */	stw r3, 0x120(r24)
/* 806FE7F8  38 03 00 58 */	addi r0, r3, 0x58
/* 806FE7FC  90 18 01 38 */	stw r0, 0x138(r24)
/* 806FE800  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 806FE804  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 806FE808  90 78 00 3C */	stw r3, 0x3c(r24)
/* 806FE80C  38 03 00 2C */	addi r0, r3, 0x2c
/* 806FE810  90 18 01 20 */	stw r0, 0x120(r24)
/* 806FE814  38 03 00 84 */	addi r0, r3, 0x84
/* 806FE818  90 18 01 38 */	stw r0, 0x138(r24)
/* 806FE81C  3B 1B 0B 00 */	addi r24, r27, 0xb00
/* 806FE820  7F 03 C3 78 */	mr r3, r24
/* 806FE824  4B 98 52 05 */	bl __ct__12dCcD_GObjInfFv
/* 806FE828  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806FE82C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806FE830  90 18 01 20 */	stw r0, 0x120(r24)
/* 806FE834  3C 60 80 70 */	lis r3, __vt__8cM3dGAab@ha /* 0x806FF838@ha */
/* 806FE838  38 03 F8 38 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806FF838@l */
/* 806FE83C  90 18 01 1C */	stw r0, 0x11c(r24)
/* 806FE840  3C 60 80 70 */	lis r3, __vt__8cM3dGSph@ha /* 0x806FF820@ha */
/* 806FE844  38 03 F8 20 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806FF820@l */
/* 806FE848  90 18 01 34 */	stw r0, 0x134(r24)
/* 806FE84C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806FE850  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806FE854  90 78 01 20 */	stw r3, 0x120(r24)
/* 806FE858  38 03 00 58 */	addi r0, r3, 0x58
/* 806FE85C  90 18 01 34 */	stw r0, 0x134(r24)
/* 806FE860  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806FE864  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806FE868  90 78 00 3C */	stw r3, 0x3c(r24)
/* 806FE86C  38 03 00 2C */	addi r0, r3, 0x2c
/* 806FE870  90 18 01 20 */	stw r0, 0x120(r24)
/* 806FE874  38 03 00 84 */	addi r0, r3, 0x84
/* 806FE878  90 18 01 34 */	stw r0, 0x134(r24)
/* 806FE87C  38 7B 0C 5C */	addi r3, r27, 0xc5c
/* 806FE880  3C 80 80 70 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806FED20@ha */
/* 806FE884  38 84 ED 20 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806FED20@l */
/* 806FE888  3C A0 80 70 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x806FEDA4@ha */
/* 806FE88C  38 A5 ED A4 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x806FEDA4@l */
/* 806FE890  38 C0 01 38 */	li r6, 0x138
/* 806FE894  38 E0 00 06 */	li r7, 6
/* 806FE898  4B C6 34 C9 */	bl __construct_array
lbl_806FE89C:
/* 806FE89C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 806FE8A0  60 00 00 08 */	ori r0, r0, 8
/* 806FE8A4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_806FE8A8:
/* 806FE8A8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806FE8AC  3C 80 80 70 */	lis r4, d_a_e_kk__stringBase0@ha /* 0x806FF6B8@ha */
/* 806FE8B0  38 84 F6 B8 */	addi r4, r4, d_a_e_kk__stringBase0@l /* 0x806FF6B8@l */
/* 806FE8B4  4B 92 E6 09 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806FE8B8  7C 7C 1B 78 */	mr r28, r3
/* 806FE8BC  2C 1C 00 04 */	cmpwi r28, 4
/* 806FE8C0  40 82 04 44 */	bne lbl_806FED04
/* 806FE8C4  7F E3 FB 78 */	mr r3, r31
/* 806FE8C8  3C 80 80 70 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806FE698@ha */
/* 806FE8CC  38 84 E6 98 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806FE698@l */
/* 806FE8D0  38 A0 3E 90 */	li r5, 0x3e90
/* 806FE8D4  4B 91 BB DD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806FE8D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FE8DC  40 82 00 0C */	bne lbl_806FE8E8
/* 806FE8E0  38 60 00 05 */	li r3, 5
/* 806FE8E4  48 00 04 24 */	b lbl_806FED08
lbl_806FE8E8:
/* 806FE8E8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806FE8EC  98 1F 06 79 */	stb r0, 0x679(r31)
/* 806FE8F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806FE8F4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806FE8F8  98 1F 06 7A */	stb r0, 0x67a(r31)
/* 806FE8FC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806FE900  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 806FE904  98 1F 06 7B */	stb r0, 0x67b(r31)
/* 806FE908  88 1F 06 79 */	lbz r0, 0x679(r31)
/* 806FE90C  28 00 00 FF */	cmplwi r0, 0xff
/* 806FE910  40 82 00 0C */	bne lbl_806FE91C
/* 806FE914  38 00 00 00 */	li r0, 0
/* 806FE918  98 1F 06 79 */	stb r0, 0x679(r31)
lbl_806FE91C:
/* 806FE91C  88 1F 06 79 */	lbz r0, 0x679(r31)
/* 806FE920  28 00 00 01 */	cmplwi r0, 1
/* 806FE924  41 82 00 34 */	beq lbl_806FE958
/* 806FE928  88 9F 06 7B */	lbz r4, 0x67b(r31)
/* 806FE92C  28 04 00 FF */	cmplwi r4, 0xff
/* 806FE930  41 82 00 28 */	beq lbl_806FE958
/* 806FE934  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FE938  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FE93C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 806FE940  7C 05 07 74 */	extsb r5, r0
/* 806FE944  4B 93 6A 1D */	bl isSwitch__10dSv_info_cCFii
/* 806FE948  2C 03 00 00 */	cmpwi r3, 0
/* 806FE94C  41 82 00 0C */	beq lbl_806FE958
/* 806FE950  38 60 00 05 */	li r3, 5
/* 806FE954  48 00 03 B4 */	b lbl_806FED08
lbl_806FE958:
/* 806FE958  3C 60 80 70 */	lis r3, data_806FF880@ha /* 0x806FF880@ha */
/* 806FE95C  8C 03 F8 80 */	lbzu r0, data_806FF880@l(r3)  /* 0x806FF880@l */
/* 806FE960  28 00 00 00 */	cmplwi r0, 0
/* 806FE964  40 82 00 20 */	bne lbl_806FE984
/* 806FE968  38 00 00 01 */	li r0, 1
/* 806FE96C  98 03 00 00 */	stb r0, 0(r3)
/* 806FE970  98 1F 13 AC */	stb r0, 0x13ac(r31)
/* 806FE974  38 00 FF FF */	li r0, -1
/* 806FE978  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FF890@ha */
/* 806FE97C  38 63 F8 90 */	addi r3, r3, l_HIO@l /* 0x806FF890@l */
/* 806FE980  98 03 00 04 */	stb r0, 4(r3)
lbl_806FE984:
/* 806FE984  38 00 00 00 */	li r0, 0
/* 806FE988  90 01 00 08 */	stw r0, 8(r1)
/* 806FE98C  38 7F 07 B0 */	addi r3, r31, 0x7b0
/* 806FE990  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806FE994  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 806FE998  7F E6 FB 78 */	mr r6, r31
/* 806FE99C  38 E0 00 01 */	li r7, 1
/* 806FE9A0  39 1F 07 70 */	addi r8, r31, 0x770
/* 806FE9A4  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 806FE9A8  39 40 00 00 */	li r10, 0
/* 806FE9AC  4B 97 78 9D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806FE9B0  38 7F 07 70 */	addi r3, r31, 0x770
/* 806FE9B4  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 806FE9B8  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 806FE9BC  4B 97 75 9D */	bl SetWall__12dBgS_AcchCirFff
/* 806FE9C0  38 7F 09 88 */	addi r3, r31, 0x988
/* 806FE9C4  38 80 00 64 */	li r4, 0x64
/* 806FE9C8  38 A0 00 00 */	li r5, 0
/* 806FE9CC  7F E6 FB 78 */	mr r6, r31
/* 806FE9D0  4B 98 4E 91 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806FE9D4  38 00 00 8C */	li r0, 0x8c
/* 806FE9D8  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 806FE9DC  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 806FE9E0  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 806FE9E4  3C 80 80 70 */	lis r4, data_806FF6FC@ha /* 0x806FF6FC@ha */
/* 806FE9E8  38 84 F6 FC */	addi r4, r4, data_806FF6FC@l /* 0x806FF6FC@l */
/* 806FE9EC  4B 98 5E C9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 806FE9F0  38 1F 09 88 */	addi r0, r31, 0x988
/* 806FE9F4  90 1F 0A 08 */	stw r0, 0xa08(r31)
/* 806FE9F8  80 1F 0A 60 */	lwz r0, 0xa60(r31)
/* 806FE9FC  60 00 00 04 */	ori r0, r0, 4
/* 806FEA00  90 1F 0A 60 */	stw r0, 0xa60(r31)
/* 806FEA04  38 7F 0B 00 */	addi r3, r31, 0xb00
/* 806FEA08  3C 80 80 70 */	lis r4, data_806FF740@ha /* 0x806FF740@ha */
/* 806FEA0C  38 84 F7 40 */	addi r4, r4, data_806FF740@l /* 0x806FF740@l */
/* 806FEA10  4B 98 60 25 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806FEA14  3B BF 09 88 */	addi r29, r31, 0x988
/* 806FEA18  93 BF 0B 44 */	stw r29, 0xb44(r31)
/* 806FEA1C  80 1F 0B 18 */	lwz r0, 0xb18(r31)
/* 806FEA20  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FEA24  90 1F 0B 18 */	stw r0, 0xb18(r31)
/* 806FEA28  3B 60 00 00 */	li r27, 0
/* 806FEA2C  3B 40 00 00 */	li r26, 0
/* 806FEA30  3C 60 80 70 */	lis r3, data_806FF740@ha /* 0x806FF740@ha */
/* 806FEA34  3B 23 F7 40 */	addi r25, r3, data_806FF740@l /* 0x806FF740@l */
lbl_806FEA38:
/* 806FEA38  7F 1F D2 14 */	add r24, r31, r26
/* 806FEA3C  38 78 0C 5C */	addi r3, r24, 0xc5c
/* 806FEA40  7F 24 CB 78 */	mr r4, r25
/* 806FEA44  4B 98 5F F1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806FEA48  93 B8 0C A0 */	stw r29, 0xca0(r24)
/* 806FEA4C  88 1F 06 79 */	lbz r0, 0x679(r31)
/* 806FEA50  28 00 00 01 */	cmplwi r0, 1
/* 806FEA54  40 82 00 2C */	bne lbl_806FEA80
/* 806FEA58  80 18 0C 5C */	lwz r0, 0xc5c(r24)
/* 806FEA5C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FEA60  90 18 0C 5C */	stw r0, 0xc5c(r24)
/* 806FEA64  80 1F 0B 2C */	lwz r0, 0xb2c(r31)
/* 806FEA68  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FEA6C  90 1F 0B 2C */	stw r0, 0xb2c(r31)
/* 806FEA70  80 1F 0B 18 */	lwz r0, 0xb18(r31)
/* 806FEA74  60 00 00 01 */	ori r0, r0, 1
/* 806FEA78  90 1F 0B 18 */	stw r0, 0xb18(r31)
/* 806FEA7C  48 00 00 10 */	b lbl_806FEA8C
lbl_806FEA80:
/* 806FEA80  80 18 0C 74 */	lwz r0, 0xc74(r24)
/* 806FEA84  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FEA88  90 18 0C 74 */	stw r0, 0xc74(r24)
lbl_806FEA8C:
/* 806FEA8C  3B 7B 00 01 */	addi r27, r27, 1
/* 806FEA90  2C 1B 00 06 */	cmpwi r27, 6
/* 806FEA94  3B 5A 01 38 */	addi r26, r26, 0x138
/* 806FEA98  41 80 FF A0 */	blt lbl_806FEA38
/* 806FEA9C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806FEAA0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806FEAA4  38 BF 05 38 */	addi r5, r31, 0x538
/* 806FEAA8  38 C0 00 03 */	li r6, 3
/* 806FEAAC  38 E0 00 01 */	li r7, 1
/* 806FEAB0  4B BC 25 E5 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806FEAB4  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806FEAB8  3C 80 80 70 */	lis r4, d_a_e_kk__stringBase0@ha /* 0x806FF6B8@ha */
/* 806FEABC  38 84 F6 B8 */	addi r4, r4, d_a_e_kk__stringBase0@l /* 0x806FF6B8@l */
/* 806FEAC0  38 84 00 05 */	addi r4, r4, 5
/* 806FEAC4  4B BC 30 CD */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 806FEAC8  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 806FEACC  90 1F 0C 40 */	stw r0, 0xc40(r31)
/* 806FEAD0  38 60 00 01 */	li r3, 1
/* 806FEAD4  98 7F 0C 56 */	stb r3, 0xc56(r31)
/* 806FEAD8  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 806FEADC  D0 1F 07 40 */	stfs f0, 0x740(r31)
/* 806FEAE0  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 806FEAE4  D0 1F 07 44 */	stfs f0, 0x744(r31)
/* 806FEAE8  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 806FEAEC  D0 1F 07 48 */	stfs f0, 0x748(r31)
/* 806FEAF0  88 1F 06 79 */	lbz r0, 0x679(r31)
/* 806FEAF4  28 00 00 01 */	cmplwi r0, 1
/* 806FEAF8  40 82 00 28 */	bne lbl_806FEB20
/* 806FEAFC  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806FEB00  80 63 00 04 */	lwz r3, 4(r3)
/* 806FEB04  38 03 00 24 */	addi r0, r3, 0x24
/* 806FEB08  90 1F 05 04 */	stw r0, 0x504(r31)
/* 806FEB0C  7F E3 FB 78 */	mr r3, r31
/* 806FEB10  38 80 00 09 */	li r4, 9
/* 806FEB14  38 A0 00 00 */	li r5, 0
/* 806FEB18  4B FF C1 69 */	bl setActionMode__8daE_KK_cFii
/* 806FEB1C  48 00 01 10 */	b lbl_806FEC2C
lbl_806FEB20:
/* 806FEB20  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 806FEB24  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 806FEB28  98 7F 06 7E */	stb r3, 0x67e(r31)
/* 806FEB2C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806FEB30  80 63 00 04 */	lwz r3, 4(r3)
/* 806FEB34  38 03 00 24 */	addi r0, r3, 0x24
/* 806FEB38  90 1F 05 04 */	stw r0, 0x504(r31)
/* 806FEB3C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806FEB40  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 806FEB44  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806FEB48  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 806FEB4C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806FEB50  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
/* 806FEB54  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806FEB58  D0 1F 07 4C */	stfs f0, 0x74c(r31)
/* 806FEB5C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806FEB60  D0 1F 07 50 */	stfs f0, 0x750(r31)
/* 806FEB64  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806FEB68  D0 1F 07 54 */	stfs f0, 0x754(r31)
/* 806FEB6C  38 60 00 00 */	li r3, 0
/* 806FEB70  38 00 00 03 */	li r0, 3
/* 806FEB74  7C 09 03 A6 */	mtctr r0
lbl_806FEB78:
/* 806FEB78  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806FEB7C  7C 9F 1A 14 */	add r4, r31, r3
/* 806FEB80  D0 04 06 B0 */	stfs f0, 0x6b0(r4)
/* 806FEB84  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806FEB88  D0 04 06 B4 */	stfs f0, 0x6b4(r4)
/* 806FEB8C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806FEB90  D0 04 06 B8 */	stfs f0, 0x6b8(r4)
/* 806FEB94  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806FEB98  D0 04 06 D4 */	stfs f0, 0x6d4(r4)
/* 806FEB9C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806FEBA0  D0 04 06 D8 */	stfs f0, 0x6d8(r4)
/* 806FEBA4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806FEBA8  D0 04 06 DC */	stfs f0, 0x6dc(r4)
/* 806FEBAC  38 63 00 0C */	addi r3, r3, 0xc
/* 806FEBB0  42 00 FF C8 */	bdnz lbl_806FEB78
/* 806FEBB4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806FEBB8  D0 1F 07 60 */	stfs f0, 0x760(r31)
/* 806FEBBC  38 00 00 04 */	li r0, 4
/* 806FEBC0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806FEBC4  38 00 00 4C */	li r0, 0x4c
/* 806FEBC8  98 1F 05 46 */	stb r0, 0x546(r31)
/* 806FEBCC  88 1F 06 79 */	lbz r0, 0x679(r31)
/* 806FEBD0  28 00 00 03 */	cmplwi r0, 3
/* 806FEBD4  41 82 00 18 */	beq lbl_806FEBEC
/* 806FEBD8  7F E3 FB 78 */	mr r3, r31
/* 806FEBDC  38 80 00 00 */	li r4, 0
/* 806FEBE0  38 A0 00 00 */	li r5, 0
/* 806FEBE4  4B FF C0 9D */	bl setActionMode__8daE_KK_cFii
/* 806FEBE8  48 00 00 44 */	b lbl_806FEC2C
lbl_806FEBEC:
/* 806FEBEC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806FEBF0  60 00 40 00 */	ori r0, r0, 0x4000
/* 806FEBF4  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 806FEBF8  38 00 00 01 */	li r0, 1
/* 806FEBFC  98 1F 06 7D */	stb r0, 0x67d(r31)
/* 806FEC00  7F E3 FB 78 */	mr r3, r31
/* 806FEC04  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FEC08  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FEC0C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806FEC10  4B 91 BB 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FEC14  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 806FEC18  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 806FEC1C  7F E3 FB 78 */	mr r3, r31
/* 806FEC20  38 80 00 01 */	li r4, 1
/* 806FEC24  38 A0 00 00 */	li r5, 0
/* 806FEC28  4B FF C0 59 */	bl setActionMode__8daE_KK_cFii
lbl_806FEC2C:
/* 806FEC2C  7F E3 FB 78 */	mr r3, r31
/* 806FEC30  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 806FEC34  FC 40 08 90 */	fmr f2, f1
/* 806FEC38  FC 60 08 90 */	fmr f3, f1
/* 806FEC3C  4B 91 B8 ED */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806FEC40  7F E3 FB 78 */	mr r3, r31
/* 806FEC44  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 806FEC48  FC 40 08 90 */	fmr f2, f1
/* 806FEC4C  FC 60 08 90 */	fmr f3, f1
/* 806FEC50  4B 91 B8 E9 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806FEC54  88 1F 06 79 */	lbz r0, 0x679(r31)
/* 806FEC58  28 00 00 02 */	cmplwi r0, 2
/* 806FEC5C  40 82 00 3C */	bne lbl_806FEC98
/* 806FEC60  38 60 00 42 */	li r3, 0x42
/* 806FEC64  38 80 00 01 */	li r4, 1
/* 806FEC68  4B 99 92 79 */	bl checkItemGet__FUci
/* 806FEC6C  2C 03 00 00 */	cmpwi r3, 0
/* 806FEC70  40 82 00 28 */	bne lbl_806FEC98
/* 806FEC74  38 00 00 00 */	li r0, 0
/* 806FEC78  98 1F 05 46 */	stb r0, 0x546(r31)
/* 806FEC7C  98 1F 04 96 */	stb r0, 0x496(r31)
/* 806FEC80  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806FEC84  54 00 00 3E */	slwi r0, r0, 0
/* 806FEC88  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 806FEC8C  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 806FEC90  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806FEC94  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_806FEC98:
/* 806FEC98  88 1F 06 7A */	lbz r0, 0x67a(r31)
/* 806FEC9C  28 00 00 FF */	cmplwi r0, 0xff
/* 806FECA0  41 82 00 0C */	beq lbl_806FECAC
/* 806FECA4  28 00 00 00 */	cmplwi r0, 0
/* 806FECA8  40 82 00 18 */	bne lbl_806FECC0
lbl_806FECAC:
/* 806FECAC  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FF890@ha */
/* 806FECB0  38 63 F8 90 */	addi r3, r3, l_HIO@l /* 0x806FF890@l */
/* 806FECB4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 806FECB8  D0 1F 07 5C */	stfs f0, 0x75c(r31)
/* 806FECBC  48 00 00 28 */	b lbl_806FECE4
lbl_806FECC0:
/* 806FECC0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806FECC4  C8 3E 00 C8 */	lfd f1, 0xc8(r30)
/* 806FECC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FECCC  3C 00 43 30 */	lis r0, 0x4330
/* 806FECD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806FECD4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806FECD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 806FECDC  EC 02 00 32 */	fmuls f0, f2, f0
/* 806FECE0  D0 1F 07 5C */	stfs f0, 0x75c(r31)
lbl_806FECE4:
/* 806FECE4  88 1F 06 79 */	lbz r0, 0x679(r31)
/* 806FECE8  28 00 00 01 */	cmplwi r0, 1
/* 806FECEC  41 82 00 10 */	beq lbl_806FECFC
/* 806FECF0  7F E3 FB 78 */	mr r3, r31
/* 806FECF4  4B FF F0 19 */	bl mtx_set__8daE_KK_cFv
/* 806FECF8  48 00 00 0C */	b lbl_806FED04
lbl_806FECFC:
/* 806FECFC  7F E3 FB 78 */	mr r3, r31
/* 806FED00  4B FF F2 0D */	bl weapon_mtx_set__8daE_KK_cFv
lbl_806FED04:
/* 806FED04  7F 83 E3 78 */	mr r3, r28
lbl_806FED08:
/* 806FED08  39 61 00 40 */	addi r11, r1, 0x40
/* 806FED0C  4B C6 35 09 */	bl _restgpr_24
/* 806FED10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806FED14  7C 08 03 A6 */	mtlr r0
/* 806FED18  38 21 00 40 */	addi r1, r1, 0x40
/* 806FED1C  4E 80 00 20 */	blr 
