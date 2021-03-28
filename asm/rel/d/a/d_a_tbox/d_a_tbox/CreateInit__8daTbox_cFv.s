lbl_80491744:
/* 80491744  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80491748  7C 08 02 A6 */	mflr r0
/* 8049174C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80491750  39 61 00 20 */	addi r11, r1, 0x20
/* 80491754  4B ED 0A 88 */	b _savegpr_29
/* 80491758  7C 7D 1B 78 */	mr r29, r3
/* 8049175C  3C 80 80 49 */	lis r4, l_cull_size_box@ha
/* 80491760  3B E4 61 D4 */	addi r31, r4, l_cull_size_box@l
/* 80491764  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80491768  54 1E 06 BE */	clrlwi r30, r0, 0x1a
/* 8049176C  38 00 00 00 */	li r0, 0
/* 80491770  B0 03 07 54 */	sth r0, 0x754(r3)
/* 80491774  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80491778  80 83 07 2C */	lwz r4, 0x72c(r3)
/* 8049177C  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80491780  48 00 02 31 */	bl initPos__8daTbox_cFv
/* 80491784  7F A3 EB 78 */	mr r3, r29
/* 80491788  48 00 04 29 */	bl initAnm__8daTbox_cFv
/* 8049178C  38 00 00 00 */	li r0, 0
/* 80491790  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80491794  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80491798  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 8049179C  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 804917A0  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 804917A4  38 80 00 FF */	li r4, 0xff
/* 804917A8  38 A0 00 FF */	li r5, 0xff
/* 804917AC  7F A6 EB 78 */	mr r6, r29
/* 804917B0  4B BF 20 B0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804917B4  38 7D 05 DC */	addi r3, r29, 0x5dc
/* 804917B8  3C 80 80 49 */	lis r4, l_cyl_src@ha
/* 804917BC  38 84 64 B8 */	addi r4, r4, l_cyl_src@l
/* 804917C0  4B BF 30 F4 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 804917C4  38 1D 05 A0 */	addi r0, r29, 0x5a0
/* 804917C8  90 1D 06 20 */	stw r0, 0x620(r29)
/* 804917CC  38 7D 07 00 */	addi r3, r29, 0x700
/* 804917D0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 804917D4  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 804917D8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 804917DC  38 9F 00 18 */	addi r4, r31, 0x18
/* 804917E0  7C 84 02 14 */	add r4, r4, r0
/* 804917E4  4B DD D9 30 */	b Set__8cM3dGCylFRC9cM3dGCylS
/* 804917E8  80 9D 05 68 */	lwz r4, 0x568(r29)
/* 804917EC  28 04 00 00 */	cmplwi r4, 0
/* 804917F0  41 82 00 14 */	beq lbl_80491804
/* 804917F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804917F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804917FC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80491800  4B BE 2A 50 */	b Release__4cBgSFP9dBgW_Base
lbl_80491804:
/* 80491804  A0 1D 07 54 */	lhz r0, 0x754(r29)
/* 80491808  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8049180C  41 82 00 10 */	beq lbl_8049181C
/* 80491810  7F A3 EB 78 */	mr r3, r29
/* 80491814  4B FF FB BD */	bl clrDzb__8daTbox_cFv
/* 80491818  48 00 00 18 */	b lbl_80491830
lbl_8049181C:
/* 8049181C  80 1D 07 3C */	lwz r0, 0x73c(r29)
/* 80491820  28 00 00 00 */	cmplwi r0, 0
/* 80491824  40 82 00 0C */	bne lbl_80491830
/* 80491828  7F A3 EB 78 */	mr r3, r29
/* 8049182C  4B FF FB F1 */	bl setDzb__8daTbox_cFv
lbl_80491830:
/* 80491830  38 1E FF FB */	addi r0, r30, -5
/* 80491834  28 00 00 01 */	cmplwi r0, 1
/* 80491838  40 81 00 10 */	ble lbl_80491848
/* 8049183C  88 1D 09 CC */	lbz r0, 0x9cc(r29)
/* 80491840  28 00 00 01 */	cmplwi r0, 1
/* 80491844  40 82 00 58 */	bne lbl_8049189C
lbl_80491848:
/* 80491848  38 7D 09 38 */	addi r3, r29, 0x938
/* 8049184C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80491850  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80491854  4B BE 47 04 */	b SetWall__12dBgS_AcchCirFff
/* 80491858  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 8049185C  90 01 00 08 */	stw r0, 8(r1)
/* 80491860  38 7D 07 60 */	addi r3, r29, 0x760
/* 80491864  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80491868  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 8049186C  7F A6 EB 78 */	mr r6, r29
/* 80491870  38 E0 00 01 */	li r7, 1
/* 80491874  39 1D 09 38 */	addi r8, r29, 0x938
/* 80491878  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 8049187C  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80491880  4B BE 49 C8 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80491884  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80491888  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8049188C  38 00 00 01 */	li r0, 1
/* 80491890  98 1D 09 7D */	stb r0, 0x97d(r29)
/* 80491894  98 1D 09 7C */	stb r0, 0x97c(r29)
/* 80491898  48 00 00 48 */	b lbl_804918E0
lbl_8049189C:
/* 8049189C  2C 1E 00 03 */	cmpwi r30, 3
/* 804918A0  40 82 00 40 */	bne lbl_804918E0
/* 804918A4  38 7D 09 38 */	addi r3, r29, 0x938
/* 804918A8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804918AC  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 804918B0  4B BE 46 A8 */	b SetWall__12dBgS_AcchCirFff
/* 804918B4  38 00 00 00 */	li r0, 0
/* 804918B8  90 01 00 08 */	stw r0, 8(r1)
/* 804918BC  38 7D 07 60 */	addi r3, r29, 0x760
/* 804918C0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804918C4  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 804918C8  7F A6 EB 78 */	mr r6, r29
/* 804918CC  38 E0 00 01 */	li r7, 1
/* 804918D0  39 1D 09 38 */	addi r8, r29, 0x938
/* 804918D4  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 804918D8  39 40 00 00 */	li r10, 0
/* 804918DC  4B BE 49 6C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
lbl_804918E0:
/* 804918E0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 804918E4  54 00 D6 BE */	rlwinm r0, r0, 0x1a, 0x1a, 0x1f
/* 804918E8  98 1D 09 78 */	stb r0, 0x978(r29)
/* 804918EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804918F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804918F4  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 804918F8  7F C3 F3 78 */	mr r3, r30
/* 804918FC  7F A4 EB 78 */	mr r4, r29
/* 80491900  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80491904  54 05 46 3E */	srwi r5, r0, 0x18
/* 80491908  4B BB 5D 90 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 8049190C  B0 7D 09 7A */	sth r3, 0x97a(r29)
/* 80491910  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80491914  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80491918  2C 00 00 02 */	cmpwi r0, 2
/* 8049191C  40 82 00 34 */	bne lbl_80491950
/* 80491920  7F A3 EB 78 */	mr r3, r29
/* 80491924  4B FF F5 2D */	bl getModelInfo__8daTbox_cFv
/* 80491928  80 03 00 00 */	lwz r0, 0(r3)
/* 8049192C  90 1D 01 00 */	stw r0, 0x100(r29)
/* 80491930  7F C3 F3 78 */	mr r3, r30
/* 80491934  7F A4 EB 78 */	mr r4, r29
/* 80491938  3C A0 80 49 */	lis r5, struct_80496334+0x0@ha
/* 8049193C  38 A5 63 34 */	addi r5, r5, struct_80496334+0x0@l
/* 80491940  38 A5 00 1E */	addi r5, r5, 0x1e
/* 80491944  38 C0 00 FF */	li r6, 0xff
/* 80491948  4B BB 5E 10 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8049194C  B0 7D 09 84 */	sth r3, 0x984(r29)
lbl_80491950:
/* 80491950  7F A3 EB 78 */	mr r3, r29
/* 80491954  48 00 3A 81 */	bl initBaseMtx__8daTbox_cFv
/* 80491958  7F A3 EB 78 */	mr r3, r29
/* 8049195C  4B FF F9 41 */	bl lightReady__8daTbox_cFv
/* 80491960  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80491964  D0 1D 09 F0 */	stfs f0, 0x9f0(r29)
/* 80491968  80 7D 07 24 */	lwz r3, 0x724(r29)
/* 8049196C  38 03 00 24 */	addi r0, r3, 0x24
/* 80491970  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80491974  7F A3 EB 78 */	mr r3, r29
/* 80491978  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8049197C  38 9F 00 00 */	addi r4, r31, 0
/* 80491980  C0 44 00 04 */	lfs f2, 4(r4)
/* 80491984  C0 64 00 08 */	lfs f3, 8(r4)
/* 80491988  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 8049198C  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80491990  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80491994  4B B8 8B B4 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80491998  39 61 00 20 */	addi r11, r1, 0x20
/* 8049199C  4B ED 08 8C */	b _restgpr_29
/* 804919A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804919A4  7C 08 03 A6 */	mtlr r0
/* 804919A8  38 21 00 20 */	addi r1, r1, 0x20
/* 804919AC  4E 80 00 20 */	blr 
