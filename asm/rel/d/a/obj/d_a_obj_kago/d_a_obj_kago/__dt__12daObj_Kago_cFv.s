lbl_80C31AEC:
/* 80C31AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C31AF0  7C 08 02 A6 */	mflr r0
/* 80C31AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C31AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C31AFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C31B00  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C31B04  7C 9F 23 78 */	mr r31, r4
/* 80C31B08  41 82 01 6C */	beq lbl_80C31C74
/* 80C31B0C  3C 60 80 C3 */	lis r3, __vt__12daObj_Kago_c@ha
/* 80C31B10  38 03 3E E0 */	addi r0, r3, __vt__12daObj_Kago_c@l
/* 80C31B14  90 1E 0B A4 */	stw r0, 0xba4(r30)
/* 80C31B18  88 1E 0B 10 */	lbz r0, 0xb10(r30)
/* 80C31B1C  28 00 00 00 */	cmplwi r0, 0
/* 80C31B20  40 82 00 1C */	bne lbl_80C31B3C
/* 80C31B24  38 60 00 07 */	li r3, 7
/* 80C31B28  4B 51 B0 44 */	b daNpcT_chkTmpBit__FUl
/* 80C31B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80C31B30  41 82 00 0C */	beq lbl_80C31B3C
/* 80C31B34  38 60 00 92 */	li r3, 0x92
/* 80C31B38  4B 51 AE F4 */	b daNpcT_onEvtBit__FUl
lbl_80C31B3C:
/* 80C31B3C  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80C31B40  3C 80 80 C3 */	lis r4, l_bmdData@ha
/* 80C31B44  38 84 3D C0 */	addi r4, r4, l_bmdData@l
/* 80C31B48  80 04 00 04 */	lwz r0, 4(r4)
/* 80C31B4C  54 00 10 3A */	slwi r0, r0, 2
/* 80C31B50  3C 80 80 C3 */	lis r4, l_resNameList@ha
/* 80C31B54  38 84 3D D0 */	addi r4, r4, l_resNameList@l
/* 80C31B58  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C31B5C  4B 3F B4 AC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C31B60  38 7E 0A 9C */	addi r3, r30, 0xa9c
/* 80C31B64  38 80 FF FF */	li r4, -1
/* 80C31B68  4B 44 61 74 */	b __dt__11dBgS_LinChkFv
/* 80C31B6C  34 1E 0A 80 */	addic. r0, r30, 0xa80
/* 80C31B70  41 82 00 10 */	beq lbl_80C31B80
/* 80C31B74  3C 60 80 C3 */	lis r3, __vt__8cM3dGLin@ha
/* 80C31B78  38 03 3E D4 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80C31B7C  90 1E 0A 98 */	stw r0, 0xa98(r30)
lbl_80C31B80:
/* 80C31B80  38 7E 08 08 */	addi r3, r30, 0x808
/* 80C31B84  3C 80 80 C3 */	lis r4, __dt__8dCcD_CylFv@ha
/* 80C31B88  38 84 1C 90 */	addi r4, r4, __dt__8dCcD_CylFv@l
/* 80C31B8C  38 A0 01 3C */	li r5, 0x13c
/* 80C31B90  38 C0 00 02 */	li r6, 2
/* 80C31B94  4B 73 01 54 */	b __destroy_arr
/* 80C31B98  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 80C31B9C  38 80 FF FF */	li r4, -1
/* 80C31BA0  4B 63 60 F4 */	b __dt__11cBgS_GndChkFv
/* 80C31BA4  34 1E 07 8C */	addic. r0, r30, 0x78c
/* 80C31BA8  41 82 00 28 */	beq lbl_80C31BD0
/* 80C31BAC  3C 60 80 C3 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80C31BB0  38 03 3E C8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80C31BB4  90 1E 07 98 */	stw r0, 0x798(r30)
/* 80C31BB8  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 80C31BBC  38 80 FF FF */	li r4, -1
/* 80C31BC0  4B 63 D3 58 */	b __dt__8cM3dGCirFv
/* 80C31BC4  38 7E 07 8C */	addi r3, r30, 0x78c
/* 80C31BC8  38 80 00 00 */	li r4, 0
/* 80C31BCC  4B 63 64 E4 */	b __dt__13cBgS_PolyInfoFv
lbl_80C31BD0:
/* 80C31BD0  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80C31BD4  41 82 00 54 */	beq lbl_80C31C28
/* 80C31BD8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C31BDC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C31BE0  90 7E 07 68 */	stw r3, 0x768(r30)
/* 80C31BE4  38 03 00 20 */	addi r0, r3, 0x20
/* 80C31BE8  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80C31BEC  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80C31BF0  41 82 00 24 */	beq lbl_80C31C14
/* 80C31BF4  3C 60 80 C3 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C31BF8  38 03 3E BC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C31BFC  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80C31C00  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80C31C04  41 82 00 10 */	beq lbl_80C31C14
/* 80C31C08  3C 60 80 C3 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C31C0C  38 03 3E B0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C31C10  90 1E 07 6C */	stw r0, 0x76c(r30)
lbl_80C31C14:
/* 80C31C14  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80C31C18  41 82 00 10 */	beq lbl_80C31C28
/* 80C31C1C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C31C20  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C31C24  90 1E 07 68 */	stw r0, 0x768(r30)
lbl_80C31C28:
/* 80C31C28  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80C31C2C  41 82 00 2C */	beq lbl_80C31C58
/* 80C31C30  3C 60 80 C3 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80C31C34  38 63 3E 8C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80C31C38  90 7E 05 88 */	stw r3, 0x588(r30)
/* 80C31C3C  38 03 00 0C */	addi r0, r3, 0xc
/* 80C31C40  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80C31C44  38 03 00 18 */	addi r0, r3, 0x18
/* 80C31C48  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C31C4C  38 7E 05 78 */	addi r3, r30, 0x578
/* 80C31C50  38 80 00 00 */	li r4, 0
/* 80C31C54  4B 44 43 40 */	b __dt__9dBgS_AcchFv
lbl_80C31C58:
/* 80C31C58  7F C3 F3 78 */	mr r3, r30
/* 80C31C5C  38 80 00 00 */	li r4, 0
/* 80C31C60  4B 3E 70 2C */	b __dt__10fopAc_ac_cFv
/* 80C31C64  7F E0 07 35 */	extsh. r0, r31
/* 80C31C68  40 81 00 0C */	ble lbl_80C31C74
/* 80C31C6C  7F C3 F3 78 */	mr r3, r30
/* 80C31C70  4B 69 D0 CC */	b __dl__FPv
lbl_80C31C74:
/* 80C31C74  7F C3 F3 78 */	mr r3, r30
/* 80C31C78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C31C7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C31C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C31C84  7C 08 03 A6 */	mtlr r0
/* 80C31C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80C31C8C  4E 80 00 20 */	blr 
