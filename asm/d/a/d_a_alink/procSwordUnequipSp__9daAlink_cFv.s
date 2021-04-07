lbl_800D6A38:
/* 800D6A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D6A3C  7C 08 02 A6 */	mflr r0
/* 800D6A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D6A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D6A48  93 C1 00 08 */	stw r30, 8(r1)
/* 800D6A4C  7C 7E 1B 78 */	mr r30, r3
/* 800D6A50  4B FE 35 01 */	bl checkGroundSpecialMode__9daAlink_cFv
/* 800D6A54  2C 03 00 00 */	cmpwi r3, 0
/* 800D6A58  41 82 00 0C */	beq lbl_800D6A64
/* 800D6A5C  38 60 00 01 */	li r3, 1
/* 800D6A60  48 00 03 1C */	b lbl_800D6D7C
lbl_800D6A64:
/* 800D6A64  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800D6A68  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800D6A6C  2C 00 00 00 */	cmpwi r0, 0
/* 800D6A70  41 82 00 10 */	beq lbl_800D6A80
/* 800D6A74  38 00 00 04 */	li r0, 4
/* 800D6A78  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800D6A7C  48 00 00 0C */	b lbl_800D6A88
lbl_800D6A80:
/* 800D6A80  38 00 00 01 */	li r0, 1
/* 800D6A84  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_800D6A88:
/* 800D6A88  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800D6A8C  64 00 08 00 */	oris r0, r0, 0x800
/* 800D6A90  90 1E 05 88 */	stw r0, 0x588(r30)
/* 800D6A94  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800D6A98  2C 00 00 00 */	cmpwi r0, 0
/* 800D6A9C  41 82 00 10 */	beq lbl_800D6AAC
/* 800D6AA0  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 800D6AA4  64 00 80 00 */	oris r0, r0, 0x8000
/* 800D6AA8  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_800D6AAC:
/* 800D6AAC  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 800D6AB0  2C 00 00 00 */	cmpwi r0, 0
/* 800D6AB4  40 82 00 54 */	bne lbl_800D6B08
/* 800D6AB8  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800D6ABC  28 00 00 1E */	cmplwi r0, 0x1e
/* 800D6AC0  40 82 00 48 */	bne lbl_800D6B08
/* 800D6AC4  80 1E 06 10 */	lwz r0, 0x610(r30)
/* 800D6AC8  2C 00 00 01 */	cmpwi r0, 1
/* 800D6ACC  40 82 00 3C */	bne lbl_800D6B08
/* 800D6AD0  38 00 00 01 */	li r0, 1
/* 800D6AD4  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800D6AD8  7F C3 F3 78 */	mr r3, r30
/* 800D6ADC  38 80 01 49 */	li r4, 0x149
/* 800D6AE0  38 A0 00 00 */	li r5, 0
/* 800D6AE4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800D6AE8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800D6AEC  4B FD 89 C5 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800D6AF0  7F C3 F3 78 */	mr r3, r30
/* 800D6AF4  38 80 03 E1 */	li r4, 0x3e1
/* 800D6AF8  38 A0 00 00 */	li r5, 0
/* 800D6AFC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800D6B00  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800D6B04  4B FD 8B 19 */	bl setFaceBtp__9daAlink_cFUsiUs
lbl_800D6B08:
/* 800D6B08  7F E3 FB 78 */	mr r3, r31
/* 800D6B0C  48 08 79 C1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800D6B10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D6B14  41 82 00 6C */	beq lbl_800D6B80
/* 800D6B18  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 800D6B1C  2C 00 00 00 */	cmpwi r0, 0
/* 800D6B20  41 82 00 38 */	beq lbl_800D6B58
/* 800D6B24  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800D6B28  28 00 00 1E */	cmplwi r0, 0x1e
/* 800D6B2C  40 82 00 1C */	bne lbl_800D6B48
/* 800D6B30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D6B34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D6B38  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800D6B3C  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 800D6B40  4B F7 16 3D */	bl cutEnd__16dEvent_manager_cFi
/* 800D6B44  48 00 02 34 */	b lbl_800D6D78
lbl_800D6B48:
/* 800D6B48  7F C3 F3 78 */	mr r3, r30
/* 800D6B4C  38 80 00 00 */	li r4, 0
/* 800D6B50  4B FE 35 81 */	bl checkNextAction__9daAlink_cFi
/* 800D6B54  48 00 02 24 */	b lbl_800D6D78
lbl_800D6B58:
/* 800D6B58  38 00 00 01 */	li r0, 1
/* 800D6B5C  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800D6B60  7F C3 F3 78 */	mr r3, r30
/* 800D6B64  38 80 00 8F */	li r4, 0x8f
/* 800D6B68  3C A0 80 39 */	lis r5, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800D6B6C  38 A5 DE 8C */	addi r5, r5, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800D6B70  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 800D6B74  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800D6B78  4B FD 64 69 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800D6B7C  48 00 01 FC */	b lbl_800D6D78
lbl_800D6B80:
/* 800D6B80  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 800D6B84  2C 00 00 00 */	cmpwi r0, 0
/* 800D6B88  41 82 01 38 */	beq lbl_800D6CC0
/* 800D6B8C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D6B90  3C 60 80 39 */	lis r3, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800D6B94  38 63 DE 8C */	addi r3, r3, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800D6B98  C0 03 00 98 */	lfs f0, 0x98(r3)
/* 800D6B9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6BA0  40 81 00 18 */	ble lbl_800D6BB8
/* 800D6BA4  7F C3 F3 78 */	mr r3, r30
/* 800D6BA8  38 80 00 01 */	li r4, 1
/* 800D6BAC  4B FE 35 25 */	bl checkNextAction__9daAlink_cFi
/* 800D6BB0  2C 03 00 00 */	cmpwi r3, 0
/* 800D6BB4  40 82 01 C4 */	bne lbl_800D6D78
lbl_800D6BB8:
/* 800D6BB8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D6BBC  C0 02 93 7C */	lfs f0, lit_8779(r2)
/* 800D6BC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6BC4  4C 41 13 82 */	cror 2, 1, 2
/* 800D6BC8  40 82 00 10 */	bne lbl_800D6BD8
/* 800D6BCC  38 00 00 01 */	li r0, 1
/* 800D6BD0  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800D6BD4  48 00 01 A4 */	b lbl_800D6D78
lbl_800D6BD8:
/* 800D6BD8  C0 02 93 80 */	lfs f0, lit_8780(r2)
/* 800D6BDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6BE0  4C 41 13 82 */	cror 2, 1, 2
/* 800D6BE4  40 82 00 10 */	bne lbl_800D6BF4
/* 800D6BE8  38 00 00 06 */	li r0, 6
/* 800D6BEC  98 1E 2F 93 */	stb r0, 0x2f93(r30)
/* 800D6BF0  48 00 01 88 */	b lbl_800D6D78
lbl_800D6BF4:
/* 800D6BF4  C0 02 93 28 */	lfs f0, lit_7451(r2)
/* 800D6BF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6BFC  4C 41 13 82 */	cror 2, 1, 2
/* 800D6C00  40 82 00 10 */	bne lbl_800D6C10
/* 800D6C04  38 00 00 04 */	li r0, 4
/* 800D6C08  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800D6C0C  48 00 01 6C */	b lbl_800D6D78
lbl_800D6C10:
/* 800D6C10  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 800D6C14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6C18  4C 41 13 82 */	cror 2, 1, 2
/* 800D6C1C  40 82 00 7C */	bne lbl_800D6C98
/* 800D6C20  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800D6C24  28 00 00 1E */	cmplwi r0, 0x1e
/* 800D6C28  40 82 00 5C */	bne lbl_800D6C84
/* 800D6C2C  80 1E 06 0C */	lwz r0, 0x60c(r30)
/* 800D6C30  2C 00 00 01 */	cmpwi r0, 1
/* 800D6C34  40 82 00 28 */	bne lbl_800D6C5C
/* 800D6C38  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 800D6C3C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D6C40  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 800D6C44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D6C48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D6C4C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800D6C50  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 800D6C54  4B F7 15 29 */	bl cutEnd__16dEvent_manager_cFi
/* 800D6C58  48 00 00 2C */	b lbl_800D6C84
lbl_800D6C5C:
/* 800D6C5C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 800D6C60  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 800D6C64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6C68  40 80 00 1C */	bge lbl_800D6C84
/* 800D6C6C  7F C3 F3 78 */	mr r3, r30
/* 800D6C70  7F E4 FB 78 */	mr r4, r31
/* 800D6C74  3C A0 80 39 */	lis r5, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800D6C78  38 A5 DE 8C */	addi r5, r5, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800D6C7C  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 800D6C80  48 02 B0 75 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
lbl_800D6C84:
/* 800D6C84  7F C3 F3 78 */	mr r3, r30
/* 800D6C88  38 80 00 00 */	li r4, 0
/* 800D6C8C  38 A0 00 01 */	li r5, 1
/* 800D6C90  4B FE A6 4D */	bl deleteEquipItem__9daAlink_cFii
/* 800D6C94  48 00 00 E4 */	b lbl_800D6D78
lbl_800D6C98:
/* 800D6C98  7F E3 FB 78 */	mr r3, r31
/* 800D6C9C  C0 22 93 8C */	lfs f1, lit_8783(r2)
/* 800D6CA0  48 25 17 8D */	bl checkPass__12J3DFrameCtrlFf
/* 800D6CA4  2C 03 00 00 */	cmpwi r3, 0
/* 800D6CA8  41 82 00 D0 */	beq lbl_800D6D78
/* 800D6CAC  7F C3 F3 78 */	mr r3, r30
/* 800D6CB0  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020008@ha */
/* 800D6CB4  38 84 00 08 */	addi r4, r4, 0x0008 /* 0x00020008@l */
/* 800D6CB8  4B FE 84 35 */	bl seStartSwordCut__9daAlink_cFUl
/* 800D6CBC  48 00 00 BC */	b lbl_800D6D78
lbl_800D6CC0:
/* 800D6CC0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D6CC4  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800D6CC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6CCC  4C 41 13 82 */	cror 2, 1, 2
/* 800D6CD0  40 82 00 20 */	bne lbl_800D6CF0
/* 800D6CD4  38 00 00 FE */	li r0, 0xfe
/* 800D6CD8  98 1E 2F 93 */	stb r0, 0x2f93(r30)
/* 800D6CDC  38 00 00 01 */	li r0, 1
/* 800D6CE0  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800D6CE4  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 800D6CE8  64 00 80 00 */	oris r0, r0, 0x8000
/* 800D6CEC  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_800D6CF0:
/* 800D6CF0  7F E3 FB 78 */	mr r3, r31
/* 800D6CF4  C0 22 93 74 */	lfs f1, lit_8502(r2)
/* 800D6CF8  48 25 17 35 */	bl checkPass__12J3DFrameCtrlFf
/* 800D6CFC  2C 03 00 00 */	cmpwi r3, 0
/* 800D6D00  40 82 00 18 */	bne lbl_800D6D18
/* 800D6D04  7F E3 FB 78 */	mr r3, r31
/* 800D6D08  C0 22 93 84 */	lfs f1, lit_8781(r2)
/* 800D6D0C  48 25 17 21 */	bl checkPass__12J3DFrameCtrlFf
/* 800D6D10  2C 03 00 00 */	cmpwi r3, 0
/* 800D6D14  41 82 00 18 */	beq lbl_800D6D2C
lbl_800D6D18:
/* 800D6D18  7F C3 F3 78 */	mr r3, r30
/* 800D6D1C  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020006@ha */
/* 800D6D20  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x00020006@l */
/* 800D6D24  4B FE 83 C9 */	bl seStartSwordCut__9daAlink_cFUl
/* 800D6D28  48 00 00 50 */	b lbl_800D6D78
lbl_800D6D2C:
/* 800D6D2C  7F E3 FB 78 */	mr r3, r31
/* 800D6D30  C0 22 93 90 */	lfs f1, lit_8784(r2)
/* 800D6D34  48 25 16 F9 */	bl checkPass__12J3DFrameCtrlFf
/* 800D6D38  2C 03 00 00 */	cmpwi r3, 0
/* 800D6D3C  40 82 00 2C */	bne lbl_800D6D68
/* 800D6D40  7F E3 FB 78 */	mr r3, r31
/* 800D6D44  C0 22 93 94 */	lfs f1, lit_8785(r2)
/* 800D6D48  48 25 16 E5 */	bl checkPass__12J3DFrameCtrlFf
/* 800D6D4C  2C 03 00 00 */	cmpwi r3, 0
/* 800D6D50  40 82 00 18 */	bne lbl_800D6D68
/* 800D6D54  7F E3 FB 78 */	mr r3, r31
/* 800D6D58  C0 22 93 98 */	lfs f1, lit_8786(r2)
/* 800D6D5C  48 25 16 D1 */	bl checkPass__12J3DFrameCtrlFf
/* 800D6D60  2C 03 00 00 */	cmpwi r3, 0
/* 800D6D64  41 82 00 14 */	beq lbl_800D6D78
lbl_800D6D68:
/* 800D6D68  7F C3 F3 78 */	mr r3, r30
/* 800D6D6C  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020007@ha */
/* 800D6D70  38 84 00 07 */	addi r4, r4, 0x0007 /* 0x00020007@l */
/* 800D6D74  4B FE 83 79 */	bl seStartSwordCut__9daAlink_cFUl
lbl_800D6D78:
/* 800D6D78  38 60 00 01 */	li r3, 1
lbl_800D6D7C:
/* 800D6D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D6D80  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D6D84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D6D88  7C 08 03 A6 */	mtlr r0
/* 800D6D8C  38 21 00 10 */	addi r1, r1, 0x10
/* 800D6D90  4E 80 00 20 */	blr 
