lbl_80AD31F0:
/* 80AD31F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD31F4  7C 08 02 A6 */	mflr r0
/* 80AD31F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD31FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD3200  4B 88 EF DD */	bl _savegpr_29
/* 80AD3204  7C 7E 1B 78 */	mr r30, r3
/* 80AD3208  3C 60 80 AD */	lis r3, m__20daNpc_Seira2_Param_c@ha /* 0x80AD4A60@ha */
/* 80AD320C  3B E3 4A 60 */	addi r31, r3, m__20daNpc_Seira2_Param_c@l /* 0x80AD4A60@l */
/* 80AD3210  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80AD3214  2C 00 00 02 */	cmpwi r0, 2
/* 80AD3218  41 82 01 F0 */	beq lbl_80AD3408
/* 80AD321C  40 80 02 D0 */	bge lbl_80AD34EC
/* 80AD3220  2C 00 00 00 */	cmpwi r0, 0
/* 80AD3224  40 80 00 0C */	bge lbl_80AD3230
/* 80AD3228  48 00 02 C4 */	b lbl_80AD34EC
/* 80AD322C  48 00 02 C0 */	b lbl_80AD34EC
lbl_80AD3230:
/* 80AD3230  38 60 03 16 */	li r3, 0x316
/* 80AD3234  4B 67 98 79 */	bl daNpcT_chkEvtBit__FUl
/* 80AD3238  2C 03 00 00 */	cmpwi r3, 0
/* 80AD323C  41 82 00 94 */	beq lbl_80AD32D0
/* 80AD3240  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80AD3244  2C 00 00 06 */	cmpwi r0, 6
/* 80AD3248  41 82 00 24 */	beq lbl_80AD326C
/* 80AD324C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80AD3250  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80AD3254  4B 67 26 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD3258  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80AD325C  38 00 00 06 */	li r0, 6
/* 80AD3260  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80AD3264  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80AD3268  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80AD326C:
/* 80AD326C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80AD3270  2C 00 00 0B */	cmpwi r0, 0xb
/* 80AD3274  41 82 00 24 */	beq lbl_80AD3298
/* 80AD3278  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80AD327C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80AD3280  4B 67 26 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD3284  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80AD3288  38 00 00 0B */	li r0, 0xb
/* 80AD328C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80AD3290  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80AD3294  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80AD3298:
/* 80AD3298  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80AD329C  2C 00 00 00 */	cmpwi r0, 0
/* 80AD32A0  41 82 00 24 */	beq lbl_80AD32C4
/* 80AD32A4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AD32A8  4B 67 24 55 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AD32AC  38 00 00 00 */	li r0, 0
/* 80AD32B0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80AD32B4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80AD32B8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80AD32BC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80AD32C0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80AD32C4:
/* 80AD32C4  38 00 00 00 */	li r0, 0
/* 80AD32C8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80AD32CC  48 00 01 34 */	b lbl_80AD3400
lbl_80AD32D0:
/* 80AD32D0  38 60 02 08 */	li r3, 0x208
/* 80AD32D4  4B 67 97 D9 */	bl daNpcT_chkEvtBit__FUl
/* 80AD32D8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD32DC  41 82 00 98 */	beq lbl_80AD3374
/* 80AD32E0  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80AD32E4  2C 00 00 06 */	cmpwi r0, 6
/* 80AD32E8  41 82 00 24 */	beq lbl_80AD330C
/* 80AD32EC  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80AD32F0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80AD32F4  4B 67 25 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD32F8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80AD32FC  38 00 00 06 */	li r0, 6
/* 80AD3300  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80AD3304  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80AD3308  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80AD330C:
/* 80AD330C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80AD3310  2C 00 00 16 */	cmpwi r0, 0x16
/* 80AD3314  41 82 00 24 */	beq lbl_80AD3338
/* 80AD3318  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80AD331C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80AD3320  4B 67 25 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD3324  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80AD3328  38 00 00 16 */	li r0, 0x16
/* 80AD332C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80AD3330  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80AD3334  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80AD3338:
/* 80AD3338  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80AD333C  2C 00 00 01 */	cmpwi r0, 1
/* 80AD3340  41 82 00 28 */	beq lbl_80AD3368
/* 80AD3344  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AD3348  4B 67 23 B5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AD334C  38 00 00 00 */	li r0, 0
/* 80AD3350  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80AD3354  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80AD3358  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80AD335C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80AD3360  38 00 00 01 */	li r0, 1
/* 80AD3364  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80AD3368:
/* 80AD3368  38 00 00 00 */	li r0, 0
/* 80AD336C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80AD3370  48 00 00 90 */	b lbl_80AD3400
lbl_80AD3374:
/* 80AD3374  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80AD3378  2C 00 00 0B */	cmpwi r0, 0xb
/* 80AD337C  41 82 00 24 */	beq lbl_80AD33A0
/* 80AD3380  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80AD3384  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80AD3388  4B 67 25 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD338C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80AD3390  38 00 00 0B */	li r0, 0xb
/* 80AD3394  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80AD3398  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80AD339C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80AD33A0:
/* 80AD33A0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80AD33A4  2C 00 00 10 */	cmpwi r0, 0x10
/* 80AD33A8  41 82 00 24 */	beq lbl_80AD33CC
/* 80AD33AC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80AD33B0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80AD33B4  4B 67 24 E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD33B8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80AD33BC  38 00 00 10 */	li r0, 0x10
/* 80AD33C0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80AD33C4  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80AD33C8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80AD33CC:
/* 80AD33CC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80AD33D0  2C 00 00 00 */	cmpwi r0, 0
/* 80AD33D4  41 82 00 24 */	beq lbl_80AD33F8
/* 80AD33D8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AD33DC  4B 67 23 21 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AD33E0  38 00 00 00 */	li r0, 0
/* 80AD33E4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80AD33E8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80AD33EC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80AD33F0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80AD33F4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80AD33F8:
/* 80AD33F8  38 00 00 00 */	li r0, 0
/* 80AD33FC  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80AD3400:
/* 80AD3400  38 00 00 02 */	li r0, 2
/* 80AD3404  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80AD3408:
/* 80AD3408  80 1E 10 E8 */	lwz r0, 0x10e8(r30)
/* 80AD340C  2C 00 00 02 */	cmpwi r0, 2
/* 80AD3410  40 82 00 10 */	bne lbl_80AD3420
/* 80AD3414  38 00 00 01 */	li r0, 1
/* 80AD3418  98 1E 0E 32 */	stb r0, 0xe32(r30)
/* 80AD341C  98 1E 0E 33 */	stb r0, 0xe33(r30)
lbl_80AD3420:
/* 80AD3420  38 60 02 08 */	li r3, 0x208
/* 80AD3424  4B 67 96 89 */	bl daNpcT_chkEvtBit__FUl
/* 80AD3428  2C 03 00 00 */	cmpwi r3, 0
/* 80AD342C  41 82 00 C0 */	beq lbl_80AD34EC
/* 80AD3430  38 60 03 16 */	li r3, 0x316
/* 80AD3434  4B 67 96 79 */	bl daNpcT_chkEvtBit__FUl
/* 80AD3438  2C 03 00 00 */	cmpwi r3, 0
/* 80AD343C  40 82 00 B0 */	bne lbl_80AD34EC
/* 80AD3440  7F C3 F3 78 */	mr r3, r30
/* 80AD3444  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD3448  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD344C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AD3450  4B 54 75 15 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AD3454  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80AD3458  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AD345C  40 81 00 90 */	ble lbl_80AD34EC
/* 80AD3460  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80AD3464  2C 00 00 06 */	cmpwi r0, 6
/* 80AD3468  41 82 00 24 */	beq lbl_80AD348C
/* 80AD346C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80AD3470  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80AD3474  4B 67 24 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD3478  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80AD347C  38 00 00 06 */	li r0, 6
/* 80AD3480  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80AD3484  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80AD3488  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80AD348C:
/* 80AD348C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80AD3490  2C 00 00 0B */	cmpwi r0, 0xb
/* 80AD3494  41 82 00 24 */	beq lbl_80AD34B8
/* 80AD3498  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80AD349C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80AD34A0  4B 67 23 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD34A4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80AD34A8  38 00 00 0B */	li r0, 0xb
/* 80AD34AC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80AD34B0  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80AD34B4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80AD34B8:
/* 80AD34B8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80AD34BC  2C 00 00 00 */	cmpwi r0, 0
/* 80AD34C0  41 82 00 24 */	beq lbl_80AD34E4
/* 80AD34C4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AD34C8  4B 67 22 35 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AD34CC  38 00 00 00 */	li r0, 0
/* 80AD34D0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80AD34D4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80AD34D8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80AD34DC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80AD34E0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80AD34E4:
/* 80AD34E4  38 00 00 00 */	li r0, 0
/* 80AD34E8  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80AD34EC:
/* 80AD34EC  38 60 00 01 */	li r3, 1
/* 80AD34F0  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD34F4  4B 88 ED 35 */	bl _restgpr_29
/* 80AD34F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD34FC  7C 08 03 A6 */	mtlr r0
/* 80AD3500  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD3504  4E 80 00 20 */	blr 
