lbl_80B6A268:
/* 80B6A268  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B6A26C  7C 08 02 A6 */	mflr r0
/* 80B6A270  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B6A274  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B6A278  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B6A27C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80B6A280  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80B6A284  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B6A288  7C 7F 1B 78 */	mr r31, r3
/* 80B6A28C  3C 60 80 B7 */	lis r3, m__18daNpc_zanB_Param_c@ha /* 0x80B6BCC4@ha */
/* 80B6A290  38 83 BC C4 */	addi r4, r3, m__18daNpc_zanB_Param_c@l /* 0x80B6BCC4@l */
/* 80B6A294  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80B6A298  28 00 00 00 */	cmplwi r0, 0
/* 80B6A29C  40 82 01 20 */	bne lbl_80B6A3BC
/* 80B6A2A0  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B6A2A4  38 A3 FD FF */	addi r5, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B6A2A8  38 C0 00 1F */	li r6, 0x1f
/* 80B6A2AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B6A2B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B6A2B4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B6A2B8  28 00 00 00 */	cmplwi r0, 0
/* 80B6A2BC  41 82 00 10 */	beq lbl_80B6A2CC
/* 80B6A2C0  38 A0 00 00 */	li r5, 0
/* 80B6A2C4  38 C0 00 00 */	li r6, 0
/* 80B6A2C8  48 00 00 30 */	b lbl_80B6A2F8
lbl_80B6A2CC:
/* 80B6A2CC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B6A2D0  28 00 00 00 */	cmplwi r0, 0
/* 80B6A2D4  41 82 00 10 */	beq lbl_80B6A2E4
/* 80B6A2D8  38 A0 00 00 */	li r5, 0
/* 80B6A2DC  38 C0 00 00 */	li r6, 0
/* 80B6A2E0  48 00 00 18 */	b lbl_80B6A2F8
lbl_80B6A2E4:
/* 80B6A2E4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B6A2E8  2C 00 00 00 */	cmpwi r0, 0
/* 80B6A2EC  41 82 00 0C */	beq lbl_80B6A2F8
/* 80B6A2F0  38 A0 00 00 */	li r5, 0
/* 80B6A2F4  38 C0 00 00 */	li r6, 0
lbl_80B6A2F8:
/* 80B6A2F8  38 00 00 79 */	li r0, 0x79
/* 80B6A2FC  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B6A300  90 BF 0E 6C */	stw r5, 0xe6c(r31)
/* 80B6A304  90 DF 0E 5C */	stw r6, 0xe5c(r31)
/* 80B6A308  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80B6A30C  60 00 00 04 */	ori r0, r0, 4
/* 80B6A310  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80B6A314  C0 04 00 A8 */	lfs f0, 0xa8(r4)
/* 80B6A318  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B6A31C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B6A320  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B6A324  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80B6A328  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80B6A32C  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B6A330  28 00 00 00 */	cmplwi r0, 0
/* 80B6A334  40 82 00 1C */	bne lbl_80B6A350
/* 80B6A338  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B6A33C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B6A340  C0 04 00 F0 */	lfs f0, 0xf0(r4)
/* 80B6A344  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B6A348  C3 E4 00 9C */	lfs f31, 0x9c(r4)
/* 80B6A34C  C3 C4 00 F4 */	lfs f30, 0xf4(r4)
lbl_80B6A350:
/* 80B6A350  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B6A354  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B6A358  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80B6A35C  4B 4A 20 81 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B6A360  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B6A364  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B6A368  38 81 00 08 */	addi r4, r1, 8
/* 80B6A36C  7C 85 23 78 */	mr r5, r4
/* 80B6A370  4B 7D C9 FD */	bl PSMTXMultVec
/* 80B6A374  38 61 00 08 */	addi r3, r1, 8
/* 80B6A378  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B6A37C  7C 65 1B 78 */	mr r5, r3
/* 80B6A380  4B 7D CD 11 */	bl PSVECAdd
/* 80B6A384  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B6A388  FC 20 F8 90 */	fmr f1, f31
/* 80B6A38C  4B 70 4E 6D */	bl SetH__8cM3dGCylFf
/* 80B6A390  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B6A394  FC 20 F0 90 */	fmr f1, f30
/* 80B6A398  4B 70 4E 69 */	bl SetR__8cM3dGCylFf
/* 80B6A39C  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B6A3A0  38 81 00 08 */	addi r4, r1, 8
/* 80B6A3A4  4B 70 4E 39 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80B6A3A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B6A3AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B6A3B0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B6A3B4  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80B6A3B8  4B 6F A7 F1 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80B6A3BC:
/* 80B6A3BC  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B6A3C0  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B6A3C4  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B6A3C8  7D 89 03 A6 */	mtctr r12
/* 80B6A3CC  4E 80 04 21 */	bctrl 
/* 80B6A3D0  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B6A3D4  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B6A3D8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B6A3DC  7D 89 03 A6 */	mtctr r12
/* 80B6A3E0  4E 80 04 21 */	bctrl 
/* 80B6A3E4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B6A3E8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B6A3EC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80B6A3F0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80B6A3F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B6A3F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B6A3FC  7C 08 03 A6 */	mtlr r0
/* 80B6A400  38 21 00 40 */	addi r1, r1, 0x40
/* 80B6A404  4E 80 00 20 */	blr 
