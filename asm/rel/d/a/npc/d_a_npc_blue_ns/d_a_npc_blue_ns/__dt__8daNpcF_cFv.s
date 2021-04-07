lbl_8096C164:
/* 8096C164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096C168  7C 08 02 A6 */	mflr r0
/* 8096C16C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096C170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096C174  93 C1 00 08 */	stw r30, 8(r1)
/* 8096C178  7C 7E 1B 79 */	or. r30, r3, r3
/* 8096C17C  7C 9F 23 78 */	mr r31, r4
/* 8096C180  41 82 02 14 */	beq lbl_8096C394
/* 8096C184  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 8096C188  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 8096C18C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 8096C190  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 8096C194  38 80 FF FF */	li r4, -1
/* 8096C198  4B 70 BB 45 */	bl __dt__11dBgS_LinChkFv
/* 8096C19C  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 8096C1A0  38 80 FF FF */	li r4, -1
/* 8096C1A4  4B 70 B4 4D */	bl __dt__11dBgS_GndChkFv
/* 8096C1A8  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 8096C1AC  38 80 FF FF */	li r4, -1
/* 8096C1B0  4B 8F BA E5 */	bl __dt__11cBgS_GndChkFv
/* 8096C1B4  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 8096C1B8  38 80 FF FF */	li r4, -1
/* 8096C1BC  4B 8D DD 8D */	bl __dt__10dMsgFlow_cFv
/* 8096C1C0  38 7E 09 1A */	addi r3, r30, 0x91a
/* 8096C1C4  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x8096C0E4@ha */
/* 8096C1C8  38 84 C0 E4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8096C0E4@l */
/* 8096C1CC  38 A0 00 06 */	li r5, 6
/* 8096C1D0  38 C0 00 03 */	li r6, 3
/* 8096C1D4  4B 9F 5B 15 */	bl __destroy_arr
/* 8096C1D8  38 7E 09 08 */	addi r3, r30, 0x908
/* 8096C1DC  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x8096C0E4@ha */
/* 8096C1E0  38 84 C0 E4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8096C0E4@l */
/* 8096C1E4  38 A0 00 06 */	li r5, 6
/* 8096C1E8  38 C0 00 03 */	li r6, 3
/* 8096C1EC  4B 9F 5A FD */	bl __destroy_arr
/* 8096C1F0  38 7E 08 54 */	addi r3, r30, 0x854
/* 8096C1F4  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha /* 0x8096C124@ha */
/* 8096C1F8  38 84 C1 24 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8096C124@l */
/* 8096C1FC  38 A0 00 0C */	li r5, 0xc
/* 8096C200  38 C0 00 03 */	li r6, 3
/* 8096C204  4B 9F 5A E5 */	bl __destroy_arr
/* 8096C208  38 7E 08 2C */	addi r3, r30, 0x82c
/* 8096C20C  3C 80 80 97 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x8096BF90@ha */
/* 8096C210  38 84 BF 90 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x8096BF90@l */
/* 8096C214  38 A0 00 08 */	li r5, 8
/* 8096C218  38 C0 00 05 */	li r6, 5
/* 8096C21C  4B 9F 5A CD */	bl __destroy_arr
/* 8096C220  34 1E 08 24 */	addic. r0, r30, 0x824
/* 8096C224  41 82 00 10 */	beq lbl_8096C234
/* 8096C228  3C 60 80 97 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x8096CE44@ha */
/* 8096C22C  38 03 CE 44 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x8096CE44@l */
/* 8096C230  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_8096C234:
/* 8096C234  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 8096C238  41 82 00 28 */	beq lbl_8096C260
/* 8096C23C  3C 60 80 97 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8096CE38@ha */
/* 8096C240  38 03 CE 38 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8096CE38@l */
/* 8096C244  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 8096C248  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 8096C24C  38 80 FF FF */	li r4, -1
/* 8096C250  4B 90 2C C9 */	bl __dt__8cM3dGCirFv
/* 8096C254  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 8096C258  38 80 00 00 */	li r4, 0
/* 8096C25C  4B 8F BE 55 */	bl __dt__13cBgS_PolyInfoFv
lbl_8096C260:
/* 8096C260  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 8096C264  41 82 00 54 */	beq lbl_8096C2B8
/* 8096C268  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8096C26C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8096C270  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 8096C274  38 03 00 20 */	addi r0, r3, 0x20
/* 8096C278  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 8096C27C  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 8096C280  41 82 00 24 */	beq lbl_8096C2A4
/* 8096C284  3C 60 80 97 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8096CE2C@ha */
/* 8096C288  38 03 CE 2C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8096CE2C@l */
/* 8096C28C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 8096C290  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 8096C294  41 82 00 10 */	beq lbl_8096C2A4
/* 8096C298  3C 60 80 97 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8096CE20@ha */
/* 8096C29C  38 03 CE 20 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8096CE20@l */
/* 8096C2A0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_8096C2A4:
/* 8096C2A4  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 8096C2A8  41 82 00 10 */	beq lbl_8096C2B8
/* 8096C2AC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8096C2B0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8096C2B4  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_8096C2B8:
/* 8096C2B8  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 8096C2BC  41 82 00 2C */	beq lbl_8096C2E8
/* 8096C2C0  3C 60 80 97 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8096CDFC@ha */
/* 8096C2C4  38 63 CD FC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8096CDFC@l */
/* 8096C2C8  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 8096C2CC  38 03 00 0C */	addi r0, r3, 0xc
/* 8096C2D0  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 8096C2D4  38 03 00 18 */	addi r0, r3, 0x18
/* 8096C2D8  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 8096C2DC  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8096C2E0  38 80 00 00 */	li r4, 0
/* 8096C2E4  4B 70 9C B1 */	bl __dt__9dBgS_AcchFv
lbl_8096C2E8:
/* 8096C2E8  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 8096C2EC  41 82 00 20 */	beq lbl_8096C30C
/* 8096C2F0  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 8096C2F4  41 82 00 18 */	beq lbl_8096C30C
/* 8096C2F8  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 8096C2FC  41 82 00 10 */	beq lbl_8096C30C
/* 8096C300  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8096CDF0@ha */
/* 8096C304  38 03 CD F0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8096CDF0@l */
/* 8096C308  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_8096C30C:
/* 8096C30C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 8096C310  41 82 00 20 */	beq lbl_8096C330
/* 8096C314  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 8096C318  41 82 00 18 */	beq lbl_8096C330
/* 8096C31C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 8096C320  41 82 00 10 */	beq lbl_8096C330
/* 8096C324  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8096CDF0@ha */
/* 8096C328  38 03 CD F0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8096CDF0@l */
/* 8096C32C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_8096C330:
/* 8096C330  34 1E 05 88 */	addic. r0, r30, 0x588
/* 8096C334  41 82 00 20 */	beq lbl_8096C354
/* 8096C338  34 1E 05 88 */	addic. r0, r30, 0x588
/* 8096C33C  41 82 00 18 */	beq lbl_8096C354
/* 8096C340  34 1E 05 88 */	addic. r0, r30, 0x588
/* 8096C344  41 82 00 10 */	beq lbl_8096C354
/* 8096C348  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8096CDF0@ha */
/* 8096C34C  38 03 CD F0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8096CDF0@l */
/* 8096C350  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_8096C354:
/* 8096C354  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 8096C358  41 82 00 20 */	beq lbl_8096C378
/* 8096C35C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 8096C360  41 82 00 18 */	beq lbl_8096C378
/* 8096C364  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 8096C368  41 82 00 10 */	beq lbl_8096C378
/* 8096C36C  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8096CDF0@ha */
/* 8096C370  38 03 CD F0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8096CDF0@l */
/* 8096C374  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_8096C378:
/* 8096C378  7F C3 F3 78 */	mr r3, r30
/* 8096C37C  38 80 00 00 */	li r4, 0
/* 8096C380  4B 6A C9 0D */	bl __dt__10fopAc_ac_cFv
/* 8096C384  7F E0 07 35 */	extsh. r0, r31
/* 8096C388  40 81 00 0C */	ble lbl_8096C394
/* 8096C38C  7F C3 F3 78 */	mr r3, r30
/* 8096C390  4B 96 29 AD */	bl __dl__FPv
lbl_8096C394:
/* 8096C394  7F C3 F3 78 */	mr r3, r30
/* 8096C398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096C39C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8096C3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096C3A4  7C 08 03 A6 */	mtlr r0
/* 8096C3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8096C3AC  4E 80 00 20 */	blr 
