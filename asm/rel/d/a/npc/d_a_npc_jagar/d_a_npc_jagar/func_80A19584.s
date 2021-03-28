lbl_80A19584:
/* 80A19584  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A19588  7C 08 02 A6 */	mflr r0
/* 80A1958C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A19590  39 61 00 40 */	addi r11, r1, 0x40
/* 80A19594  4B 94 8C 2C */	b _savegpr_22
/* 80A19598  7C 7F 1B 78 */	mr r31, r3
/* 80A1959C  7C 96 23 78 */	mr r22, r4
/* 80A195A0  7C B7 2B 78 */	mr r23, r5
/* 80A195A4  7C DA 33 78 */	mr r26, r6
/* 80A195A8  7C FB 3B 78 */	mr r27, r7
/* 80A195AC  7D 1C 43 78 */	mr r28, r8
/* 80A195B0  7D 3D 4B 78 */	mr r29, r9
/* 80A195B4  7D 58 53 78 */	mr r24, r10
/* 80A195B8  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80A195BC  3C 80 80 A2 */	lis r4, m__19daNpc_Jagar_Param_c@ha
/* 80A195C0  3B C4 A3 30 */	addi r30, r4, m__19daNpc_Jagar_Param_c@l
/* 80A195C4  4B 5F F5 A0 */	b __ct__10fopAc_ac_cFv
/* 80A195C8  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80A195CC  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80A195D0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A195D4  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80A195D8  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80A195DC  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80A195E0  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80A195E4  38 7F 05 80 */	addi r3, r31, 0x580
/* 80A195E8  4B 8A 6D E0 */	b __ct__10Z2CreatureFv
/* 80A195EC  3A DF 06 10 */	addi r22, r31, 0x610
/* 80A195F0  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A195F4  38 03 AC 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A195F8  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80A195FC  7E C3 B3 78 */	mr r3, r22
/* 80A19600  38 80 00 00 */	li r4, 0
/* 80A19604  4B 90 ED F8 */	b init__12J3DFrameCtrlFs
/* 80A19608  38 00 00 00 */	li r0, 0
/* 80A1960C  90 16 00 18 */	stw r0, 0x18(r22)
/* 80A19610  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80A19614  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A19618  38 03 AC 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A1961C  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80A19620  7E C3 B3 78 */	mr r3, r22
/* 80A19624  38 80 00 00 */	li r4, 0
/* 80A19628  4B 90 ED D4 */	b init__12J3DFrameCtrlFs
/* 80A1962C  38 00 00 00 */	li r0, 0
/* 80A19630  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A19634  3A DF 06 44 */	addi r22, r31, 0x644
/* 80A19638  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A1963C  38 03 AC 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A19640  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80A19644  7E C3 B3 78 */	mr r3, r22
/* 80A19648  38 80 00 00 */	li r4, 0
/* 80A1964C  4B 90 ED B0 */	b init__12J3DFrameCtrlFs
/* 80A19650  38 00 00 00 */	li r0, 0
/* 80A19654  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A19658  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80A1965C  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A19660  38 03 AC 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A19664  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80A19668  7E C3 B3 78 */	mr r3, r22
/* 80A1966C  38 80 00 00 */	li r4, 0
/* 80A19670  4B 90 ED 8C */	b init__12J3DFrameCtrlFs
/* 80A19674  38 00 00 00 */	li r0, 0
/* 80A19678  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A1967C  3A DF 06 74 */	addi r22, r31, 0x674
/* 80A19680  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A19684  38 03 AC 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A19688  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80A1968C  7E C3 B3 78 */	mr r3, r22
/* 80A19690  38 80 00 00 */	li r4, 0
/* 80A19694  4B 90 ED 68 */	b init__12J3DFrameCtrlFs
/* 80A19698  38 00 00 00 */	li r0, 0
/* 80A1969C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A196A0  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80A196A4  7E C3 B3 78 */	mr r3, r22
/* 80A196A8  4B 65 C9 F8 */	b __ct__9dBgS_AcchFv
/* 80A196AC  3C 60 80 A2 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A196B0  38 63 AC 78 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A196B4  90 76 00 10 */	stw r3, 0x10(r22)
/* 80A196B8  38 03 00 0C */	addi r0, r3, 0xc
/* 80A196BC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A196C0  38 03 00 18 */	addi r0, r3, 0x18
/* 80A196C4  90 16 00 24 */	stw r0, 0x24(r22)
/* 80A196C8  38 76 00 14 */	addi r3, r22, 0x14
/* 80A196CC  4B 65 F7 9C */	b SetObj__16dBgS_PolyPassChkFv
/* 80A196D0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A196D4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A196D8  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80A196DC  38 7F 08 80 */	addi r3, r31, 0x880
/* 80A196E0  4B 66 A0 80 */	b __ct__10dCcD_GSttsFv
/* 80A196E4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A196E8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A196EC  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80A196F0  3B 23 00 20 */	addi r25, r3, 0x20
/* 80A196F4  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80A196F8  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80A196FC  4B 65 C7 B0 */	b __ct__12dBgS_AcchCirFv
/* 80A19700  38 7F 09 30 */	addi r3, r31, 0x930
/* 80A19704  4B 84 E5 18 */	b __ct__11cBgS_GndChkFv
/* 80A19708  38 7F 09 74 */	addi r3, r31, 0x974
/* 80A1970C  4B 83 07 F4 */	b __ct__10dMsgFlow_cFv
/* 80A19710  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A19714  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A19718  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A1971C  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80A19720  4B 66 A0 40 */	b __ct__10dCcD_GSttsFv
/* 80A19724  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A19728  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80A1972C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A19730  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80A19734  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80A19738  4B 65 DE 44 */	b __ct__11dBgS_GndChkFv
/* 80A1973C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80A19740  4B 65 E5 28 */	b __ct__11dBgS_LinChkFv
/* 80A19744  3C 60 80 A2 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A19748  38 03 AC C0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A1974C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80A19750  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80A19754  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80A19758  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A1975C  4B 72 C1 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A19760  3C 60 80 A2 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A19764  38 03 AC C0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A19768  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80A1976C  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80A19770  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80A19774  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A19778  4B 72 C1 20 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A1977C  3C 60 80 A2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A19780  38 03 AC CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A19784  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80A19788  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A1978C  4B 72 BF 48 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A19790  3C 60 80 A2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A19794  38 03 AC CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A19798  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80A1979C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A197A0  4B 72 BF 34 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A197A4  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80A197A8  3C 60 80 A2 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A197AC  38 03 AC D8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A197B0  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80A197B4  3C 60 80 A2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A197B8  38 03 AC CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A197BC  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80A197C0  7F 43 D3 78 */	mr r3, r26
/* 80A197C4  4B 72 BF 10 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A197C8  38 7A 00 30 */	addi r3, r26, 0x30
/* 80A197CC  3C 80 80 A2 */	lis r4, __ct__4cXyzFv@ha
/* 80A197D0  38 84 9A 88 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A197D4  3C A0 80 A2 */	lis r5, __dt__4cXyzFv@ha
/* 80A197D8  38 A5 93 B0 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A197DC  38 C0 00 0C */	li r6, 0xc
/* 80A197E0  38 E0 00 03 */	li r7, 3
/* 80A197E4  4B 94 85 7C */	b __construct_array
/* 80A197E8  38 7A 00 54 */	addi r3, r26, 0x54
/* 80A197EC  3C 80 80 A2 */	lis r4, __ct__4cXyzFv@ha
/* 80A197F0  38 84 9A 88 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A197F4  3C A0 80 A2 */	lis r5, __dt__4cXyzFv@ha
/* 80A197F8  38 A5 93 B0 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A197FC  38 C0 00 0C */	li r6, 0xc
/* 80A19800  38 E0 00 03 */	li r7, 3
/* 80A19804  4B 94 85 5C */	b __construct_array
/* 80A19808  38 7A 00 78 */	addi r3, r26, 0x78
/* 80A1980C  3C 80 80 A2 */	lis r4, __ct__4cXyzFv@ha
/* 80A19810  38 84 9A 88 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A19814  3C A0 80 A2 */	lis r5, __dt__4cXyzFv@ha
/* 80A19818  38 A5 93 B0 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A1981C  38 C0 00 0C */	li r6, 0xc
/* 80A19820  38 E0 00 03 */	li r7, 3
/* 80A19824  4B 94 85 3C */	b __construct_array
/* 80A19828  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80A1982C  3C 80 80 A2 */	lis r4, __ct__4cXyzFv@ha
/* 80A19830  38 84 9A 88 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A19834  3C A0 80 A2 */	lis r5, __dt__4cXyzFv@ha
/* 80A19838  38 A5 93 B0 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A1983C  38 C0 00 0C */	li r6, 0xc
/* 80A19840  38 E0 00 03 */	li r7, 3
/* 80A19844  4B 94 85 1C */	b __construct_array
/* 80A19848  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80A1984C  3C 80 80 A2 */	lis r4, __ct__4cXyzFv@ha
/* 80A19850  38 84 9A 88 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A19854  3C A0 80 A2 */	lis r5, __dt__4cXyzFv@ha
/* 80A19858  38 A5 93 B0 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A1985C  38 C0 00 0C */	li r6, 0xc
/* 80A19860  38 E0 00 03 */	li r7, 3
/* 80A19864  4B 94 84 FC */	b __construct_array
/* 80A19868  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80A1986C  3C 80 80 A2 */	lis r4, __ct__4cXyzFv@ha
/* 80A19870  38 84 9A 88 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A19874  3C A0 80 A2 */	lis r5, __dt__4cXyzFv@ha
/* 80A19878  38 A5 93 B0 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A1987C  38 C0 00 0C */	li r6, 0xc
/* 80A19880  38 E0 00 03 */	li r7, 3
/* 80A19884  4B 94 84 DC */	b __construct_array
/* 80A19888  7F 43 D3 78 */	mr r3, r26
/* 80A1988C  4B 72 D4 0C */	b initialize__15daNpcT_JntAnm_cFv
/* 80A19890  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A19894  3C 80 80 A2 */	lis r4, __ct__5csXyzFv@ha
/* 80A19898  38 84 99 88 */	addi r4, r4, __ct__5csXyzFv@l
/* 80A1989C  3C A0 80 A2 */	lis r5, __dt__5csXyzFv@ha
/* 80A198A0  38 A5 93 EC */	addi r5, r5, __dt__5csXyzFv@l
/* 80A198A4  38 C0 00 06 */	li r6, 6
/* 80A198A8  38 E0 00 02 */	li r7, 2
/* 80A198AC  4B 94 84 B4 */	b __construct_array
/* 80A198B0  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A198B4  38 80 00 00 */	li r4, 0
/* 80A198B8  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A198BC  7C A3 00 50 */	subf r5, r3, r0
/* 80A198C0  4B 5E 9B 98 */	b memset
/* 80A198C4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A198C8  4B 72 BF D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A198CC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A198D0  4B 72 BF C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A198D4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A198D8  4B 72 BD FC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A198DC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A198E0  4B 72 BD F4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A198E4  7F 43 D3 78 */	mr r3, r26
/* 80A198E8  4B 72 D3 B0 */	b initialize__15daNpcT_JntAnm_cFv
/* 80A198EC  38 A0 00 00 */	li r5, 0
/* 80A198F0  38 60 00 00 */	li r3, 0
/* 80A198F4  7C A4 2B 78 */	mr r4, r5
/* 80A198F8  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A198FC  38 00 00 02 */	li r0, 2
/* 80A19900  7C 09 03 A6 */	mtctr r0
lbl_80A19904:
/* 80A19904  7C DF 22 14 */	add r6, r31, r4
/* 80A19908  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A1990C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A19910  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A19914  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A19918  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A1991C  38 63 00 04 */	addi r3, r3, 4
/* 80A19920  38 84 00 06 */	addi r4, r4, 6
/* 80A19924  42 00 FF E0 */	bdnz lbl_80A19904
/* 80A19928  38 00 00 00 */	li r0, 0
/* 80A1992C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A19930  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A19934  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A19938  38 00 FF FF */	li r0, -1
/* 80A1993C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A19940  38 00 00 01 */	li r0, 1
/* 80A19944  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A19948  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 80A1994C  4B 84 E0 08 */	b cM_rndF__Ff
/* 80A19950  FC 00 08 1E */	fctiwz f0, f1
/* 80A19954  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A19958  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A1995C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A19960  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80A19964  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A19968  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A1996C  7F E3 FB 78 */	mr r3, r31
/* 80A19970  39 61 00 40 */	addi r11, r1, 0x40
/* 80A19974  4B 94 88 98 */	b _restgpr_22
/* 80A19978  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A1997C  7C 08 03 A6 */	mtlr r0
/* 80A19980  38 21 00 40 */	addi r1, r1, 0x40
/* 80A19984  4E 80 00 20 */	blr 
