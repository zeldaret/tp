lbl_80817064:
/* 80817064  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80817068  7C 08 02 A6 */	mflr r0
/* 8081706C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80817070  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80817074  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80817078  7C 7E 1B 78 */	mr r30, r3
/* 8081707C  3C 60 80 82 */	lis r3, lit_3791@ha
/* 80817080  3B E3 18 AC */	addi r31, r3, lit_3791@l
/* 80817084  80 7E 04 D0 */	lwz r3, 0x4d0(r30)
/* 80817088  80 1E 04 D4 */	lwz r0, 0x4d4(r30)
/* 8081708C  90 61 00 08 */	stw r3, 8(r1)
/* 80817090  90 01 00 0C */	stw r0, 0xc(r1)
/* 80817094  80 1E 04 D8 */	lwz r0, 0x4d8(r30)
/* 80817098  90 01 00 10 */	stw r0, 0x10(r1)
/* 8081709C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 808170A0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 808170A4  EC 01 00 2A */	fadds f0, f1, f0
/* 808170A8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 808170AC  38 61 00 14 */	addi r3, r1, 0x14
/* 808170B0  4B 86 07 00 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 808170B4  38 61 00 14 */	addi r3, r1, 0x14
/* 808170B8  38 81 00 08 */	addi r4, r1, 8
/* 808170BC  4B A5 0C 50 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 808170C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808170C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808170C8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 808170CC  38 81 00 14 */	addi r4, r1, 0x14
/* 808170D0  4B 85 D3 D0 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 808170D4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 808170D8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 808170DC  41 82 00 64 */	beq lbl_80817140
/* 808170E0  D0 3E 06 CC */	stfs f1, 0x6cc(r30)
/* 808170E4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 808170E8  EC 20 08 2A */	fadds f1, f0, f1
/* 808170EC  3C 60 80 82 */	lis r3, l_HIO@ha
/* 808170F0  38 63 1E 64 */	addi r3, r3, l_HIO@l
/* 808170F4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 808170F8  EC 01 00 2A */	fadds f0, f1, f0
/* 808170FC  D0 1E 06 A0 */	stfs f0, 0x6a0(r30)
/* 80817100  C0 5E 06 CC */	lfs f2, 0x6cc(r30)
/* 80817104  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80817108  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8081710C  EC 00 10 2A */	fadds f0, f0, f2
/* 80817110  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80817114  40 80 00 24 */	bge lbl_80817138
/* 80817118  88 1E 07 15 */	lbz r0, 0x715(r30)
/* 8081711C  28 00 00 00 */	cmplwi r0, 0
/* 80817120  40 82 00 0C */	bne lbl_8081712C
/* 80817124  7F C3 F3 78 */	mr r3, r30
/* 80817128  48 00 06 1D */	bl setWaterEffect1__9daE_YMB_cFv
lbl_8081712C:
/* 8081712C  38 00 00 01 */	li r0, 1
/* 80817130  98 1E 07 15 */	stb r0, 0x715(r30)
/* 80817134  48 00 00 0C */	b lbl_80817140
lbl_80817138:
/* 80817138  38 00 00 00 */	li r0, 0
/* 8081713C  98 1E 07 15 */	stb r0, 0x715(r30)
lbl_80817140:
/* 80817140  38 61 00 14 */	addi r3, r1, 0x14
/* 80817144  38 80 FF FF */	li r4, -1
/* 80817148  4B 86 07 00 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 8081714C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80817150  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80817154  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80817158  7C 08 03 A6 */	mtlr r0
/* 8081715C  38 21 00 70 */	addi r1, r1, 0x70
/* 80817160  4E 80 00 20 */	blr 
