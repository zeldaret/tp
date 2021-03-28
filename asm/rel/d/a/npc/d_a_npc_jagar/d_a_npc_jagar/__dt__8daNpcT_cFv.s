lbl_80A19028:
/* 80A19028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1902C  7C 08 02 A6 */	mflr r0
/* 80A19030  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A19034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A19038  93 C1 00 08 */	stw r30, 8(r1)
/* 80A1903C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A19040  7C 9F 23 78 */	mr r31, r4
/* 80A19044  41 82 03 50 */	beq lbl_80A19394
/* 80A19048  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80A1904C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80A19050  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A19054  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80A19058  41 82 00 1C */	beq lbl_80A19074
/* 80A1905C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A19060  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A19064  38 84 93 EC */	addi r4, r4, __dt__5csXyzFv@l
/* 80A19068  38 A0 00 06 */	li r5, 6
/* 80A1906C  38 C0 00 02 */	li r6, 2
/* 80A19070  4B 94 8C 78 */	b __destroy_arr
lbl_80A19074:
/* 80A19074  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A19078  41 82 00 B4 */	beq lbl_80A1912C
/* 80A1907C  3C 60 80 A2 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A19080  38 03 AC D8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A19084  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80A19088  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A1908C  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha
/* 80A19090  38 84 93 B0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A19094  38 A0 00 0C */	li r5, 0xc
/* 80A19098  38 C0 00 03 */	li r6, 3
/* 80A1909C  4B 94 8C 4C */	b __destroy_arr
/* 80A190A0  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80A190A4  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha
/* 80A190A8  38 84 93 B0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A190AC  38 A0 00 0C */	li r5, 0xc
/* 80A190B0  38 C0 00 03 */	li r6, 3
/* 80A190B4  4B 94 8C 34 */	b __destroy_arr
/* 80A190B8  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80A190BC  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha
/* 80A190C0  38 84 93 B0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A190C4  38 A0 00 0C */	li r5, 0xc
/* 80A190C8  38 C0 00 03 */	li r6, 3
/* 80A190CC  4B 94 8C 1C */	b __destroy_arr
/* 80A190D0  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80A190D4  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha
/* 80A190D8  38 84 93 B0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A190DC  38 A0 00 0C */	li r5, 0xc
/* 80A190E0  38 C0 00 03 */	li r6, 3
/* 80A190E4  4B 94 8C 04 */	b __destroy_arr
/* 80A190E8  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80A190EC  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha
/* 80A190F0  38 84 93 B0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A190F4  38 A0 00 0C */	li r5, 0xc
/* 80A190F8  38 C0 00 03 */	li r6, 3
/* 80A190FC  4B 94 8B EC */	b __destroy_arr
/* 80A19100  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80A19104  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha
/* 80A19108  38 84 93 B0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A1910C  38 A0 00 0C */	li r5, 0xc
/* 80A19110  38 C0 00 03 */	li r6, 3
/* 80A19114  4B 94 8B D4 */	b __destroy_arr
/* 80A19118  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A1911C  41 82 00 10 */	beq lbl_80A1912C
/* 80A19120  3C 60 80 A2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A19124  38 03 AC CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A19128  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80A1912C:
/* 80A1912C  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80A19130  41 82 00 10 */	beq lbl_80A19140
/* 80A19134  3C 60 80 A2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A19138  38 03 AC CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A1913C  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80A19140:
/* 80A19140  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80A19144  41 82 00 10 */	beq lbl_80A19154
/* 80A19148  3C 60 80 A2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A1914C  38 03 AC CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A19150  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80A19154:
/* 80A19154  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80A19158  41 82 00 10 */	beq lbl_80A19168
/* 80A1915C  3C 60 80 A2 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A19160  38 03 AC C0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A19164  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80A19168:
/* 80A19168  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80A1916C  41 82 00 10 */	beq lbl_80A1917C
/* 80A19170  3C 60 80 A2 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A19174  38 03 AC C0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A19178  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80A1917C:
/* 80A1917C  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80A19180  38 80 FF FF */	li r4, -1
/* 80A19184  4B 65 EB 58 */	b __dt__11dBgS_LinChkFv
/* 80A19188  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80A1918C  38 80 FF FF */	li r4, -1
/* 80A19190  4B 65 E4 60 */	b __dt__11dBgS_GndChkFv
/* 80A19194  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A19198  41 82 00 54 */	beq lbl_80A191EC
/* 80A1919C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A191A0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A191A4  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80A191A8  38 03 00 20 */	addi r0, r3, 0x20
/* 80A191AC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A191B0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A191B4  41 82 00 24 */	beq lbl_80A191D8
/* 80A191B8  3C 60 80 A2 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A191BC  38 03 AC B4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A191C0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A191C4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A191C8  41 82 00 10 */	beq lbl_80A191D8
/* 80A191CC  3C 60 80 A2 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A191D0  38 03 AC A8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A191D4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80A191D8:
/* 80A191D8  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A191DC  41 82 00 10 */	beq lbl_80A191EC
/* 80A191E0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A191E4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A191E8  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80A191EC:
/* 80A191EC  38 7E 09 74 */	addi r3, r30, 0x974
/* 80A191F0  38 80 FF FF */	li r4, -1
/* 80A191F4  4B 83 0D 54 */	b __dt__10dMsgFlow_cFv
/* 80A191F8  38 7E 09 30 */	addi r3, r30, 0x930
/* 80A191FC  38 80 FF FF */	li r4, -1
/* 80A19200  4B 84 EA 94 */	b __dt__11cBgS_GndChkFv
/* 80A19204  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80A19208  41 82 00 28 */	beq lbl_80A19230
/* 80A1920C  3C 60 80 A2 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A19210  38 03 AC 9C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A19214  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80A19218  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80A1921C  38 80 FF FF */	li r4, -1
/* 80A19220  4B 85 5C F8 */	b __dt__8cM3dGCirFv
/* 80A19224  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80A19228  38 80 00 00 */	li r4, 0
/* 80A1922C  4B 84 EE 84 */	b __dt__13cBgS_PolyInfoFv
lbl_80A19230:
/* 80A19230  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A19234  41 82 00 54 */	beq lbl_80A19288
/* 80A19238  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A1923C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A19240  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80A19244  38 03 00 20 */	addi r0, r3, 0x20
/* 80A19248  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A1924C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A19250  41 82 00 24 */	beq lbl_80A19274
/* 80A19254  3C 60 80 A2 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A19258  38 03 AC B4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A1925C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A19260  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A19264  41 82 00 10 */	beq lbl_80A19274
/* 80A19268  3C 60 80 A2 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A1926C  38 03 AC A8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A19270  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80A19274:
/* 80A19274  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A19278  41 82 00 10 */	beq lbl_80A19288
/* 80A1927C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A19280  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A19284  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80A19288:
/* 80A19288  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80A1928C  41 82 00 2C */	beq lbl_80A192B8
/* 80A19290  3C 60 80 A2 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A19294  38 63 AC 78 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A19298  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80A1929C  38 03 00 0C */	addi r0, r3, 0xc
/* 80A192A0  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80A192A4  38 03 00 18 */	addi r0, r3, 0x18
/* 80A192A8  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80A192AC  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A192B0  38 80 00 00 */	li r4, 0
/* 80A192B4  4B 65 CC E0 */	b __dt__9dBgS_AcchFv
lbl_80A192B8:
/* 80A192B8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A192BC  41 82 00 20 */	beq lbl_80A192DC
/* 80A192C0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A192C4  41 82 00 18 */	beq lbl_80A192DC
/* 80A192C8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A192CC  41 82 00 10 */	beq lbl_80A192DC
/* 80A192D0  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A192D4  38 03 AC 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A192D8  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80A192DC:
/* 80A192DC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A192E0  41 82 00 20 */	beq lbl_80A19300
/* 80A192E4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A192E8  41 82 00 18 */	beq lbl_80A19300
/* 80A192EC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A192F0  41 82 00 10 */	beq lbl_80A19300
/* 80A192F4  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A192F8  38 03 AC 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A192FC  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80A19300:
/* 80A19300  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A19304  41 82 00 20 */	beq lbl_80A19324
/* 80A19308  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A1930C  41 82 00 18 */	beq lbl_80A19324
/* 80A19310  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A19314  41 82 00 10 */	beq lbl_80A19324
/* 80A19318  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A1931C  38 03 AC 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A19320  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80A19324:
/* 80A19324  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A19328  41 82 00 20 */	beq lbl_80A19348
/* 80A1932C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A19330  41 82 00 18 */	beq lbl_80A19348
/* 80A19334  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A19338  41 82 00 10 */	beq lbl_80A19348
/* 80A1933C  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A19340  38 03 AC 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A19344  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80A19348:
/* 80A19348  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A1934C  41 82 00 20 */	beq lbl_80A1936C
/* 80A19350  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A19354  41 82 00 18 */	beq lbl_80A1936C
/* 80A19358  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A1935C  41 82 00 10 */	beq lbl_80A1936C
/* 80A19360  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A19364  38 03 AC 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A19368  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80A1936C:
/* 80A1936C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A19370  38 80 FF FF */	li r4, -1
/* 80A19374  4B 8A 70 AC */	b __dt__10Z2CreatureFv
/* 80A19378  7F C3 F3 78 */	mr r3, r30
/* 80A1937C  38 80 00 00 */	li r4, 0
/* 80A19380  4B 5F F9 0C */	b __dt__10fopAc_ac_cFv
/* 80A19384  7F E0 07 35 */	extsh. r0, r31
/* 80A19388  40 81 00 0C */	ble lbl_80A19394
/* 80A1938C  7F C3 F3 78 */	mr r3, r30
/* 80A19390  4B 8B 59 AC */	b __dl__FPv
lbl_80A19394:
/* 80A19394  7F C3 F3 78 */	mr r3, r30
/* 80A19398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1939C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A193A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A193A4  7C 08 03 A6 */	mtlr r0
/* 80A193A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A193AC  4E 80 00 20 */	blr 
