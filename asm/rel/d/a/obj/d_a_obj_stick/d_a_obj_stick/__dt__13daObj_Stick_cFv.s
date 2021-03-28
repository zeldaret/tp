lbl_8059922C:
/* 8059922C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599230  7C 08 02 A6 */	mflr r0
/* 80599234  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599238  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059923C  93 C1 00 08 */	stw r30, 8(r1)
/* 80599240  7C 7E 1B 79 */	or. r30, r3, r3
/* 80599244  7C 9F 23 78 */	mr r31, r4
/* 80599248  41 82 01 84 */	beq lbl_805993CC
/* 8059924C  3C 80 80 5A */	lis r4, __vt__13daObj_Stick_c@ha
/* 80599250  38 04 9F 64 */	addi r0, r4, __vt__13daObj_Stick_c@l
/* 80599254  90 1E 09 4C */	stw r0, 0x94c(r30)
/* 80599258  48 00 09 05 */	bl getResName__13daObj_Stick_cFv
/* 8059925C  7C 64 1B 78 */	mr r4, r3
/* 80599260  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80599264  4B A9 3D A4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80599268  34 1E 08 08 */	addic. r0, r30, 0x808
/* 8059926C  41 82 00 84 */	beq lbl_805992F0
/* 80599270  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80599274  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80599278  90 7E 08 44 */	stw r3, 0x844(r30)
/* 8059927C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80599280  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80599284  38 03 00 84 */	addi r0, r3, 0x84
/* 80599288  90 1E 09 3C */	stw r0, 0x93c(r30)
/* 8059928C  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80599290  41 82 00 54 */	beq lbl_805992E4
/* 80599294  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80599298  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8059929C  90 7E 09 28 */	stw r3, 0x928(r30)
/* 805992A0  38 03 00 58 */	addi r0, r3, 0x58
/* 805992A4  90 1E 09 3C */	stw r0, 0x93c(r30)
/* 805992A8  34 1E 09 2C */	addic. r0, r30, 0x92c
/* 805992AC  41 82 00 10 */	beq lbl_805992BC
/* 805992B0  3C 60 80 5A */	lis r3, __vt__8cM3dGSph@ha
/* 805992B4  38 03 9F 58 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805992B8  90 1E 09 3C */	stw r0, 0x93c(r30)
lbl_805992BC:
/* 805992BC  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 805992C0  41 82 00 24 */	beq lbl_805992E4
/* 805992C4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805992C8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805992CC  90 1E 09 28 */	stw r0, 0x928(r30)
/* 805992D0  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 805992D4  41 82 00 10 */	beq lbl_805992E4
/* 805992D8  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha
/* 805992DC  38 03 9F 4C */	addi r0, r3, __vt__8cM3dGAab@l
/* 805992E0  90 1E 09 24 */	stw r0, 0x924(r30)
lbl_805992E4:
/* 805992E4  38 7E 08 08 */	addi r3, r30, 0x808
/* 805992E8  38 80 00 00 */	li r4, 0
/* 805992EC  4B AE AD F8 */	b __dt__12dCcD_GObjInfFv
lbl_805992F0:
/* 805992F0  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 805992F4  38 80 FF FF */	li r4, -1
/* 805992F8  4B CC E9 9C */	b __dt__11cBgS_GndChkFv
/* 805992FC  34 1E 07 8C */	addic. r0, r30, 0x78c
/* 80599300  41 82 00 28 */	beq lbl_80599328
/* 80599304  3C 60 80 5A */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80599308  38 03 9F 40 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8059930C  90 1E 07 98 */	stw r0, 0x798(r30)
/* 80599310  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 80599314  38 80 FF FF */	li r4, -1
/* 80599318  4B CD 5C 00 */	b __dt__8cM3dGCirFv
/* 8059931C  38 7E 07 8C */	addi r3, r30, 0x78c
/* 80599320  38 80 00 00 */	li r4, 0
/* 80599324  4B CC ED 8C */	b __dt__13cBgS_PolyInfoFv
lbl_80599328:
/* 80599328  34 1E 07 50 */	addic. r0, r30, 0x750
/* 8059932C  41 82 00 54 */	beq lbl_80599380
/* 80599330  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80599334  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80599338  90 7E 07 68 */	stw r3, 0x768(r30)
/* 8059933C  38 03 00 20 */	addi r0, r3, 0x20
/* 80599340  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80599344  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80599348  41 82 00 24 */	beq lbl_8059936C
/* 8059934C  3C 60 80 5A */	lis r3, __vt__10dCcD_GStts@ha
/* 80599350  38 03 9F 34 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80599354  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80599358  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 8059935C  41 82 00 10 */	beq lbl_8059936C
/* 80599360  3C 60 80 5A */	lis r3, __vt__10cCcD_GStts@ha
/* 80599364  38 03 9F 28 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80599368  90 1E 07 6C */	stw r0, 0x76c(r30)
lbl_8059936C:
/* 8059936C  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80599370  41 82 00 10 */	beq lbl_80599380
/* 80599374  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80599378  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8059937C  90 1E 07 68 */	stw r0, 0x768(r30)
lbl_80599380:
/* 80599380  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80599384  41 82 00 2C */	beq lbl_805993B0
/* 80599388  3C 60 80 5A */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8059938C  38 63 9F 04 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80599390  90 7E 05 88 */	stw r3, 0x588(r30)
/* 80599394  38 03 00 0C */	addi r0, r3, 0xc
/* 80599398  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 8059939C  38 03 00 18 */	addi r0, r3, 0x18
/* 805993A0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 805993A4  38 7E 05 78 */	addi r3, r30, 0x578
/* 805993A8  38 80 00 00 */	li r4, 0
/* 805993AC  4B AD CB E8 */	b __dt__9dBgS_AcchFv
lbl_805993B0:
/* 805993B0  7F C3 F3 78 */	mr r3, r30
/* 805993B4  38 80 00 00 */	li r4, 0
/* 805993B8  4B A7 F8 D4 */	b __dt__10fopAc_ac_cFv
/* 805993BC  7F E0 07 35 */	extsh. r0, r31
/* 805993C0  40 81 00 0C */	ble lbl_805993CC
/* 805993C4  7F C3 F3 78 */	mr r3, r30
/* 805993C8  4B D3 59 74 */	b __dl__FPv
lbl_805993CC:
/* 805993CC  7F C3 F3 78 */	mr r3, r30
/* 805993D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805993D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805993D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805993DC  7C 08 03 A6 */	mtlr r0
/* 805993E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805993E4  4E 80 00 20 */	blr 
