lbl_80AE18FC:
/* 80AE18FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE1900  7C 08 02 A6 */	mflr r0
/* 80AE1904  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE1908  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE190C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE1910  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AE1914  7C 9F 23 78 */	mr r31, r4
/* 80AE1918  41 82 02 14 */	beq lbl_80AE1B2C
/* 80AE191C  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80AE1920  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80AE1924  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AE1928  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80AE192C  38 80 FF FF */	li r4, -1
/* 80AE1930  4B 59 63 AC */	b __dt__11dBgS_LinChkFv
/* 80AE1934  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80AE1938  38 80 FF FF */	li r4, -1
/* 80AE193C  4B 59 5C B4 */	b __dt__11dBgS_GndChkFv
/* 80AE1940  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80AE1944  38 80 FF FF */	li r4, -1
/* 80AE1948  4B 78 63 4C */	b __dt__11cBgS_GndChkFv
/* 80AE194C  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80AE1950  38 80 FF FF */	li r4, -1
/* 80AE1954  4B 76 85 F4 */	b __dt__10dMsgFlow_cFv
/* 80AE1958  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80AE195C  3C 80 80 AE */	lis r4, __dt__5csXyzFv@ha
/* 80AE1960  38 84 18 7C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AE1964  38 A0 00 06 */	li r5, 6
/* 80AE1968  38 C0 00 03 */	li r6, 3
/* 80AE196C  4B 88 03 7C */	b __destroy_arr
/* 80AE1970  38 7E 09 08 */	addi r3, r30, 0x908
/* 80AE1974  3C 80 80 AE */	lis r4, __dt__5csXyzFv@ha
/* 80AE1978  38 84 18 7C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AE197C  38 A0 00 06 */	li r5, 6
/* 80AE1980  38 C0 00 03 */	li r6, 3
/* 80AE1984  4B 88 03 64 */	b __destroy_arr
/* 80AE1988  38 7E 08 54 */	addi r3, r30, 0x854
/* 80AE198C  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha
/* 80AE1990  38 84 18 BC */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE1994  38 A0 00 0C */	li r5, 0xc
/* 80AE1998  38 C0 00 03 */	li r6, 3
/* 80AE199C  4B 88 03 4C */	b __destroy_arr
/* 80AE19A0  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80AE19A4  3C 80 80 AE */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80AE19A8  38 84 17 28 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80AE19AC  38 A0 00 08 */	li r5, 8
/* 80AE19B0  38 C0 00 05 */	li r6, 5
/* 80AE19B4  4B 88 03 34 */	b __destroy_arr
/* 80AE19B8  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80AE19BC  41 82 00 10 */	beq lbl_80AE19CC
/* 80AE19C0  3C 60 80 AE */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80AE19C4  38 03 2C 74 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80AE19C8  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80AE19CC:
/* 80AE19CC  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80AE19D0  41 82 00 28 */	beq lbl_80AE19F8
/* 80AE19D4  3C 60 80 AE */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AE19D8  38 03 2C 68 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AE19DC  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80AE19E0  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80AE19E4  38 80 FF FF */	li r4, -1
/* 80AE19E8  4B 78 D5 30 */	b __dt__8cM3dGCirFv
/* 80AE19EC  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80AE19F0  38 80 00 00 */	li r4, 0
/* 80AE19F4  4B 78 66 BC */	b __dt__13cBgS_PolyInfoFv
lbl_80AE19F8:
/* 80AE19F8  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80AE19FC  41 82 00 54 */	beq lbl_80AE1A50
/* 80AE1A00  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AE1A04  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AE1A08  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80AE1A0C  38 03 00 20 */	addi r0, r3, 0x20
/* 80AE1A10  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80AE1A14  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80AE1A18  41 82 00 24 */	beq lbl_80AE1A3C
/* 80AE1A1C  3C 60 80 AE */	lis r3, __vt__10dCcD_GStts@ha
/* 80AE1A20  38 03 2C 5C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AE1A24  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80AE1A28  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80AE1A2C  41 82 00 10 */	beq lbl_80AE1A3C
/* 80AE1A30  3C 60 80 AE */	lis r3, __vt__10cCcD_GStts@ha
/* 80AE1A34  38 03 2C 50 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AE1A38  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80AE1A3C:
/* 80AE1A3C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80AE1A40  41 82 00 10 */	beq lbl_80AE1A50
/* 80AE1A44  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AE1A48  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AE1A4C  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80AE1A50:
/* 80AE1A50  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80AE1A54  41 82 00 2C */	beq lbl_80AE1A80
/* 80AE1A58  3C 60 80 AE */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AE1A5C  38 63 2C 2C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AE1A60  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80AE1A64  38 03 00 0C */	addi r0, r3, 0xc
/* 80AE1A68  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80AE1A6C  38 03 00 18 */	addi r0, r3, 0x18
/* 80AE1A70  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80AE1A74  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80AE1A78  38 80 00 00 */	li r4, 0
/* 80AE1A7C  4B 59 45 18 */	b __dt__9dBgS_AcchFv
lbl_80AE1A80:
/* 80AE1A80  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AE1A84  41 82 00 20 */	beq lbl_80AE1AA4
/* 80AE1A88  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AE1A8C  41 82 00 18 */	beq lbl_80AE1AA4
/* 80AE1A90  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AE1A94  41 82 00 10 */	beq lbl_80AE1AA4
/* 80AE1A98  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AE1A9C  38 03 2C 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AE1AA0  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80AE1AA4:
/* 80AE1AA4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AE1AA8  41 82 00 20 */	beq lbl_80AE1AC8
/* 80AE1AAC  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AE1AB0  41 82 00 18 */	beq lbl_80AE1AC8
/* 80AE1AB4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AE1AB8  41 82 00 10 */	beq lbl_80AE1AC8
/* 80AE1ABC  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AE1AC0  38 03 2C 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AE1AC4  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80AE1AC8:
/* 80AE1AC8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AE1ACC  41 82 00 20 */	beq lbl_80AE1AEC
/* 80AE1AD0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AE1AD4  41 82 00 18 */	beq lbl_80AE1AEC
/* 80AE1AD8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AE1ADC  41 82 00 10 */	beq lbl_80AE1AEC
/* 80AE1AE0  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AE1AE4  38 03 2C 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AE1AE8  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80AE1AEC:
/* 80AE1AEC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AE1AF0  41 82 00 20 */	beq lbl_80AE1B10
/* 80AE1AF4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AE1AF8  41 82 00 18 */	beq lbl_80AE1B10
/* 80AE1AFC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AE1B00  41 82 00 10 */	beq lbl_80AE1B10
/* 80AE1B04  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AE1B08  38 03 2C 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AE1B0C  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80AE1B10:
/* 80AE1B10  7F C3 F3 78 */	mr r3, r30
/* 80AE1B14  38 80 00 00 */	li r4, 0
/* 80AE1B18  4B 53 71 74 */	b __dt__10fopAc_ac_cFv
/* 80AE1B1C  7F E0 07 35 */	extsh. r0, r31
/* 80AE1B20  40 81 00 0C */	ble lbl_80AE1B2C
/* 80AE1B24  7F C3 F3 78 */	mr r3, r30
/* 80AE1B28  4B 7E D2 14 */	b __dl__FPv
lbl_80AE1B2C:
/* 80AE1B2C  7F C3 F3 78 */	mr r3, r30
/* 80AE1B30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE1B34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE1B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE1B3C  7C 08 03 A6 */	mtlr r0
/* 80AE1B40  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE1B44  4E 80 00 20 */	blr 
