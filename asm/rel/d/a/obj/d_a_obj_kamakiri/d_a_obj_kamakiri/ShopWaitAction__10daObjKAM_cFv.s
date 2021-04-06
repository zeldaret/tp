lbl_80C35684:
/* 80C35684  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C35688  7C 08 02 A6 */	mflr r0
/* 80C3568C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C35690  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C35694  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C35698  7C 7F 1B 78 */	mr r31, r3
/* 80C3569C  3C 60 80 C4 */	lis r3, lit_3775@ha /* 0x80C38408@ha */
/* 80C356A0  3B C3 84 08 */	addi r30, r3, lit_3775@l /* 0x80C38408@l */
/* 80C356A4  88 1F 09 81 */	lbz r0, 0x981(r31)
/* 80C356A8  2C 00 00 01 */	cmpwi r0, 1
/* 80C356AC  41 82 00 90 */	beq lbl_80C3573C
/* 80C356B0  40 80 01 24 */	bge lbl_80C357D4
/* 80C356B4  2C 00 00 00 */	cmpwi r0, 0
/* 80C356B8  40 80 00 08 */	bge lbl_80C356C0
/* 80C356BC  48 00 01 18 */	b lbl_80C357D4
lbl_80C356C0:
/* 80C356C0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C356C4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C356C8  3C 60 80 C4 */	lis r3, d_a_obj_kamakiri__stringBase0@ha /* 0x80C384FC@ha */
/* 80C356CC  38 63 84 FC */	addi r3, r3, d_a_obj_kamakiri__stringBase0@l /* 0x80C384FC@l */
/* 80C356D0  38 80 00 07 */	li r4, 7
/* 80C356D4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C356D8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C356DC  3C A5 00 02 */	addis r5, r5, 2
/* 80C356E0  38 C0 00 80 */	li r6, 0x80
/* 80C356E4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C356E8  4B 40 6C 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C356EC  7C 64 1B 78 */	mr r4, r3
/* 80C356F0  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C356F4  38 A0 00 02 */	li r5, 2
/* 80C356F8  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80C356FC  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80C35700  FC 60 10 90 */	fmr f3, f2
/* 80C35704  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 80C35708  4B 3D B7 69 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C3570C  88 7F 09 81 */	lbz r3, 0x981(r31)
/* 80C35710  38 03 00 01 */	addi r0, r3, 1
/* 80C35714  98 1F 09 81 */	stb r0, 0x981(r31)
/* 80C35718  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80C3571C  4B 63 22 39 */	bl cM_rndF__Ff
/* 80C35720  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80C35724  EC 00 08 2A */	fadds f0, f0, f1
/* 80C35728  FC 00 00 1E */	fctiwz f0, f0
/* 80C3572C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C35730  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C35734  B0 1F 09 82 */	sth r0, 0x982(r31)
/* 80C35738  48 00 00 9C */	b lbl_80C357D4
lbl_80C3573C:
/* 80C3573C  A8 7F 09 82 */	lha r3, 0x982(r31)
/* 80C35740  38 03 FF FF */	addi r0, r3, -1
/* 80C35744  B0 1F 09 82 */	sth r0, 0x982(r31)
/* 80C35748  A8 1F 09 82 */	lha r0, 0x982(r31)
/* 80C3574C  2C 00 00 00 */	cmpwi r0, 0
/* 80C35750  41 81 00 0C */	bgt lbl_80C3575C
/* 80C35754  38 00 00 00 */	li r0, 0
/* 80C35758  B0 1F 09 82 */	sth r0, 0x982(r31)
lbl_80C3575C:
/* 80C3575C  A8 1F 09 82 */	lha r0, 0x982(r31)
/* 80C35760  2C 00 00 00 */	cmpwi r0, 0
/* 80C35764  40 82 00 70 */	bne lbl_80C357D4
/* 80C35768  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C3576C  4B 63 21 E9 */	bl cM_rndF__Ff
/* 80C35770  FC 00 08 1E */	fctiwz f0, f1
/* 80C35774  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C35778  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C3577C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80C35780  40 80 00 18 */	bge lbl_80C35798
/* 80C35784  38 00 00 02 */	li r0, 2
/* 80C35788  98 1F 09 80 */	stb r0, 0x980(r31)
/* 80C3578C  38 00 00 00 */	li r0, 0
/* 80C35790  98 1F 09 81 */	stb r0, 0x981(r31)
/* 80C35794  48 00 00 40 */	b lbl_80C357D4
lbl_80C35798:
/* 80C35798  2C 00 00 46 */	cmpwi r0, 0x46
/* 80C3579C  40 80 00 18 */	bge lbl_80C357B4
/* 80C357A0  38 00 00 01 */	li r0, 1
/* 80C357A4  98 1F 09 80 */	stb r0, 0x980(r31)
/* 80C357A8  38 00 00 00 */	li r0, 0
/* 80C357AC  98 1F 09 81 */	stb r0, 0x981(r31)
/* 80C357B0  48 00 00 24 */	b lbl_80C357D4
lbl_80C357B4:
/* 80C357B4  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80C357B8  4B 63 21 9D */	bl cM_rndF__Ff
/* 80C357BC  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80C357C0  EC 00 08 2A */	fadds f0, f0, f1
/* 80C357C4  FC 00 00 1E */	fctiwz f0, f0
/* 80C357C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C357CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C357D0  B0 1F 09 82 */	sth r0, 0x982(r31)
lbl_80C357D4:
/* 80C357D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C357D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C357DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C357E0  7C 08 03 A6 */	mtlr r0
/* 80C357E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C357E8  4E 80 00 20 */	blr 
