lbl_80BF6F80:
/* 80BF6F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF6F84  7C 08 02 A6 */	mflr r0
/* 80BF6F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF6F8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF6F90  7C 7F 1B 78 */	mr r31, r3
/* 80BF6F94  A0 03 07 66 */	lhz r0, 0x766(r3)
/* 80BF6F98  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80BF6F9C  28 00 00 01 */	cmplwi r0, 1
/* 80BF6FA0  40 82 00 14 */	bne lbl_80BF6FB4
/* 80BF6FA4  38 00 40 00 */	li r0, 0x4000
/* 80BF6FA8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80BF6FAC  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80BF6FB0  B0 1F 04 DC */	sth r0, 0x4dc(r31)
lbl_80BF6FB4:
/* 80BF6FB4  7F E3 FB 78 */	mr r3, r31
/* 80BF6FB8  4B FF FF 61 */	bl initBaseMtx__13daObjGeyser_cFv
/* 80BF6FBC  38 1F 07 C0 */	addi r0, r31, 0x7c0
/* 80BF6FC0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BF6FC4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80BF6FC8  38 80 00 00 */	li r4, 0
/* 80BF6FCC  38 A0 00 FF */	li r5, 0xff
/* 80BF6FD0  7F E6 FB 78 */	mr r6, r31
/* 80BF6FD4  4B 48 C8 8D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BF6FD8  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80BF6FDC  3C 80 80 C0 */	lis r4, l_cps_src@ha /* 0x80BF90A4@ha */
/* 80BF6FE0  38 84 90 A4 */	addi r4, r4, l_cps_src@l /* 0x80BF90A4@l */
/* 80BF6FE4  4B 48 D7 ED */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80BF6FE8  38 1F 05 AC */	addi r0, r31, 0x5ac
/* 80BF6FEC  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80BF6FF0  3C 60 80 C0 */	lis r3, l_cull_box@ha /* 0x80BF908C@ha */
/* 80BF6FF4  38 83 90 8C */	addi r4, r3, l_cull_box@l /* 0x80BF908C@l */
/* 80BF6FF8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80BF6FFC  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 80BF7000  EC A0 00 B2 */	fmuls f5, f0, f2
/* 80BF7004  C0 9F 04 EC */	lfs f4, 0x4ec(r31)
/* 80BF7008  7F E3 FB 78 */	mr r3, r31
/* 80BF700C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80BF7010  EC 20 01 32 */	fmuls f1, f0, f4
/* 80BF7014  C0 04 00 04 */	lfs f0, 4(r4)
/* 80BF7018  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80BF701C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80BF7020  EC 60 01 32 */	fmuls f3, f0, f4
/* 80BF7024  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80BF7028  EC 80 01 32 */	fmuls f4, f0, f4
/* 80BF702C  FC C0 28 90 */	fmr f6, f5
/* 80BF7030  4B 42 35 19 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BF7034  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BF7038  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BF703C  2C 00 00 01 */	cmpwi r0, 1
/* 80BF7040  41 82 00 2C */	beq lbl_80BF706C
/* 80BF7044  40 80 00 10 */	bge lbl_80BF7054
/* 80BF7048  2C 00 00 00 */	cmpwi r0, 0
/* 80BF704C  40 80 00 14 */	bge lbl_80BF7060
/* 80BF7050  48 00 00 24 */	b lbl_80BF7074
lbl_80BF7054:
/* 80BF7054  2C 00 00 FF */	cmpwi r0, 0xff
/* 80BF7058  41 82 00 08 */	beq lbl_80BF7060
/* 80BF705C  48 00 00 18 */	b lbl_80BF7074
lbl_80BF7060:
/* 80BF7060  7F E3 FB 78 */	mr r3, r31
/* 80BF7064  48 00 11 D9 */	bl actionOffInit__13daObjGeyser_cFv
/* 80BF7068  48 00 00 0C */	b lbl_80BF7074
lbl_80BF706C:
/* 80BF706C  7F E3 FB 78 */	mr r3, r31
/* 80BF7070  48 00 05 49 */	bl actionOff2Init__13daObjGeyser_cFv
lbl_80BF7074:
/* 80BF7074  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BF7078  4B 41 5C ED */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BF707C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BF7080  4B 41 5E C5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BF7084  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 80BF7088  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 80BF708C  FC 60 08 90 */	fmr f3, f1
/* 80BF7090  4B 41 5D A9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80BF7094  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF7098  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF709C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BF70A0  38 84 00 24 */	addi r4, r4, 0x24
/* 80BF70A4  4B 74 F4 0D */	bl PSMTXCopy
/* 80BF70A8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80BF70AC  28 03 00 00 */	cmplwi r3, 0
/* 80BF70B0  41 82 00 18 */	beq lbl_80BF70C8
/* 80BF70B4  4B 48 49 0D */	bl Move__4dBgWFv
/* 80BF70B8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80BF70BC  88 03 00 88 */	lbz r0, 0x88(r3)
/* 80BF70C0  60 00 00 80 */	ori r0, r0, 0x80
/* 80BF70C4  98 03 00 88 */	stb r0, 0x88(r3)
lbl_80BF70C8:
/* 80BF70C8  38 60 00 01 */	li r3, 1
/* 80BF70CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF70D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF70D4  7C 08 03 A6 */	mtlr r0
/* 80BF70D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF70DC  4E 80 00 20 */	blr 
