lbl_80A2C77C:
/* 80A2C77C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A2C780  7C 08 02 A6 */	mflr r0
/* 80A2C784  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A2C788  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80A2C78C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80A2C790  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A2C794  7C 7F 1B 78 */	mr r31, r3
/* 80A2C798  88 03 0E 2C */	lbz r0, 0xe2c(r3)
/* 80A2C79C  28 00 00 00 */	cmplwi r0, 0
/* 80A2C7A0  40 82 01 98 */	bne lbl_80A2C938
/* 80A2C7A4  88 1F 15 AF */	lbz r0, 0x15af(r31)
/* 80A2C7A8  28 00 00 00 */	cmplwi r0, 0
/* 80A2C7AC  41 82 01 8C */	beq lbl_80A2C938
/* 80A2C7B0  88 1F 0A BD */	lbz r0, 0xabd(r31)
/* 80A2C7B4  28 00 00 01 */	cmplwi r0, 1
/* 80A2C7B8  38 00 00 79 */	li r0, 0x79
/* 80A2C7BC  40 82 00 08 */	bne lbl_80A2C7C4
/* 80A2C7C0  38 00 00 69 */	li r0, 0x69
lbl_80A2C7C4:
/* 80A2C7C4  90 1F 12 08 */	stw r0, 0x1208(r31)
/* 80A2C7C8  88 1F 15 AC */	lbz r0, 0x15ac(r31)
/* 80A2C7CC  28 00 00 06 */	cmplwi r0, 6
/* 80A2C7D0  41 81 00 DC */	bgt lbl_80A2C8AC
/* 80A2C7D4  3C 60 80 A4 */	lis r3, lit_7116@ha /* 0x80A41858@ha */
/* 80A2C7D8  38 63 18 58 */	addi r3, r3, lit_7116@l /* 0x80A41858@l */
/* 80A2C7DC  54 00 10 3A */	slwi r0, r0, 2
/* 80A2C7E0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A2C7E4  7C 09 03 A6 */	mtctr r0
/* 80A2C7E8  4E 80 04 20 */	bctr 
lbl_80A2C7EC:
/* 80A2C7EC  7F E3 FB 78 */	mr r3, r31
/* 80A2C7F0  48 01 03 25 */	bl setCollisionTeach01__10daNpc_Kn_cFv
/* 80A2C7F4  48 00 00 B8 */	b lbl_80A2C8AC
lbl_80A2C7F8:
/* 80A2C7F8  88 1F 15 AE */	lbz r0, 0x15ae(r31)
/* 80A2C7FC  7C 00 07 74 */	extsb r0, r0
/* 80A2C800  2C 00 00 04 */	cmpwi r0, 4
/* 80A2C804  40 80 00 10 */	bge lbl_80A2C814
/* 80A2C808  7F E3 FB 78 */	mr r3, r31
/* 80A2C80C  48 01 03 09 */	bl setCollisionTeach01__10daNpc_Kn_cFv
/* 80A2C810  48 00 00 9C */	b lbl_80A2C8AC
lbl_80A2C814:
/* 80A2C814  7F E3 FB 78 */	mr r3, r31
/* 80A2C818  48 01 26 21 */	bl setCollisionTeach02__10daNpc_Kn_cFv
/* 80A2C81C  48 00 00 90 */	b lbl_80A2C8AC
lbl_80A2C820:
/* 80A2C820  88 1F 15 AE */	lbz r0, 0x15ae(r31)
/* 80A2C824  7C 00 07 74 */	extsb r0, r0
/* 80A2C828  2C 00 00 08 */	cmpwi r0, 8
/* 80A2C82C  40 80 00 10 */	bge lbl_80A2C83C
/* 80A2C830  7F E3 FB 78 */	mr r3, r31
/* 80A2C834  48 01 26 05 */	bl setCollisionTeach02__10daNpc_Kn_cFv
/* 80A2C838  48 00 00 74 */	b lbl_80A2C8AC
lbl_80A2C83C:
/* 80A2C83C  7F E3 FB 78 */	mr r3, r31
/* 80A2C840  48 00 03 AD */	bl setCollisionTeach03__10daNpc_Kn_cFv
/* 80A2C844  48 00 00 68 */	b lbl_80A2C8AC
lbl_80A2C848:
/* 80A2C848  88 1F 15 AE */	lbz r0, 0x15ae(r31)
/* 80A2C84C  7C 00 07 74 */	extsb r0, r0
/* 80A2C850  2C 00 00 09 */	cmpwi r0, 9
/* 80A2C854  40 80 00 10 */	bge lbl_80A2C864
/* 80A2C858  7F E3 FB 78 */	mr r3, r31
/* 80A2C85C  48 00 03 91 */	bl setCollisionTeach03__10daNpc_Kn_cFv
/* 80A2C860  48 00 00 4C */	b lbl_80A2C8AC
lbl_80A2C864:
/* 80A2C864  7F E3 FB 78 */	mr r3, r31
/* 80A2C868  48 00 03 BD */	bl setCollisionTeach04__10daNpc_Kn_cFv
/* 80A2C86C  48 00 00 40 */	b lbl_80A2C8AC
lbl_80A2C870:
/* 80A2C870  88 1F 15 AE */	lbz r0, 0x15ae(r31)
/* 80A2C874  7C 00 07 74 */	extsb r0, r0
/* 80A2C878  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A2C87C  40 80 00 10 */	bge lbl_80A2C88C
/* 80A2C880  7F E3 FB 78 */	mr r3, r31
/* 80A2C884  48 00 03 A1 */	bl setCollisionTeach04__10daNpc_Kn_cFv
/* 80A2C888  48 00 00 24 */	b lbl_80A2C8AC
lbl_80A2C88C:
/* 80A2C88C  7F E3 FB 78 */	mr r3, r31
/* 80A2C890  48 00 04 71 */	bl setCollisionTeach05__10daNpc_Kn_cFv
/* 80A2C894  48 00 00 18 */	b lbl_80A2C8AC
lbl_80A2C898:
/* 80A2C898  7F E3 FB 78 */	mr r3, r31
/* 80A2C89C  48 00 04 9D */	bl setCollisionTeach06__10daNpc_Kn_cFv
/* 80A2C8A0  48 00 00 0C */	b lbl_80A2C8AC
lbl_80A2C8A4:
/* 80A2C8A4  7F E3 FB 78 */	mr r3, r31
/* 80A2C8A8  48 00 04 B1 */	bl setCollisionTeach07__10daNpc_Kn_cFv
lbl_80A2C8AC:
/* 80A2C8AC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A2C8B0  80 63 00 04 */	lwz r3, 4(r3)
/* 80A2C8B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A2C8B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A2C8BC  38 63 00 30 */	addi r3, r3, 0x30
/* 80A2C8C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A2C8C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A2C8C8  4B 91 9B E9 */	bl PSMTXCopy
/* 80A2C8CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A2C8D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A2C8D4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A2C8D8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A2C8DC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A2C8E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A2C8E4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A2C8E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A2C8EC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A2C8F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A2C8F4  3C 60 80 A4 */	lis r3, m__16daNpc_Kn_Param_c@ha /* 0x80A40970@ha */
/* 80A2C8F8  38 83 09 70 */	addi r4, r3, m__16daNpc_Kn_Param_c@l /* 0x80A40970@l */
/* 80A2C8FC  C3 E4 00 1C */	lfs f31, 0x1c(r4)
/* 80A2C900  38 7F 13 00 */	addi r3, r31, 0x1300
/* 80A2C904  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80A2C908  4B 84 28 F1 */	bl SetH__8cM3dGCylFf
/* 80A2C90C  38 7F 13 00 */	addi r3, r31, 0x1300
/* 80A2C910  FC 20 F8 90 */	fmr f1, f31
/* 80A2C914  4B 84 28 ED */	bl SetR__8cM3dGCylFf
/* 80A2C918  38 7F 13 00 */	addi r3, r31, 0x1300
/* 80A2C91C  38 81 00 08 */	addi r4, r1, 8
/* 80A2C920  4B 84 28 BD */	bl SetC__8cM3dGCylFRC4cXyz
/* 80A2C924  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2C928  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2C92C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A2C930  38 9F 11 DC */	addi r4, r31, 0x11dc
/* 80A2C934  4B 83 82 75 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80A2C938:
/* 80A2C938  38 7F 11 DC */	addi r3, r31, 0x11dc
/* 80A2C93C  81 9F 12 18 */	lwz r12, 0x1218(r31)
/* 80A2C940  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80A2C944  7D 89 03 A6 */	mtctr r12
/* 80A2C948  4E 80 04 21 */	bctrl 
/* 80A2C94C  38 7F 11 DC */	addi r3, r31, 0x11dc
/* 80A2C950  81 9F 12 18 */	lwz r12, 0x1218(r31)
/* 80A2C954  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A2C958  7D 89 03 A6 */	mtctr r12
/* 80A2C95C  4E 80 04 21 */	bctrl 
/* 80A2C960  7F E3 FB 78 */	mr r3, r31
/* 80A2C964  48 00 00 21 */	bl setCollisionSword__10daNpc_Kn_cFv
/* 80A2C968  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80A2C96C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80A2C970  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A2C974  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A2C978  7C 08 03 A6 */	mtlr r0
/* 80A2C97C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A2C980  4E 80 00 20 */	blr 
