lbl_8079730C:
/* 8079730C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80797310  7C 08 02 A6 */	mflr r0
/* 80797314  90 01 00 24 */	stw r0, 0x24(r1)
/* 80797318  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8079731C  7C 7F 1B 78 */	mr r31, r3
/* 80797320  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80797324  D0 01 00 08 */	stfs f0, 8(r1)
/* 80797328  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8079732C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80797330  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80797334  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80797338  A8 63 06 B0 */	lha r3, 0x6b0(r3)
/* 8079733C  2C 03 00 04 */	cmpwi r3, 4
/* 80797340  40 82 00 60 */	bne lbl_807973A0
/* 80797344  A8 7F 06 B4 */	lha r3, 0x6b4(r31)
/* 80797348  7C 60 07 35 */	extsh. r0, r3
/* 8079734C  41 82 00 0C */	beq lbl_80797358
/* 80797350  2C 03 00 01 */	cmpwi r3, 1
/* 80797354  40 82 00 DC */	bne lbl_80797430
lbl_80797358:
/* 80797358  3C 60 80 7A */	lis r3, lit_4051@ha /* 0x80798624@ha */
/* 8079735C  C0 23 86 24 */	lfs f1, lit_4051@l(r3)  /* 0x80798624@l */
/* 80797360  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80797364  EC 01 00 2A */	fadds f0, f1, f0
/* 80797368  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8079736C  38 7F 0F EC */	addi r3, r31, 0xfec
/* 80797370  38 81 00 08 */	addi r4, r1, 8
/* 80797374  4B AD 82 D5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80797378  38 7F 0F EC */	addi r3, r31, 0xfec
/* 8079737C  3C 80 80 7A */	lis r4, lit_5413@ha /* 0x80798730@ha */
/* 80797380  C0 24 87 30 */	lfs f1, lit_5413@l(r4)  /* 0x80798730@l */
/* 80797384  4B AD 83 85 */	bl SetR__8cM3dGSphFf
/* 80797388  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079738C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80797390  38 63 23 3C */	addi r3, r3, 0x233c
/* 80797394  38 9F 0E C8 */	addi r4, r31, 0xec8
/* 80797398  4B AC D8 11 */	bl Set__4cCcSFP8cCcD_Obj
/* 8079739C  48 00 00 94 */	b lbl_80797430
lbl_807973A0:
/* 807973A0  7C 60 07 35 */	extsh. r0, r3
/* 807973A4  41 82 00 0C */	beq lbl_807973B0
/* 807973A8  2C 03 00 01 */	cmpwi r3, 1
/* 807973AC  40 82 00 40 */	bne lbl_807973EC
lbl_807973B0:
/* 807973B0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807973B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807973B8  38 7F 0F EC */	addi r3, r31, 0xfec
/* 807973BC  38 81 00 08 */	addi r4, r1, 8
/* 807973C0  4B AD 82 89 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807973C4  38 7F 0F EC */	addi r3, r31, 0xfec
/* 807973C8  3C 80 80 7A */	lis r4, lit_5413@ha /* 0x80798730@ha */
/* 807973CC  C0 24 87 30 */	lfs f1, lit_5413@l(r4)  /* 0x80798730@l */
/* 807973D0  4B AD 83 39 */	bl SetR__8cM3dGSphFf
/* 807973D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807973D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807973DC  38 63 23 3C */	addi r3, r3, 0x233c
/* 807973E0  38 9F 0E C8 */	addi r4, r31, 0xec8
/* 807973E4  4B AC D7 C5 */	bl Set__4cCcSFP8cCcD_Obj
/* 807973E8  48 00 00 48 */	b lbl_80797430
lbl_807973EC:
/* 807973EC  3C 60 80 7A */	lis r3, lit_4051@ha /* 0x80798624@ha */
/* 807973F0  C0 23 86 24 */	lfs f1, lit_4051@l(r3)  /* 0x80798624@l */
/* 807973F4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807973F8  EC 01 00 2A */	fadds f0, f1, f0
/* 807973FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80797400  38 7F 0F EC */	addi r3, r31, 0xfec
/* 80797404  38 81 00 08 */	addi r4, r1, 8
/* 80797408  4B AD 82 41 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8079740C  38 7F 0F EC */	addi r3, r31, 0xfec
/* 80797410  3C 80 80 7A */	lis r4, lit_5413@ha /* 0x80798730@ha */
/* 80797414  C0 24 87 30 */	lfs f1, lit_5413@l(r4)  /* 0x80798730@l */
/* 80797418  4B AD 82 F1 */	bl SetR__8cM3dGSphFf
/* 8079741C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80797420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80797424  38 63 23 3C */	addi r3, r3, 0x233c
/* 80797428  38 9F 0E C8 */	addi r4, r31, 0xec8
/* 8079742C  4B AC D7 7D */	bl Set__4cCcSFP8cCcD_Obj
lbl_80797430:
/* 80797430  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80797434  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80797438  7C 08 03 A6 */	mtlr r0
/* 8079743C  38 21 00 20 */	addi r1, r1, 0x20
/* 80797440  4E 80 00 20 */	blr 
