lbl_8079A28C:
/* 8079A28C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8079A290  7C 08 02 A6 */	mflr r0
/* 8079A294  90 01 00 44 */	stw r0, 0x44(r1)
/* 8079A298  39 61 00 40 */	addi r11, r1, 0x40
/* 8079A29C  4B BC 7F 3D */	bl _savegpr_28
/* 8079A2A0  7C 7D 1B 78 */	mr r29, r3
/* 8079A2A4  7C 9E 23 78 */	mr r30, r4
/* 8079A2A8  3C 60 80 7A */	lis r3, cNullVec__6Z2Calc@ha /* 0x8079D734@ha */
/* 8079A2AC  3B E3 D7 34 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x8079D734@l */
/* 8079A2B0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8079A2B4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8079A2B8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8079A2BC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8079A2C0  7C 05 07 74 */	extsb r5, r0
/* 8079A2C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079A2C8  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079A2CC  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8079A2D0  88 1D 05 B7 */	lbz r0, 0x5b7(r29)
/* 8079A2D4  54 06 10 3A */	slwi r6, r0, 2
/* 8079A2D8  38 80 00 00 */	li r4, 0
/* 8079A2DC  90 81 00 08 */	stw r4, 8(r1)
/* 8079A2E0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8079A2E4  38 1F 00 D0 */	addi r0, r31, 0xd0
/* 8079A2E8  7C 00 32 14 */	add r0, r0, r6
/* 8079A2EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8079A2F0  38 1F 00 EC */	addi r0, r31, 0xec
/* 8079A2F4  7C 00 32 14 */	add r0, r0, r6
/* 8079A2F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079A2FC  90 81 00 18 */	stw r4, 0x18(r1)
/* 8079A300  38 80 00 00 */	li r4, 0
/* 8079A304  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085BE@ha */
/* 8079A308  38 A5 85 BE */	addi r5, r5, 0x85BE /* 0x000085BE@l */
/* 8079A30C  7F C6 F3 78 */	mr r6, r30
/* 8079A310  38 FD 01 0C */	addi r7, r29, 0x10c
/* 8079A314  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 8079A318  39 21 00 20 */	addi r9, r1, 0x20
/* 8079A31C  39 40 00 FF */	li r10, 0xff
/* 8079A320  3D 60 80 7A */	lis r11, lit_3792@ha /* 0x8079D5B8@ha */
/* 8079A324  C0 2B D5 B8 */	lfs f1, lit_3792@l(r11)  /* 0x8079D5B8@l */
/* 8079A328  4B 8B 27 69 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8079A32C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8079A330  7C 05 07 74 */	extsb r5, r0
/* 8079A334  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8079A338  88 1D 05 B7 */	lbz r0, 0x5b7(r29)
/* 8079A33C  54 06 10 3A */	slwi r6, r0, 2
/* 8079A340  38 80 00 00 */	li r4, 0
/* 8079A344  90 81 00 08 */	stw r4, 8(r1)
/* 8079A348  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8079A34C  38 1F 01 08 */	addi r0, r31, 0x108
/* 8079A350  7C 00 32 14 */	add r0, r0, r6
/* 8079A354  90 01 00 10 */	stw r0, 0x10(r1)
/* 8079A358  38 1F 01 24 */	addi r0, r31, 0x124
/* 8079A35C  7C 00 32 14 */	add r0, r0, r6
/* 8079A360  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079A364  90 81 00 18 */	stw r4, 0x18(r1)
/* 8079A368  38 80 00 00 */	li r4, 0
/* 8079A36C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085BF@ha */
/* 8079A370  38 A5 85 BF */	addi r5, r5, 0x85BF /* 0x000085BF@l */
/* 8079A374  7F C6 F3 78 */	mr r6, r30
/* 8079A378  38 FD 01 0C */	addi r7, r29, 0x10c
/* 8079A37C  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 8079A380  39 21 00 20 */	addi r9, r1, 0x20
/* 8079A384  39 40 00 FF */	li r10, 0xff
/* 8079A388  3D 60 80 7A */	lis r11, lit_3792@ha /* 0x8079D5B8@ha */
/* 8079A38C  C0 2B D5 B8 */	lfs f1, lit_3792@l(r11)  /* 0x8079D5B8@l */
/* 8079A390  4B 8B 27 01 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8079A394  39 61 00 40 */	addi r11, r1, 0x40
/* 8079A398  4B BC 7E 8D */	bl _restgpr_28
/* 8079A39C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8079A3A0  7C 08 03 A6 */	mtlr r0
/* 8079A3A4  38 21 00 40 */	addi r1, r1, 0x40
/* 8079A3A8  4E 80 00 20 */	blr 
