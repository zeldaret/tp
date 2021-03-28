lbl_80AD6F2C:
/* 80AD6F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD6F30  7C 08 02 A6 */	mflr r0
/* 80AD6F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD6F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD6F3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD6F40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AD6F44  7C 9F 23 78 */	mr r31, r4
/* 80AD6F48  41 82 03 50 */	beq lbl_80AD7298
/* 80AD6F4C  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80AD6F50  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80AD6F54  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AD6F58  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80AD6F5C  41 82 00 1C */	beq lbl_80AD6F78
/* 80AD6F60  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AD6F64  3C 80 80 AD */	lis r4, __dt__5csXyzFv@ha
/* 80AD6F68  38 84 72 F0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AD6F6C  38 A0 00 06 */	li r5, 6
/* 80AD6F70  38 C0 00 02 */	li r6, 2
/* 80AD6F74  4B 88 AD 74 */	b __destroy_arr
lbl_80AD6F78:
/* 80AD6F78  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AD6F7C  41 82 00 B4 */	beq lbl_80AD7030
/* 80AD6F80  3C 60 80 AE */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80AD6F84  38 03 80 10 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80AD6F88  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80AD6F8C  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80AD6F90  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80AD6F94  38 84 72 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AD6F98  38 A0 00 0C */	li r5, 0xc
/* 80AD6F9C  38 C0 00 03 */	li r6, 3
/* 80AD6FA0  4B 88 AD 48 */	b __destroy_arr
/* 80AD6FA4  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80AD6FA8  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80AD6FAC  38 84 72 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AD6FB0  38 A0 00 0C */	li r5, 0xc
/* 80AD6FB4  38 C0 00 03 */	li r6, 3
/* 80AD6FB8  4B 88 AD 30 */	b __destroy_arr
/* 80AD6FBC  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80AD6FC0  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80AD6FC4  38 84 72 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AD6FC8  38 A0 00 0C */	li r5, 0xc
/* 80AD6FCC  38 C0 00 03 */	li r6, 3
/* 80AD6FD0  4B 88 AD 18 */	b __destroy_arr
/* 80AD6FD4  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80AD6FD8  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80AD6FDC  38 84 72 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AD6FE0  38 A0 00 0C */	li r5, 0xc
/* 80AD6FE4  38 C0 00 03 */	li r6, 3
/* 80AD6FE8  4B 88 AD 00 */	b __destroy_arr
/* 80AD6FEC  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80AD6FF0  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80AD6FF4  38 84 72 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AD6FF8  38 A0 00 0C */	li r5, 0xc
/* 80AD6FFC  38 C0 00 03 */	li r6, 3
/* 80AD7000  4B 88 AC E8 */	b __destroy_arr
/* 80AD7004  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80AD7008  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80AD700C  38 84 72 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AD7010  38 A0 00 0C */	li r5, 0xc
/* 80AD7014  38 C0 00 03 */	li r6, 3
/* 80AD7018  4B 88 AC D0 */	b __destroy_arr
/* 80AD701C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AD7020  41 82 00 10 */	beq lbl_80AD7030
/* 80AD7024  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AD7028  38 03 80 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AD702C  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80AD7030:
/* 80AD7030  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80AD7034  41 82 00 10 */	beq lbl_80AD7044
/* 80AD7038  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AD703C  38 03 80 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AD7040  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80AD7044:
/* 80AD7044  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80AD7048  41 82 00 10 */	beq lbl_80AD7058
/* 80AD704C  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AD7050  38 03 80 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AD7054  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80AD7058:
/* 80AD7058  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80AD705C  41 82 00 10 */	beq lbl_80AD706C
/* 80AD7060  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AD7064  38 03 7F F8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AD7068  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80AD706C:
/* 80AD706C  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80AD7070  41 82 00 10 */	beq lbl_80AD7080
/* 80AD7074  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AD7078  38 03 7F F8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AD707C  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80AD7080:
/* 80AD7080  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80AD7084  38 80 FF FF */	li r4, -1
/* 80AD7088  4B 5A 0C 54 */	b __dt__11dBgS_LinChkFv
/* 80AD708C  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80AD7090  38 80 FF FF */	li r4, -1
/* 80AD7094  4B 5A 05 5C */	b __dt__11dBgS_GndChkFv
/* 80AD7098  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AD709C  41 82 00 54 */	beq lbl_80AD70F0
/* 80AD70A0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AD70A4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AD70A8  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80AD70AC  38 03 00 20 */	addi r0, r3, 0x20
/* 80AD70B0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AD70B4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AD70B8  41 82 00 24 */	beq lbl_80AD70DC
/* 80AD70BC  3C 60 80 AD */	lis r3, __vt__10dCcD_GStts@ha
/* 80AD70C0  38 03 7F EC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AD70C4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AD70C8  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AD70CC  41 82 00 10 */	beq lbl_80AD70DC
/* 80AD70D0  3C 60 80 AD */	lis r3, __vt__10cCcD_GStts@ha
/* 80AD70D4  38 03 7F E0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AD70D8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80AD70DC:
/* 80AD70DC  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AD70E0  41 82 00 10 */	beq lbl_80AD70F0
/* 80AD70E4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AD70E8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AD70EC  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80AD70F0:
/* 80AD70F0  38 7E 09 74 */	addi r3, r30, 0x974
/* 80AD70F4  38 80 FF FF */	li r4, -1
/* 80AD70F8  4B 77 2E 50 */	b __dt__10dMsgFlow_cFv
/* 80AD70FC  38 7E 09 30 */	addi r3, r30, 0x930
/* 80AD7100  38 80 FF FF */	li r4, -1
/* 80AD7104  4B 79 0B 90 */	b __dt__11cBgS_GndChkFv
/* 80AD7108  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80AD710C  41 82 00 28 */	beq lbl_80AD7134
/* 80AD7110  3C 60 80 AD */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AD7114  38 03 7F D4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AD7118  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80AD711C  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80AD7120  38 80 FF FF */	li r4, -1
/* 80AD7124  4B 79 7D F4 */	b __dt__8cM3dGCirFv
/* 80AD7128  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AD712C  38 80 00 00 */	li r4, 0
/* 80AD7130  4B 79 0F 80 */	b __dt__13cBgS_PolyInfoFv
lbl_80AD7134:
/* 80AD7134  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AD7138  41 82 00 54 */	beq lbl_80AD718C
/* 80AD713C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AD7140  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AD7144  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80AD7148  38 03 00 20 */	addi r0, r3, 0x20
/* 80AD714C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AD7150  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AD7154  41 82 00 24 */	beq lbl_80AD7178
/* 80AD7158  3C 60 80 AD */	lis r3, __vt__10dCcD_GStts@ha
/* 80AD715C  38 03 7F EC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AD7160  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AD7164  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AD7168  41 82 00 10 */	beq lbl_80AD7178
/* 80AD716C  3C 60 80 AD */	lis r3, __vt__10cCcD_GStts@ha
/* 80AD7170  38 03 7F E0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AD7174  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80AD7178:
/* 80AD7178  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AD717C  41 82 00 10 */	beq lbl_80AD718C
/* 80AD7180  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AD7184  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AD7188  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80AD718C:
/* 80AD718C  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80AD7190  41 82 00 2C */	beq lbl_80AD71BC
/* 80AD7194  3C 60 80 AD */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AD7198  38 63 7F B0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AD719C  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80AD71A0  38 03 00 0C */	addi r0, r3, 0xc
/* 80AD71A4  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80AD71A8  38 03 00 18 */	addi r0, r3, 0x18
/* 80AD71AC  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80AD71B0  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AD71B4  38 80 00 00 */	li r4, 0
/* 80AD71B8  4B 59 ED DC */	b __dt__9dBgS_AcchFv
lbl_80AD71BC:
/* 80AD71BC  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AD71C0  41 82 00 20 */	beq lbl_80AD71E0
/* 80AD71C4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AD71C8  41 82 00 18 */	beq lbl_80AD71E0
/* 80AD71CC  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AD71D0  41 82 00 10 */	beq lbl_80AD71E0
/* 80AD71D4  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AD71D8  38 03 7F A4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AD71DC  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80AD71E0:
/* 80AD71E0  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AD71E4  41 82 00 20 */	beq lbl_80AD7204
/* 80AD71E8  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AD71EC  41 82 00 18 */	beq lbl_80AD7204
/* 80AD71F0  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AD71F4  41 82 00 10 */	beq lbl_80AD7204
/* 80AD71F8  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AD71FC  38 03 7F A4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AD7200  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80AD7204:
/* 80AD7204  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AD7208  41 82 00 20 */	beq lbl_80AD7228
/* 80AD720C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AD7210  41 82 00 18 */	beq lbl_80AD7228
/* 80AD7214  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AD7218  41 82 00 10 */	beq lbl_80AD7228
/* 80AD721C  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AD7220  38 03 7F A4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AD7224  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80AD7228:
/* 80AD7228  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AD722C  41 82 00 20 */	beq lbl_80AD724C
/* 80AD7230  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AD7234  41 82 00 18 */	beq lbl_80AD724C
/* 80AD7238  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AD723C  41 82 00 10 */	beq lbl_80AD724C
/* 80AD7240  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AD7244  38 03 7F A4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AD7248  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80AD724C:
/* 80AD724C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AD7250  41 82 00 20 */	beq lbl_80AD7270
/* 80AD7254  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AD7258  41 82 00 18 */	beq lbl_80AD7270
/* 80AD725C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AD7260  41 82 00 10 */	beq lbl_80AD7270
/* 80AD7264  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AD7268  38 03 7F A4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AD726C  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80AD7270:
/* 80AD7270  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AD7274  38 80 FF FF */	li r4, -1
/* 80AD7278  4B 7E 91 A8 */	b __dt__10Z2CreatureFv
/* 80AD727C  7F C3 F3 78 */	mr r3, r30
/* 80AD7280  38 80 00 00 */	li r4, 0
/* 80AD7284  4B 54 1A 08 */	b __dt__10fopAc_ac_cFv
/* 80AD7288  7F E0 07 35 */	extsh. r0, r31
/* 80AD728C  40 81 00 0C */	ble lbl_80AD7298
/* 80AD7290  7F C3 F3 78 */	mr r3, r30
/* 80AD7294  4B 7F 7A A8 */	b __dl__FPv
lbl_80AD7298:
/* 80AD7298  7F C3 F3 78 */	mr r3, r30
/* 80AD729C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD72A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD72A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD72A8  7C 08 03 A6 */	mtlr r0
/* 80AD72AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD72B0  4E 80 00 20 */	blr 
