lbl_800E89F0:
/* 800E89F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E89F4  7C 08 02 A6 */	mflr r0
/* 800E89F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E89FC  39 61 00 20 */	addi r11, r1, 0x20
/* 800E8A00  48 27 97 DD */	bl _savegpr_29
/* 800E8A04  7C 7D 1B 78 */	mr r29, r3
/* 800E8A08  3B FD 1F D0 */	addi r31, r29, 0x1fd0
/* 800E8A0C  3B C0 01 60 */	li r30, 0x160
/* 800E8A10  A8 03 30 10 */	lha r0, 0x3010(r3)
/* 800E8A14  2C 00 00 00 */	cmpwi r0, 0
/* 800E8A18  41 82 00 74 */	beq lbl_800E8A8C
/* 800E8A1C  7F E3 FB 78 */	mr r3, r31
/* 800E8A20  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E8A24  48 23 FA 09 */	bl checkPass__12J3DFrameCtrlFf
/* 800E8A28  2C 03 00 00 */	cmpwi r3, 0
/* 800E8A2C  41 82 00 10 */	beq lbl_800E8A3C
/* 800E8A30  7F A3 EB 78 */	mr r3, r29
/* 800E8A34  4B FF F9 01 */	bl endPushPull__9daAlink_cFv
/* 800E8A38  48 00 02 CC */	b lbl_800E8D04
lbl_800E8A3C:
/* 800E8A3C  7F E3 FB 78 */	mr r3, r31
/* 800E8A40  C0 3D 34 78 */	lfs f1, 0x3478(r29)
/* 800E8A44  48 23 F9 E9 */	bl checkPass__12J3DFrameCtrlFf
/* 800E8A48  2C 03 00 00 */	cmpwi r3, 0
/* 800E8A4C  41 82 02 68 */	beq lbl_800E8CB4
/* 800E8A50  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800E8A54  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E8A58  40 82 00 20 */	bne lbl_800E8A78
/* 800E8A5C  7F A3 EB 78 */	mr r3, r29
/* 800E8A60  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010013@ha */
/* 800E8A64  38 84 00 13 */	addi r4, r4, 0x0013 /* 0x00010013@l */
/* 800E8A68  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800E8A6C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800E8A70  7D 89 03 A6 */	mtctr r12
/* 800E8A74  4E 80 04 21 */	bctrl 
lbl_800E8A78:
/* 800E8A78  7F A3 EB 78 */	mr r3, r29
/* 800E8A7C  38 80 00 01 */	li r4, 1
/* 800E8A80  38 A0 00 00 */	li r5, 0
/* 800E8A84  4B FF F4 B9 */	bl setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli
/* 800E8A88  48 00 02 2C */	b lbl_800E8CB4
lbl_800E8A8C:
/* 800E8A8C  38 80 00 15 */	li r4, 0x15
/* 800E8A90  38 A0 00 02 */	li r5, 2
/* 800E8A94  4B FF F4 3D */	bl setWallGrabStatus__9daAlink_cFUcUc
/* 800E8A98  7F E3 FB 78 */	mr r3, r31
/* 800E8A9C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E8AA0  48 23 F9 8D */	bl checkPass__12J3DFrameCtrlFf
/* 800E8AA4  2C 03 00 00 */	cmpwi r3, 0
/* 800E8AA8  40 82 00 1C */	bne lbl_800E8AC4
/* 800E8AAC  80 1D 31 98 */	lwz r0, 0x3198(r29)
/* 800E8AB0  2C 00 00 00 */	cmpwi r0, 0
/* 800E8AB4  40 82 00 10 */	bne lbl_800E8AC4
/* 800E8AB8  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 800E8ABC  2C 00 00 00 */	cmpwi r0, 0
/* 800E8AC0  41 82 01 E4 */	beq lbl_800E8CA4
lbl_800E8AC4:
/* 800E8AC4  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800E8AC8  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 800E8ACC  40 82 01 50 */	bne lbl_800E8C1C
/* 800E8AD0  7F A3 EB 78 */	mr r3, r29
/* 800E8AD4  4B FF F4 45 */	bl wallGrabButton__9daAlink_cFv
/* 800E8AD8  2C 03 00 00 */	cmpwi r3, 0
/* 800E8ADC  40 82 00 10 */	bne lbl_800E8AEC
/* 800E8AE0  7F A3 EB 78 */	mr r3, r29
/* 800E8AE4  4B FF F8 51 */	bl endPushPull__9daAlink_cFv
/* 800E8AE8  48 00 02 1C */	b lbl_800E8D04
lbl_800E8AEC:
/* 800E8AEC  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800E8AF0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800E8AF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E8AF8  40 81 01 0C */	ble lbl_800E8C04
/* 800E8AFC  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 800E8B00  A8 1D 2F E2 */	lha r0, 0x2fe2(r29)
/* 800E8B04  7C 03 00 50 */	subf r0, r3, r0
/* 800E8B08  7C 03 07 34 */	extsh r3, r0
/* 800E8B0C  4B FC A9 89 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800E8B10  2C 03 00 00 */	cmpwi r3, 0
/* 800E8B14  40 82 00 CC */	bne lbl_800E8BE0
/* 800E8B18  7F A3 EB 78 */	mr r3, r29
/* 800E8B1C  38 80 00 01 */	li r4, 1
/* 800E8B20  38 A0 00 00 */	li r5, 0
/* 800E8B24  4B FF F4 19 */	bl setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli
/* 800E8B28  A8 1D 30 08 */	lha r0, 0x3008(r29)
/* 800E8B2C  2C 00 00 00 */	cmpwi r0, 0
/* 800E8B30  41 82 01 84 */	beq lbl_800E8CB4
/* 800E8B34  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 800E8B38  2C 00 00 00 */	cmpwi r0, 0
/* 800E8B3C  40 82 00 60 */	bne lbl_800E8B9C
/* 800E8B40  38 00 00 01 */	li r0, 1
/* 800E8B44  B0 1D 30 12 */	sth r0, 0x3012(r29)
/* 800E8B48  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800E8B4C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E8B50  41 82 00 24 */	beq lbl_800E8B74
/* 800E8B54  7F A3 EB 78 */	mr r3, r29
/* 800E8B58  38 80 00 09 */	li r4, 9
/* 800E8B5C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E8B60  C0 42 93 1C */	lfs f2, lit_7448(r2)
/* 800E8B64  38 A0 FF FF */	li r5, -1
/* 800E8B68  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800E8B6C  48 04 0B 99 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 800E8B70  48 00 00 20 */	b lbl_800E8B90
lbl_800E8B74:
/* 800E8B74  7F A3 EB 78 */	mr r3, r29
/* 800E8B78  38 80 00 38 */	li r4, 0x38
/* 800E8B7C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E8B80  C0 42 93 1C */	lfs f2, lit_7448(r2)
/* 800E8B84  38 A0 FF FF */	li r5, -1
/* 800E8B88  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800E8B8C  4B FC 44 81 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
lbl_800E8B90:
/* 800E8B90  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E8B94  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 800E8B98  48 00 01 1C */	b lbl_800E8CB4
lbl_800E8B9C:
/* 800E8B9C  7F E3 FB 78 */	mr r3, r31
/* 800E8BA0  48 07 59 2D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E8BA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E8BA8  41 82 01 0C */	beq lbl_800E8CB4
/* 800E8BAC  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800E8BB0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E8BB4  41 82 00 14 */	beq lbl_800E8BC8
/* 800E8BB8  7F A3 EB 78 */	mr r3, r29
/* 800E8BBC  38 80 00 0A */	li r4, 0xa
/* 800E8BC0  48 04 0A B9 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 800E8BC4  48 00 00 10 */	b lbl_800E8BD4
lbl_800E8BC8:
/* 800E8BC8  7F A3 EB 78 */	mr r3, r29
/* 800E8BCC  38 80 00 39 */	li r4, 0x39
/* 800E8BD0  4B FC 43 B1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800E8BD4:
/* 800E8BD4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E8BD8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 800E8BDC  48 00 00 D8 */	b lbl_800E8CB4
lbl_800E8BE0:
/* 800E8BE0  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800E8BE4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E8BE8  40 82 00 14 */	bne lbl_800E8BFC
/* 800E8BEC  2C 03 00 01 */	cmpwi r3, 1
/* 800E8BF0  40 82 00 0C */	bne lbl_800E8BFC
/* 800E8BF4  3B C0 00 39 */	li r30, 0x39
/* 800E8BF8  48 00 00 BC */	b lbl_800E8CB4
lbl_800E8BFC:
/* 800E8BFC  3B C0 01 43 */	li r30, 0x143
/* 800E8C00  48 00 00 B4 */	b lbl_800E8CB4
lbl_800E8C04:
/* 800E8C04  7F A3 EB 78 */	mr r3, r29
/* 800E8C08  38 80 00 00 */	li r4, 0
/* 800E8C0C  38 A0 00 01 */	li r5, 1
/* 800E8C10  4B FF F3 2D */	bl setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli
/* 800E8C14  3B C0 01 43 */	li r30, 0x143
/* 800E8C18  48 00 00 9C */	b lbl_800E8CB4
lbl_800E8C1C:
/* 800E8C1C  80 1D 31 98 */	lwz r0, 0x3198(r29)
/* 800E8C20  2C 00 00 00 */	cmpwi r0, 0
/* 800E8C24  41 82 00 2C */	beq lbl_800E8C50
/* 800E8C28  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800E8C2C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E8C30  40 82 00 20 */	bne lbl_800E8C50
/* 800E8C34  7F A3 EB 78 */	mr r3, r29
/* 800E8C38  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010013@ha */
/* 800E8C3C  38 84 00 13 */	addi r4, r4, 0x0013 /* 0x00010013@l */
/* 800E8C40  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800E8C44  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800E8C48  7D 89 03 A6 */	mtctr r12
/* 800E8C4C  4E 80 04 21 */	bctrl 
lbl_800E8C50:
/* 800E8C50  38 60 00 00 */	li r3, 0
/* 800E8C54  90 7D 31 98 */	stw r3, 0x3198(r29)
/* 800E8C58  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 800E8C5C  2C 00 00 00 */	cmpwi r0, 0
/* 800E8C60  41 82 00 30 */	beq lbl_800E8C90
/* 800E8C64  B0 7D 30 12 */	sth r3, 0x3012(r29)
/* 800E8C68  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800E8C6C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E8C70  41 82 00 14 */	beq lbl_800E8C84
/* 800E8C74  7F A3 EB 78 */	mr r3, r29
/* 800E8C78  38 80 00 0A */	li r4, 0xa
/* 800E8C7C  48 04 09 FD */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 800E8C80  48 00 00 10 */	b lbl_800E8C90
lbl_800E8C84:
/* 800E8C84  7F A3 EB 78 */	mr r3, r29
/* 800E8C88  38 80 00 39 */	li r4, 0x39
/* 800E8C8C  4B FC 42 F5 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800E8C90:
/* 800E8C90  7F A3 EB 78 */	mr r3, r29
/* 800E8C94  38 80 00 01 */	li r4, 1
/* 800E8C98  38 A0 00 00 */	li r5, 0
/* 800E8C9C  4B FF F2 A1 */	bl setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli
/* 800E8CA0  48 00 00 14 */	b lbl_800E8CB4
lbl_800E8CA4:
/* 800E8CA4  7F A3 EB 78 */	mr r3, r29
/* 800E8CA8  38 80 00 01 */	li r4, 1
/* 800E8CAC  38 A0 00 00 */	li r5, 0
/* 800E8CB0  4B FF F2 8D */	bl setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli
lbl_800E8CB4:
/* 800E8CB4  7F A3 EB 78 */	mr r3, r29
/* 800E8CB8  4B FC 76 05 */	bl setFrontWallType__9daAlink_cFv
/* 800E8CBC  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 800E8CC0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800E8CC4  40 82 00 10 */	bne lbl_800E8CD4
/* 800E8CC8  7F A3 EB 78 */	mr r3, r29
/* 800E8CCC  4B FF F6 69 */	bl endPushPull__9daAlink_cFv
/* 800E8CD0  48 00 00 30 */	b lbl_800E8D00
lbl_800E8CD4:
/* 800E8CD4  2C 1E 00 39 */	cmpwi r30, 0x39
/* 800E8CD8  40 82 00 14 */	bne lbl_800E8CEC
/* 800E8CDC  7F A3 EB 78 */	mr r3, r29
/* 800E8CE0  38 80 00 01 */	li r4, 1
/* 800E8CE4  48 00 00 39 */	bl procPullMoveInit__9daAlink_cFi
/* 800E8CE8  48 00 00 18 */	b lbl_800E8D00
lbl_800E8CEC:
/* 800E8CEC  2C 1E 01 43 */	cmpwi r30, 0x143
/* 800E8CF0  40 82 00 10 */	bne lbl_800E8D00
/* 800E8CF4  7F A3 EB 78 */	mr r3, r29
/* 800E8CF8  38 80 00 00 */	li r4, 0
/* 800E8CFC  4B FF F7 2D */	bl procCoPushPullWaitInit__9daAlink_cFi
lbl_800E8D00:
/* 800E8D00  38 60 00 01 */	li r3, 1
lbl_800E8D04:
/* 800E8D04  39 61 00 20 */	addi r11, r1, 0x20
/* 800E8D08  48 27 95 21 */	bl _restgpr_29
/* 800E8D0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E8D10  7C 08 03 A6 */	mtlr r0
/* 800E8D14  38 21 00 20 */	addi r1, r1, 0x20
/* 800E8D18  4E 80 00 20 */	blr 
