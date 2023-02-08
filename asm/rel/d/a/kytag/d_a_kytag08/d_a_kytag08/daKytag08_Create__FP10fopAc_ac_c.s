lbl_8085AFEC:
/* 8085AFEC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8085AFF0  7C 08 02 A6 */	mflr r0
/* 8085AFF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8085AFF8  39 61 00 50 */	addi r11, r1, 0x50
/* 8085AFFC  4B B0 71 D9 */	bl _savegpr_27
/* 8085B000  7C 7D 1B 78 */	mr r29, r3
/* 8085B004  3C 80 80 86 */	lis r4, lit_4012@ha /* 0x8085B28C@ha */
/* 8085B008  3B C4 B2 8C */	addi r30, r4, lit_4012@l /* 0x8085B28C@l */
/* 8085B00C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8085B010  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8085B014  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8085B018  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8085B01C  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8085B020  3B E4 CA 54 */	addi r31, r4, g_env_light@l /* 0x8042CA54@l */
/* 8085B024  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8085B028  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8085B02C  40 82 00 64 */	bne lbl_8085B090
/* 8085B030  7F A0 EB 79 */	or. r0, r29, r29
/* 8085B034  41 82 00 50 */	beq lbl_8085B084
/* 8085B038  7C 1B 03 78 */	mr r27, r0
/* 8085B03C  4B 7B DB 29 */	bl __ct__10fopAc_ac_cFv
/* 8085B040  3B 9B 05 6C */	addi r28, r27, 0x56c
/* 8085B044  3C 60 80 86 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8085B368@ha */
/* 8085B048  38 03 B3 68 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8085B368@l */
/* 8085B04C  90 1B 05 6C */	stw r0, 0x56c(r27)
/* 8085B050  7F 83 E3 78 */	mr r3, r28
/* 8085B054  38 80 00 00 */	li r4, 0
/* 8085B058  4B AC D3 A5 */	bl init__12J3DFrameCtrlFs
/* 8085B05C  38 00 00 00 */	li r0, 0
/* 8085B060  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8085B064  3C 60 80 86 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8085B368@ha */
/* 8085B068  38 03 B3 68 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8085B368@l */
/* 8085B06C  94 1B 05 84 */	stwu r0, 0x584(r27)
/* 8085B070  7F 63 DB 78 */	mr r3, r27
/* 8085B074  38 80 00 00 */	li r4, 0
/* 8085B078  4B AC D3 85 */	bl init__12J3DFrameCtrlFs
/* 8085B07C  38 00 00 00 */	li r0, 0
/* 8085B080  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_8085B084:
/* 8085B084  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8085B088  60 00 00 08 */	ori r0, r0, 8
/* 8085B08C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8085B090:
/* 8085B090  38 7D 05 A4 */	addi r3, r29, 0x5a4
/* 8085B094  3C 80 80 86 */	lis r4, d_a_kytag08__stringBase0@ha /* 0x8085B310@ha */
/* 8085B098  38 84 B3 10 */	addi r4, r4, d_a_kytag08__stringBase0@l /* 0x8085B310@l */
/* 8085B09C  4B 7D 1E 21 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8085B0A0  7C 7C 1B 78 */	mr r28, r3
/* 8085B0A4  2C 1C 00 04 */	cmpwi r28, 4
/* 8085B0A8  40 82 01 78 */	bne lbl_8085B220
/* 8085B0AC  7F A3 EB 78 */	mr r3, r29
/* 8085B0B0  3C 80 80 86 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8085AF74@ha */
/* 8085B0B4  38 84 AF 74 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8085AF74@l */
/* 8085B0B8  38 A0 05 50 */	li r5, 0x550
/* 8085B0BC  4B 7B F3 F5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8085B0C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8085B0C4  40 82 00 0C */	bne lbl_8085B0D0
/* 8085B0C8  38 60 00 05 */	li r3, 5
/* 8085B0CC  48 00 01 58 */	b lbl_8085B224
lbl_8085B0D0:
/* 8085B0D0  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8085B0D4  D0 1D 05 AC */	stfs f0, 0x5ac(r29)
/* 8085B0D8  D0 1D 05 B0 */	stfs f0, 0x5b0(r29)
/* 8085B0DC  D0 1D 05 B4 */	stfs f0, 0x5b4(r29)
/* 8085B0E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8085B0E4  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 8085B0E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085B0EC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085B0F0  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8085B0F4  38 80 00 00 */	li r4, 0
/* 8085B0F8  90 81 00 08 */	stw r4, 8(r1)
/* 8085B0FC  38 00 FF FF */	li r0, -1
/* 8085B100  90 01 00 0C */	stw r0, 0xc(r1)
/* 8085B104  90 81 00 10 */	stw r4, 0x10(r1)
/* 8085B108  90 81 00 14 */	stw r4, 0x14(r1)
/* 8085B10C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8085B110  38 80 00 00 */	li r4, 0
/* 8085B114  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084A0@ha */
/* 8085B118  38 A5 84 A0 */	addi r5, r5, 0x84A0 /* 0x000084A0@l */
/* 8085B11C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 8085B120  38 E0 00 00 */	li r7, 0
/* 8085B124  39 00 00 00 */	li r8, 0
/* 8085B128  39 21 00 20 */	addi r9, r1, 0x20
/* 8085B12C  39 40 00 FF */	li r10, 0xff
/* 8085B130  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8085B134  4B 7F 19 5D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8085B138  90 7D 05 9C */	stw r3, 0x59c(r29)
/* 8085B13C  4B 95 14 41 */	bl dKy_darkworld_check__Fv
/* 8085B140  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8085B144  40 82 00 54 */	bne lbl_8085B198
/* 8085B148  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8085B14C  38 80 00 00 */	li r4, 0
/* 8085B150  90 81 00 08 */	stw r4, 8(r1)
/* 8085B154  38 00 FF FF */	li r0, -1
/* 8085B158  90 01 00 0C */	stw r0, 0xc(r1)
/* 8085B15C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8085B160  90 81 00 14 */	stw r4, 0x14(r1)
/* 8085B164  90 81 00 18 */	stw r4, 0x18(r1)
/* 8085B168  38 80 00 00 */	li r4, 0
/* 8085B16C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084A1@ha */
/* 8085B170  38 A5 84 A1 */	addi r5, r5, 0x84A1 /* 0x000084A1@l */
/* 8085B174  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 8085B178  38 E0 00 00 */	li r7, 0
/* 8085B17C  39 00 00 00 */	li r8, 0
/* 8085B180  39 21 00 20 */	addi r9, r1, 0x20
/* 8085B184  39 40 00 FF */	li r10, 0xff
/* 8085B188  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8085B18C  4B 7F 19 05 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8085B190  90 7D 05 A0 */	stw r3, 0x5a0(r29)
/* 8085B194  48 00 00 50 */	b lbl_8085B1E4
lbl_8085B198:
/* 8085B198  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8085B19C  38 80 00 00 */	li r4, 0
/* 8085B1A0  90 81 00 08 */	stw r4, 8(r1)
/* 8085B1A4  38 00 FF FF */	li r0, -1
/* 8085B1A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8085B1AC  90 81 00 10 */	stw r4, 0x10(r1)
/* 8085B1B0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8085B1B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8085B1B8  38 80 00 00 */	li r4, 0
/* 8085B1BC  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084A2@ha */
/* 8085B1C0  38 A5 84 A2 */	addi r5, r5, 0x84A2 /* 0x000084A2@l */
/* 8085B1C4  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 8085B1C8  38 E0 00 00 */	li r7, 0
/* 8085B1CC  39 00 00 00 */	li r8, 0
/* 8085B1D0  39 21 00 20 */	addi r9, r1, 0x20
/* 8085B1D4  39 40 00 FF */	li r10, 0xff
/* 8085B1D8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8085B1DC  4B 7F 18 B5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8085B1E0  90 7D 05 A0 */	stw r3, 0x5a0(r29)
lbl_8085B1E4:
/* 8085B1E4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8085B1E8  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 8085B1EC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8085B1F0  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 8085B1F4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8085B1F8  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 8085B1FC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8085B200  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 8085B204  C0 1D 05 B8 */	lfs f0, 0x5b8(r29)
/* 8085B208  D0 1D 05 C4 */	stfs f0, 0x5c4(r29)
/* 8085B20C  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 8085B210  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 8085B214  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 8085B218  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 8085B21C  93 BF 10 60 */	stw r29, 0x1060(r31)
lbl_8085B220:
/* 8085B220  7F 83 E3 78 */	mr r3, r28
lbl_8085B224:
/* 8085B224  39 61 00 50 */	addi r11, r1, 0x50
/* 8085B228  4B B0 6F F9 */	bl _restgpr_27
/* 8085B22C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8085B230  7C 08 03 A6 */	mtlr r0
/* 8085B234  38 21 00 50 */	addi r1, r1, 0x50
/* 8085B238  4E 80 00 20 */	blr 
