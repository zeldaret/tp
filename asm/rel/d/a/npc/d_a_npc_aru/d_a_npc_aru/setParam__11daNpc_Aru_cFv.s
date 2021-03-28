lbl_80952B84:
/* 80952B84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80952B88  7C 08 02 A6 */	mflr r0
/* 80952B8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80952B90  39 61 00 30 */	addi r11, r1, 0x30
/* 80952B94  4B A0 F6 3C */	b _savegpr_26
/* 80952B98  7C 7E 1B 78 */	mr r30, r3
/* 80952B9C  48 00 0D 5D */	bl selectAction__11daNpc_Aru_cFv
/* 80952BA0  7F C3 F3 78 */	mr r3, r30
/* 80952BA4  48 00 02 C1 */	bl srchActors__11daNpc_Aru_cFv
/* 80952BA8  3B E0 00 0A */	li r31, 0xa
/* 80952BAC  3C 60 80 95 */	lis r3, m__17daNpc_Aru_Param_c@ha
/* 80952BB0  38 63 76 D0 */	addi r3, r3, m__17daNpc_Aru_Param_c@l
/* 80952BB4  AB 63 00 48 */	lha r27, 0x48(r3)
/* 80952BB8  AB 83 00 4A */	lha r28, 0x4a(r3)
/* 80952BBC  AB 43 00 4C */	lha r26, 0x4c(r3)
/* 80952BC0  AB A3 00 4E */	lha r29, 0x4e(r3)
/* 80952BC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80952BC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80952BCC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80952BD0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80952BD4  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80952BD8  7D 89 03 A6 */	mtctr r12
/* 80952BDC  4E 80 04 21 */	bctrl 
/* 80952BE0  28 03 00 00 */	cmplwi r3, 0
/* 80952BE4  41 82 00 24 */	beq lbl_80952C08
/* 80952BE8  7F 60 07 34 */	extsh r0, r27
/* 80952BEC  2C 00 00 07 */	cmpwi r0, 7
/* 80952BF0  40 80 00 08 */	bge lbl_80952BF8
/* 80952BF4  3B 60 00 07 */	li r27, 7
lbl_80952BF8:
/* 80952BF8  7F 40 07 34 */	extsh r0, r26
/* 80952BFC  2C 00 00 09 */	cmpwi r0, 9
/* 80952C00  40 80 00 08 */	bge lbl_80952C08
/* 80952C04  3B 40 00 09 */	li r26, 9
lbl_80952C08:
/* 80952C08  7F 43 07 34 */	extsh r3, r26
/* 80952C0C  7F A4 07 34 */	extsh r4, r29
/* 80952C10  4B 7F 9E 08 */	b daNpcT_getDistTableIdx__Fii
/* 80952C14  98 7E 05 44 */	stb r3, 0x544(r30)
/* 80952C18  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 80952C1C  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80952C20  7F 63 07 34 */	extsh r3, r27
/* 80952C24  7F 84 07 34 */	extsh r4, r28
/* 80952C28  4B 7F 9D F0 */	b daNpcT_getDistTableIdx__Fii
/* 80952C2C  98 7E 05 47 */	stb r3, 0x547(r30)
/* 80952C30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80952C34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80952C38  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80952C3C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80952C40  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80952C44  41 82 00 08 */	beq lbl_80952C4C
/* 80952C48  3B E0 00 01 */	li r31, 1
lbl_80952C4C:
/* 80952C4C  93 FE 05 5C */	stw r31, 0x55c(r30)
/* 80952C50  3C 60 80 95 */	lis r3, m__17daNpc_Aru_Param_c@ha
/* 80952C54  38 63 76 D0 */	addi r3, r3, m__17daNpc_Aru_Param_c@l
/* 80952C58  C0 03 00 08 */	lfs f0, 8(r3)
/* 80952C5C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80952C60  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80952C64  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80952C68  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80952C6C  FC 00 00 1E */	fctiwz f0, f0
/* 80952C70  D8 01 00 08 */	stfd f0, 8(r1)
/* 80952C74  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80952C78  98 1E 08 78 */	stb r0, 0x878(r30)
/* 80952C7C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80952C80  D0 1E 0D EC */	stfs f0, 0xdec(r30)
/* 80952C84  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80952C88  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 80952C8C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80952C90  D0 1E 0D F8 */	stfs f0, 0xdf8(r30)
/* 80952C94  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80952C98  C0 3E 0D F0 */	lfs f1, 0xdf0(r30)
/* 80952C9C  4B 72 32 A4 */	b SetWallR__12dBgS_AcchCirFf
/* 80952CA0  3C 60 80 95 */	lis r3, m__17daNpc_Aru_Param_c@ha
/* 80952CA4  38 63 76 D0 */	addi r3, r3, m__17daNpc_Aru_Param_c@l
/* 80952CA8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80952CAC  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 80952CB0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80952CB4  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
/* 80952CB8  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80952CBC  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 80952CC0  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80952CC4  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 80952CC8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80952CCC  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80952CD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80952CD4  4B A0 F5 48 */	b _restgpr_26
/* 80952CD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80952CDC  7C 08 03 A6 */	mtlr r0
/* 80952CE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80952CE4  4E 80 00 20 */	blr 
