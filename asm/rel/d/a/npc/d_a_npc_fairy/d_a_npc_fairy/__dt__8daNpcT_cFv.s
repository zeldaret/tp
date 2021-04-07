lbl_809B7FD4:
/* 809B7FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B7FD8  7C 08 02 A6 */	mflr r0
/* 809B7FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B7FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B7FE4  93 C1 00 08 */	stw r30, 8(r1)
/* 809B7FE8  7C 7E 1B 79 */	or. r30, r3, r3
/* 809B7FEC  7C 9F 23 78 */	mr r31, r4
/* 809B7FF0  41 82 03 50 */	beq lbl_809B8340
/* 809B7FF4  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 809B7FF8  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 809B7FFC  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 809B8000  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 809B8004  41 82 00 1C */	beq lbl_809B8020
/* 809B8008  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 809B800C  3C 80 80 9C */	lis r4, __dt__5csXyzFv@ha /* 0x809B835C@ha */
/* 809B8010  38 84 83 5C */	addi r4, r4, __dt__5csXyzFv@l /* 0x809B835C@l */
/* 809B8014  38 A0 00 06 */	li r5, 6
/* 809B8018  38 C0 00 02 */	li r6, 2
/* 809B801C  4B 9A 9C CD */	bl __destroy_arr
lbl_809B8020:
/* 809B8020  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 809B8024  41 82 00 B4 */	beq lbl_809B80D8
/* 809B8028  3C 60 80 9C */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x809BA310@ha */
/* 809B802C  38 03 A3 10 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x809BA310@l */
/* 809B8030  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 809B8034  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809B8038  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809B2250@ha */
/* 809B803C  38 84 22 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809B2250@l */
/* 809B8040  38 A0 00 0C */	li r5, 0xc
/* 809B8044  38 C0 00 03 */	li r6, 3
/* 809B8048  4B 9A 9C A1 */	bl __destroy_arr
/* 809B804C  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 809B8050  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809B2250@ha */
/* 809B8054  38 84 22 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809B2250@l */
/* 809B8058  38 A0 00 0C */	li r5, 0xc
/* 809B805C  38 C0 00 03 */	li r6, 3
/* 809B8060  4B 9A 9C 89 */	bl __destroy_arr
/* 809B8064  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 809B8068  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809B2250@ha */
/* 809B806C  38 84 22 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809B2250@l */
/* 809B8070  38 A0 00 0C */	li r5, 0xc
/* 809B8074  38 C0 00 03 */	li r6, 3
/* 809B8078  4B 9A 9C 71 */	bl __destroy_arr
/* 809B807C  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 809B8080  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809B2250@ha */
/* 809B8084  38 84 22 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809B2250@l */
/* 809B8088  38 A0 00 0C */	li r5, 0xc
/* 809B808C  38 C0 00 03 */	li r6, 3
/* 809B8090  4B 9A 9C 59 */	bl __destroy_arr
/* 809B8094  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 809B8098  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809B2250@ha */
/* 809B809C  38 84 22 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809B2250@l */
/* 809B80A0  38 A0 00 0C */	li r5, 0xc
/* 809B80A4  38 C0 00 03 */	li r6, 3
/* 809B80A8  4B 9A 9C 41 */	bl __destroy_arr
/* 809B80AC  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 809B80B0  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809B2250@ha */
/* 809B80B4  38 84 22 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809B2250@l */
/* 809B80B8  38 A0 00 0C */	li r5, 0xc
/* 809B80BC  38 C0 00 03 */	li r6, 3
/* 809B80C0  4B 9A 9C 29 */	bl __destroy_arr
/* 809B80C4  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 809B80C8  41 82 00 10 */	beq lbl_809B80D8
/* 809B80CC  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809BA304@ha */
/* 809B80D0  38 03 A3 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809BA304@l */
/* 809B80D4  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_809B80D8:
/* 809B80D8  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 809B80DC  41 82 00 10 */	beq lbl_809B80EC
/* 809B80E0  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809BA304@ha */
/* 809B80E4  38 03 A3 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809BA304@l */
/* 809B80E8  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_809B80EC:
/* 809B80EC  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 809B80F0  41 82 00 10 */	beq lbl_809B8100
/* 809B80F4  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809BA304@ha */
/* 809B80F8  38 03 A3 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809BA304@l */
/* 809B80FC  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_809B8100:
/* 809B8100  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 809B8104  41 82 00 10 */	beq lbl_809B8114
/* 809B8108  3C 60 80 9C */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x809BA2F8@ha */
/* 809B810C  38 03 A2 F8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x809BA2F8@l */
/* 809B8110  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_809B8114:
/* 809B8114  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 809B8118  41 82 00 10 */	beq lbl_809B8128
/* 809B811C  3C 60 80 9C */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x809BA2F8@ha */
/* 809B8120  38 03 A2 F8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x809BA2F8@l */
/* 809B8124  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_809B8128:
/* 809B8128  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 809B812C  38 80 FF FF */	li r4, -1
/* 809B8130  4B 6B FB AD */	bl __dt__11dBgS_LinChkFv
/* 809B8134  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 809B8138  38 80 FF FF */	li r4, -1
/* 809B813C  4B 6B F4 B5 */	bl __dt__11dBgS_GndChkFv
/* 809B8140  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 809B8144  41 82 00 54 */	beq lbl_809B8198
/* 809B8148  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809B814C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809B8150  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 809B8154  38 03 00 20 */	addi r0, r3, 0x20
/* 809B8158  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809B815C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 809B8160  41 82 00 24 */	beq lbl_809B8184
/* 809B8164  3C 60 80 9C */	lis r3, __vt__10dCcD_GStts@ha /* 0x809BA2EC@ha */
/* 809B8168  38 03 A2 EC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809BA2EC@l */
/* 809B816C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809B8170  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 809B8174  41 82 00 10 */	beq lbl_809B8184
/* 809B8178  3C 60 80 9C */	lis r3, __vt__10cCcD_GStts@ha /* 0x809BA2E0@ha */
/* 809B817C  38 03 A2 E0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809BA2E0@l */
/* 809B8180  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_809B8184:
/* 809B8184  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 809B8188  41 82 00 10 */	beq lbl_809B8198
/* 809B818C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809B8190  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809B8194  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_809B8198:
/* 809B8198  38 7E 09 74 */	addi r3, r30, 0x974
/* 809B819C  38 80 FF FF */	li r4, -1
/* 809B81A0  4B 89 1D A9 */	bl __dt__10dMsgFlow_cFv
/* 809B81A4  38 7E 09 30 */	addi r3, r30, 0x930
/* 809B81A8  38 80 FF FF */	li r4, -1
/* 809B81AC  4B 8A FA E9 */	bl __dt__11cBgS_GndChkFv
/* 809B81B0  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 809B81B4  41 82 00 28 */	beq lbl_809B81DC
/* 809B81B8  3C 60 80 9C */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809BA2D4@ha */
/* 809B81BC  38 03 A2 D4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809BA2D4@l */
/* 809B81C0  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 809B81C4  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 809B81C8  38 80 FF FF */	li r4, -1
/* 809B81CC  4B 8B 6D 4D */	bl __dt__8cM3dGCirFv
/* 809B81D0  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 809B81D4  38 80 00 00 */	li r4, 0
/* 809B81D8  4B 8A FE D9 */	bl __dt__13cBgS_PolyInfoFv
lbl_809B81DC:
/* 809B81DC  34 1E 08 64 */	addic. r0, r30, 0x864
/* 809B81E0  41 82 00 54 */	beq lbl_809B8234
/* 809B81E4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809B81E8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809B81EC  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 809B81F0  38 03 00 20 */	addi r0, r3, 0x20
/* 809B81F4  90 1E 08 80 */	stw r0, 0x880(r30)
/* 809B81F8  34 1E 08 80 */	addic. r0, r30, 0x880
/* 809B81FC  41 82 00 24 */	beq lbl_809B8220
/* 809B8200  3C 60 80 9C */	lis r3, __vt__10dCcD_GStts@ha /* 0x809BA2EC@ha */
/* 809B8204  38 03 A2 EC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809BA2EC@l */
/* 809B8208  90 1E 08 80 */	stw r0, 0x880(r30)
/* 809B820C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 809B8210  41 82 00 10 */	beq lbl_809B8220
/* 809B8214  3C 60 80 9C */	lis r3, __vt__10cCcD_GStts@ha /* 0x809BA2E0@ha */
/* 809B8218  38 03 A2 E0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809BA2E0@l */
/* 809B821C  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_809B8220:
/* 809B8220  34 1E 08 64 */	addic. r0, r30, 0x864
/* 809B8224  41 82 00 10 */	beq lbl_809B8234
/* 809B8228  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809B822C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809B8230  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_809B8234:
/* 809B8234  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 809B8238  41 82 00 2C */	beq lbl_809B8264
/* 809B823C  3C 60 80 9C */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809BA2B0@ha */
/* 809B8240  38 63 A2 B0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809BA2B0@l */
/* 809B8244  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 809B8248  38 03 00 0C */	addi r0, r3, 0xc
/* 809B824C  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 809B8250  38 03 00 18 */	addi r0, r3, 0x18
/* 809B8254  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 809B8258  38 7E 06 8C */	addi r3, r30, 0x68c
/* 809B825C  38 80 00 00 */	li r4, 0
/* 809B8260  4B 6B DD 35 */	bl __dt__9dBgS_AcchFv
lbl_809B8264:
/* 809B8264  34 1E 06 74 */	addic. r0, r30, 0x674
/* 809B8268  41 82 00 20 */	beq lbl_809B8288
/* 809B826C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 809B8270  41 82 00 18 */	beq lbl_809B8288
/* 809B8274  34 1E 06 74 */	addic. r0, r30, 0x674
/* 809B8278  41 82 00 10 */	beq lbl_809B8288
/* 809B827C  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BA334@ha */
/* 809B8280  38 03 A3 34 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BA334@l */
/* 809B8284  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_809B8288:
/* 809B8288  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 809B828C  41 82 00 20 */	beq lbl_809B82AC
/* 809B8290  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 809B8294  41 82 00 18 */	beq lbl_809B82AC
/* 809B8298  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 809B829C  41 82 00 10 */	beq lbl_809B82AC
/* 809B82A0  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BA334@ha */
/* 809B82A4  38 03 A3 34 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BA334@l */
/* 809B82A8  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_809B82AC:
/* 809B82AC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809B82B0  41 82 00 20 */	beq lbl_809B82D0
/* 809B82B4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809B82B8  41 82 00 18 */	beq lbl_809B82D0
/* 809B82BC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809B82C0  41 82 00 10 */	beq lbl_809B82D0
/* 809B82C4  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BA334@ha */
/* 809B82C8  38 03 A3 34 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BA334@l */
/* 809B82CC  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_809B82D0:
/* 809B82D0  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809B82D4  41 82 00 20 */	beq lbl_809B82F4
/* 809B82D8  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809B82DC  41 82 00 18 */	beq lbl_809B82F4
/* 809B82E0  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809B82E4  41 82 00 10 */	beq lbl_809B82F4
/* 809B82E8  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BA334@ha */
/* 809B82EC  38 03 A3 34 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BA334@l */
/* 809B82F0  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_809B82F4:
/* 809B82F4  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809B82F8  41 82 00 20 */	beq lbl_809B8318
/* 809B82FC  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809B8300  41 82 00 18 */	beq lbl_809B8318
/* 809B8304  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809B8308  41 82 00 10 */	beq lbl_809B8318
/* 809B830C  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BA334@ha */
/* 809B8310  38 03 A3 34 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BA334@l */
/* 809B8314  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_809B8318:
/* 809B8318  38 7E 05 80 */	addi r3, r30, 0x580
/* 809B831C  38 80 FF FF */	li r4, -1
/* 809B8320  4B 90 81 01 */	bl __dt__10Z2CreatureFv
/* 809B8324  7F C3 F3 78 */	mr r3, r30
/* 809B8328  38 80 00 00 */	li r4, 0
/* 809B832C  4B 66 09 61 */	bl __dt__10fopAc_ac_cFv
/* 809B8330  7F E0 07 35 */	extsh. r0, r31
/* 809B8334  40 81 00 0C */	ble lbl_809B8340
/* 809B8338  7F C3 F3 78 */	mr r3, r30
/* 809B833C  4B 91 6A 01 */	bl __dl__FPv
lbl_809B8340:
/* 809B8340  7F C3 F3 78 */	mr r3, r30
/* 809B8344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B8348  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B834C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B8350  7C 08 03 A6 */	mtlr r0
/* 809B8354  38 21 00 10 */	addi r1, r1, 0x10
/* 809B8358  4E 80 00 20 */	blr 
