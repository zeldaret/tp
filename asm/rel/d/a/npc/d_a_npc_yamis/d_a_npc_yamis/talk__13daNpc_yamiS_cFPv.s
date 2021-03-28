lbl_80B47F50:
/* 80B47F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B47F54  7C 08 02 A6 */	mflr r0
/* 80B47F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B47F5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B47F60  93 C1 00 08 */	stw r30, 8(r1)
/* 80B47F64  7C 7F 1B 78 */	mr r31, r3
/* 80B47F68  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B47F6C  2C 00 00 02 */	cmpwi r0, 2
/* 80B47F70  41 82 00 54 */	beq lbl_80B47FC4
/* 80B47F74  40 80 00 10 */	bge lbl_80B47F84
/* 80B47F78  2C 00 00 00 */	cmpwi r0, 0
/* 80B47F7C  40 80 00 14 */	bge lbl_80B47F90
/* 80B47F80  48 00 01 C0 */	b lbl_80B48140
lbl_80B47F84:
/* 80B47F84  2C 00 00 04 */	cmpwi r0, 4
/* 80B47F88  40 80 01 B8 */	bge lbl_80B48140
/* 80B47F8C  48 00 01 AC */	b lbl_80B48138
lbl_80B47F90:
/* 80B47F90  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B47F94  2C 00 00 00 */	cmpwi r0, 0
/* 80B47F98  40 82 00 2C */	bne lbl_80B47FC4
/* 80B47F9C  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B47FA0  38 A0 00 00 */	li r5, 0
/* 80B47FA4  4B 60 3C 4C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B47FA8  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 80B47FAC  2C 00 00 01 */	cmpwi r0, 1
/* 80B47FB0  40 82 00 0C */	bne lbl_80B47FBC
/* 80B47FB4  38 00 00 00 */	li r0, 0
/* 80B47FB8  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
lbl_80B47FBC:
/* 80B47FBC  38 00 00 02 */	li r0, 2
/* 80B47FC0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B47FC4:
/* 80B47FC4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B47FC8  2C 00 00 00 */	cmpwi r0, 0
/* 80B47FCC  40 82 01 74 */	bne lbl_80B48140
/* 80B47FD0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B47FD4  28 00 00 00 */	cmplwi r0, 0
/* 80B47FD8  40 82 00 28 */	bne lbl_80B48000
/* 80B47FDC  7F E3 FB 78 */	mr r3, r31
/* 80B47FE0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B47FE4  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80B47FE8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B47FEC  4B 4D 27 24 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B47FF0  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80B47FF4  7C 60 07 34 */	extsh r0, r3
/* 80B47FF8  7C 04 00 00 */	cmpw r4, r0
/* 80B47FFC  40 82 00 D4 */	bne lbl_80B480D0
lbl_80B48000:
/* 80B48000  7F E3 FB 78 */	mr r3, r31
/* 80B48004  38 80 00 00 */	li r4, 0
/* 80B48008  38 A0 00 00 */	li r5, 0
/* 80B4800C  38 C0 00 00 */	li r6, 0
/* 80B48010  38 E0 00 00 */	li r7, 0
/* 80B48014  4B 60 3C 64 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B48018  2C 03 00 00 */	cmpwi r3, 0
/* 80B4801C  41 82 00 30 */	beq lbl_80B4804C
/* 80B48020  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B48024  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B48028  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B4802C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B48030  4B 5F D6 B0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B48034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B48038  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4803C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B48040  4B 4F A4 28 */	b reset__14dEvt_control_cFv
/* 80B48044  38 00 00 03 */	li r0, 3
/* 80B48048  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B4804C:
/* 80B4804C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B48050  2C 00 00 01 */	cmpwi r0, 1
/* 80B48054  41 82 00 2C */	beq lbl_80B48080
/* 80B48058  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B4805C  4B 5F D6 A0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B48060  38 00 00 00 */	li r0, 0
/* 80B48064  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B48068  3C 60 80 B5 */	lis r3, lit_4194@ha
/* 80B4806C  C0 03 97 54 */	lfs f0, lit_4194@l(r3)
/* 80B48070  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B48074  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B48078  38 00 00 01 */	li r0, 1
/* 80B4807C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B48080:
/* 80B48080  38 00 00 00 */	li r0, 0
/* 80B48084  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B48088  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B4808C  28 00 00 00 */	cmplwi r0, 0
/* 80B48090  41 82 00 B0 */	beq lbl_80B48140
/* 80B48094  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B48098  2C 00 00 00 */	cmpwi r0, 0
/* 80B4809C  41 82 00 28 */	beq lbl_80B480C4
/* 80B480A0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B480A4  4B 5F D6 58 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B480A8  38 00 00 00 */	li r0, 0
/* 80B480AC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B480B0  3C 60 80 B5 */	lis r3, lit_4194@ha
/* 80B480B4  C0 03 97 54 */	lfs f0, lit_4194@l(r3)
/* 80B480B8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B480BC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B480C0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B480C4:
/* 80B480C4  38 00 00 00 */	li r0, 0
/* 80B480C8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B480CC  48 00 00 74 */	b lbl_80B48140
lbl_80B480D0:
/* 80B480D0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B480D4  2C 00 00 01 */	cmpwi r0, 1
/* 80B480D8  41 82 00 2C */	beq lbl_80B48104
/* 80B480DC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B480E0  4B 5F D6 1C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B480E4  38 00 00 00 */	li r0, 0
/* 80B480E8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B480EC  3C 60 80 B5 */	lis r3, lit_4194@ha
/* 80B480F0  C0 03 97 54 */	lfs f0, lit_4194@l(r3)
/* 80B480F4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B480F8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B480FC  38 00 00 01 */	li r0, 1
/* 80B48100  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B48104:
/* 80B48104  38 00 00 00 */	li r0, 0
/* 80B48108  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B4810C  7F E3 FB 78 */	mr r3, r31
/* 80B48110  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B48114  4B 4D 25 FC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B48118  7C 64 1B 78 */	mr r4, r3
/* 80B4811C  7F E3 FB 78 */	mr r3, r31
/* 80B48120  38 A0 00 01 */	li r5, 1
/* 80B48124  38 C0 00 01 */	li r6, 1
/* 80B48128  38 E0 00 0F */	li r7, 0xf
/* 80B4812C  39 00 00 00 */	li r8, 0
/* 80B48130  4B 60 35 18 */	b step__8daNpcT_cFsiiii
/* 80B48134  48 00 00 0C */	b lbl_80B48140
lbl_80B48138:
/* 80B48138  4B FF EE 1D */	bl getFlowNodeNo__13daNpc_yamiS_cFv
/* 80B4813C  90 7F 0A 7C */	stw r3, 0xa7c(r31)
lbl_80B48140:
/* 80B48140  38 60 00 00 */	li r3, 0
/* 80B48144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B48148  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4814C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B48150  7C 08 03 A6 */	mtlr r0
/* 80B48154  38 21 00 10 */	addi r1, r1, 0x10
/* 80B48158  4E 80 00 20 */	blr 
