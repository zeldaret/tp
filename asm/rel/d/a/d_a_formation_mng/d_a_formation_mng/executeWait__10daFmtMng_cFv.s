lbl_80835B24:
/* 80835B24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80835B28  7C 08 02 A6 */	mflr r0
/* 80835B2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80835B30  39 61 00 30 */	addi r11, r1, 0x30
/* 80835B34  4B B2 C6 A0 */	b _savegpr_27
/* 80835B38  7C 7F 1B 78 */	mr r31, r3
/* 80835B3C  4B 97 6A 40 */	b dKy_darkworld_check__Fv
/* 80835B40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80835B44  41 82 00 10 */	beq lbl_80835B54
/* 80835B48  4B 96 9F E8 */	b dKy_getDarktime_minute__Fv
/* 80835B4C  7C 7D 1B 78 */	mr r29, r3
/* 80835B50  48 00 00 0C */	b lbl_80835B5C
lbl_80835B54:
/* 80835B54  4B 96 9E E8 */	b dKy_getdaytime_minute__Fv
/* 80835B58  7C 7D 1B 78 */	mr r29, r3
lbl_80835B5C:
/* 80835B5C  4B 97 6A 20 */	b dKy_darkworld_check__Fv
/* 80835B60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80835B64  41 82 00 0C */	beq lbl_80835B70
/* 80835B68  4B 96 9F 8C */	b dKy_getDarktime_hour__Fv
/* 80835B6C  48 00 00 08 */	b lbl_80835B74
lbl_80835B70:
/* 80835B70  4B 96 9E A0 */	b dKy_getdaytime_hour__Fv
lbl_80835B74:
/* 80835B74  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 80835B78  7C 7D 02 14 */	add r3, r29, r0
/* 80835B7C  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 80835B80  7C 03 00 00 */	cmpw r3, r0
/* 80835B84  41 80 01 14 */	blt lbl_80835C98
/* 80835B88  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 80835B8C  7C 03 00 00 */	cmpw r3, r0
/* 80835B90  40 80 01 08 */	bge lbl_80835C98
/* 80835B94  83 9F 05 6C */	lwz r28, 0x56c(r31)
/* 80835B98  3B A0 00 00 */	li r29, 0
/* 80835B9C  93 A1 00 08 */	stw r29, 8(r1)
/* 80835BA0  48 00 00 4C */	b lbl_80835BEC
lbl_80835BA4:
/* 80835BA4  3B C0 00 00 */	li r30, 0
/* 80835BA8  80 7C 00 00 */	lwz r3, 0(r28)
/* 80835BAC  3C 03 00 01 */	addis r0, r3, 1
/* 80835BB0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80835BB4  41 82 00 30 */	beq lbl_80835BE4
/* 80835BB8  38 81 00 08 */	addi r4, r1, 8
/* 80835BBC  4B 7E 3E 00 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80835BC0  80 61 00 08 */	lwz r3, 8(r1)
/* 80835BC4  28 03 00 00 */	cmplwi r3, 0
/* 80835BC8  41 82 00 0C */	beq lbl_80835BD4
/* 80835BCC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80835BD0  54 1E F7 FE */	rlwinm r30, r0, 0x1e, 0x1f, 0x1f
lbl_80835BD4:
/* 80835BD4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80835BD8  40 82 00 0C */	bne lbl_80835BE4
/* 80835BDC  38 00 00 00 */	li r0, 0
/* 80835BE0  48 00 00 24 */	b lbl_80835C04
lbl_80835BE4:
/* 80835BE4  3B BD 00 01 */	addi r29, r29, 1
/* 80835BE8  3B 9C 00 20 */	addi r28, r28, 0x20
lbl_80835BEC:
/* 80835BEC  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80835BF0  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80835BF4  7C 03 01 D6 */	mullw r0, r3, r0
/* 80835BF8  7C 1D 00 00 */	cmpw r29, r0
/* 80835BFC  41 80 FF A8 */	blt lbl_80835BA4
/* 80835C00  38 00 00 01 */	li r0, 1
lbl_80835C04:
/* 80835C04  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80835C08  41 82 01 08 */	beq lbl_80835D10
/* 80835C0C  83 9F 05 6C */	lwz r28, 0x56c(r31)
/* 80835C10  3B 60 00 00 */	li r27, 0
/* 80835C14  3B A0 00 00 */	li r29, 0
/* 80835C18  3B C0 00 01 */	li r30, 1
/* 80835C1C  48 00 00 2C */	b lbl_80835C48
lbl_80835C20:
/* 80835C20  93 A1 00 10 */	stw r29, 0x10(r1)
/* 80835C24  80 7C 00 00 */	lwz r3, 0(r28)
/* 80835C28  38 81 00 10 */	addi r4, r1, 0x10
/* 80835C2C  4B 7E 3D 90 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80835C30  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80835C34  28 03 00 00 */	cmplwi r3, 0
/* 80835C38  41 82 00 08 */	beq lbl_80835C40
/* 80835C3C  9B C3 0A D8 */	stb r30, 0xad8(r3)
lbl_80835C40:
/* 80835C40  3B 7B 00 01 */	addi r27, r27, 1
/* 80835C44  3B 9C 00 20 */	addi r28, r28, 0x20
lbl_80835C48:
/* 80835C48  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80835C4C  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80835C50  7C 03 01 D6 */	mullw r0, r3, r0
/* 80835C54  7C 1B 00 00 */	cmpw r27, r0
/* 80835C58  41 80 FF C8 */	blt lbl_80835C20
/* 80835C5C  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80835C60  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 80835C64  38 00 00 01 */	li r0, 1
/* 80835C68  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80835C6C  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80835C70  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80835C74  3C 60 80 83 */	lis r3, ActionTable__10daFmtMng_c@ha
/* 80835C78  38 03 79 C4 */	addi r0, r3, ActionTable__10daFmtMng_c@l
/* 80835C7C  7C 00 22 14 */	add r0, r0, r4
/* 80835C80  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80835C84  7F E3 FB 78 */	mr r3, r31
/* 80835C88  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 80835C8C  4B B2 C3 F8 */	b __ptmf_scall
/* 80835C90  60 00 00 00 */	nop 
/* 80835C94  48 00 00 7C */	b lbl_80835D10
lbl_80835C98:
/* 80835C98  83 7F 05 6C */	lwz r27, 0x56c(r31)
/* 80835C9C  3B C0 00 00 */	li r30, 0
/* 80835CA0  93 C1 00 0C */	stw r30, 0xc(r1)
/* 80835CA4  3B 80 00 00 */	li r28, 0
/* 80835CA8  48 00 00 28 */	b lbl_80835CD0
lbl_80835CAC:
/* 80835CAC  80 7B 00 00 */	lwz r3, 0(r27)
/* 80835CB0  38 81 00 0C */	addi r4, r1, 0xc
/* 80835CB4  4B 7E 3D 08 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80835CB8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80835CBC  28 03 00 00 */	cmplwi r3, 0
/* 80835CC0  41 82 00 08 */	beq lbl_80835CC8
/* 80835CC4  9B C3 0A D8 */	stb r30, 0xad8(r3)
lbl_80835CC8:
/* 80835CC8  3B 9C 00 01 */	addi r28, r28, 1
/* 80835CCC  3B 7B 00 20 */	addi r27, r27, 0x20
lbl_80835CD0:
/* 80835CD0  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80835CD4  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80835CD8  7C 03 01 D6 */	mullw r0, r3, r0
/* 80835CDC  7C 1C 00 00 */	cmpw r28, r0
/* 80835CE0  41 80 FF CC */	blt lbl_80835CAC
/* 80835CE4  4B 97 68 98 */	b dKy_darkworld_check__Fv
/* 80835CE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80835CEC  40 82 00 24 */	bne lbl_80835D10
/* 80835CF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80835CF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80835CF8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80835CFC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80835D00  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80835D04  41 82 00 0C */	beq lbl_80835D10
/* 80835D08  7F E3 FB 78 */	mr r3, r31
/* 80835D0C  4B 7E 3F 70 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80835D10:
/* 80835D10  39 61 00 30 */	addi r11, r1, 0x30
/* 80835D14  4B B2 C5 0C */	b _restgpr_27
/* 80835D18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80835D1C  7C 08 03 A6 */	mtlr r0
/* 80835D20  38 21 00 30 */	addi r1, r1, 0x30
/* 80835D24  4E 80 00 20 */	blr 
