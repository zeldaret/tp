lbl_809F2740:
/* 809F2740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F2744  7C 08 02 A6 */	mflr r0
/* 809F2748  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F274C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F2750  93 C1 00 08 */	stw r30, 8(r1)
/* 809F2754  7C 7E 1B 79 */	or. r30, r3, r3
/* 809F2758  7C 9F 23 78 */	mr r31, r4
/* 809F275C  41 82 02 18 */	beq lbl_809F2974
/* 809F2760  3C 60 80 9F */	lis r3, __vt__10daNpcCd2_c@ha
/* 809F2764  38 03 2F A0 */	addi r0, r3, __vt__10daNpcCd2_c@l
/* 809F2768  90 1E 05 68 */	stw r0, 0x568(r30)
/* 809F276C  34 1E 09 C8 */	addic. r0, r30, 0x9c8
/* 809F2770  41 82 00 A0 */	beq lbl_809F2810
/* 809F2774  3C 60 80 9F */	lis r3, __vt__16dNpcLib_lookat_c@ha
/* 809F2778  38 03 2F 34 */	addi r0, r3, __vt__16dNpcLib_lookat_c@l
/* 809F277C  90 1E 09 C8 */	stw r0, 0x9c8(r30)
/* 809F2780  38 7E 0A 5C */	addi r3, r30, 0xa5c
/* 809F2784  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809F2788  38 84 1D 6C */	addi r4, r4, __dt__5csXyzFv@l
/* 809F278C  38 A0 00 06 */	li r5, 6
/* 809F2790  38 C0 00 04 */	li r6, 4
/* 809F2794  4B 96 F5 54 */	b __destroy_arr
/* 809F2798  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 809F279C  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809F27A0  38 84 1D 6C */	addi r4, r4, __dt__5csXyzFv@l
/* 809F27A4  38 A0 00 06 */	li r5, 6
/* 809F27A8  38 C0 00 04 */	li r6, 4
/* 809F27AC  4B 96 F5 3C */	b __destroy_arr
/* 809F27B0  38 7E 0A 2C */	addi r3, r30, 0xa2c
/* 809F27B4  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809F27B8  38 84 1D 6C */	addi r4, r4, __dt__5csXyzFv@l
/* 809F27BC  38 A0 00 06 */	li r5, 6
/* 809F27C0  38 C0 00 04 */	li r6, 4
/* 809F27C4  4B 96 F5 24 */	b __destroy_arr
/* 809F27C8  38 7E 0A 14 */	addi r3, r30, 0xa14
/* 809F27CC  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809F27D0  38 84 1D 6C */	addi r4, r4, __dt__5csXyzFv@l
/* 809F27D4  38 A0 00 06 */	li r5, 6
/* 809F27D8  38 C0 00 04 */	li r6, 4
/* 809F27DC  4B 96 F5 0C */	b __destroy_arr
/* 809F27E0  38 7E 09 FC */	addi r3, r30, 0x9fc
/* 809F27E4  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809F27E8  38 84 1D 6C */	addi r4, r4, __dt__5csXyzFv@l
/* 809F27EC  38 A0 00 06 */	li r5, 6
/* 809F27F0  38 C0 00 04 */	li r6, 4
/* 809F27F4  4B 96 F4 F4 */	b __destroy_arr
/* 809F27F8  38 7E 09 CC */	addi r3, r30, 0x9cc
/* 809F27FC  3C 80 80 9F */	lis r4, __dt__4cXyzFv@ha
/* 809F2800  38 84 01 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 809F2804  38 A0 00 0C */	li r5, 0xc
/* 809F2808  38 C0 00 04 */	li r6, 4
/* 809F280C  4B 96 F4 DC */	b __destroy_arr
lbl_809F2810:
/* 809F2810  34 1E 08 8C */	addic. r0, r30, 0x88c
/* 809F2814  41 82 00 84 */	beq lbl_809F2898
/* 809F2818  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809F281C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809F2820  90 7E 08 C8 */	stw r3, 0x8c8(r30)
/* 809F2824  38 03 00 2C */	addi r0, r3, 0x2c
/* 809F2828  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 809F282C  38 03 00 84 */	addi r0, r3, 0x84
/* 809F2830  90 1E 09 C4 */	stw r0, 0x9c4(r30)
/* 809F2834  34 1E 09 90 */	addic. r0, r30, 0x990
/* 809F2838  41 82 00 54 */	beq lbl_809F288C
/* 809F283C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809F2840  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809F2844  90 7E 09 AC */	stw r3, 0x9ac(r30)
/* 809F2848  38 03 00 58 */	addi r0, r3, 0x58
/* 809F284C  90 1E 09 C4 */	stw r0, 0x9c4(r30)
/* 809F2850  34 1E 09 B0 */	addic. r0, r30, 0x9b0
/* 809F2854  41 82 00 10 */	beq lbl_809F2864
/* 809F2858  3C 60 80 9F */	lis r3, __vt__8cM3dGCyl@ha
/* 809F285C  38 03 2F 64 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809F2860  90 1E 09 C4 */	stw r0, 0x9c4(r30)
lbl_809F2864:
/* 809F2864  34 1E 09 90 */	addic. r0, r30, 0x990
/* 809F2868  41 82 00 24 */	beq lbl_809F288C
/* 809F286C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809F2870  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809F2874  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 809F2878  34 1E 09 90 */	addic. r0, r30, 0x990
/* 809F287C  41 82 00 10 */	beq lbl_809F288C
/* 809F2880  3C 60 80 9F */	lis r3, __vt__8cM3dGAab@ha
/* 809F2884  38 03 2F 70 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809F2888  90 1E 09 A8 */	stw r0, 0x9a8(r30)
lbl_809F288C:
/* 809F288C  38 7E 08 8C */	addi r3, r30, 0x88c
/* 809F2890  38 80 00 00 */	li r4, 0
/* 809F2894  4B 69 18 50 */	b __dt__12dCcD_GObjInfFv
lbl_809F2898:
/* 809F2898  34 1E 08 50 */	addic. r0, r30, 0x850
/* 809F289C  41 82 00 54 */	beq lbl_809F28F0
/* 809F28A0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809F28A4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809F28A8  90 7E 08 68 */	stw r3, 0x868(r30)
/* 809F28AC  38 03 00 20 */	addi r0, r3, 0x20
/* 809F28B0  90 1E 08 6C */	stw r0, 0x86c(r30)
/* 809F28B4  34 1E 08 6C */	addic. r0, r30, 0x86c
/* 809F28B8  41 82 00 24 */	beq lbl_809F28DC
/* 809F28BC  3C 60 80 9F */	lis r3, __vt__10dCcD_GStts@ha
/* 809F28C0  38 03 2F 28 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809F28C4  90 1E 08 6C */	stw r0, 0x86c(r30)
/* 809F28C8  34 1E 08 6C */	addic. r0, r30, 0x86c
/* 809F28CC  41 82 00 10 */	beq lbl_809F28DC
/* 809F28D0  3C 60 80 9F */	lis r3, __vt__10cCcD_GStts@ha
/* 809F28D4  38 03 2F 1C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809F28D8  90 1E 08 6C */	stw r0, 0x86c(r30)
lbl_809F28DC:
/* 809F28DC  34 1E 08 50 */	addic. r0, r30, 0x850
/* 809F28E0  41 82 00 10 */	beq lbl_809F28F0
/* 809F28E4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809F28E8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809F28EC  90 1E 08 68 */	stw r0, 0x868(r30)
lbl_809F28F0:
/* 809F28F0  34 1E 08 10 */	addic. r0, r30, 0x810
/* 809F28F4  41 82 00 28 */	beq lbl_809F291C
/* 809F28F8  3C 60 80 9F */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809F28FC  38 03 2F 10 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809F2900  90 1E 08 1C */	stw r0, 0x81c(r30)
/* 809F2904  38 7E 08 24 */	addi r3, r30, 0x824
/* 809F2908  38 80 FF FF */	li r4, -1
/* 809F290C  4B 87 C6 0C */	b __dt__8cM3dGCirFv
/* 809F2910  38 7E 08 10 */	addi r3, r30, 0x810
/* 809F2914  38 80 00 00 */	li r4, 0
/* 809F2918  4B 87 57 98 */	b __dt__13cBgS_PolyInfoFv
lbl_809F291C:
/* 809F291C  34 1E 06 38 */	addic. r0, r30, 0x638
/* 809F2920  41 82 00 2C */	beq lbl_809F294C
/* 809F2924  3C 60 80 9F */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809F2928  38 63 2F 7C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809F292C  90 7E 06 48 */	stw r3, 0x648(r30)
/* 809F2930  38 03 00 0C */	addi r0, r3, 0xc
/* 809F2934  90 1E 06 4C */	stw r0, 0x64c(r30)
/* 809F2938  38 03 00 18 */	addi r0, r3, 0x18
/* 809F293C  90 1E 06 5C */	stw r0, 0x65c(r30)
/* 809F2940  38 7E 06 38 */	addi r3, r30, 0x638
/* 809F2944  38 80 00 00 */	li r4, 0
/* 809F2948  4B 68 36 4C */	b __dt__9dBgS_AcchFv
lbl_809F294C:
/* 809F294C  38 7E 05 94 */	addi r3, r30, 0x594
/* 809F2950  38 80 FF FF */	li r4, -1
/* 809F2954  4B 8C E3 18 */	b __dt__17Z2CreatureCitizenFv
/* 809F2958  7F C3 F3 78 */	mr r3, r30
/* 809F295C  38 80 00 00 */	li r4, 0
/* 809F2960  4B 62 63 2C */	b __dt__10fopAc_ac_cFv
/* 809F2964  7F E0 07 35 */	extsh. r0, r31
/* 809F2968  40 81 00 0C */	ble lbl_809F2974
/* 809F296C  7F C3 F3 78 */	mr r3, r30
/* 809F2970  4B 8D C3 CC */	b __dl__FPv
lbl_809F2974:
/* 809F2974  7F C3 F3 78 */	mr r3, r30
/* 809F2978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F297C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F2980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F2984  7C 08 03 A6 */	mtlr r0
/* 809F2988  38 21 00 10 */	addi r1, r1, 0x10
/* 809F298C  4E 80 00 20 */	blr 
