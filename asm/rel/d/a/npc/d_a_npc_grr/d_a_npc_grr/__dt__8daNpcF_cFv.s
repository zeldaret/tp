lbl_809E31F4:
/* 809E31F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E31F8  7C 08 02 A6 */	mflr r0
/* 809E31FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E3200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E3204  93 C1 00 08 */	stw r30, 8(r1)
/* 809E3208  7C 7E 1B 79 */	or. r30, r3, r3
/* 809E320C  7C 9F 23 78 */	mr r31, r4
/* 809E3210  41 82 02 14 */	beq lbl_809E3424
/* 809E3214  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 809E3218  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 809E321C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809E3220  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 809E3224  38 80 FF FF */	li r4, -1
/* 809E3228  4B 69 4A B5 */	bl __dt__11dBgS_LinChkFv
/* 809E322C  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 809E3230  38 80 FF FF */	li r4, -1
/* 809E3234  4B 69 43 BD */	bl __dt__11dBgS_GndChkFv
/* 809E3238  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 809E323C  38 80 FF FF */	li r4, -1
/* 809E3240  4B 88 4A 55 */	bl __dt__11cBgS_GndChkFv
/* 809E3244  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 809E3248  38 80 FF FF */	li r4, -1
/* 809E324C  4B 86 6C FD */	bl __dt__10dMsgFlow_cFv
/* 809E3250  38 7E 09 1A */	addi r3, r30, 0x91a
/* 809E3254  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha /* 0x809E3174@ha */
/* 809E3258  38 84 31 74 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809E3174@l */
/* 809E325C  38 A0 00 06 */	li r5, 6
/* 809E3260  38 C0 00 03 */	li r6, 3
/* 809E3264  4B 97 EA 85 */	bl __destroy_arr
/* 809E3268  38 7E 09 08 */	addi r3, r30, 0x908
/* 809E326C  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha /* 0x809E3174@ha */
/* 809E3270  38 84 31 74 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809E3174@l */
/* 809E3274  38 A0 00 06 */	li r5, 6
/* 809E3278  38 C0 00 03 */	li r6, 3
/* 809E327C  4B 97 EA 6D */	bl __destroy_arr
/* 809E3280  38 7E 08 54 */	addi r3, r30, 0x854
/* 809E3284  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha /* 0x809E31B4@ha */
/* 809E3288  38 84 31 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809E31B4@l */
/* 809E328C  38 A0 00 0C */	li r5, 0xc
/* 809E3290  38 C0 00 03 */	li r6, 3
/* 809E3294  4B 97 EA 55 */	bl __destroy_arr
/* 809E3298  38 7E 08 2C */	addi r3, r30, 0x82c
/* 809E329C  3C 80 80 9E */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809E3020@ha */
/* 809E32A0  38 84 30 20 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809E3020@l */
/* 809E32A4  38 A0 00 08 */	li r5, 8
/* 809E32A8  38 C0 00 05 */	li r6, 5
/* 809E32AC  4B 97 EA 3D */	bl __destroy_arr
/* 809E32B0  34 1E 08 24 */	addic. r0, r30, 0x824
/* 809E32B4  41 82 00 10 */	beq lbl_809E32C4
/* 809E32B8  3C 60 80 9E */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x809E3EB0@ha */
/* 809E32BC  38 03 3E B0 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x809E3EB0@l */
/* 809E32C0  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_809E32C4:
/* 809E32C4  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 809E32C8  41 82 00 28 */	beq lbl_809E32F0
/* 809E32CC  3C 60 80 9E */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809E3EA4@ha */
/* 809E32D0  38 03 3E A4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809E3EA4@l */
/* 809E32D4  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 809E32D8  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 809E32DC  38 80 FF FF */	li r4, -1
/* 809E32E0  4B 88 BC 39 */	bl __dt__8cM3dGCirFv
/* 809E32E4  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809E32E8  38 80 00 00 */	li r4, 0
/* 809E32EC  4B 88 4D C5 */	bl __dt__13cBgS_PolyInfoFv
lbl_809E32F0:
/* 809E32F0  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809E32F4  41 82 00 54 */	beq lbl_809E3348
/* 809E32F8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809E32FC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809E3300  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 809E3304  38 03 00 20 */	addi r0, r3, 0x20
/* 809E3308  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809E330C  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809E3310  41 82 00 24 */	beq lbl_809E3334
/* 809E3314  3C 60 80 9E */	lis r3, __vt__10dCcD_GStts@ha /* 0x809E3E98@ha */
/* 809E3318  38 03 3E 98 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809E3E98@l */
/* 809E331C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809E3320  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809E3324  41 82 00 10 */	beq lbl_809E3334
/* 809E3328  3C 60 80 9E */	lis r3, __vt__10cCcD_GStts@ha /* 0x809E3E8C@ha */
/* 809E332C  38 03 3E 8C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809E3E8C@l */
/* 809E3330  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_809E3334:
/* 809E3334  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809E3338  41 82 00 10 */	beq lbl_809E3348
/* 809E333C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809E3340  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809E3344  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_809E3348:
/* 809E3348  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 809E334C  41 82 00 2C */	beq lbl_809E3378
/* 809E3350  3C 60 80 9E */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809E3E68@ha */
/* 809E3354  38 63 3E 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809E3E68@l */
/* 809E3358  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 809E335C  38 03 00 0C */	addi r0, r3, 0xc
/* 809E3360  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 809E3364  38 03 00 18 */	addi r0, r3, 0x18
/* 809E3368  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 809E336C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809E3370  38 80 00 00 */	li r4, 0
/* 809E3374  4B 69 2C 21 */	bl __dt__9dBgS_AcchFv
lbl_809E3378:
/* 809E3378  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809E337C  41 82 00 20 */	beq lbl_809E339C
/* 809E3380  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809E3384  41 82 00 18 */	beq lbl_809E339C
/* 809E3388  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809E338C  41 82 00 10 */	beq lbl_809E339C
/* 809E3390  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809E3E5C@ha */
/* 809E3394  38 03 3E 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809E3E5C@l */
/* 809E3398  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_809E339C:
/* 809E339C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809E33A0  41 82 00 20 */	beq lbl_809E33C0
/* 809E33A4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809E33A8  41 82 00 18 */	beq lbl_809E33C0
/* 809E33AC  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809E33B0  41 82 00 10 */	beq lbl_809E33C0
/* 809E33B4  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809E3E5C@ha */
/* 809E33B8  38 03 3E 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809E3E5C@l */
/* 809E33BC  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_809E33C0:
/* 809E33C0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809E33C4  41 82 00 20 */	beq lbl_809E33E4
/* 809E33C8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809E33CC  41 82 00 18 */	beq lbl_809E33E4
/* 809E33D0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809E33D4  41 82 00 10 */	beq lbl_809E33E4
/* 809E33D8  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809E3E5C@ha */
/* 809E33DC  38 03 3E 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809E3E5C@l */
/* 809E33E0  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_809E33E4:
/* 809E33E4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809E33E8  41 82 00 20 */	beq lbl_809E3408
/* 809E33EC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809E33F0  41 82 00 18 */	beq lbl_809E3408
/* 809E33F4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809E33F8  41 82 00 10 */	beq lbl_809E3408
/* 809E33FC  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809E3E5C@ha */
/* 809E3400  38 03 3E 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809E3E5C@l */
/* 809E3404  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_809E3408:
/* 809E3408  7F C3 F3 78 */	mr r3, r30
/* 809E340C  38 80 00 00 */	li r4, 0
/* 809E3410  4B 63 58 7D */	bl __dt__10fopAc_ac_cFv
/* 809E3414  7F E0 07 35 */	extsh. r0, r31
/* 809E3418  40 81 00 0C */	ble lbl_809E3424
/* 809E341C  7F C3 F3 78 */	mr r3, r30
/* 809E3420  4B 8E B9 1D */	bl __dl__FPv
lbl_809E3424:
/* 809E3424  7F C3 F3 78 */	mr r3, r30
/* 809E3428  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E342C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E3430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E3434  7C 08 03 A6 */	mtlr r0
/* 809E3438  38 21 00 10 */	addi r1, r1, 0x10
/* 809E343C  4E 80 00 20 */	blr 
