lbl_804DE2F8:
/* 804DE2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE2FC  7C 08 02 A6 */	mflr r0
/* 804DE300  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE308  93 C1 00 08 */	stw r30, 8(r1)
/* 804DE30C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804DE310  7C 9F 23 78 */	mr r31, r4
/* 804DE314  41 82 01 EC */	beq lbl_804DE500
/* 804DE318  3C 60 80 4E */	lis r3, __vt__9daCstaF_c@ha
/* 804DE31C  38 03 FA AC */	addi r0, r3, __vt__9daCstaF_c@l
/* 804DE320  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 804DE324  38 7E 0A 40 */	addi r3, r30, 0xa40
/* 804DE328  81 9E 0A 40 */	lwz r12, 0xa40(r30)
/* 804DE32C  81 8C 00 08 */	lwz r12, 8(r12)
/* 804DE330  7D 89 03 A6 */	mtctr r12
/* 804DE334  4E 80 04 21 */	bctrl 
/* 804DE338  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 804DE33C  28 03 00 00 */	cmplwi r3, 0
/* 804DE340  41 82 00 08 */	beq lbl_804DE348
/* 804DE344  4B B3 2F CC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_804DE348:
/* 804DE348  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 804DE34C  80 9E 05 A0 */	lwz r4, 0x5a0(r30)
/* 804DE350  4B B4 EC B8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804DE354  38 7E 0A 40 */	addi r3, r30, 0xa40
/* 804DE358  38 80 FF FF */	li r4, -1
/* 804DE35C  4B DE 20 C4 */	b __dt__10Z2CreatureFv
/* 804DE360  34 1E 09 04 */	addic. r0, r30, 0x904
/* 804DE364  41 82 00 84 */	beq lbl_804DE3E8
/* 804DE368  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 804DE36C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 804DE370  90 7E 09 40 */	stw r3, 0x940(r30)
/* 804DE374  38 03 00 2C */	addi r0, r3, 0x2c
/* 804DE378  90 1E 0A 24 */	stw r0, 0xa24(r30)
/* 804DE37C  38 03 00 84 */	addi r0, r3, 0x84
/* 804DE380  90 1E 0A 3C */	stw r0, 0xa3c(r30)
/* 804DE384  34 1E 0A 08 */	addic. r0, r30, 0xa08
/* 804DE388  41 82 00 54 */	beq lbl_804DE3DC
/* 804DE38C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 804DE390  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 804DE394  90 7E 0A 24 */	stw r3, 0xa24(r30)
/* 804DE398  38 03 00 58 */	addi r0, r3, 0x58
/* 804DE39C  90 1E 0A 3C */	stw r0, 0xa3c(r30)
/* 804DE3A0  34 1E 0A 28 */	addic. r0, r30, 0xa28
/* 804DE3A4  41 82 00 10 */	beq lbl_804DE3B4
/* 804DE3A8  3C 60 80 4E */	lis r3, __vt__8cM3dGCyl@ha
/* 804DE3AC  38 03 FA 64 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 804DE3B0  90 1E 0A 3C */	stw r0, 0xa3c(r30)
lbl_804DE3B4:
/* 804DE3B4  34 1E 0A 08 */	addic. r0, r30, 0xa08
/* 804DE3B8  41 82 00 24 */	beq lbl_804DE3DC
/* 804DE3BC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 804DE3C0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 804DE3C4  90 1E 0A 24 */	stw r0, 0xa24(r30)
/* 804DE3C8  34 1E 0A 08 */	addic. r0, r30, 0xa08
/* 804DE3CC  41 82 00 10 */	beq lbl_804DE3DC
/* 804DE3D0  3C 60 80 4E */	lis r3, __vt__8cM3dGAab@ha
/* 804DE3D4  38 03 FA 70 */	addi r0, r3, __vt__8cM3dGAab@l
/* 804DE3D8  90 1E 0A 20 */	stw r0, 0xa20(r30)
lbl_804DE3DC:
/* 804DE3DC  38 7E 09 04 */	addi r3, r30, 0x904
/* 804DE3E0  38 80 00 00 */	li r4, 0
/* 804DE3E4  4B BA 5D 00 */	b __dt__12dCcD_GObjInfFv
lbl_804DE3E8:
/* 804DE3E8  34 1E 08 C8 */	addic. r0, r30, 0x8c8
/* 804DE3EC  41 82 00 54 */	beq lbl_804DE440
/* 804DE3F0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 804DE3F4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 804DE3F8  90 7E 08 E0 */	stw r3, 0x8e0(r30)
/* 804DE3FC  38 03 00 20 */	addi r0, r3, 0x20
/* 804DE400  90 1E 08 E4 */	stw r0, 0x8e4(r30)
/* 804DE404  34 1E 08 E4 */	addic. r0, r30, 0x8e4
/* 804DE408  41 82 00 24 */	beq lbl_804DE42C
/* 804DE40C  3C 60 80 4E */	lis r3, __vt__10dCcD_GStts@ha
/* 804DE410  38 03 FA 58 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 804DE414  90 1E 08 E4 */	stw r0, 0x8e4(r30)
/* 804DE418  34 1E 08 E4 */	addic. r0, r30, 0x8e4
/* 804DE41C  41 82 00 10 */	beq lbl_804DE42C
/* 804DE420  3C 60 80 4E */	lis r3, __vt__10cCcD_GStts@ha
/* 804DE424  38 03 FA 4C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 804DE428  90 1E 08 E4 */	stw r0, 0x8e4(r30)
lbl_804DE42C:
/* 804DE42C  34 1E 08 C8 */	addic. r0, r30, 0x8c8
/* 804DE430  41 82 00 10 */	beq lbl_804DE440
/* 804DE434  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 804DE438  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 804DE43C  90 1E 08 E0 */	stw r0, 0x8e0(r30)
lbl_804DE440:
/* 804DE440  34 1E 06 F0 */	addic. r0, r30, 0x6f0
/* 804DE444  41 82 00 2C */	beq lbl_804DE470
/* 804DE448  3C 60 80 4E */	lis r3, __vt__15dBgS_StatueAcch@ha
/* 804DE44C  38 63 FA 7C */	addi r3, r3, __vt__15dBgS_StatueAcch@l
/* 804DE450  90 7E 07 00 */	stw r3, 0x700(r30)
/* 804DE454  38 03 00 0C */	addi r0, r3, 0xc
/* 804DE458  90 1E 07 04 */	stw r0, 0x704(r30)
/* 804DE45C  38 03 00 18 */	addi r0, r3, 0x18
/* 804DE460  90 1E 07 14 */	stw r0, 0x714(r30)
/* 804DE464  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 804DE468  38 80 00 00 */	li r4, 0
/* 804DE46C  4B B9 7B 28 */	b __dt__9dBgS_AcchFv
lbl_804DE470:
/* 804DE470  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 804DE474  3C 80 80 4E */	lis r4, __dt__12dBgS_AcchCirFv@ha
/* 804DE478  38 84 E2 20 */	addi r4, r4, __dt__12dBgS_AcchCirFv@l
/* 804DE47C  38 A0 00 40 */	li r5, 0x40
/* 804DE480  38 C0 00 04 */	li r6, 4
/* 804DE484  4B E8 38 64 */	b __destroy_arr
/* 804DE488  34 1E 05 D8 */	addic. r0, r30, 0x5d8
/* 804DE48C  41 82 00 20 */	beq lbl_804DE4AC
/* 804DE490  34 1E 05 D8 */	addic. r0, r30, 0x5d8
/* 804DE494  41 82 00 18 */	beq lbl_804DE4AC
/* 804DE498  34 1E 05 D8 */	addic. r0, r30, 0x5d8
/* 804DE49C  41 82 00 10 */	beq lbl_804DE4AC
/* 804DE4A0  3C 60 80 4E */	lis r3, __vt__12J3DFrameCtrl@ha
/* 804DE4A4  38 03 FA A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 804DE4A8  90 1E 05 D8 */	stw r0, 0x5d8(r30)
lbl_804DE4AC:
/* 804DE4AC  34 1E 05 C0 */	addic. r0, r30, 0x5c0
/* 804DE4B0  41 82 00 20 */	beq lbl_804DE4D0
/* 804DE4B4  34 1E 05 C0 */	addic. r0, r30, 0x5c0
/* 804DE4B8  41 82 00 18 */	beq lbl_804DE4D0
/* 804DE4BC  34 1E 05 C0 */	addic. r0, r30, 0x5c0
/* 804DE4C0  41 82 00 10 */	beq lbl_804DE4D0
/* 804DE4C4  3C 60 80 4E */	lis r3, __vt__12J3DFrameCtrl@ha
/* 804DE4C8  38 03 FA A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 804DE4CC  90 1E 05 C0 */	stw r0, 0x5c0(r30)
lbl_804DE4D0:
/* 804DE4D0  28 1E 00 00 */	cmplwi r30, 0
/* 804DE4D4  41 82 00 1C */	beq lbl_804DE4F0
/* 804DE4D8  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 804DE4DC  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 804DE4E0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 804DE4E4  7F C3 F3 78 */	mr r3, r30
/* 804DE4E8  38 80 00 00 */	li r4, 0
/* 804DE4EC  4B B3 A7 A0 */	b __dt__10fopAc_ac_cFv
lbl_804DE4F0:
/* 804DE4F0  7F E0 07 35 */	extsh. r0, r31
/* 804DE4F4  40 81 00 0C */	ble lbl_804DE500
/* 804DE4F8  7F C3 F3 78 */	mr r3, r30
/* 804DE4FC  4B DF 08 40 */	b __dl__FPv
lbl_804DE500:
/* 804DE500  7F C3 F3 78 */	mr r3, r30
/* 804DE504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE508  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DE50C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE510  7C 08 03 A6 */	mtlr r0
/* 804DE514  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE518  4E 80 00 20 */	blr 
