lbl_809D32E4:
/* 809D32E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D32E8  7C 08 02 A6 */	mflr r0
/* 809D32EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D32F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D32F4  93 C1 00 08 */	stw r30, 8(r1)
/* 809D32F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 809D32FC  7C 9F 23 78 */	mr r31, r4
/* 809D3300  41 82 02 14 */	beq lbl_809D3514
/* 809D3304  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 809D3308  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 809D330C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809D3310  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 809D3314  38 80 FF FF */	li r4, -1
/* 809D3318  4B 6A 49 C4 */	b __dt__11dBgS_LinChkFv
/* 809D331C  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 809D3320  38 80 FF FF */	li r4, -1
/* 809D3324  4B 6A 42 CC */	b __dt__11dBgS_GndChkFv
/* 809D3328  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 809D332C  38 80 FF FF */	li r4, -1
/* 809D3330  4B 89 49 64 */	b __dt__11cBgS_GndChkFv
/* 809D3334  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 809D3338  38 80 FF FF */	li r4, -1
/* 809D333C  4B 87 6C 0C */	b __dt__10dMsgFlow_cFv
/* 809D3340  38 7E 09 1A */	addi r3, r30, 0x91a
/* 809D3344  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha
/* 809D3348  38 84 32 64 */	addi r4, r4, __dt__5csXyzFv@l
/* 809D334C  38 A0 00 06 */	li r5, 6
/* 809D3350  38 C0 00 03 */	li r6, 3
/* 809D3354  4B 98 E9 94 */	b __destroy_arr
/* 809D3358  38 7E 09 08 */	addi r3, r30, 0x908
/* 809D335C  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha
/* 809D3360  38 84 32 64 */	addi r4, r4, __dt__5csXyzFv@l
/* 809D3364  38 A0 00 06 */	li r5, 6
/* 809D3368  38 C0 00 03 */	li r6, 3
/* 809D336C  4B 98 E9 7C */	b __destroy_arr
/* 809D3370  38 7E 08 54 */	addi r3, r30, 0x854
/* 809D3374  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha
/* 809D3378  38 84 32 A4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809D337C  38 A0 00 0C */	li r5, 0xc
/* 809D3380  38 C0 00 03 */	li r6, 3
/* 809D3384  4B 98 E9 64 */	b __destroy_arr
/* 809D3388  38 7E 08 2C */	addi r3, r30, 0x82c
/* 809D338C  3C 80 80 9D */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 809D3390  38 84 31 10 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 809D3394  38 A0 00 08 */	li r5, 8
/* 809D3398  38 C0 00 05 */	li r6, 5
/* 809D339C  4B 98 E9 4C */	b __destroy_arr
/* 809D33A0  34 1E 08 24 */	addic. r0, r30, 0x824
/* 809D33A4  41 82 00 10 */	beq lbl_809D33B4
/* 809D33A8  3C 60 80 9D */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 809D33AC  38 03 3E 6C */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 809D33B0  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_809D33B4:
/* 809D33B4  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 809D33B8  41 82 00 28 */	beq lbl_809D33E0
/* 809D33BC  3C 60 80 9D */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809D33C0  38 03 3E 60 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809D33C4  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 809D33C8  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 809D33CC  38 80 FF FF */	li r4, -1
/* 809D33D0  4B 89 BB 48 */	b __dt__8cM3dGCirFv
/* 809D33D4  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809D33D8  38 80 00 00 */	li r4, 0
/* 809D33DC  4B 89 4C D4 */	b __dt__13cBgS_PolyInfoFv
lbl_809D33E0:
/* 809D33E0  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809D33E4  41 82 00 54 */	beq lbl_809D3438
/* 809D33E8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809D33EC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809D33F0  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 809D33F4  38 03 00 20 */	addi r0, r3, 0x20
/* 809D33F8  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809D33FC  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809D3400  41 82 00 24 */	beq lbl_809D3424
/* 809D3404  3C 60 80 9D */	lis r3, __vt__10dCcD_GStts@ha
/* 809D3408  38 03 3E 54 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809D340C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809D3410  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809D3414  41 82 00 10 */	beq lbl_809D3424
/* 809D3418  3C 60 80 9D */	lis r3, __vt__10cCcD_GStts@ha
/* 809D341C  38 03 3E 48 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809D3420  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_809D3424:
/* 809D3424  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809D3428  41 82 00 10 */	beq lbl_809D3438
/* 809D342C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809D3430  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809D3434  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_809D3438:
/* 809D3438  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 809D343C  41 82 00 2C */	beq lbl_809D3468
/* 809D3440  3C 60 80 9D */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809D3444  38 63 3E 24 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809D3448  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 809D344C  38 03 00 0C */	addi r0, r3, 0xc
/* 809D3450  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 809D3454  38 03 00 18 */	addi r0, r3, 0x18
/* 809D3458  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 809D345C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809D3460  38 80 00 00 */	li r4, 0
/* 809D3464  4B 6A 2B 30 */	b __dt__9dBgS_AcchFv
lbl_809D3468:
/* 809D3468  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809D346C  41 82 00 20 */	beq lbl_809D348C
/* 809D3470  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809D3474  41 82 00 18 */	beq lbl_809D348C
/* 809D3478  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809D347C  41 82 00 10 */	beq lbl_809D348C
/* 809D3480  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809D3484  38 03 3E 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809D3488  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_809D348C:
/* 809D348C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809D3490  41 82 00 20 */	beq lbl_809D34B0
/* 809D3494  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809D3498  41 82 00 18 */	beq lbl_809D34B0
/* 809D349C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809D34A0  41 82 00 10 */	beq lbl_809D34B0
/* 809D34A4  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809D34A8  38 03 3E 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809D34AC  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_809D34B0:
/* 809D34B0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809D34B4  41 82 00 20 */	beq lbl_809D34D4
/* 809D34B8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809D34BC  41 82 00 18 */	beq lbl_809D34D4
/* 809D34C0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809D34C4  41 82 00 10 */	beq lbl_809D34D4
/* 809D34C8  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809D34CC  38 03 3E 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809D34D0  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_809D34D4:
/* 809D34D4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809D34D8  41 82 00 20 */	beq lbl_809D34F8
/* 809D34DC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809D34E0  41 82 00 18 */	beq lbl_809D34F8
/* 809D34E4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809D34E8  41 82 00 10 */	beq lbl_809D34F8
/* 809D34EC  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809D34F0  38 03 3E 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809D34F4  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_809D34F8:
/* 809D34F8  7F C3 F3 78 */	mr r3, r30
/* 809D34FC  38 80 00 00 */	li r4, 0
/* 809D3500  4B 64 57 8C */	b __dt__10fopAc_ac_cFv
/* 809D3504  7F E0 07 35 */	extsh. r0, r31
/* 809D3508  40 81 00 0C */	ble lbl_809D3514
/* 809D350C  7F C3 F3 78 */	mr r3, r30
/* 809D3510  4B 8F B8 2C */	b __dl__FPv
lbl_809D3514:
/* 809D3514  7F C3 F3 78 */	mr r3, r30
/* 809D3518  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D351C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D3520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D3524  7C 08 03 A6 */	mtlr r0
/* 809D3528  38 21 00 10 */	addi r1, r1, 0x10
/* 809D352C  4E 80 00 20 */	blr 
