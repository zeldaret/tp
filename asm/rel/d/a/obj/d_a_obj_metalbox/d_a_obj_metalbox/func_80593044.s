lbl_80593044:
/* 80593044  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80593048  7C 08 02 A6 */	mflr r0
/* 8059304C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80593050  39 61 00 20 */	addi r11, r1, 0x20
/* 80593054  4B DC F1 89 */	bl _savegpr_29
/* 80593058  7C 7F 1B 78 */	mr r31, r3
/* 8059305C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80593060  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80593064  40 82 00 EC */	bne lbl_80593150
/* 80593068  7F E0 FB 79 */	or. r0, r31, r31
/* 8059306C  41 82 00 D8 */	beq lbl_80593144
/* 80593070  7C 1E 03 78 */	mr r30, r0
/* 80593074  4B AE 55 B1 */	bl __ct__16dBgS_MoveBgActorFv
/* 80593078  3C 60 80 59 */	lis r3, __vt__11daObjMBox_c@ha /* 0x8059350C@ha */
/* 8059307C  38 03 35 0C */	addi r0, r3, __vt__11daObjMBox_c@l /* 0x8059350C@l */
/* 80593080  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80593084  3B BE 05 AC */	addi r29, r30, 0x5ac
/* 80593088  7F A3 EB 78 */	mr r3, r29
/* 8059308C  4B AE 30 15 */	bl __ct__9dBgS_AcchFv
/* 80593090  3C 60 80 59 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x805934E8@ha */
/* 80593094  38 63 34 E8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x805934E8@l */
/* 80593098  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8059309C  38 03 00 0C */	addi r0, r3, 0xc
/* 805930A0  90 1D 00 14 */	stw r0, 0x14(r29)
/* 805930A4  38 03 00 18 */	addi r0, r3, 0x18
/* 805930A8  90 1D 00 24 */	stw r0, 0x24(r29)
/* 805930AC  38 7D 00 14 */	addi r3, r29, 0x14
/* 805930B0  4B AE 5D B9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 805930B4  38 7E 07 84 */	addi r3, r30, 0x784
/* 805930B8  4B AE 2D F5 */	bl __ct__12dBgS_AcchCirFv
/* 805930BC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 805930C0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 805930C4  90 1E 07 DC */	stw r0, 0x7dc(r30)
/* 805930C8  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 805930CC  4B AF 06 95 */	bl __ct__10dCcD_GSttsFv
/* 805930D0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 805930D4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 805930D8  90 7E 07 DC */	stw r3, 0x7dc(r30)
/* 805930DC  38 03 00 20 */	addi r0, r3, 0x20
/* 805930E0  90 1E 07 E0 */	stw r0, 0x7e0(r30)
/* 805930E4  3B BE 08 00 */	addi r29, r30, 0x800
/* 805930E8  7F A3 EB 78 */	mr r3, r29
/* 805930EC  4B AF 09 3D */	bl __ct__12dCcD_GObjInfFv
/* 805930F0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805930F4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805930F8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 805930FC  3C 60 80 59 */	lis r3, __vt__8cM3dGAab@ha /* 0x805934DC@ha */
/* 80593100  38 03 34 DC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x805934DC@l */
/* 80593104  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80593108  3C 60 80 59 */	lis r3, __vt__8cM3dGCyl@ha /* 0x805934D0@ha */
/* 8059310C  38 03 34 D0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x805934D0@l */
/* 80593110  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80593114  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80593118  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8059311C  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80593120  38 03 00 58 */	addi r0, r3, 0x58
/* 80593124  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80593128  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8059312C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80593130  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80593134  38 03 00 2C */	addi r0, r3, 0x2c
/* 80593138  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8059313C  38 03 00 84 */	addi r0, r3, 0x84
/* 80593140  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80593144:
/* 80593144  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80593148  60 00 00 08 */	ori r0, r0, 8
/* 8059314C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80593150:
/* 80593150  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80593154  3C 80 80 59 */	lis r4, l_arcName@ha /* 0x8059347C@ha */
/* 80593158  38 84 34 7C */	addi r4, r4, l_arcName@l /* 0x8059347C@l */
/* 8059315C  80 84 00 00 */	lwz r4, 0(r4)
/* 80593160  4B A9 9D 5D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80593164  7C 60 1B 78 */	mr r0, r3
/* 80593168  2C 00 00 04 */	cmpwi r0, 4
/* 8059316C  40 82 00 3C */	bne lbl_805931A8
/* 80593170  7F E3 FB 78 */	mr r3, r31
/* 80593174  3C 80 80 59 */	lis r4, l_arcName@ha /* 0x8059347C@ha */
/* 80593178  38 84 34 7C */	addi r4, r4, l_arcName@l /* 0x8059347C@l */
/* 8059317C  80 84 00 00 */	lwz r4, 0(r4)
/* 80593180  38 A0 00 07 */	li r5, 7
/* 80593184  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80593188  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 8059318C  38 E0 0C 40 */	li r7, 0xc40
/* 80593190  39 00 00 00 */	li r8, 0
/* 80593194  4B AE 56 29 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80593198  7C 60 1B 78 */	mr r0, r3
/* 8059319C  2C 00 00 05 */	cmpwi r0, 5
/* 805931A0  40 82 00 08 */	bne lbl_805931A8
/* 805931A4  48 00 00 08 */	b lbl_805931AC
lbl_805931A8:
/* 805931A8  7C 03 03 78 */	mr r3, r0
lbl_805931AC:
/* 805931AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805931B0  4B DC F0 79 */	bl _restgpr_29
/* 805931B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805931B8  7C 08 03 A6 */	mtlr r0
/* 805931BC  38 21 00 20 */	addi r1, r1, 0x20
/* 805931C0  4E 80 00 20 */	blr 
