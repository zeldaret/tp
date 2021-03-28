lbl_809563C0:
/* 809563C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809563C4  7C 08 02 A6 */	mflr r0
/* 809563C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809563CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809563D0  93 C1 00 08 */	stw r30, 8(r1)
/* 809563D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809563D8  7C 9F 23 78 */	mr r31, r4
/* 809563DC  41 82 03 50 */	beq lbl_8095672C
/* 809563E0  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 809563E4  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 809563E8  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 809563EC  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 809563F0  41 82 00 1C */	beq lbl_8095640C
/* 809563F4  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 809563F8  3C 80 80 95 */	lis r4, __dt__5csXyzFv@ha
/* 809563FC  38 84 67 84 */	addi r4, r4, __dt__5csXyzFv@l
/* 80956400  38 A0 00 06 */	li r5, 6
/* 80956404  38 C0 00 02 */	li r6, 2
/* 80956408  4B A0 B8 E0 */	b __destroy_arr
lbl_8095640C:
/* 8095640C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80956410  41 82 00 B4 */	beq lbl_809564C4
/* 80956414  3C 60 80 96 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80956418  38 03 80 20 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 8095641C  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80956420  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80956424  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha
/* 80956428  38 84 67 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 8095642C  38 A0 00 0C */	li r5, 0xc
/* 80956430  38 C0 00 03 */	li r6, 3
/* 80956434  4B A0 B8 B4 */	b __destroy_arr
/* 80956438  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 8095643C  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha
/* 80956440  38 84 67 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 80956444  38 A0 00 0C */	li r5, 0xc
/* 80956448  38 C0 00 03 */	li r6, 3
/* 8095644C  4B A0 B8 9C */	b __destroy_arr
/* 80956450  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80956454  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha
/* 80956458  38 84 67 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 8095645C  38 A0 00 0C */	li r5, 0xc
/* 80956460  38 C0 00 03 */	li r6, 3
/* 80956464  4B A0 B8 84 */	b __destroy_arr
/* 80956468  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 8095646C  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha
/* 80956470  38 84 67 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 80956474  38 A0 00 0C */	li r5, 0xc
/* 80956478  38 C0 00 03 */	li r6, 3
/* 8095647C  4B A0 B8 6C */	b __destroy_arr
/* 80956480  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80956484  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha
/* 80956488  38 84 67 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 8095648C  38 A0 00 0C */	li r5, 0xc
/* 80956490  38 C0 00 03 */	li r6, 3
/* 80956494  4B A0 B8 54 */	b __destroy_arr
/* 80956498  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 8095649C  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha
/* 809564A0  38 84 67 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 809564A4  38 A0 00 0C */	li r5, 0xc
/* 809564A8  38 C0 00 03 */	li r6, 3
/* 809564AC  4B A0 B8 3C */	b __destroy_arr
/* 809564B0  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 809564B4  41 82 00 10 */	beq lbl_809564C4
/* 809564B8  3C 60 80 96 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809564BC  38 03 80 14 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809564C0  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_809564C4:
/* 809564C4  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 809564C8  41 82 00 10 */	beq lbl_809564D8
/* 809564CC  3C 60 80 96 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809564D0  38 03 80 14 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809564D4  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_809564D8:
/* 809564D8  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 809564DC  41 82 00 10 */	beq lbl_809564EC
/* 809564E0  3C 60 80 96 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809564E4  38 03 80 14 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809564E8  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_809564EC:
/* 809564EC  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 809564F0  41 82 00 10 */	beq lbl_80956500
/* 809564F4  3C 60 80 96 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 809564F8  38 03 80 08 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 809564FC  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80956500:
/* 80956500  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80956504  41 82 00 10 */	beq lbl_80956514
/* 80956508  3C 60 80 96 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 8095650C  38 03 80 08 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80956510  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80956514:
/* 80956514  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80956518  38 80 FF FF */	li r4, -1
/* 8095651C  4B 72 17 C0 */	b __dt__11dBgS_LinChkFv
/* 80956520  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80956524  38 80 FF FF */	li r4, -1
/* 80956528  4B 72 10 C8 */	b __dt__11dBgS_GndChkFv
/* 8095652C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80956530  41 82 00 54 */	beq lbl_80956584
/* 80956534  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80956538  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8095653C  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80956540  38 03 00 20 */	addi r0, r3, 0x20
/* 80956544  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80956548  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 8095654C  41 82 00 24 */	beq lbl_80956570
/* 80956550  3C 60 80 95 */	lis r3, __vt__10dCcD_GStts@ha
/* 80956554  38 03 7F FC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80956558  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 8095655C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80956560  41 82 00 10 */	beq lbl_80956570
/* 80956564  3C 60 80 95 */	lis r3, __vt__10cCcD_GStts@ha
/* 80956568  38 03 7F F0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8095656C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80956570:
/* 80956570  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80956574  41 82 00 10 */	beq lbl_80956584
/* 80956578  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8095657C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80956580  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80956584:
/* 80956584  38 7E 09 74 */	addi r3, r30, 0x974
/* 80956588  38 80 FF FF */	li r4, -1
/* 8095658C  4B 8F 39 BC */	b __dt__10dMsgFlow_cFv
/* 80956590  38 7E 09 30 */	addi r3, r30, 0x930
/* 80956594  38 80 FF FF */	li r4, -1
/* 80956598  4B 91 16 FC */	b __dt__11cBgS_GndChkFv
/* 8095659C  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 809565A0  41 82 00 28 */	beq lbl_809565C8
/* 809565A4  3C 60 80 95 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809565A8  38 03 7F E4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809565AC  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 809565B0  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 809565B4  38 80 FF FF */	li r4, -1
/* 809565B8  4B 91 89 60 */	b __dt__8cM3dGCirFv
/* 809565BC  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 809565C0  38 80 00 00 */	li r4, 0
/* 809565C4  4B 91 1A EC */	b __dt__13cBgS_PolyInfoFv
lbl_809565C8:
/* 809565C8  34 1E 08 64 */	addic. r0, r30, 0x864
/* 809565CC  41 82 00 54 */	beq lbl_80956620
/* 809565D0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809565D4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809565D8  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 809565DC  38 03 00 20 */	addi r0, r3, 0x20
/* 809565E0  90 1E 08 80 */	stw r0, 0x880(r30)
/* 809565E4  34 1E 08 80 */	addic. r0, r30, 0x880
/* 809565E8  41 82 00 24 */	beq lbl_8095660C
/* 809565EC  3C 60 80 95 */	lis r3, __vt__10dCcD_GStts@ha
/* 809565F0  38 03 7F FC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809565F4  90 1E 08 80 */	stw r0, 0x880(r30)
/* 809565F8  34 1E 08 80 */	addic. r0, r30, 0x880
/* 809565FC  41 82 00 10 */	beq lbl_8095660C
/* 80956600  3C 60 80 95 */	lis r3, __vt__10cCcD_GStts@ha
/* 80956604  38 03 7F F0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80956608  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_8095660C:
/* 8095660C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80956610  41 82 00 10 */	beq lbl_80956620
/* 80956614  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80956618  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8095661C  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80956620:
/* 80956620  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80956624  41 82 00 2C */	beq lbl_80956650
/* 80956628  3C 60 80 95 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8095662C  38 63 7F C0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80956630  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80956634  38 03 00 0C */	addi r0, r3, 0xc
/* 80956638  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 8095663C  38 03 00 18 */	addi r0, r3, 0x18
/* 80956640  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80956644  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80956648  38 80 00 00 */	li r4, 0
/* 8095664C  4B 71 F9 48 */	b __dt__9dBgS_AcchFv
lbl_80956650:
/* 80956650  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80956654  41 82 00 20 */	beq lbl_80956674
/* 80956658  34 1E 06 74 */	addic. r0, r30, 0x674
/* 8095665C  41 82 00 18 */	beq lbl_80956674
/* 80956660  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80956664  41 82 00 10 */	beq lbl_80956674
/* 80956668  3C 60 80 95 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8095666C  38 03 7F B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80956670  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80956674:
/* 80956674  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80956678  41 82 00 20 */	beq lbl_80956698
/* 8095667C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80956680  41 82 00 18 */	beq lbl_80956698
/* 80956684  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80956688  41 82 00 10 */	beq lbl_80956698
/* 8095668C  3C 60 80 95 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80956690  38 03 7F B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80956694  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80956698:
/* 80956698  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8095669C  41 82 00 20 */	beq lbl_809566BC
/* 809566A0  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809566A4  41 82 00 18 */	beq lbl_809566BC
/* 809566A8  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809566AC  41 82 00 10 */	beq lbl_809566BC
/* 809566B0  3C 60 80 95 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809566B4  38 03 7F B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809566B8  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_809566BC:
/* 809566BC  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809566C0  41 82 00 20 */	beq lbl_809566E0
/* 809566C4  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809566C8  41 82 00 18 */	beq lbl_809566E0
/* 809566CC  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809566D0  41 82 00 10 */	beq lbl_809566E0
/* 809566D4  3C 60 80 95 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809566D8  38 03 7F B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809566DC  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_809566E0:
/* 809566E0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809566E4  41 82 00 20 */	beq lbl_80956704
/* 809566E8  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809566EC  41 82 00 18 */	beq lbl_80956704
/* 809566F0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809566F4  41 82 00 10 */	beq lbl_80956704
/* 809566F8  3C 60 80 95 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809566FC  38 03 7F B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80956700  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80956704:
/* 80956704  38 7E 05 80 */	addi r3, r30, 0x580
/* 80956708  38 80 FF FF */	li r4, -1
/* 8095670C  4B 96 9D 14 */	b __dt__10Z2CreatureFv
/* 80956710  7F C3 F3 78 */	mr r3, r30
/* 80956714  38 80 00 00 */	li r4, 0
/* 80956718  4B 6C 25 74 */	b __dt__10fopAc_ac_cFv
/* 8095671C  7F E0 07 35 */	extsh. r0, r31
/* 80956720  40 81 00 0C */	ble lbl_8095672C
/* 80956724  7F C3 F3 78 */	mr r3, r30
/* 80956728  4B 97 86 14 */	b __dl__FPv
lbl_8095672C:
/* 8095672C  7F C3 F3 78 */	mr r3, r30
/* 80956730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80956734  83 C1 00 08 */	lwz r30, 8(r1)
/* 80956738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095673C  7C 08 03 A6 */	mtlr r0
/* 80956740  38 21 00 10 */	addi r1, r1, 0x10
/* 80956744  4E 80 00 20 */	blr 
