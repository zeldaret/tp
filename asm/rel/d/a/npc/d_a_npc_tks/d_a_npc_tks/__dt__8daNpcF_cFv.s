lbl_80B1D6DC:
/* 80B1D6DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1D6E0  7C 08 02 A6 */	mflr r0
/* 80B1D6E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1D6E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1D6EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B1D6F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B1D6F4  7C 9F 23 78 */	mr r31, r4
/* 80B1D6F8  41 82 02 14 */	beq lbl_80B1D90C
/* 80B1D6FC  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80B1D700  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80B1D704  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80B1D708  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80B1D70C  38 80 FF FF */	li r4, -1
/* 80B1D710  4B 55 A5 CD */	bl __dt__11dBgS_LinChkFv
/* 80B1D714  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80B1D718  38 80 FF FF */	li r4, -1
/* 80B1D71C  4B 55 9E D5 */	bl __dt__11dBgS_GndChkFv
/* 80B1D720  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80B1D724  38 80 FF FF */	li r4, -1
/* 80B1D728  4B 74 A5 6D */	bl __dt__11cBgS_GndChkFv
/* 80B1D72C  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80B1D730  38 80 FF FF */	li r4, -1
/* 80B1D734  4B 72 C8 15 */	bl __dt__10dMsgFlow_cFv
/* 80B1D738  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80B1D73C  3C 80 80 B2 */	lis r4, __dt__5csXyzFv@ha /* 0x80B1D59C@ha */
/* 80B1D740  38 84 D5 9C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B1D59C@l */
/* 80B1D744  38 A0 00 06 */	li r5, 6
/* 80B1D748  38 C0 00 03 */	li r6, 3
/* 80B1D74C  4B 84 45 9D */	bl __destroy_arr
/* 80B1D750  38 7E 09 08 */	addi r3, r30, 0x908
/* 80B1D754  3C 80 80 B2 */	lis r4, __dt__5csXyzFv@ha /* 0x80B1D59C@ha */
/* 80B1D758  38 84 D5 9C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B1D59C@l */
/* 80B1D75C  38 A0 00 06 */	li r5, 6
/* 80B1D760  38 C0 00 03 */	li r6, 3
/* 80B1D764  4B 84 45 85 */	bl __destroy_arr
/* 80B1D768  38 7E 08 54 */	addi r3, r30, 0x854
/* 80B1D76C  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha /* 0x80B1D668@ha */
/* 80B1D770  38 84 D6 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B1D668@l */
/* 80B1D774  38 A0 00 0C */	li r5, 0xc
/* 80B1D778  38 C0 00 03 */	li r6, 3
/* 80B1D77C  4B 84 45 6D */	bl __destroy_arr
/* 80B1D780  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80B1D784  3C 80 80 B2 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B1D440@ha */
/* 80B1D788  38 84 D4 40 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B1D440@l */
/* 80B1D78C  38 A0 00 08 */	li r5, 8
/* 80B1D790  38 C0 00 05 */	li r6, 5
/* 80B1D794  4B 84 45 55 */	bl __destroy_arr
/* 80B1D798  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80B1D79C  41 82 00 10 */	beq lbl_80B1D7AC
/* 80B1D7A0  3C 60 80 B2 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B1E500@ha */
/* 80B1D7A4  38 03 E5 00 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80B1E500@l */
/* 80B1D7A8  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80B1D7AC:
/* 80B1D7AC  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80B1D7B0  41 82 00 28 */	beq lbl_80B1D7D8
/* 80B1D7B4  3C 60 80 B2 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B1E4F4@ha */
/* 80B1D7B8  38 03 E4 F4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B1E4F4@l */
/* 80B1D7BC  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80B1D7C0  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80B1D7C4  38 80 FF FF */	li r4, -1
/* 80B1D7C8  4B 75 17 51 */	bl __dt__8cM3dGCirFv
/* 80B1D7CC  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80B1D7D0  38 80 00 00 */	li r4, 0
/* 80B1D7D4  4B 74 A8 DD */	bl __dt__13cBgS_PolyInfoFv
lbl_80B1D7D8:
/* 80B1D7D8  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80B1D7DC  41 82 00 54 */	beq lbl_80B1D830
/* 80B1D7E0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B1D7E4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B1D7E8  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80B1D7EC  38 03 00 20 */	addi r0, r3, 0x20
/* 80B1D7F0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80B1D7F4  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80B1D7F8  41 82 00 24 */	beq lbl_80B1D81C
/* 80B1D7FC  3C 60 80 B2 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B1E4E8@ha */
/* 80B1D800  38 03 E4 E8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B1E4E8@l */
/* 80B1D804  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80B1D808  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80B1D80C  41 82 00 10 */	beq lbl_80B1D81C
/* 80B1D810  3C 60 80 B2 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B1E4DC@ha */
/* 80B1D814  38 03 E4 DC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B1E4DC@l */
/* 80B1D818  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80B1D81C:
/* 80B1D81C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80B1D820  41 82 00 10 */	beq lbl_80B1D830
/* 80B1D824  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B1D828  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B1D82C  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80B1D830:
/* 80B1D830  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80B1D834  41 82 00 2C */	beq lbl_80B1D860
/* 80B1D838  3C 60 80 B2 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B1E4B8@ha */
/* 80B1D83C  38 63 E4 B8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B1E4B8@l */
/* 80B1D840  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80B1D844  38 03 00 0C */	addi r0, r3, 0xc
/* 80B1D848  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80B1D84C  38 03 00 18 */	addi r0, r3, 0x18
/* 80B1D850  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80B1D854  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80B1D858  38 80 00 00 */	li r4, 0
/* 80B1D85C  4B 55 87 39 */	bl __dt__9dBgS_AcchFv
lbl_80B1D860:
/* 80B1D860  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B1D864  41 82 00 20 */	beq lbl_80B1D884
/* 80B1D868  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B1D86C  41 82 00 18 */	beq lbl_80B1D884
/* 80B1D870  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B1D874  41 82 00 10 */	beq lbl_80B1D884
/* 80B1D878  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B1E4AC@ha */
/* 80B1D87C  38 03 E4 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B1E4AC@l */
/* 80B1D880  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80B1D884:
/* 80B1D884  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B1D888  41 82 00 20 */	beq lbl_80B1D8A8
/* 80B1D88C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B1D890  41 82 00 18 */	beq lbl_80B1D8A8
/* 80B1D894  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B1D898  41 82 00 10 */	beq lbl_80B1D8A8
/* 80B1D89C  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B1E4AC@ha */
/* 80B1D8A0  38 03 E4 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B1E4AC@l */
/* 80B1D8A4  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80B1D8A8:
/* 80B1D8A8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B1D8AC  41 82 00 20 */	beq lbl_80B1D8CC
/* 80B1D8B0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B1D8B4  41 82 00 18 */	beq lbl_80B1D8CC
/* 80B1D8B8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B1D8BC  41 82 00 10 */	beq lbl_80B1D8CC
/* 80B1D8C0  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B1E4AC@ha */
/* 80B1D8C4  38 03 E4 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B1E4AC@l */
/* 80B1D8C8  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80B1D8CC:
/* 80B1D8CC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B1D8D0  41 82 00 20 */	beq lbl_80B1D8F0
/* 80B1D8D4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B1D8D8  41 82 00 18 */	beq lbl_80B1D8F0
/* 80B1D8DC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B1D8E0  41 82 00 10 */	beq lbl_80B1D8F0
/* 80B1D8E4  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B1E4AC@ha */
/* 80B1D8E8  38 03 E4 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B1E4AC@l */
/* 80B1D8EC  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80B1D8F0:
/* 80B1D8F0  7F C3 F3 78 */	mr r3, r30
/* 80B1D8F4  38 80 00 00 */	li r4, 0
/* 80B1D8F8  4B 4F B3 95 */	bl __dt__10fopAc_ac_cFv
/* 80B1D8FC  7F E0 07 35 */	extsh. r0, r31
/* 80B1D900  40 81 00 0C */	ble lbl_80B1D90C
/* 80B1D904  7F C3 F3 78 */	mr r3, r30
/* 80B1D908  4B 7B 14 35 */	bl __dl__FPv
lbl_80B1D90C:
/* 80B1D90C  7F C3 F3 78 */	mr r3, r30
/* 80B1D910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1D914  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B1D918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1D91C  7C 08 03 A6 */	mtlr r0
/* 80B1D920  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1D924  4E 80 00 20 */	blr 
