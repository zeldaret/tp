lbl_80596FA8:
/* 80596FA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80596FAC  7C 08 02 A6 */	mflr r0
/* 80596FB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80596FB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80596FB8  4B DC B2 24 */	b _savegpr_29
/* 80596FBC  7C 7D 1B 78 */	mr r29, r3
/* 80596FC0  3C 60 80 59 */	lis r3, cNullVec__6Z2Calc@ha
/* 80596FC4  3B C3 7E 64 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80596FC8  3C 60 80 59 */	lis r3, l_brgBmdIdx@ha
/* 80596FCC  3B E3 7D 7C */	addi r31, r3, l_brgBmdIdx@l
/* 80596FD0  3C 60 80 5A */	lis r3, data_805980F8@ha
/* 80596FD4  38 A3 80 F8 */	addi r5, r3, data_805980F8@l
/* 80596FD8  88 05 00 00 */	lbz r0, 0(r5)
/* 80596FDC  7C 00 07 75 */	extsb. r0, r0
/* 80596FE0  40 82 00 58 */	bne lbl_80597038
/* 80596FE4  80 7E 01 80 */	lwz r3, 0x180(r30)
/* 80596FE8  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 80596FEC  90 7E 01 A4 */	stw r3, 0x1a4(r30)
/* 80596FF0  90 1E 01 A8 */	stw r0, 0x1a8(r30)
/* 80596FF4  80 1E 01 88 */	lwz r0, 0x188(r30)
/* 80596FF8  90 1E 01 AC */	stw r0, 0x1ac(r30)
/* 80596FFC  38 9E 01 A4 */	addi r4, r30, 0x1a4
/* 80597000  80 7E 01 8C */	lwz r3, 0x18c(r30)
/* 80597004  80 1E 01 90 */	lwz r0, 0x190(r30)
/* 80597008  90 64 00 0C */	stw r3, 0xc(r4)
/* 8059700C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80597010  80 1E 01 94 */	lwz r0, 0x194(r30)
/* 80597014  90 04 00 14 */	stw r0, 0x14(r4)
/* 80597018  80 7E 01 98 */	lwz r3, 0x198(r30)
/* 8059701C  80 1E 01 9C */	lwz r0, 0x19c(r30)
/* 80597020  90 64 00 18 */	stw r3, 0x18(r4)
/* 80597024  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80597028  80 1E 01 A0 */	lwz r0, 0x1a0(r30)
/* 8059702C  90 04 00 20 */	stw r0, 0x20(r4)
/* 80597030  38 00 00 01 */	li r0, 1
/* 80597034  98 05 00 00 */	stb r0, 0(r5)
lbl_80597038:
/* 80597038  38 7D 08 7C */	addi r3, r29, 0x87c
/* 8059703C  4B AE D4 24 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80597040  28 03 00 00 */	cmplwi r3, 0
/* 80597044  41 82 00 50 */	beq lbl_80597094
/* 80597048  38 7D 08 7C */	addi r3, r29, 0x87c
/* 8059704C  4B AE D4 AC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80597050  28 03 00 00 */	cmplwi r3, 0
/* 80597054  41 82 00 2C */	beq lbl_80597080
/* 80597058  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8059705C  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80597060  40 82 00 0C */	bne lbl_8059706C
/* 80597064  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80597068  41 82 00 18 */	beq lbl_80597080
lbl_8059706C:
/* 8059706C  38 7D 0B 4C */	addi r3, r29, 0xb4c
/* 80597070  3C 80 00 04 */	lis r4, 4
/* 80597074  38 A0 00 28 */	li r5, 0x28
/* 80597078  38 C0 00 00 */	li r6, 0
/* 8059707C  4B D2 74 28 */	b startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_80597080:
/* 80597080  38 7D 08 7C */	addi r3, r29, 0x87c
/* 80597084  81 9D 08 B8 */	lwz r12, 0x8b8(r29)
/* 80597088  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8059708C  7D 89 03 A6 */	mtctr r12
/* 80597090  4E 80 04 21 */	bctrl 
lbl_80597094:
/* 80597094  7F A3 EB 78 */	mr r3, r29
/* 80597098  88 1D 0A F2 */	lbz r0, 0xaf2(r29)
/* 8059709C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805970A0  39 9E 01 A4 */	addi r12, r30, 0x1a4
/* 805970A4  7D 8C 02 14 */	add r12, r12, r0
/* 805970A8  4B DC AF DC */	b __ptmf_scall
/* 805970AC  60 00 00 00 */	nop 
/* 805970B0  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 805970B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 805970B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805970BC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 805970C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805970C4  38 7D 0B 0C */	addi r3, r29, 0xb0c
/* 805970C8  4B A7 5C 9C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 805970CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805970D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805970D4  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 805970D8  4B A7 53 5C */	b mDoMtx_YrotM__FPA4_fs
/* 805970DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805970E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805970E4  38 81 00 08 */	addi r4, r1, 8
/* 805970E8  7C 85 23 78 */	mr r5, r4
/* 805970EC  4B DA FC 80 */	b PSMTXMultVec
/* 805970F0  38 7D 09 A0 */	addi r3, r29, 0x9a0
/* 805970F4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 805970F8  4B CD 86 10 */	b SetR__8cM3dGSphFf
/* 805970FC  38 7D 09 A0 */	addi r3, r29, 0x9a0
/* 80597100  38 81 00 08 */	addi r4, r1, 8
/* 80597104  4B CD 85 44 */	b SetC__8cM3dGSphFRC4cXyz
/* 80597108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059710C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80597110  3B C3 23 3C */	addi r30, r3, 0x233c
/* 80597114  7F C3 F3 78 */	mr r3, r30
/* 80597118  38 9D 08 7C */	addi r4, r29, 0x87c
/* 8059711C  4B CC DA 8C */	b Set__4cCcSFP8cCcD_Obj
/* 80597120  38 7D 0A D8 */	addi r3, r29, 0xad8
/* 80597124  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80597128  4B CD 85 E0 */	b SetR__8cM3dGSphFf
/* 8059712C  38 7D 0A D8 */	addi r3, r29, 0xad8
/* 80597130  38 81 00 08 */	addi r4, r1, 8
/* 80597134  4B CD 85 14 */	b SetC__8cM3dGSphFRC4cXyz
/* 80597138  7F C3 F3 78 */	mr r3, r30
/* 8059713C  38 9D 09 B4 */	addi r4, r29, 0x9b4
/* 80597140  4B CC DA 68 */	b Set__4cCcSFP8cCcD_Obj
/* 80597144  39 61 00 30 */	addi r11, r1, 0x30
/* 80597148  4B DC B0 E0 */	b _restgpr_29
/* 8059714C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80597150  7C 08 03 A6 */	mtlr r0
/* 80597154  38 21 00 30 */	addi r1, r1, 0x30
/* 80597158  4E 80 00 20 */	blr 
