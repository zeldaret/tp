lbl_809F32C0:
/* 809F32C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809F32C4  7C 08 02 A6 */	mflr r0
/* 809F32C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809F32CC  39 61 00 20 */	addi r11, r1, 0x20
/* 809F32D0  4B 96 EF 00 */	b _savegpr_26
/* 809F32D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809F32D8  7C 9F 23 78 */	mr r31, r4
/* 809F32DC  41 82 01 C8 */	beq lbl_809F34A4
/* 809F32E0  3C 60 80 A0 */	lis r3, __vt__13daNpc_GWolf_c@ha
/* 809F32E4  38 03 8D E4 */	addi r0, r3, __vt__13daNpc_GWolf_c@l
/* 809F32E8  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809F32EC  3B A0 00 00 */	li r29, 0
/* 809F32F0  3B 80 00 00 */	li r28, 0
/* 809F32F4  3C 60 80 A0 */	lis r3, l_resNames@ha
/* 809F32F8  3B 43 89 68 */	addi r26, r3, l_resNames@l
/* 809F32FC  3C 60 80 A0 */	lis r3, l_loadRes_list@ha
/* 809F3300  3B 63 89 58 */	addi r27, r3, l_loadRes_list@l
/* 809F3304  48 00 00 20 */	b lbl_809F3324
lbl_809F3308:
/* 809F3308  38 7C 0D E0 */	addi r3, r28, 0xde0
/* 809F330C  7C 7E 1A 14 */	add r3, r30, r3
/* 809F3310  54 00 10 3A */	slwi r0, r0, 2
/* 809F3314  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809F3318  4B 63 9C F0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809F331C  3B BD 00 04 */	addi r29, r29, 4
/* 809F3320  3B 9C 00 08 */	addi r28, r28, 8
lbl_809F3324:
/* 809F3324  88 1E 0E 10 */	lbz r0, 0xe10(r30)
/* 809F3328  54 00 10 3A */	slwi r0, r0, 2
/* 809F332C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 809F3330  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809F3334  2C 00 00 00 */	cmpwi r0, 0
/* 809F3338  40 80 FF D0 */	bge lbl_809F3308
/* 809F333C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809F3340  28 00 00 00 */	cmplwi r0, 0
/* 809F3344  41 82 00 0C */	beq lbl_809F3350
/* 809F3348  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809F334C  4B 61 DF C4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809F3350:
/* 809F3350  34 1E 0C 8C */	addic. r0, r30, 0xc8c
/* 809F3354  41 82 00 84 */	beq lbl_809F33D8
/* 809F3358  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809F335C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809F3360  90 7E 0C C8 */	stw r3, 0xcc8(r30)
/* 809F3364  38 03 00 2C */	addi r0, r3, 0x2c
/* 809F3368  90 1E 0D AC */	stw r0, 0xdac(r30)
/* 809F336C  38 03 00 84 */	addi r0, r3, 0x84
/* 809F3370  90 1E 0D C4 */	stw r0, 0xdc4(r30)
/* 809F3374  34 1E 0D 90 */	addic. r0, r30, 0xd90
/* 809F3378  41 82 00 54 */	beq lbl_809F33CC
/* 809F337C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809F3380  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809F3384  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 809F3388  38 03 00 58 */	addi r0, r3, 0x58
/* 809F338C  90 1E 0D C4 */	stw r0, 0xdc4(r30)
/* 809F3390  34 1E 0D B0 */	addic. r0, r30, 0xdb0
/* 809F3394  41 82 00 10 */	beq lbl_809F33A4
/* 809F3398  3C 60 80 A0 */	lis r3, __vt__8cM3dGCyl@ha
/* 809F339C  38 03 8E 8C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809F33A0  90 1E 0D C4 */	stw r0, 0xdc4(r30)
lbl_809F33A4:
/* 809F33A4  34 1E 0D 90 */	addic. r0, r30, 0xd90
/* 809F33A8  41 82 00 24 */	beq lbl_809F33CC
/* 809F33AC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809F33B0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809F33B4  90 1E 0D AC */	stw r0, 0xdac(r30)
/* 809F33B8  34 1E 0D 90 */	addic. r0, r30, 0xd90
/* 809F33BC  41 82 00 10 */	beq lbl_809F33CC
/* 809F33C0  3C 60 80 A0 */	lis r3, __vt__8cM3dGAab@ha
/* 809F33C4  38 03 8E 98 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809F33C8  90 1E 0D A8 */	stw r0, 0xda8(r30)
lbl_809F33CC:
/* 809F33CC  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809F33D0  38 80 00 00 */	li r4, 0
/* 809F33D4  4B 69 0D 10 */	b __dt__12dCcD_GObjInfFv
lbl_809F33D8:
/* 809F33D8  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 809F33DC  3C 80 80 9F */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 809F33E0  38 84 7B B0 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 809F33E4  38 A0 00 08 */	li r5, 8
/* 809F33E8  38 C0 00 02 */	li r6, 2
/* 809F33EC  4B 96 E8 FC */	b __destroy_arr
/* 809F33F0  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 809F33F4  41 82 00 88 */	beq lbl_809F347C
/* 809F33F8  3C 60 80 A0 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 809F33FC  38 03 8E A4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 809F3400  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 809F3404  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 809F3408  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809F340C  38 84 7D 04 */	addi r4, r4, __dt__5csXyzFv@l
/* 809F3410  38 A0 00 06 */	li r5, 6
/* 809F3414  38 C0 00 04 */	li r6, 4
/* 809F3418  4B 96 E8 D0 */	b __destroy_arr
/* 809F341C  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 809F3420  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809F3424  38 84 7D 04 */	addi r4, r4, __dt__5csXyzFv@l
/* 809F3428  38 A0 00 06 */	li r5, 6
/* 809F342C  38 C0 00 04 */	li r6, 4
/* 809F3430  4B 96 E8 B8 */	b __destroy_arr
/* 809F3434  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 809F3438  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809F343C  38 84 7D 04 */	addi r4, r4, __dt__5csXyzFv@l
/* 809F3440  38 A0 00 06 */	li r5, 6
/* 809F3444  38 C0 00 04 */	li r6, 4
/* 809F3448  4B 96 E8 A0 */	b __destroy_arr
/* 809F344C  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 809F3450  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809F3454  38 84 7D 04 */	addi r4, r4, __dt__5csXyzFv@l
/* 809F3458  38 A0 00 06 */	li r5, 6
/* 809F345C  38 C0 00 04 */	li r6, 4
/* 809F3460  4B 96 E8 88 */	b __destroy_arr
/* 809F3464  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 809F3468  3C 80 80 9F */	lis r4, __dt__4cXyzFv@ha
/* 809F346C  38 84 7D 44 */	addi r4, r4, __dt__4cXyzFv@l
/* 809F3470  38 A0 00 0C */	li r5, 0xc
/* 809F3474  38 C0 00 04 */	li r6, 4
/* 809F3478  4B 96 E8 70 */	b __destroy_arr
lbl_809F347C:
/* 809F347C  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809F3480  38 80 FF FF */	li r4, -1
/* 809F3484  4B 8C CF 9C */	b __dt__10Z2CreatureFv
/* 809F3488  7F C3 F3 78 */	mr r3, r30
/* 809F348C  38 80 00 00 */	li r4, 0
/* 809F3490  48 00 48 F5 */	bl __dt__8daNpcF_cFv
/* 809F3494  7F E0 07 35 */	extsh. r0, r31
/* 809F3498  40 81 00 0C */	ble lbl_809F34A4
/* 809F349C  7F C3 F3 78 */	mr r3, r30
/* 809F34A0  4B 8D B8 9C */	b __dl__FPv
lbl_809F34A4:
/* 809F34A4  7F C3 F3 78 */	mr r3, r30
/* 809F34A8  39 61 00 20 */	addi r11, r1, 0x20
/* 809F34AC  4B 96 ED 70 */	b _restgpr_26
/* 809F34B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809F34B4  7C 08 03 A6 */	mtlr r0
/* 809F34B8  38 21 00 20 */	addi r1, r1, 0x20
/* 809F34BC  4E 80 00 20 */	blr 
