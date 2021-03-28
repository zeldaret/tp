lbl_80AEA7F8:
/* 80AEA7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEA7FC  7C 08 02 A6 */	mflr r0
/* 80AEA800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEA804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEA808  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEA80C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AEA810  7C 9F 23 78 */	mr r31, r4
/* 80AEA814  41 82 01 E0 */	beq lbl_80AEA9F4
/* 80AEA818  3C 80 80 AF */	lis r4, __vt__13daNpc_Shop0_c@ha
/* 80AEA81C  38 04 BD B4 */	addi r0, r4, __vt__13daNpc_Shop0_c@l
/* 80AEA820  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80AEA824  48 00 09 6D */	bl getResName__13daNpc_Shop0_cFv
/* 80AEA828  7C 64 1B 78 */	mr r4, r3
/* 80AEA82C  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80AEA830  4B 54 26 8C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80AEA834  34 1E 08 9C */	addic. r0, r30, 0x89c
/* 80AEA838  41 82 00 84 */	beq lbl_80AEA8BC
/* 80AEA83C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80AEA840  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80AEA844  90 7E 08 D8 */	stw r3, 0x8d8(r30)
/* 80AEA848  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AEA84C  90 1E 09 BC */	stw r0, 0x9bc(r30)
/* 80AEA850  38 03 00 84 */	addi r0, r3, 0x84
/* 80AEA854  90 1E 09 D4 */	stw r0, 0x9d4(r30)
/* 80AEA858  34 1E 09 A0 */	addic. r0, r30, 0x9a0
/* 80AEA85C  41 82 00 54 */	beq lbl_80AEA8B0
/* 80AEA860  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80AEA864  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80AEA868  90 7E 09 BC */	stw r3, 0x9bc(r30)
/* 80AEA86C  38 03 00 58 */	addi r0, r3, 0x58
/* 80AEA870  90 1E 09 D4 */	stw r0, 0x9d4(r30)
/* 80AEA874  34 1E 09 C0 */	addic. r0, r30, 0x9c0
/* 80AEA878  41 82 00 10 */	beq lbl_80AEA888
/* 80AEA87C  3C 60 80 AF */	lis r3, __vt__8cM3dGCyl@ha
/* 80AEA880  38 03 BD A8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80AEA884  90 1E 09 D4 */	stw r0, 0x9d4(r30)
lbl_80AEA888:
/* 80AEA888  34 1E 09 A0 */	addic. r0, r30, 0x9a0
/* 80AEA88C  41 82 00 24 */	beq lbl_80AEA8B0
/* 80AEA890  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80AEA894  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80AEA898  90 1E 09 BC */	stw r0, 0x9bc(r30)
/* 80AEA89C  34 1E 09 A0 */	addic. r0, r30, 0x9a0
/* 80AEA8A0  41 82 00 10 */	beq lbl_80AEA8B0
/* 80AEA8A4  3C 60 80 AF */	lis r3, __vt__8cM3dGAab@ha
/* 80AEA8A8  38 03 BD 9C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80AEA8AC  90 1E 09 B8 */	stw r0, 0x9b8(r30)
lbl_80AEA8B0:
/* 80AEA8B0  38 7E 08 9C */	addi r3, r30, 0x89c
/* 80AEA8B4  38 80 00 00 */	li r4, 0
/* 80AEA8B8  4B 59 98 2C */	b __dt__12dCcD_GObjInfFv
lbl_80AEA8BC:
/* 80AEA8BC  34 1E 08 60 */	addic. r0, r30, 0x860
/* 80AEA8C0  41 82 00 54 */	beq lbl_80AEA914
/* 80AEA8C4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AEA8C8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AEA8CC  90 7E 08 78 */	stw r3, 0x878(r30)
/* 80AEA8D0  38 03 00 20 */	addi r0, r3, 0x20
/* 80AEA8D4  90 1E 08 7C */	stw r0, 0x87c(r30)
/* 80AEA8D8  34 1E 08 7C */	addic. r0, r30, 0x87c
/* 80AEA8DC  41 82 00 24 */	beq lbl_80AEA900
/* 80AEA8E0  3C 60 80 AF */	lis r3, __vt__10dCcD_GStts@ha
/* 80AEA8E4  38 03 BD 90 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AEA8E8  90 1E 08 7C */	stw r0, 0x87c(r30)
/* 80AEA8EC  34 1E 08 7C */	addic. r0, r30, 0x87c
/* 80AEA8F0  41 82 00 10 */	beq lbl_80AEA900
/* 80AEA8F4  3C 60 80 AF */	lis r3, __vt__10cCcD_GStts@ha
/* 80AEA8F8  38 03 BD 84 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AEA8FC  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80AEA900:
/* 80AEA900  34 1E 08 60 */	addic. r0, r30, 0x860
/* 80AEA904  41 82 00 10 */	beq lbl_80AEA914
/* 80AEA908  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AEA90C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AEA910  90 1E 08 78 */	stw r0, 0x878(r30)
lbl_80AEA914:
/* 80AEA914  34 1E 06 88 */	addic. r0, r30, 0x688
/* 80AEA918  41 82 00 2C */	beq lbl_80AEA944
/* 80AEA91C  3C 60 80 AF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AEA920  38 63 BD 60 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AEA924  90 7E 06 98 */	stw r3, 0x698(r30)
/* 80AEA928  38 03 00 0C */	addi r0, r3, 0xc
/* 80AEA92C  90 1E 06 9C */	stw r0, 0x69c(r30)
/* 80AEA930  38 03 00 18 */	addi r0, r3, 0x18
/* 80AEA934  90 1E 06 AC */	stw r0, 0x6ac(r30)
/* 80AEA938  38 7E 06 88 */	addi r3, r30, 0x688
/* 80AEA93C  38 80 00 00 */	li r4, 0
/* 80AEA940  4B 58 B6 54 */	b __dt__9dBgS_AcchFv
lbl_80AEA944:
/* 80AEA944  34 1E 06 48 */	addic. r0, r30, 0x648
/* 80AEA948  41 82 00 28 */	beq lbl_80AEA970
/* 80AEA94C  3C 60 80 AF */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AEA950  38 03 BD 54 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AEA954  90 1E 06 54 */	stw r0, 0x654(r30)
/* 80AEA958  38 7E 06 5C */	addi r3, r30, 0x65c
/* 80AEA95C  38 80 FF FF */	li r4, -1
/* 80AEA960  4B 78 45 B8 */	b __dt__8cM3dGCirFv
/* 80AEA964  38 7E 06 48 */	addi r3, r30, 0x648
/* 80AEA968  38 80 00 00 */	li r4, 0
/* 80AEA96C  4B 77 D7 44 */	b __dt__13cBgS_PolyInfoFv
lbl_80AEA970:
/* 80AEA970  34 1E 05 F0 */	addic. r0, r30, 0x5f0
/* 80AEA974  41 82 00 34 */	beq lbl_80AEA9A8
/* 80AEA978  3C 60 80 AF */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80AEA97C  38 63 BD 24 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 80AEA980  90 7E 06 00 */	stw r3, 0x600(r30)
/* 80AEA984  38 03 00 0C */	addi r0, r3, 0xc
/* 80AEA988  90 1E 06 10 */	stw r0, 0x610(r30)
/* 80AEA98C  38 03 00 18 */	addi r0, r3, 0x18
/* 80AEA990  90 1E 06 2C */	stw r0, 0x62c(r30)
/* 80AEA994  38 03 00 24 */	addi r0, r3, 0x24
/* 80AEA998  90 1E 06 3C */	stw r0, 0x63c(r30)
/* 80AEA99C  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80AEA9A0  38 80 00 00 */	li r4, 0
/* 80AEA9A4  4B 58 CC 4C */	b __dt__11dBgS_GndChkFv
lbl_80AEA9A8:
/* 80AEA9A8  38 7E 05 94 */	addi r3, r30, 0x594
/* 80AEA9AC  38 80 FF FF */	li r4, -1
/* 80AEA9B0  4B 75 F5 98 */	b __dt__10dMsgFlow_cFv
/* 80AEA9B4  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80AEA9B8  41 82 00 20 */	beq lbl_80AEA9D8
/* 80AEA9BC  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80AEA9C0  41 82 00 18 */	beq lbl_80AEA9D8
/* 80AEA9C4  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80AEA9C8  41 82 00 10 */	beq lbl_80AEA9D8
/* 80AEA9CC  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AEA9D0  38 03 BD 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AEA9D4  90 1E 05 70 */	stw r0, 0x570(r30)
lbl_80AEA9D8:
/* 80AEA9D8  7F C3 F3 78 */	mr r3, r30
/* 80AEA9DC  38 80 00 00 */	li r4, 0
/* 80AEA9E0  4B 52 E2 AC */	b __dt__10fopAc_ac_cFv
/* 80AEA9E4  7F E0 07 35 */	extsh. r0, r31
/* 80AEA9E8  40 81 00 0C */	ble lbl_80AEA9F4
/* 80AEA9EC  7F C3 F3 78 */	mr r3, r30
/* 80AEA9F0  4B 7E 43 4C */	b __dl__FPv
lbl_80AEA9F4:
/* 80AEA9F4  7F C3 F3 78 */	mr r3, r30
/* 80AEA9F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEA9FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEAA00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEAA04  7C 08 03 A6 */	mtlr r0
/* 80AEAA08  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEAA0C  4E 80 00 20 */	blr 
