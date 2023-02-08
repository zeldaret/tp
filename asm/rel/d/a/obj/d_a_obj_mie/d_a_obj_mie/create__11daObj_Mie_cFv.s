lbl_80C941C8:
/* 80C941C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C941CC  7C 08 02 A6 */	mflr r0
/* 80C941D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C941D4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C941D8  4B 6C E0 05 */	bl _savegpr_29
/* 80C941DC  7C 7F 1B 78 */	mr r31, r3
/* 80C941E0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C941E4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C941E8  40 82 01 08 */	bne lbl_80C942F0
/* 80C941EC  7F E0 FB 79 */	or. r0, r31, r31
/* 80C941F0  41 82 00 F4 */	beq lbl_80C942E4
/* 80C941F4  7C 1E 03 78 */	mr r30, r0
/* 80C941F8  4B 38 49 6D */	bl __ct__10fopAc_ac_cFv
/* 80C941FC  3C 60 80 C9 */	lis r3, __vt__11daObj_Mie_c@ha /* 0x80C95CAC@ha */
/* 80C94200  38 03 5C AC */	addi r0, r3, __vt__11daObj_Mie_c@l /* 0x80C95CAC@l */
/* 80C94204  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 80C94208  3B BE 05 78 */	addi r29, r30, 0x578
/* 80C9420C  7F A3 EB 78 */	mr r3, r29
/* 80C94210  4B 3E 1E 91 */	bl __ct__9dBgS_AcchFv
/* 80C94214  3C 60 80 C9 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C95C40@ha */
/* 80C94218  38 63 5C 40 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C95C40@l */
/* 80C9421C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80C94220  38 03 00 0C */	addi r0, r3, 0xc
/* 80C94224  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C94228  38 03 00 18 */	addi r0, r3, 0x18
/* 80C9422C  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80C94230  38 7D 00 14 */	addi r3, r29, 0x14
/* 80C94234  4B 3E 4C 35 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C94238  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C9423C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C94240  90 1E 07 68 */	stw r0, 0x768(r30)
/* 80C94244  38 7E 07 6C */	addi r3, r30, 0x76c
/* 80C94248  4B 3E F5 19 */	bl __ct__10dCcD_GSttsFv
/* 80C9424C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C94250  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C94254  90 7E 07 68 */	stw r3, 0x768(r30)
/* 80C94258  38 03 00 20 */	addi r0, r3, 0x20
/* 80C9425C  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80C94260  38 7E 07 8C */	addi r3, r30, 0x78c
/* 80C94264  4B 3E 1C 49 */	bl __ct__12dBgS_AcchCirFv
/* 80C94268  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 80C9426C  4B 5D 39 B1 */	bl __ct__11cBgS_GndChkFv
/* 80C94270  3B BE 08 08 */	addi r29, r30, 0x808
/* 80C94274  7F A3 EB 78 */	mr r3, r29
/* 80C94278  4B 3E F7 B1 */	bl __ct__12dCcD_GObjInfFv
/* 80C9427C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C94280  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C94284  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C94288  3C 60 80 C9 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C95C88@ha */
/* 80C9428C  38 03 5C 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C95C88@l */
/* 80C94290  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C94294  3C 60 80 C9 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C95C94@ha */
/* 80C94298  38 03 5C 94 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C95C94@l */
/* 80C9429C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C942A0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C942A4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C942A8  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C942AC  38 03 00 58 */	addi r0, r3, 0x58
/* 80C942B0  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C942B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C942B8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C942BC  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C942C0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C942C4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C942C8  38 03 00 84 */	addi r0, r3, 0x84
/* 80C942CC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C942D0  3C 60 80 C9 */	lis r3, __vt__8cM3dGLin@ha /* 0x80C95CA0@ha */
/* 80C942D4  38 03 5C A0 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x80C95CA0@l */
/* 80C942D8  90 1E 09 5C */	stw r0, 0x95c(r30)
/* 80C942DC  38 7E 09 60 */	addi r3, r30, 0x960
/* 80C942E0  4B 3E 39 89 */	bl __ct__11dBgS_LinChkFv
lbl_80C942E4:
/* 80C942E4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C942E8  60 00 00 08 */	ori r0, r0, 8
/* 80C942EC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C942F0:
/* 80C942F0  38 00 00 00 */	li r0, 0
/* 80C942F4  98 1F 09 D0 */	stb r0, 0x9d0(r31)
/* 80C942F8  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80C942FC  3C 80 80 C9 */	lis r4, l_bmdData@ha /* 0x80C95B88@ha */
/* 80C94300  38 84 5B 88 */	addi r4, r4, l_bmdData@l /* 0x80C95B88@l */
/* 80C94304  88 1F 09 D0 */	lbz r0, 0x9d0(r31)
/* 80C94308  54 00 18 38 */	slwi r0, r0, 3
/* 80C9430C  7C 84 02 14 */	add r4, r4, r0
/* 80C94310  80 04 00 04 */	lwz r0, 4(r4)
/* 80C94314  54 00 10 3A */	slwi r0, r0, 2
/* 80C94318  3C 80 80 C9 */	lis r4, l_resNameList@ha /* 0x80C95B90@ha */
/* 80C9431C  38 84 5B 90 */	addi r4, r4, l_resNameList@l /* 0x80C95B90@l */
/* 80C94320  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C94324  4B 39 8B 99 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C94328  2C 03 00 04 */	cmpwi r3, 4
/* 80C9432C  40 82 00 54 */	bne lbl_80C94380
/* 80C94330  7F E3 FB 78 */	mr r3, r31
/* 80C94334  3C 80 80 C9 */	lis r4, createHeapCallBack__11daObj_Mie_cFP10fopAc_ac_c@ha /* 0x80C952D8@ha */
/* 80C94338  38 84 52 D8 */	addi r4, r4, createHeapCallBack__11daObj_Mie_cFP10fopAc_ac_c@l /* 0x80C952D8@l */
/* 80C9433C  38 A0 0D 50 */	li r5, 0xd50
/* 80C94340  4B 38 61 71 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C94344  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C94348  40 82 00 0C */	bne lbl_80C94354
/* 80C9434C  38 60 00 05 */	li r3, 5
/* 80C94350  48 00 00 30 */	b lbl_80C94380
lbl_80C94354:
/* 80C94354  88 1F 09 D0 */	lbz r0, 0x9d0(r31)
/* 80C94358  28 00 00 00 */	cmplwi r0, 0
/* 80C9435C  40 82 00 20 */	bne lbl_80C9437C
/* 80C94360  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C94364  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C94368  88 03 01 0C */	lbz r0, 0x10c(r3)
/* 80C9436C  28 00 00 32 */	cmplwi r0, 0x32
/* 80C94370  41 80 00 0C */	blt lbl_80C9437C
/* 80C94374  38 60 00 05 */	li r3, 5
/* 80C94378  48 00 00 08 */	b lbl_80C94380
lbl_80C9437C:
/* 80C9437C  38 60 00 05 */	li r3, 5
lbl_80C94380:
/* 80C94380  39 61 00 20 */	addi r11, r1, 0x20
/* 80C94384  4B 6C DE A5 */	bl _restgpr_29
/* 80C94388  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9438C  7C 08 03 A6 */	mtlr r0
/* 80C94390  38 21 00 20 */	addi r1, r1, 0x20
/* 80C94394  4E 80 00 20 */	blr 
