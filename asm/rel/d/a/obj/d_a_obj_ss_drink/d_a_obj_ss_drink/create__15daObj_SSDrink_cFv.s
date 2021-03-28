lbl_80CE51C8:
/* 80CE51C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CE51CC  7C 08 02 A6 */	mflr r0
/* 80CE51D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CE51D4  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE51D8  4B 67 CF F8 */	b _savegpr_26
/* 80CE51DC  7C 7F 1B 78 */	mr r31, r3
/* 80CE51E0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CE51E4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CE51E8  40 82 01 50 */	bne lbl_80CE5338
/* 80CE51EC  7F E0 FB 79 */	or. r0, r31, r31
/* 80CE51F0  41 82 01 3C */	beq lbl_80CE532C
/* 80CE51F4  7C 1E 03 78 */	mr r30, r0
/* 80CE51F8  4B 47 92 00 */	b __ct__14daObj_SSBase_cFv
/* 80CE51FC  3C 60 80 CE */	lis r3, __vt__15daObj_SSDrink_c@ha
/* 80CE5200  38 03 6B 70 */	addi r0, r3, __vt__15daObj_SSDrink_c@l
/* 80CE5204  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80CE5208  3B 7E 05 90 */	addi r27, r30, 0x590
/* 80CE520C  7F 63 DB 78 */	mr r3, r27
/* 80CE5210  4B 39 0E 90 */	b __ct__9dBgS_AcchFv
/* 80CE5214  3C 60 80 CE */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CE5218  38 63 6B 10 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CE521C  90 7B 00 10 */	stw r3, 0x10(r27)
/* 80CE5220  38 03 00 0C */	addi r0, r3, 0xc
/* 80CE5224  90 1B 00 14 */	stw r0, 0x14(r27)
/* 80CE5228  38 03 00 18 */	addi r0, r3, 0x18
/* 80CE522C  90 1B 00 24 */	stw r0, 0x24(r27)
/* 80CE5230  38 7B 00 14 */	addi r3, r27, 0x14
/* 80CE5234  4B 39 3C 34 */	b SetObj__16dBgS_PolyPassChkFv
/* 80CE5238  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CE523C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CE5240  90 1E 07 80 */	stw r0, 0x780(r30)
/* 80CE5244  38 7E 07 84 */	addi r3, r30, 0x784
/* 80CE5248  4B 39 E5 18 */	b __ct__10dCcD_GSttsFv
/* 80CE524C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CE5250  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CE5254  90 7E 07 80 */	stw r3, 0x780(r30)
/* 80CE5258  38 03 00 20 */	addi r0, r3, 0x20
/* 80CE525C  90 1E 07 84 */	stw r0, 0x784(r30)
/* 80CE5260  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 80CE5264  4B 39 0C 48 */	b __ct__12dBgS_AcchCirFv
/* 80CE5268  3B 5E 07 E4 */	addi r26, r30, 0x7e4
/* 80CE526C  7F 43 D3 78 */	mr r3, r26
/* 80CE5270  4B 39 E7 B8 */	b __ct__12dCcD_GObjInfFv
/* 80CE5274  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CE5278  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CE527C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80CE5280  3C 60 80 CE */	lis r3, __vt__8cM3dGAab@ha
/* 80CE5284  38 03 6B 58 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CE5288  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80CE528C  3C 60 80 CE */	lis r3, __vt__8cM3dGCyl@ha
/* 80CE5290  38 03 6B 64 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CE5294  90 1A 01 38 */	stw r0, 0x138(r26)
/* 80CE5298  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CE529C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CE52A0  90 7A 01 20 */	stw r3, 0x120(r26)
/* 80CE52A4  3B A3 00 58 */	addi r29, r3, 0x58
/* 80CE52A8  93 BA 01 38 */	stw r29, 0x138(r26)
/* 80CE52AC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CE52B0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CE52B4  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 80CE52B8  3B 83 00 2C */	addi r28, r3, 0x2c
/* 80CE52BC  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80CE52C0  3B 63 00 84 */	addi r27, r3, 0x84
/* 80CE52C4  93 7A 01 38 */	stw r27, 0x138(r26)
/* 80CE52C8  3B 5E 09 20 */	addi r26, r30, 0x920
/* 80CE52CC  7F 43 D3 78 */	mr r3, r26
/* 80CE52D0  4B 39 E7 58 */	b __ct__12dCcD_GObjInfFv
/* 80CE52D4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CE52D8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CE52DC  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80CE52E0  3C 60 80 CE */	lis r3, __vt__8cM3dGAab@ha
/* 80CE52E4  38 03 6B 58 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CE52E8  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80CE52EC  3C 60 80 CE */	lis r3, __vt__8cM3dGCyl@ha
/* 80CE52F0  38 03 6B 64 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CE52F4  90 1A 01 38 */	stw r0, 0x138(r26)
/* 80CE52F8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CE52FC  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 80CE5300  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80CE5304  93 BA 01 38 */	stw r29, 0x138(r26)
/* 80CE5308  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CE530C  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 80CE5310  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 80CE5314  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80CE5318  93 7A 01 38 */	stw r27, 0x138(r26)
/* 80CE531C  38 7E 0A 5C */	addi r3, r30, 0xa5c
/* 80CE5320  4B 58 28 FC */	b __ct__11cBgS_GndChkFv
/* 80CE5324  38 7E 0A A4 */	addi r3, r30, 0xaa4
/* 80CE5328  4B 56 4B D8 */	b __ct__10dMsgFlow_cFv
lbl_80CE532C:
/* 80CE532C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CE5330  60 00 00 08 */	ori r0, r0, 8
/* 80CE5334  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CE5338:
/* 80CE5338  7F E3 FB 78 */	mr r3, r31
/* 80CE533C  48 00 07 25 */	bl getTypeFromParam__15daObj_SSDrink_cFv
/* 80CE5340  98 7F 0B 0B */	stb r3, 0xb0b(r31)
/* 80CE5344  7F E3 FB 78 */	mr r3, r31
/* 80CE5348  48 00 07 D1 */	bl getCapacityFromParam__15daObj_SSDrink_cFv
/* 80CE534C  98 7F 0B 0A */	stb r3, 0xb0a(r31)
/* 80CE5350  7F E3 FB 78 */	mr r3, r31
/* 80CE5354  48 00 07 E9 */	bl getFlowNodeNum__15daObj_SSDrink_cFv
/* 80CE5358  B0 7F 05 72 */	sth r3, 0x572(r31)
/* 80CE535C  7F E3 FB 78 */	mr r3, r31
/* 80CE5360  48 00 08 15 */	bl getValue__15daObj_SSDrink_cFv
/* 80CE5364  B0 7F 05 74 */	sth r3, 0x574(r31)
/* 80CE5368  38 61 00 08 */	addi r3, r1, 8
/* 80CE536C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CE5370  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CE5374  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80CE5378  48 00 13 C5 */	bl getLeftHandPos__9daPy_py_cCFv
/* 80CE537C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CE5380  D0 1F 0B 00 */	stfs f0, 0xb00(r31)
/* 80CE5384  7F E3 FB 78 */	mr r3, r31
/* 80CE5388  48 00 06 C9 */	bl getResName__15daObj_SSDrink_cFv
/* 80CE538C  7C 64 1B 78 */	mr r4, r3
/* 80CE5390  38 7F 05 84 */	addi r3, r31, 0x584
/* 80CE5394  4B 34 7B 28 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CE5398  7C 7B 1B 78 */	mr r27, r3
/* 80CE539C  2C 1B 00 04 */	cmpwi r27, 4
/* 80CE53A0  40 82 00 30 */	bne lbl_80CE53D0
/* 80CE53A4  7F E3 FB 78 */	mr r3, r31
/* 80CE53A8  3C 80 80 CE */	lis r4, createHeapCallBack__15daObj_SSDrink_cFP10fopAc_ac_c@ha
/* 80CE53AC  38 84 59 DC */	addi r4, r4, createHeapCallBack__15daObj_SSDrink_cFP10fopAc_ac_c@l
/* 80CE53B0  38 A0 20 00 */	li r5, 0x2000
/* 80CE53B4  4B 33 50 FC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CE53B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CE53BC  40 82 00 0C */	bne lbl_80CE53C8
/* 80CE53C0  38 60 00 05 */	li r3, 5
/* 80CE53C4  48 00 00 10 */	b lbl_80CE53D4
lbl_80CE53C8:
/* 80CE53C8  7F E3 FB 78 */	mr r3, r31
/* 80CE53CC  48 00 08 25 */	bl initialize__15daObj_SSDrink_cFv
lbl_80CE53D0:
/* 80CE53D0  7F 63 DB 78 */	mr r3, r27
lbl_80CE53D4:
/* 80CE53D4  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE53D8  4B 67 CE 44 */	b _restgpr_26
/* 80CE53DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CE53E0  7C 08 03 A6 */	mtlr r0
/* 80CE53E4  38 21 00 30 */	addi r1, r1, 0x30
/* 80CE53E8  4E 80 00 20 */	blr 
