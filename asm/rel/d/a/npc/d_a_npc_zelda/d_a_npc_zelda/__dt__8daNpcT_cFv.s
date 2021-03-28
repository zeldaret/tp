lbl_80B76E60:
/* 80B76E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B76E64  7C 08 02 A6 */	mflr r0
/* 80B76E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B76E6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B76E70  93 C1 00 08 */	stw r30, 8(r1)
/* 80B76E74  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B76E78  7C 9F 23 78 */	mr r31, r4
/* 80B76E7C  41 82 03 50 */	beq lbl_80B771CC
/* 80B76E80  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80B76E84  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80B76E88  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B76E8C  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80B76E90  41 82 00 1C */	beq lbl_80B76EAC
/* 80B76E94  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B76E98  3C 80 80 B7 */	lis r4, __dt__5csXyzFv@ha
/* 80B76E9C  38 84 72 24 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B76EA0  38 A0 00 06 */	li r5, 6
/* 80B76EA4  38 C0 00 02 */	li r6, 2
/* 80B76EA8  4B 7E AE 40 */	b __destroy_arr
lbl_80B76EAC:
/* 80B76EAC  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B76EB0  41 82 00 B4 */	beq lbl_80B76F64
/* 80B76EB4  3C 60 80 B8 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B76EB8  38 03 83 08 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B76EBC  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80B76EC0  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80B76EC4  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B76EC8  38 84 71 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B76ECC  38 A0 00 0C */	li r5, 0xc
/* 80B76ED0  38 C0 00 03 */	li r6, 3
/* 80B76ED4  4B 7E AE 14 */	b __destroy_arr
/* 80B76ED8  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80B76EDC  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B76EE0  38 84 71 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B76EE4  38 A0 00 0C */	li r5, 0xc
/* 80B76EE8  38 C0 00 03 */	li r6, 3
/* 80B76EEC  4B 7E AD FC */	b __destroy_arr
/* 80B76EF0  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80B76EF4  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B76EF8  38 84 71 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B76EFC  38 A0 00 0C */	li r5, 0xc
/* 80B76F00  38 C0 00 03 */	li r6, 3
/* 80B76F04  4B 7E AD E4 */	b __destroy_arr
/* 80B76F08  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80B76F0C  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B76F10  38 84 71 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B76F14  38 A0 00 0C */	li r5, 0xc
/* 80B76F18  38 C0 00 03 */	li r6, 3
/* 80B76F1C  4B 7E AD CC */	b __destroy_arr
/* 80B76F20  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80B76F24  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B76F28  38 84 71 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B76F2C  38 A0 00 0C */	li r5, 0xc
/* 80B76F30  38 C0 00 03 */	li r6, 3
/* 80B76F34  4B 7E AD B4 */	b __destroy_arr
/* 80B76F38  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80B76F3C  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B76F40  38 84 71 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B76F44  38 A0 00 0C */	li r5, 0xc
/* 80B76F48  38 C0 00 03 */	li r6, 3
/* 80B76F4C  4B 7E AD 9C */	b __destroy_arr
/* 80B76F50  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B76F54  41 82 00 10 */	beq lbl_80B76F64
/* 80B76F58  3C 60 80 B8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B76F5C  38 03 82 FC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B76F60  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80B76F64:
/* 80B76F64  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80B76F68  41 82 00 10 */	beq lbl_80B76F78
/* 80B76F6C  3C 60 80 B8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B76F70  38 03 82 FC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B76F74  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80B76F78:
/* 80B76F78  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80B76F7C  41 82 00 10 */	beq lbl_80B76F8C
/* 80B76F80  3C 60 80 B8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B76F84  38 03 82 FC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B76F88  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80B76F8C:
/* 80B76F8C  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80B76F90  41 82 00 10 */	beq lbl_80B76FA0
/* 80B76F94  3C 60 80 B8 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B76F98  38 03 82 F0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B76F9C  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80B76FA0:
/* 80B76FA0  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80B76FA4  41 82 00 10 */	beq lbl_80B76FB4
/* 80B76FA8  3C 60 80 B8 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B76FAC  38 03 82 F0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B76FB0  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80B76FB4:
/* 80B76FB4  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80B76FB8  38 80 FF FF */	li r4, -1
/* 80B76FBC  4B 50 0D 20 */	b __dt__11dBgS_LinChkFv
/* 80B76FC0  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80B76FC4  38 80 FF FF */	li r4, -1
/* 80B76FC8  4B 50 06 28 */	b __dt__11dBgS_GndChkFv
/* 80B76FCC  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B76FD0  41 82 00 54 */	beq lbl_80B77024
/* 80B76FD4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B76FD8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B76FDC  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80B76FE0  38 03 00 20 */	addi r0, r3, 0x20
/* 80B76FE4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B76FE8  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B76FEC  41 82 00 24 */	beq lbl_80B77010
/* 80B76FF0  3C 60 80 B8 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B76FF4  38 03 82 E4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B76FF8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B76FFC  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B77000  41 82 00 10 */	beq lbl_80B77010
/* 80B77004  3C 60 80 B8 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B77008  38 03 82 D8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B7700C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80B77010:
/* 80B77010  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B77014  41 82 00 10 */	beq lbl_80B77024
/* 80B77018  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B7701C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B77020  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80B77024:
/* 80B77024  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B77028  38 80 FF FF */	li r4, -1
/* 80B7702C  4B 6D 2F 1C */	b __dt__10dMsgFlow_cFv
/* 80B77030  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B77034  38 80 FF FF */	li r4, -1
/* 80B77038  4B 6F 0C 5C */	b __dt__11cBgS_GndChkFv
/* 80B7703C  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80B77040  41 82 00 28 */	beq lbl_80B77068
/* 80B77044  3C 60 80 B8 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B77048  38 03 82 CC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B7704C  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80B77050  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80B77054  38 80 FF FF */	li r4, -1
/* 80B77058  4B 6F 7E C0 */	b __dt__8cM3dGCirFv
/* 80B7705C  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B77060  38 80 00 00 */	li r4, 0
/* 80B77064  4B 6F 10 4C */	b __dt__13cBgS_PolyInfoFv
lbl_80B77068:
/* 80B77068  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B7706C  41 82 00 54 */	beq lbl_80B770C0
/* 80B77070  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B77074  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B77078  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80B7707C  38 03 00 20 */	addi r0, r3, 0x20
/* 80B77080  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B77084  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B77088  41 82 00 24 */	beq lbl_80B770AC
/* 80B7708C  3C 60 80 B8 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B77090  38 03 82 E4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B77094  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B77098  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B7709C  41 82 00 10 */	beq lbl_80B770AC
/* 80B770A0  3C 60 80 B8 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B770A4  38 03 82 D8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B770A8  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80B770AC:
/* 80B770AC  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B770B0  41 82 00 10 */	beq lbl_80B770C0
/* 80B770B4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B770B8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B770BC  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80B770C0:
/* 80B770C0  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80B770C4  41 82 00 2C */	beq lbl_80B770F0
/* 80B770C8  3C 60 80 B8 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B770CC  38 63 82 A8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B770D0  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80B770D4  38 03 00 0C */	addi r0, r3, 0xc
/* 80B770D8  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80B770DC  38 03 00 18 */	addi r0, r3, 0x18
/* 80B770E0  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B770E4  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80B770E8  38 80 00 00 */	li r4, 0
/* 80B770EC  4B 4F EE A8 */	b __dt__9dBgS_AcchFv
lbl_80B770F0:
/* 80B770F0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B770F4  41 82 00 20 */	beq lbl_80B77114
/* 80B770F8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B770FC  41 82 00 18 */	beq lbl_80B77114
/* 80B77100  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B77104  41 82 00 10 */	beq lbl_80B77114
/* 80B77108  3C 60 80 B8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B7710C  38 03 82 9C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B77110  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80B77114:
/* 80B77114  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B77118  41 82 00 20 */	beq lbl_80B77138
/* 80B7711C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B77120  41 82 00 18 */	beq lbl_80B77138
/* 80B77124  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B77128  41 82 00 10 */	beq lbl_80B77138
/* 80B7712C  3C 60 80 B8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B77130  38 03 82 9C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B77134  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80B77138:
/* 80B77138  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B7713C  41 82 00 20 */	beq lbl_80B7715C
/* 80B77140  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B77144  41 82 00 18 */	beq lbl_80B7715C
/* 80B77148  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B7714C  41 82 00 10 */	beq lbl_80B7715C
/* 80B77150  3C 60 80 B8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B77154  38 03 82 9C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B77158  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80B7715C:
/* 80B7715C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B77160  41 82 00 20 */	beq lbl_80B77180
/* 80B77164  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B77168  41 82 00 18 */	beq lbl_80B77180
/* 80B7716C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B77170  41 82 00 10 */	beq lbl_80B77180
/* 80B77174  3C 60 80 B8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B77178  38 03 82 9C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B7717C  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80B77180:
/* 80B77180  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B77184  41 82 00 20 */	beq lbl_80B771A4
/* 80B77188  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B7718C  41 82 00 18 */	beq lbl_80B771A4
/* 80B77190  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B77194  41 82 00 10 */	beq lbl_80B771A4
/* 80B77198  3C 60 80 B8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B7719C  38 03 82 9C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B771A0  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80B771A4:
/* 80B771A4  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B771A8  38 80 FF FF */	li r4, -1
/* 80B771AC  4B 74 92 74 */	b __dt__10Z2CreatureFv
/* 80B771B0  7F C3 F3 78 */	mr r3, r30
/* 80B771B4  38 80 00 00 */	li r4, 0
/* 80B771B8  4B 4A 1A D4 */	b __dt__10fopAc_ac_cFv
/* 80B771BC  7F E0 07 35 */	extsh. r0, r31
/* 80B771C0  40 81 00 0C */	ble lbl_80B771CC
/* 80B771C4  7F C3 F3 78 */	mr r3, r30
/* 80B771C8  4B 75 7B 74 */	b __dl__FPv
lbl_80B771CC:
/* 80B771CC  7F C3 F3 78 */	mr r3, r30
/* 80B771D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B771D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B771D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B771DC  7C 08 03 A6 */	mtlr r0
/* 80B771E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B771E4  4E 80 00 20 */	blr 
