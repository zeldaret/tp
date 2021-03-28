lbl_80A317F8:
/* 80A317F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A317FC  7C 08 02 A6 */	mflr r0
/* 80A31800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A31804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A31808  93 C1 00 08 */	stw r30, 8(r1)
/* 80A3180C  7C 7F 1B 78 */	mr r31, r3
/* 80A31810  A0 03 0E 2A */	lhz r0, 0xe2a(r3)
/* 80A31814  2C 00 00 02 */	cmpwi r0, 2
/* 80A31818  41 82 00 D8 */	beq lbl_80A318F0
/* 80A3181C  40 80 01 20 */	bge lbl_80A3193C
/* 80A31820  2C 00 00 00 */	cmpwi r0, 0
/* 80A31824  40 80 00 0C */	bge lbl_80A31830
/* 80A31828  48 00 01 14 */	b lbl_80A3193C
/* 80A3182C  48 00 01 10 */	b lbl_80A3193C
lbl_80A31830:
/* 80A31830  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A31834  2C 00 00 01 */	cmpwi r0, 1
/* 80A31838  41 82 00 28 */	beq lbl_80A31860
/* 80A3183C  83 DF 0B 90 */	lwz r30, 0xb90(r31)
/* 80A31840  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A31844  4B 71 40 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31848  93 DF 0B 90 */	stw r30, 0xb90(r31)
/* 80A3184C  38 00 00 01 */	li r0, 1
/* 80A31850  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A31854  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A31858  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A3185C  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A31860:
/* 80A31860  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A31864  2C 00 00 00 */	cmpwi r0, 0
/* 80A31868  41 82 00 28 */	beq lbl_80A31890
/* 80A3186C  83 DF 0B B4 */	lwz r30, 0xbb4(r31)
/* 80A31870  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A31874  4B 71 40 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31878  93 DF 0B B4 */	stw r30, 0xbb4(r31)
/* 80A3187C  38 00 00 00 */	li r0, 0
/* 80A31880  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A31884  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A31888  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A3188C  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A31890:
/* 80A31890  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80A31894  2C 00 00 01 */	cmpwi r0, 1
/* 80A31898  41 82 00 2C */	beq lbl_80A318C4
/* 80A3189C  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A318A0  4B 71 3E 5C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A318A4  38 00 00 00 */	li r0, 0
/* 80A318A8  90 1F 0B FC */	stw r0, 0xbfc(r31)
/* 80A318AC  3C 60 80 A4 */	lis r3, lit_4204@ha
/* 80A318B0  C0 03 09 00 */	lfs f0, lit_4204@l(r3)
/* 80A318B4  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80A318B8  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A318BC  38 00 00 01 */	li r0, 1
/* 80A318C0  90 1F 0D 14 */	stw r0, 0xd14(r31)
lbl_80A318C4:
/* 80A318C4  38 00 00 00 */	li r0, 0
/* 80A318C8  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A318CC  3C 60 80 A4 */	lis r3, lit_4204@ha
/* 80A318D0  C0 03 09 00 */	lfs f0, lit_4204@l(r3)
/* 80A318D4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A318D8  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A318DC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A318E0  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A318E4  38 00 00 02 */	li r0, 2
/* 80A318E8  B0 1F 0E 2A */	sth r0, 0xe2a(r31)
/* 80A318EC  48 00 00 50 */	b lbl_80A3193C
lbl_80A318F0:
/* 80A318F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A318F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A318F8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A318FC  4B 5E 8E 14 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A31900  7C 64 1B 78 */	mr r4, r3
/* 80A31904  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A31908  38 A0 00 02 */	li r5, 2
/* 80A3190C  38 C0 08 00 */	li r6, 0x800
/* 80A31910  4B 83 EC F8 */	b cLib_addCalcAngleS2__FPssss
/* 80A31914  7F E3 FB 78 */	mr r3, r31
/* 80A31918  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A3191C  48 00 91 D5 */	bl setAngle__10daNpc_Kn_cFs
/* 80A31920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A31924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A31928  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A3192C  28 00 00 00 */	cmplwi r0, 0
/* 80A31930  40 82 00 0C */	bne lbl_80A3193C
/* 80A31934  38 00 00 15 */	li r0, 0x15
/* 80A31938  98 1F 15 AE */	stb r0, 0x15ae(r31)
lbl_80A3193C:
/* 80A3193C  38 60 00 01 */	li r3, 1
/* 80A31940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A31944  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A31948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3194C  7C 08 03 A6 */	mtlr r0
/* 80A31950  38 21 00 10 */	addi r1, r1, 0x10
/* 80A31954  4E 80 00 20 */	blr 
