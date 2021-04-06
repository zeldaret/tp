lbl_80A305A8:
/* 80A305A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A305AC  7C 08 02 A6 */	mflr r0
/* 80A305B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A305B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A305B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A305BC  7C 7F 1B 78 */	mr r31, r3
/* 80A305C0  A0 03 0E 2A */	lhz r0, 0xe2a(r3)
/* 80A305C4  2C 00 00 02 */	cmpwi r0, 2
/* 80A305C8  41 82 00 D8 */	beq lbl_80A306A0
/* 80A305CC  40 80 01 20 */	bge lbl_80A306EC
/* 80A305D0  2C 00 00 00 */	cmpwi r0, 0
/* 80A305D4  40 80 00 0C */	bge lbl_80A305E0
/* 80A305D8  48 00 01 14 */	b lbl_80A306EC
/* 80A305DC  48 00 01 10 */	b lbl_80A306EC
lbl_80A305E0:
/* 80A305E0  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A305E4  2C 00 00 01 */	cmpwi r0, 1
/* 80A305E8  41 82 00 28 */	beq lbl_80A30610
/* 80A305EC  83 DF 0B 90 */	lwz r30, 0xb90(r31)
/* 80A305F0  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A305F4  4B 71 52 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A305F8  93 DF 0B 90 */	stw r30, 0xb90(r31)
/* 80A305FC  38 00 00 01 */	li r0, 1
/* 80A30600  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A30604  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A30608  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A3060C  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A30610:
/* 80A30610  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A30614  2C 00 00 00 */	cmpwi r0, 0
/* 80A30618  41 82 00 28 */	beq lbl_80A30640
/* 80A3061C  83 DF 0B B4 */	lwz r30, 0xbb4(r31)
/* 80A30620  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A30624  4B 71 52 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A30628  93 DF 0B B4 */	stw r30, 0xbb4(r31)
/* 80A3062C  38 00 00 00 */	li r0, 0
/* 80A30630  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A30634  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A30638  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A3063C  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A30640:
/* 80A30640  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80A30644  2C 00 00 01 */	cmpwi r0, 1
/* 80A30648  41 82 00 2C */	beq lbl_80A30674
/* 80A3064C  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A30650  4B 71 50 AD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A30654  38 00 00 00 */	li r0, 0
/* 80A30658  90 1F 0B FC */	stw r0, 0xbfc(r31)
/* 80A3065C  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A30660  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A30664  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80A30668  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A3066C  38 00 00 01 */	li r0, 1
/* 80A30670  90 1F 0D 14 */	stw r0, 0xd14(r31)
lbl_80A30674:
/* 80A30674  38 00 00 00 */	li r0, 0
/* 80A30678  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A3067C  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A30680  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A30684  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A30688  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A3068C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A30690  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A30694  38 00 00 02 */	li r0, 2
/* 80A30698  B0 1F 0E 2A */	sth r0, 0xe2a(r31)
/* 80A3069C  48 00 00 50 */	b lbl_80A306EC
lbl_80A306A0:
/* 80A306A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A306A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A306A8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A306AC  4B 5E A0 65 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A306B0  7C 64 1B 78 */	mr r4, r3
/* 80A306B4  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A306B8  38 A0 00 02 */	li r5, 2
/* 80A306BC  38 C0 08 00 */	li r6, 0x800
/* 80A306C0  4B 83 FF 49 */	bl cLib_addCalcAngleS2__FPssss
/* 80A306C4  7F E3 FB 78 */	mr r3, r31
/* 80A306C8  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A306CC  48 00 A4 25 */	bl setAngle__10daNpc_Kn_cFs
/* 80A306D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A306D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A306D8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A306DC  28 00 00 00 */	cmplwi r0, 0
/* 80A306E0  40 82 00 0C */	bne lbl_80A306EC
/* 80A306E4  38 00 00 0F */	li r0, 0xf
/* 80A306E8  98 1F 15 AE */	stb r0, 0x15ae(r31)
lbl_80A306EC:
/* 80A306EC  38 60 00 01 */	li r3, 1
/* 80A306F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A306F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A306F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A306FC  7C 08 03 A6 */	mtlr r0
/* 80A30700  38 21 00 10 */	addi r1, r1, 0x10
/* 80A30704  4E 80 00 20 */	blr 
