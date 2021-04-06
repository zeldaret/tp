lbl_80AB819C:
/* 80AB819C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AB81A0  7C 08 02 A6 */	mflr r0
/* 80AB81A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AB81A8  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB81AC  4B 8A A0 15 */	bl _savegpr_22
/* 80AB81B0  7C 7F 1B 78 */	mr r31, r3
/* 80AB81B4  7C 96 23 78 */	mr r22, r4
/* 80AB81B8  7C B7 2B 78 */	mr r23, r5
/* 80AB81BC  7C DA 33 78 */	mr r26, r6
/* 80AB81C0  7C FB 3B 78 */	mr r27, r7
/* 80AB81C4  7D 1C 43 78 */	mr r28, r8
/* 80AB81C8  7D 3D 4B 78 */	mr r29, r9
/* 80AB81CC  7D 58 53 78 */	mr r24, r10
/* 80AB81D0  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80AB81D4  3C 80 80 AC */	lis r4, m__18daNpc_Raca_Param_c@ha /* 0x80AB8EC8@ha */
/* 80AB81D8  3B C4 8E C8 */	addi r30, r4, m__18daNpc_Raca_Param_c@l /* 0x80AB8EC8@l */
/* 80AB81DC  4B 56 09 89 */	bl __ct__10fopAc_ac_cFv
/* 80AB81E0  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AB81E4  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AB81E8  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AB81EC  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80AB81F0  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80AB81F4  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80AB81F8  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80AB81FC  38 7F 05 80 */	addi r3, r31, 0x580
/* 80AB8200  4B 80 81 C9 */	bl __ct__10Z2CreatureFv
/* 80AB8204  3A DF 06 10 */	addi r22, r31, 0x610
/* 80AB8208  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AB93B8@ha */
/* 80AB820C  38 03 93 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AB93B8@l */
/* 80AB8210  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80AB8214  7E C3 B3 78 */	mr r3, r22
/* 80AB8218  38 80 00 00 */	li r4, 0
/* 80AB821C  4B 87 01 E1 */	bl init__12J3DFrameCtrlFs
/* 80AB8220  38 00 00 00 */	li r0, 0
/* 80AB8224  90 16 00 18 */	stw r0, 0x18(r22)
/* 80AB8228  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80AB822C  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AB93B8@ha */
/* 80AB8230  38 03 93 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AB93B8@l */
/* 80AB8234  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80AB8238  7E C3 B3 78 */	mr r3, r22
/* 80AB823C  38 80 00 00 */	li r4, 0
/* 80AB8240  4B 87 01 BD */	bl init__12J3DFrameCtrlFs
/* 80AB8244  38 00 00 00 */	li r0, 0
/* 80AB8248  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AB824C  3A DF 06 44 */	addi r22, r31, 0x644
/* 80AB8250  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AB93B8@ha */
/* 80AB8254  38 03 93 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AB93B8@l */
/* 80AB8258  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80AB825C  7E C3 B3 78 */	mr r3, r22
/* 80AB8260  38 80 00 00 */	li r4, 0
/* 80AB8264  4B 87 01 99 */	bl init__12J3DFrameCtrlFs
/* 80AB8268  38 00 00 00 */	li r0, 0
/* 80AB826C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AB8270  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80AB8274  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AB93B8@ha */
/* 80AB8278  38 03 93 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AB93B8@l */
/* 80AB827C  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80AB8280  7E C3 B3 78 */	mr r3, r22
/* 80AB8284  38 80 00 00 */	li r4, 0
/* 80AB8288  4B 87 01 75 */	bl init__12J3DFrameCtrlFs
/* 80AB828C  38 00 00 00 */	li r0, 0
/* 80AB8290  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AB8294  3A DF 06 74 */	addi r22, r31, 0x674
/* 80AB8298  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AB93B8@ha */
/* 80AB829C  38 03 93 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AB93B8@l */
/* 80AB82A0  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80AB82A4  7E C3 B3 78 */	mr r3, r22
/* 80AB82A8  38 80 00 00 */	li r4, 0
/* 80AB82AC  4B 87 01 51 */	bl init__12J3DFrameCtrlFs
/* 80AB82B0  38 00 00 00 */	li r0, 0
/* 80AB82B4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AB82B8  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80AB82BC  7E C3 B3 78 */	mr r3, r22
/* 80AB82C0  4B 5B DD E1 */	bl __ct__9dBgS_AcchFv
/* 80AB82C4  3C 60 80 AC */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AB93C4@ha */
/* 80AB82C8  38 63 93 C4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AB93C4@l */
/* 80AB82CC  90 76 00 10 */	stw r3, 0x10(r22)
/* 80AB82D0  38 03 00 0C */	addi r0, r3, 0xc
/* 80AB82D4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AB82D8  38 03 00 18 */	addi r0, r3, 0x18
/* 80AB82DC  90 16 00 24 */	stw r0, 0x24(r22)
/* 80AB82E0  38 76 00 14 */	addi r3, r22, 0x14
/* 80AB82E4  4B 5C 0B 85 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80AB82E8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AB82EC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AB82F0  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80AB82F4  38 7F 08 80 */	addi r3, r31, 0x880
/* 80AB82F8  4B 5C B4 69 */	bl __ct__10dCcD_GSttsFv
/* 80AB82FC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AB8300  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AB8304  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80AB8308  3B 23 00 20 */	addi r25, r3, 0x20
/* 80AB830C  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80AB8310  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AB8314  4B 5B DB 99 */	bl __ct__12dBgS_AcchCirFv
/* 80AB8318  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AB831C  4B 7A F9 01 */	bl __ct__11cBgS_GndChkFv
/* 80AB8320  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AB8324  4B 79 1B DD */	bl __ct__10dMsgFlow_cFv
/* 80AB8328  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AB832C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AB8330  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AB8334  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80AB8338  4B 5C B4 29 */	bl __ct__10dCcD_GSttsFv
/* 80AB833C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AB8340  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AB8344  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AB8348  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80AB834C  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80AB8350  4B 5B F2 2D */	bl __ct__11dBgS_GndChkFv
/* 80AB8354  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80AB8358  4B 5B F9 11 */	bl __ct__11dBgS_LinChkFv
/* 80AB835C  3C 60 80 AC */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AB940C@ha */
/* 80AB8360  38 03 94 0C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AB940C@l */
/* 80AB8364  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80AB8368  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80AB836C  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80AB8370  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB8374  4B 68 D5 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB8378  3C 60 80 AC */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AB940C@ha */
/* 80AB837C  38 03 94 0C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AB940C@l */
/* 80AB8380  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80AB8384  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80AB8388  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80AB838C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB8390  4B 68 D5 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB8394  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AB9418@ha */
/* 80AB8398  38 03 94 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AB9418@l */
/* 80AB839C  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80AB83A0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB83A4  4B 68 D3 31 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AB83A8  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AB9418@ha */
/* 80AB83AC  38 03 94 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AB9418@l */
/* 80AB83B0  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80AB83B4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AB83B8  4B 68 D3 1D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AB83BC  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80AB83C0  3C 60 80 AC */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AB9424@ha */
/* 80AB83C4  38 03 94 24 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AB9424@l */
/* 80AB83C8  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80AB83CC  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AB9418@ha */
/* 80AB83D0  38 03 94 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AB9418@l */
/* 80AB83D4  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80AB83D8  7F 43 D3 78 */	mr r3, r26
/* 80AB83DC  4B 68 D2 F9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AB83E0  38 7A 00 30 */	addi r3, r26, 0x30
/* 80AB83E4  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AB86A0@ha */
/* 80AB83E8  38 84 86 A0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AB86A0@l */
/* 80AB83EC  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB83F0  38 A5 7F C8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB83F4  38 C0 00 0C */	li r6, 0xc
/* 80AB83F8  38 E0 00 03 */	li r7, 3
/* 80AB83FC  4B 8A 99 65 */	bl __construct_array
/* 80AB8400  38 7A 00 54 */	addi r3, r26, 0x54
/* 80AB8404  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AB86A0@ha */
/* 80AB8408  38 84 86 A0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AB86A0@l */
/* 80AB840C  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB8410  38 A5 7F C8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB8414  38 C0 00 0C */	li r6, 0xc
/* 80AB8418  38 E0 00 03 */	li r7, 3
/* 80AB841C  4B 8A 99 45 */	bl __construct_array
/* 80AB8420  38 7A 00 78 */	addi r3, r26, 0x78
/* 80AB8424  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AB86A0@ha */
/* 80AB8428  38 84 86 A0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AB86A0@l */
/* 80AB842C  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB8430  38 A5 7F C8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB8434  38 C0 00 0C */	li r6, 0xc
/* 80AB8438  38 E0 00 03 */	li r7, 3
/* 80AB843C  4B 8A 99 25 */	bl __construct_array
/* 80AB8440  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80AB8444  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AB86A0@ha */
/* 80AB8448  38 84 86 A0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AB86A0@l */
/* 80AB844C  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB8450  38 A5 7F C8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB8454  38 C0 00 0C */	li r6, 0xc
/* 80AB8458  38 E0 00 03 */	li r7, 3
/* 80AB845C  4B 8A 99 05 */	bl __construct_array
/* 80AB8460  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80AB8464  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AB86A0@ha */
/* 80AB8468  38 84 86 A0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AB86A0@l */
/* 80AB846C  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB8470  38 A5 7F C8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB8474  38 C0 00 0C */	li r6, 0xc
/* 80AB8478  38 E0 00 03 */	li r7, 3
/* 80AB847C  4B 8A 98 E5 */	bl __construct_array
/* 80AB8480  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80AB8484  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AB86A0@ha */
/* 80AB8488  38 84 86 A0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AB86A0@l */
/* 80AB848C  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB8490  38 A5 7F C8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB8494  38 C0 00 0C */	li r6, 0xc
/* 80AB8498  38 E0 00 03 */	li r7, 3
/* 80AB849C  4B 8A 98 C5 */	bl __construct_array
/* 80AB84A0  7F 43 D3 78 */	mr r3, r26
/* 80AB84A4  4B 68 E7 F5 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AB84A8  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AB84AC  3C 80 80 AC */	lis r4, __ct__5csXyzFv@ha /* 0x80AB85A0@ha */
/* 80AB84B0  38 84 85 A0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AB85A0@l */
/* 80AB84B4  3C A0 80 AC */	lis r5, __dt__5csXyzFv@ha /* 0x80AB8004@ha */
/* 80AB84B8  38 A5 80 04 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AB8004@l */
/* 80AB84BC  38 C0 00 06 */	li r6, 6
/* 80AB84C0  38 E0 00 02 */	li r7, 2
/* 80AB84C4  4B 8A 98 9D */	bl __construct_array
/* 80AB84C8  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AB84CC  38 80 00 00 */	li r4, 0
/* 80AB84D0  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AB84D4  7C A3 00 50 */	subf r5, r3, r0
/* 80AB84D8  4B 54 AF 81 */	bl memset
/* 80AB84DC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB84E0  4B 68 D3 B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB84E4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB84E8  4B 68 D3 B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB84EC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB84F0  4B 68 D1 E5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AB84F4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AB84F8  4B 68 D1 DD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AB84FC  7F 43 D3 78 */	mr r3, r26
/* 80AB8500  4B 68 E7 99 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AB8504  38 A0 00 00 */	li r5, 0
/* 80AB8508  38 60 00 00 */	li r3, 0
/* 80AB850C  7C A4 2B 78 */	mr r4, r5
/* 80AB8510  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AB8514  38 00 00 02 */	li r0, 2
/* 80AB8518  7C 09 03 A6 */	mtctr r0
lbl_80AB851C:
/* 80AB851C  7C DF 22 14 */	add r6, r31, r4
/* 80AB8520  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AB8524  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AB8528  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AB852C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AB8530  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AB8534  38 63 00 04 */	addi r3, r3, 4
/* 80AB8538  38 84 00 06 */	addi r4, r4, 6
/* 80AB853C  42 00 FF E0 */	bdnz lbl_80AB851C
/* 80AB8540  38 00 00 00 */	li r0, 0
/* 80AB8544  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AB8548  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AB854C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AB8550  38 00 FF FF */	li r0, -1
/* 80AB8554  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AB8558  38 00 00 01 */	li r0, 1
/* 80AB855C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AB8560  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80AB8564  4B 7A F3 F1 */	bl cM_rndF__Ff
/* 80AB8568  FC 00 08 1E */	fctiwz f0, f1
/* 80AB856C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AB8570  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AB8574  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AB8578  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80AB857C  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AB8580  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AB8584  7F E3 FB 78 */	mr r3, r31
/* 80AB8588  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB858C  4B 8A 9C 81 */	bl _restgpr_22
/* 80AB8590  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AB8594  7C 08 03 A6 */	mtlr r0
/* 80AB8598  38 21 00 40 */	addi r1, r1, 0x40
/* 80AB859C  4E 80 00 20 */	blr 
