lbl_80B20278:
/* 80B20278  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B2027C  7C 08 02 A6 */	mflr r0
/* 80B20280  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B20284  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B20288  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B2028C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80B20290  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80B20294  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B20298  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B2029C  7C 7F 1B 78 */	mr r31, r3
/* 80B202A0  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha /* 0x80B249E4@ha */
/* 80B202A4  3B C3 49 E4 */	addi r30, r3, m__18daNpc_Toby_Param_c@l /* 0x80B249E4@l */
/* 80B202A8  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80B202AC  28 00 00 00 */	cmplwi r0, 0
/* 80B202B0  40 82 01 2C */	bne lbl_80B203DC
/* 80B202B4  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B202B8  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B202BC  38 80 00 1F */	li r4, 0x1f
/* 80B202C0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B202C4  28 00 00 00 */	cmplwi r0, 0
/* 80B202C8  41 82 00 10 */	beq lbl_80B202D8
/* 80B202CC  38 60 00 00 */	li r3, 0
/* 80B202D0  38 80 00 00 */	li r4, 0
/* 80B202D4  48 00 00 18 */	b lbl_80B202EC
lbl_80B202D8:
/* 80B202D8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B202DC  2C 00 00 00 */	cmpwi r0, 0
/* 80B202E0  41 82 00 0C */	beq lbl_80B202EC
/* 80B202E4  38 60 00 00 */	li r3, 0
/* 80B202E8  38 80 00 00 */	li r4, 0
lbl_80B202EC:
/* 80B202EC  38 00 00 79 */	li r0, 0x79
/* 80B202F0  90 1F 0E 74 */	stw r0, 0xe74(r31)
/* 80B202F4  90 7F 0E 70 */	stw r3, 0xe70(r31)
/* 80B202F8  90 9F 0E 60 */	stw r4, 0xe60(r31)
/* 80B202FC  80 1F 0E E4 */	lwz r0, 0xee4(r31)
/* 80B20300  60 00 00 04 */	ori r0, r0, 4
/* 80B20304  90 1F 0E E4 */	stw r0, 0xee4(r31)
/* 80B20308  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B2030C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B20310  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B20314  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 80B20318  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B2031C  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80B20320  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 80B20324  C0 1F 0D F0 */	lfs f0, 0xdf0(r31)
/* 80B20328  EF C1 00 2A */	fadds f30, f1, f0
/* 80B2032C  7F E3 FB 78 */	mr r3, r31
/* 80B20330  48 00 22 E5 */	bl chkAttnZra__12daNpc_Toby_cFv
/* 80B20334  2C 03 00 00 */	cmpwi r3, 0
/* 80B20338  41 82 00 20 */	beq lbl_80B20358
/* 80B2033C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B20340  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B20344  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B20348  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B2034C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B20350  C3 FE 01 30 */	lfs f31, 0x130(r30)
/* 80B20354  C3 DE 01 34 */	lfs f30, 0x134(r30)
lbl_80B20358:
/* 80B20358  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B2035C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B20360  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80B20364  4B 4E C0 79 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B20368  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B2036C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B20370  38 81 00 08 */	addi r4, r1, 8
/* 80B20374  7C 85 23 78 */	mr r5, r4
/* 80B20378  4B 82 69 F5 */	bl PSMTXMultVec
/* 80B2037C  38 61 00 08 */	addi r3, r1, 8
/* 80B20380  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B20384  7C 65 1B 78 */	mr r5, r3
/* 80B20388  4B 82 6D 09 */	bl PSVECAdd
/* 80B2038C  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80B20390  FC 20 F8 90 */	fmr f1, f31
/* 80B20394  4B 74 EE 65 */	bl SetH__8cM3dGCylFf
/* 80B20398  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80B2039C  FC 20 F0 90 */	fmr f1, f30
/* 80B203A0  4B 74 EE 61 */	bl SetR__8cM3dGCylFf
/* 80B203A4  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80B203A8  38 81 00 08 */	addi r4, r1, 8
/* 80B203AC  4B 74 EE 31 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80B203B0  3C 60 80 B2 */	lis r3, lit_5075@ha /* 0x80B2551C@ha */
/* 80B203B4  38 63 55 1C */	addi r3, r3, lit_5075@l /* 0x80B2551C@l */
/* 80B203B8  38 9F 0F A8 */	addi r4, r31, 0xfa8
/* 80B203BC  4B 84 1C 8D */	bl __ptmf_cmpr
/* 80B203C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B203C4  41 82 00 18 */	beq lbl_80B203DC
/* 80B203C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B203CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B203D0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B203D4  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80B203D8  4B 74 47 D1 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80B203DC:
/* 80B203DC  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80B203E0  81 9F 0E 84 */	lwz r12, 0xe84(r31)
/* 80B203E4  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B203E8  7D 89 03 A6 */	mtctr r12
/* 80B203EC  4E 80 04 21 */	bctrl 
/* 80B203F0  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80B203F4  81 9F 0E 84 */	lwz r12, 0xe84(r31)
/* 80B203F8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B203FC  7D 89 03 A6 */	mtctr r12
/* 80B20400  4E 80 04 21 */	bctrl 
/* 80B20404  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B20408  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B2040C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80B20410  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80B20414  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B20418  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B2041C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B20420  7C 08 03 A6 */	mtlr r0
/* 80B20424  38 21 00 40 */	addi r1, r1, 0x40
/* 80B20428  4E 80 00 20 */	blr 
