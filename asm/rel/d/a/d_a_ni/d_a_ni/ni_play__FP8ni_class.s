lbl_8094E4FC:
/* 8094E4FC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8094E500  7C 08 02 A6 */	mflr r0
/* 8094E504  90 01 00 94 */	stw r0, 0x94(r1)
/* 8094E508  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8094E50C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8094E510  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8094E514  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8094E518  39 61 00 70 */	addi r11, r1, 0x70
/* 8094E51C  4B A1 3C B9 */	bl _savegpr_27
/* 8094E520  7C 7B 1B 78 */	mr r27, r3
/* 8094E524  3C 60 80 95 */	lis r3, lit_3958@ha /* 0x809511C0@ha */
/* 8094E528  3B E3 11 C0 */	addi r31, r3, lit_3958@l /* 0x809511C0@l */
/* 8094E52C  3B C0 00 00 */	li r30, 0
/* 8094E530  3B A0 00 01 */	li r29, 1
/* 8094E534  3B 80 40 00 */	li r28, 0x4000
/* 8094E538  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 8094E53C  38 83 D2 E8 */	addi r4, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 8094E540  C0 04 00 00 */	lfs f0, 0(r4)
/* 8094E544  D0 1B 0A A4 */	stfs f0, 0xaa4(r27)
/* 8094E548  C0 04 00 04 */	lfs f0, 4(r4)
/* 8094E54C  D0 1B 0A A8 */	stfs f0, 0xaa8(r27)
/* 8094E550  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8094E554  D0 1B 0A B0 */	stfs f0, 0xab0(r27)
/* 8094E558  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8094E55C  D0 1B 0A AC */	stfs f0, 0xaac(r27)
/* 8094E560  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 8094E564  D0 1B 0A B4 */	stfs f0, 0xab4(r27)
/* 8094E568  80 04 00 30 */	lwz r0, 0x30(r4)
/* 8094E56C  54 00 06 72 */	rlwinm r0, r0, 0, 0x19, 0x19
/* 8094E570  90 1B 0A B8 */	stw r0, 0xab8(r27)
/* 8094E574  C0 1B 0A A4 */	lfs f0, 0xaa4(r27)
/* 8094E578  FC 00 02 10 */	fabs f0, f0
/* 8094E57C  FC 20 00 18 */	frsp f1, f0
/* 8094E580  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8094E584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094E588  40 80 00 0C */	bge lbl_8094E594
/* 8094E58C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E590  D0 1B 0A A4 */	stfs f0, 0xaa4(r27)
lbl_8094E594:
/* 8094E594  C0 1B 0A A8 */	lfs f0, 0xaa8(r27)
/* 8094E598  FC 00 02 10 */	fabs f0, f0
/* 8094E59C  FC 20 00 18 */	frsp f1, f0
/* 8094E5A0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8094E5A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094E5A8  40 80 00 0C */	bge lbl_8094E5B4
/* 8094E5AC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E5B0  D0 1B 0A A8 */	stfs f0, 0xaa8(r27)
lbl_8094E5B4:
/* 8094E5B4  C0 1B 0A B0 */	lfs f0, 0xab0(r27)
/* 8094E5B8  FC 00 02 10 */	fabs f0, f0
/* 8094E5BC  FC 20 00 18 */	frsp f1, f0
/* 8094E5C0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8094E5C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094E5C8  40 80 00 0C */	bge lbl_8094E5D4
/* 8094E5CC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E5D0  D0 1B 0A B0 */	stfs f0, 0xab0(r27)
lbl_8094E5D4:
/* 8094E5D4  C0 1B 0A AC */	lfs f0, 0xaac(r27)
/* 8094E5D8  FC 00 02 10 */	fabs f0, f0
/* 8094E5DC  FC 20 00 18 */	frsp f1, f0
/* 8094E5E0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8094E5E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094E5E8  40 80 00 0C */	bge lbl_8094E5F4
/* 8094E5EC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E5F0  D0 1B 0A AC */	stfs f0, 0xaac(r27)
lbl_8094E5F4:
/* 8094E5F4  A8 1B 05 FC */	lha r0, 0x5fc(r27)
/* 8094E5F8  28 00 00 1E */	cmplwi r0, 0x1e
/* 8094E5FC  41 81 02 A0 */	bgt lbl_8094E89C
/* 8094E600  3C 60 80 95 */	lis r3, lit_5125@ha /* 0x80951358@ha */
/* 8094E604  38 63 13 58 */	addi r3, r3, lit_5125@l /* 0x80951358@l */
/* 8094E608  54 00 10 3A */	slwi r0, r0, 2
/* 8094E60C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8094E610  7C 09 03 A6 */	mtctr r0
/* 8094E614  4E 80 04 20 */	bctr 
lbl_8094E618:
/* 8094E618  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E61C  D0 1B 0A C0 */	stfs f0, 0xac0(r27)
/* 8094E620  7F 63 DB 78 */	mr r3, r27
/* 8094E624  38 80 00 0C */	li r4, 0xc
/* 8094E628  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8094E62C  38 A0 00 02 */	li r5, 2
/* 8094E630  C0 5B 0A C0 */	lfs f2, 0xac0(r27)
/* 8094E634  4B FF D6 75 */	bl anm_init__FP8ni_classifUcf
/* 8094E638  A8 7B 05 FC */	lha r3, 0x5fc(r27)
/* 8094E63C  38 03 00 01 */	addi r0, r3, 1
/* 8094E640  B0 1B 05 FC */	sth r0, 0x5fc(r27)
lbl_8094E644:
/* 8094E644  80 7B 05 E8 */	lwz r3, 0x5e8(r27)
/* 8094E648  38 63 00 0C */	addi r3, r3, 0xc
/* 8094E64C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094E650  4B 9D 9D DD */	bl checkPass__12J3DFrameCtrlFf
/* 8094E654  2C 03 00 00 */	cmpwi r3, 0
/* 8094E658  40 82 00 1C */	bne lbl_8094E674
/* 8094E65C  80 7B 05 E8 */	lwz r3, 0x5e8(r27)
/* 8094E660  38 63 00 0C */	addi r3, r3, 0xc
/* 8094E664  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8094E668  4B 9D 9D C5 */	bl checkPass__12J3DFrameCtrlFf
/* 8094E66C  2C 03 00 00 */	cmpwi r3, 0
/* 8094E670  41 82 00 30 */	beq lbl_8094E6A0
lbl_8094E674:
/* 8094E674  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050006@ha */
/* 8094E678  38 03 00 06 */	addi r0, r3, 0x0006 /* 0x00050006@l */
/* 8094E67C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8094E680  38 7B 0A 28 */	addi r3, r27, 0xa28
/* 8094E684  38 81 00 10 */	addi r4, r1, 0x10
/* 8094E688  38 A0 00 00 */	li r5, 0
/* 8094E68C  38 C0 FF FF */	li r6, -1
/* 8094E690  81 9B 0A 38 */	lwz r12, 0xa38(r27)
/* 8094E694  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8094E698  7D 89 03 A6 */	mtctr r12
/* 8094E69C  4E 80 04 21 */	bctrl 
lbl_8094E6A0:
/* 8094E6A0  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8094E6A4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8094E6A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094E6AC  40 81 01 F0 */	ble lbl_8094E89C
/* 8094E6B0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8094E6B4  D0 1B 0A C0 */	stfs f0, 0xac0(r27)
/* 8094E6B8  7F 63 DB 78 */	mr r3, r27
/* 8094E6BC  38 80 00 0D */	li r4, 0xd
/* 8094E6C0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8094E6C4  38 A0 00 02 */	li r5, 2
/* 8094E6C8  C0 5B 0A C0 */	lfs f2, 0xac0(r27)
/* 8094E6CC  4B FF D5 DD */	bl anm_init__FP8ni_classifUcf
/* 8094E6D0  A8 7B 05 FC */	lha r3, 0x5fc(r27)
/* 8094E6D4  38 03 00 01 */	addi r0, r3, 1
/* 8094E6D8  B0 1B 05 FC */	sth r0, 0x5fc(r27)
/* 8094E6DC  48 00 01 C0 */	b lbl_8094E89C
lbl_8094E6E0:
/* 8094E6E0  80 7B 05 E8 */	lwz r3, 0x5e8(r27)
/* 8094E6E4  38 63 00 0C */	addi r3, r3, 0xc
/* 8094E6E8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094E6EC  4B 9D 9D 41 */	bl checkPass__12J3DFrameCtrlFf
/* 8094E6F0  2C 03 00 00 */	cmpwi r3, 0
/* 8094E6F4  40 82 00 1C */	bne lbl_8094E710
/* 8094E6F8  80 7B 05 E8 */	lwz r3, 0x5e8(r27)
/* 8094E6FC  38 63 00 0C */	addi r3, r3, 0xc
/* 8094E700  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8094E704  4B 9D 9D 29 */	bl checkPass__12J3DFrameCtrlFf
/* 8094E708  2C 03 00 00 */	cmpwi r3, 0
/* 8094E70C  41 82 00 30 */	beq lbl_8094E73C
lbl_8094E710:
/* 8094E710  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050006@ha */
/* 8094E714  38 03 00 06 */	addi r0, r3, 0x0006 /* 0x00050006@l */
/* 8094E718  90 01 00 0C */	stw r0, 0xc(r1)
/* 8094E71C  38 7B 0A 28 */	addi r3, r27, 0xa28
/* 8094E720  38 81 00 0C */	addi r4, r1, 0xc
/* 8094E724  38 A0 00 00 */	li r5, 0
/* 8094E728  38 C0 FF FF */	li r6, -1
/* 8094E72C  81 9B 0A 38 */	lwz r12, 0xa38(r27)
/* 8094E730  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8094E734  7D 89 03 A6 */	mtctr r12
/* 8094E738  4E 80 04 21 */	bctrl 
lbl_8094E73C:
/* 8094E73C  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8094E740  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8094E744  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094E748  40 80 01 54 */	bge lbl_8094E89C
/* 8094E74C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8094E750  D0 1B 0A C0 */	stfs f0, 0xac0(r27)
/* 8094E754  7F 63 DB 78 */	mr r3, r27
/* 8094E758  38 80 00 0C */	li r4, 0xc
/* 8094E75C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8094E760  38 A0 00 02 */	li r5, 2
/* 8094E764  C0 5B 0A C0 */	lfs f2, 0xac0(r27)
/* 8094E768  4B FF D5 41 */	bl anm_init__FP8ni_classifUcf
/* 8094E76C  38 00 00 01 */	li r0, 1
/* 8094E770  B0 1B 05 FC */	sth r0, 0x5fc(r27)
/* 8094E774  48 00 01 28 */	b lbl_8094E89C
lbl_8094E778:
/* 8094E778  80 7B 05 E8 */	lwz r3, 0x5e8(r27)
/* 8094E77C  38 80 00 01 */	li r4, 1
/* 8094E780  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8094E784  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8094E788  40 82 00 18 */	bne lbl_8094E7A0
/* 8094E78C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8094E790  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8094E794  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8094E798  41 82 00 08 */	beq lbl_8094E7A0
/* 8094E79C  38 80 00 00 */	li r4, 0
lbl_8094E7A0:
/* 8094E7A0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8094E7A4  41 82 00 F8 */	beq lbl_8094E89C
/* 8094E7A8  38 00 00 00 */	li r0, 0
/* 8094E7AC  B0 1B 05 FC */	sth r0, 0x5fc(r27)
/* 8094E7B0  48 00 00 EC */	b lbl_8094E89C
lbl_8094E7B4:
/* 8094E7B4  3B 80 08 00 */	li r28, 0x800
/* 8094E7B8  80 04 00 30 */	lwz r0, 0x30(r4)
/* 8094E7BC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8094E7C0  41 82 00 24 */	beq lbl_8094E7E4
/* 8094E7C4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8094E7C8  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 8094E7CC  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 8094E7D0  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8094E7D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094E7D8  40 80 00 14 */	bge lbl_8094E7EC
/* 8094E7DC  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 8094E7E0  48 00 00 0C */	b lbl_8094E7EC
lbl_8094E7E4:
/* 8094E7E4  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8094E7E8  D0 1B 05 30 */	stfs f0, 0x530(r27)
lbl_8094E7EC:
/* 8094E7EC  80 1B 06 9C */	lwz r0, 0x69c(r27)
/* 8094E7F0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8094E7F4  40 82 00 10 */	bne lbl_8094E804
/* 8094E7F8  88 1B 08 48 */	lbz r0, 0x848(r27)
/* 8094E7FC  7C 00 07 75 */	extsb. r0, r0
/* 8094E800  41 82 00 14 */	beq lbl_8094E814
lbl_8094E804:
/* 8094E804  38 00 00 00 */	li r0, 0
/* 8094E808  B0 1B 05 FC */	sth r0, 0x5fc(r27)
/* 8094E80C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E810  D0 1B 0A F0 */	stfs f0, 0xaf0(r27)
lbl_8094E814:
/* 8094E814  3B A0 00 00 */	li r29, 0
/* 8094E818  48 00 00 84 */	b lbl_8094E89C
lbl_8094E81C:
/* 8094E81C  3B C0 00 01 */	li r30, 1
/* 8094E820  3B 80 04 00 */	li r28, 0x400
/* 8094E824  88 1B 08 48 */	lbz r0, 0x848(r27)
/* 8094E828  7C 00 07 75 */	extsb. r0, r0
/* 8094E82C  40 82 00 70 */	bne lbl_8094E89C
/* 8094E830  38 00 00 00 */	li r0, 0
/* 8094E834  B0 1B 05 FC */	sth r0, 0x5fc(r27)
/* 8094E838  48 00 00 64 */	b lbl_8094E89C
lbl_8094E83C:
/* 8094E83C  3B C0 00 01 */	li r30, 1
/* 8094E840  A8 1B 05 F8 */	lha r0, 0x5f8(r27)
/* 8094E844  1C 00 23 28 */	mulli r0, r0, 0x2328
/* 8094E848  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8094E84C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8094E850  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8094E854  7C 23 04 2E */	lfsx f1, r3, r0
/* 8094E858  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8094E85C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8094E860  FC 00 00 1E */	fctiwz f0, f0
/* 8094E864  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8094E868  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8094E86C  B0 1B 04 E0 */	sth r0, 0x4e0(r27)
/* 8094E870  A8 1B 06 0C */	lha r0, 0x60c(r27)
/* 8094E874  2C 00 00 00 */	cmpwi r0, 0
/* 8094E878  40 82 00 24 */	bne lbl_8094E89C
/* 8094E87C  38 00 00 01 */	li r0, 1
/* 8094E880  B0 1B 05 FC */	sth r0, 0x5fc(r27)
/* 8094E884  7F 63 DB 78 */	mr r3, r27
/* 8094E888  38 80 00 0B */	li r4, 0xb
/* 8094E88C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8094E890  38 A0 00 02 */	li r5, 2
/* 8094E894  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8094E898  4B FF D4 11 */	bl anm_init__FP8ni_classifUcf
lbl_8094E89C:
/* 8094E89C  C0 1B 0A A4 */	lfs f0, 0xaa4(r27)
/* 8094E8A0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8094E8A4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E8A8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8094E8AC  C0 1B 0A A8 */	lfs f0, 0xaa8(r27)
/* 8094E8B0  FC 00 00 50 */	fneg f0, f0
/* 8094E8B4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8094E8B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094E8BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8094E8C0  80 A3 5D 74 */	lwz r5, 0x5d74(r3)
/* 8094E8C4  38 61 00 20 */	addi r3, r1, 0x20
/* 8094E8C8  38 85 00 E4 */	addi r4, r5, 0xe4
/* 8094E8CC  38 A5 00 D8 */	addi r5, r5, 0xd8
/* 8094E8D0  4B 91 82 65 */	bl __mi__4cXyzCFRC3Vec
/* 8094E8D4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8094E8D8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8094E8DC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8094E8E0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8094E8E4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8094E8E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8094E8EC  FC 20 08 50 */	fneg f1, f1
/* 8094E8F0  FC 40 00 50 */	fneg f2, f0
/* 8094E8F4  4B 91 8D 81 */	bl cM_atan2s__Fff
/* 8094E8F8  7C 64 1B 78 */	mr r4, r3
/* 8094E8FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8094E900  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8094E904  80 63 00 00 */	lwz r3, 0(r3)
/* 8094E908  4B 6B DA D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8094E90C  38 61 00 38 */	addi r3, r1, 0x38
/* 8094E910  38 81 00 2C */	addi r4, r1, 0x2c
/* 8094E914  4B 92 25 D9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8094E918  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8094E91C  FF E0 00 90 */	fmr f31, f0
/* 8094E920  C3 C1 00 34 */	lfs f30, 0x34(r1)
/* 8094E924  FC 00 02 10 */	fabs f0, f0
/* 8094E928  FC 00 00 18 */	frsp f0, f0
/* 8094E92C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8094E930  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8094E934  4C 41 13 82 */	cror 2, 1, 2
/* 8094E938  41 82 00 18 */	beq lbl_8094E950
/* 8094E93C  FC 00 F2 10 */	fabs f0, f30
/* 8094E940  FC 00 00 18 */	frsp f0, f0
/* 8094E944  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8094E948  4C 41 13 82 */	cror 2, 1, 2
/* 8094E94C  40 82 00 24 */	bne lbl_8094E970
lbl_8094E950:
/* 8094E950  FC 20 F8 90 */	fmr f1, f31
/* 8094E954  FC 40 F0 90 */	fmr f2, f30
/* 8094E958  4B 91 8D 1D */	bl cM_atan2s__Fff
/* 8094E95C  7C 64 1B 78 */	mr r4, r3
/* 8094E960  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8094E964  38 A0 00 02 */	li r5, 2
/* 8094E968  7F 86 E3 78 */	mr r6, r28
/* 8094E96C  4B 92 1C 9D */	bl cLib_addCalcAngleS2__FPssss
lbl_8094E970:
/* 8094E970  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 8094E974  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 8094E978  EC 21 00 2A */	fadds f1, f1, f0
/* 8094E97C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E980  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094E984  40 81 00 0C */	ble lbl_8094E990
/* 8094E988  FC 00 08 34 */	frsqrte f0, f1
/* 8094E98C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8094E990:
/* 8094E990  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8094E994  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094E998  40 81 00 18 */	ble lbl_8094E9B0
/* 8094E99C  38 7B 0A BC */	addi r3, r27, 0xabc
/* 8094E9A0  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8094E9A4  C0 7F 00 C0 */	lfs f3, 0xc0(r31)
/* 8094E9A8  4B 92 10 95 */	bl cLib_addCalc2__FPffff
/* 8094E9AC  48 00 00 14 */	b lbl_8094E9C0
lbl_8094E9B0:
/* 8094E9B0  38 7B 0A BC */	addi r3, r27, 0xabc
/* 8094E9B4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094E9B8  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 8094E9BC  4B 92 10 C5 */	bl cLib_addCalc0__FPfff
lbl_8094E9C0:
/* 8094E9C0  C0 3B 0A BC */	lfs f1, 0xabc(r27)
/* 8094E9C4  EC 01 00 72 */	fmuls f0, f1, f1
/* 8094E9C8  EF C1 00 32 */	fmuls f30, f1, f0
/* 8094E9CC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8094E9D0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8094E9D4  40 81 00 08 */	ble lbl_8094E9DC
/* 8094E9D8  FF C0 00 90 */	fmr f30, f0
lbl_8094E9DC:
/* 8094E9DC  2C 1E 00 00 */	cmpwi r30, 0
/* 8094E9E0  41 82 00 20 */	beq lbl_8094EA00
/* 8094E9E4  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8094E9E8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8094E9EC  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8094E9F0  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8094E9F4  C0 7F 00 D8 */	lfs f3, 0xd8(r31)
/* 8094E9F8  4B 92 10 45 */	bl cLib_addCalc2__FPffff
/* 8094E9FC  48 00 00 60 */	b lbl_8094EA5C
lbl_8094EA00:
/* 8094EA00  FC 20 F0 90 */	fmr f1, f30
/* 8094EA04  A8 1B 0A 04 */	lha r0, 0xa04(r27)
/* 8094EA08  2C 00 E0 00 */	cmpwi r0, -8192
/* 8094EA0C  41 81 00 0C */	bgt lbl_8094EA18
/* 8094EA10  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8094EA14  48 00 00 3C */	b lbl_8094EA50
lbl_8094EA18:
/* 8094EA18  2C 00 E8 00 */	cmpwi r0, -6144
/* 8094EA1C  41 81 00 10 */	bgt lbl_8094EA2C
/* 8094EA20  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8094EA24  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8094EA28  48 00 00 28 */	b lbl_8094EA50
lbl_8094EA2C:
/* 8094EA2C  2C 00 F0 00 */	cmpwi r0, -4096
/* 8094EA30  41 81 00 10 */	bgt lbl_8094EA40
/* 8094EA34  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8094EA38  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8094EA3C  48 00 00 14 */	b lbl_8094EA50
lbl_8094EA40:
/* 8094EA40  2C 00 F8 00 */	cmpwi r0, -2048
/* 8094EA44  41 81 00 0C */	bgt lbl_8094EA50
/* 8094EA48  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8094EA4C  EC 3E 00 32 */	fmuls f1, f30, f0
lbl_8094EA50:
/* 8094EA50  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8094EA54  EC 00 00 72 */	fmuls f0, f0, f1
/* 8094EA58  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_8094EA5C:
/* 8094EA5C  A8 1B 05 FC */	lha r0, 0x5fc(r27)
/* 8094EA60  2C 00 00 05 */	cmpwi r0, 5
/* 8094EA64  40 80 00 84 */	bge lbl_8094EAE8
/* 8094EA68  80 1B 05 F4 */	lwz r0, 0x5f4(r27)
/* 8094EA6C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8094EA70  40 82 00 14 */	bne lbl_8094EA84
/* 8094EA74  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8094EA78  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8094EA7C  D0 1B 0A C0 */	stfs f0, 0xac0(r27)
/* 8094EA80  48 00 00 10 */	b lbl_8094EA90
lbl_8094EA84:
/* 8094EA84  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8094EA88  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8094EA8C  D0 1B 0A C0 */	stfs f0, 0xac0(r27)
lbl_8094EA90:
/* 8094EA90  C0 1B 0A C0 */	lfs f0, 0xac0(r27)
/* 8094EA94  80 7B 05 E8 */	lwz r3, 0x5e8(r27)
/* 8094EA98  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8094EA9C  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 8094EAA0  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8094EAA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094EAA8  4C 40 13 82 */	cror 2, 0, 2
/* 8094EAAC  40 82 00 3C */	bne lbl_8094EAE8
/* 8094EAB0  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094EAB4  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 8094EAB8  38 00 00 0A */	li r0, 0xa
/* 8094EABC  B0 1B 05 FC */	sth r0, 0x5fc(r27)
/* 8094EAC0  7F 63 DB 78 */	mr r3, r27
/* 8094EAC4  38 80 00 09 */	li r4, 9
/* 8094EAC8  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8094EACC  38 A0 00 02 */	li r5, 2
/* 8094EAD0  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8094EAD4  4B FF D1 D5 */	bl anm_init__FP8ni_classifUcf
/* 8094EAD8  7F 63 DB 78 */	mr r3, r27
/* 8094EADC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8094EAE0  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 8094EAE4  4B FF D2 85 */	bl hane_set__FP8ni_classff
lbl_8094EAE8:
/* 8094EAE8  A8 1B 05 FC */	lha r0, 0x5fc(r27)
/* 8094EAEC  2C 00 00 14 */	cmpwi r0, 0x14
/* 8094EAF0  40 80 00 40 */	bge lbl_8094EB30
/* 8094EAF4  88 1B 08 48 */	lbz r0, 0x848(r27)
/* 8094EAF8  7C 00 07 75 */	extsb. r0, r0
/* 8094EAFC  41 82 00 34 */	beq lbl_8094EB30
/* 8094EB00  38 00 00 14 */	li r0, 0x14
/* 8094EB04  B0 1B 05 FC */	sth r0, 0x5fc(r27)
/* 8094EB08  7F 63 DB 78 */	mr r3, r27
/* 8094EB0C  38 80 00 0B */	li r4, 0xb
/* 8094EB10  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8094EB14  38 A0 00 02 */	li r5, 2
/* 8094EB18  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8094EB1C  4B FF D1 8D */	bl anm_init__FP8ni_classifUcf
/* 8094EB20  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8094EB24  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8094EB28  EC 01 00 32 */	fmuls f0, f1, f0
/* 8094EB2C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_8094EB30:
/* 8094EB30  2C 1D 00 00 */	cmpwi r29, 0
/* 8094EB34  40 82 00 0C */	bne lbl_8094EB40
/* 8094EB38  2C 1E 00 00 */	cmpwi r30, 0
/* 8094EB3C  41 82 00 50 */	beq lbl_8094EB8C
lbl_8094EB40:
/* 8094EB40  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 8094EB44  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 8094EB48  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8094EB4C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8094EB50  41 82 00 3C */	beq lbl_8094EB8C
/* 8094EB54  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8094EB58  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 8094EB5C  38 00 00 0A */	li r0, 0xa
/* 8094EB60  B0 1B 05 FC */	sth r0, 0x5fc(r27)
/* 8094EB64  7F 63 DB 78 */	mr r3, r27
/* 8094EB68  38 80 00 09 */	li r4, 9
/* 8094EB6C  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8094EB70  38 A0 00 02 */	li r5, 2
/* 8094EB74  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8094EB78  4B FF D1 31 */	bl anm_init__FP8ni_classifUcf
/* 8094EB7C  7F 63 DB 78 */	mr r3, r27
/* 8094EB80  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8094EB84  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 8094EB88  4B FF D1 E1 */	bl hane_set__FP8ni_classff
lbl_8094EB8C:
/* 8094EB8C  A8 1B 05 60 */	lha r0, 0x560(r27)
/* 8094EB90  2C 00 00 00 */	cmpwi r0, 0
/* 8094EB94  41 82 00 94 */	beq lbl_8094EC28
/* 8094EB98  38 00 00 00 */	li r0, 0
/* 8094EB9C  B0 1B 05 60 */	sth r0, 0x560(r27)
/* 8094EBA0  A8 1B 06 0C */	lha r0, 0x60c(r27)
/* 8094EBA4  2C 00 00 00 */	cmpwi r0, 0
/* 8094EBA8  40 82 00 80 */	bne lbl_8094EC28
/* 8094EBAC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8094EBB0  4B 91 8D A5 */	bl cM_rndF__Ff
/* 8094EBB4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8094EBB8  EC 00 08 2A */	fadds f0, f0, f1
/* 8094EBBC  FC 00 00 1E */	fctiwz f0, f0
/* 8094EBC0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8094EBC4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8094EBC8  B0 1B 06 0C */	sth r0, 0x60c(r27)
/* 8094EBCC  38 00 00 1E */	li r0, 0x1e
/* 8094EBD0  B0 1B 05 FC */	sth r0, 0x5fc(r27)
/* 8094EBD4  7F 63 DB 78 */	mr r3, r27
/* 8094EBD8  38 80 00 09 */	li r4, 9
/* 8094EBDC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094EBE0  38 A0 00 02 */	li r5, 2
/* 8094EBE4  FC 40 08 90 */	fmr f2, f1
/* 8094EBE8  4B FF D0 C1 */	bl anm_init__FP8ni_classifUcf
/* 8094EBEC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050007@ha */
/* 8094EBF0  38 03 00 07 */	addi r0, r3, 0x0007 /* 0x00050007@l */
/* 8094EBF4  90 01 00 08 */	stw r0, 8(r1)
/* 8094EBF8  38 7B 0A 28 */	addi r3, r27, 0xa28
/* 8094EBFC  38 81 00 08 */	addi r4, r1, 8
/* 8094EC00  38 A0 00 00 */	li r5, 0
/* 8094EC04  38 C0 FF FF */	li r6, -1
/* 8094EC08  81 9B 0A 38 */	lwz r12, 0xa38(r27)
/* 8094EC0C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8094EC10  7D 89 03 A6 */	mtctr r12
/* 8094EC14  4E 80 04 21 */	bctrl 
/* 8094EC18  7F 63 DB 78 */	mr r3, r27
/* 8094EC1C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8094EC20  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 8094EC24  4B FF D1 45 */	bl hane_set__FP8ni_classff
lbl_8094EC28:
/* 8094EC28  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8094EC2C  C0 3B 07 08 */	lfs f1, 0x708(r27)
/* 8094EC30  EC 02 08 28 */	fsubs f0, f2, f1
/* 8094EC34  FC 00 02 10 */	fabs f0, f0
/* 8094EC38  FC 60 00 18 */	frsp f3, f0
/* 8094EC3C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8094EC40  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8094EC44  40 80 00 0C */	bge lbl_8094EC50
/* 8094EC48  D0 3B 0A 00 */	stfs f1, 0xa00(r27)
/* 8094EC4C  48 00 00 24 */	b lbl_8094EC70
lbl_8094EC50:
/* 8094EC50  C0 3B 09 F8 */	lfs f1, 0x9f8(r27)
/* 8094EC54  EC 02 08 28 */	fsubs f0, f2, f1
/* 8094EC58  FC 00 02 10 */	fabs f0, f0
/* 8094EC5C  FC 40 00 18 */	frsp f2, f0
/* 8094EC60  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8094EC64  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8094EC68  40 80 00 08 */	bge lbl_8094EC70
/* 8094EC6C  D0 3B 0A 00 */	stfs f1, 0xa00(r27)
lbl_8094EC70:
/* 8094EC70  C0 1B 0A 00 */	lfs f0, 0xa00(r27)
/* 8094EC74  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 8094EC78  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8094EC7C  4C 41 13 82 */	cror 2, 1, 2
/* 8094EC80  40 82 00 08 */	bne lbl_8094EC88
/* 8094EC84  D0 3B 0A 00 */	stfs f1, 0xa00(r27)
lbl_8094EC88:
/* 8094EC88  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8094EC8C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8094EC90  80 63 00 00 */	lwz r3, 0(r3)
/* 8094EC94  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 8094EC98  4B 6B D7 45 */	bl mDoMtx_YrotS__FPA4_fs
/* 8094EC9C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094ECA0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8094ECA4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8094ECA8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8094ECAC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8094ECB0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8094ECB4  38 61 00 38 */	addi r3, r1, 0x38
/* 8094ECB8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8094ECBC  4B 92 22 31 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8094ECC0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8094ECC4  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8094ECC8  7C 65 1B 78 */	mr r5, r3
/* 8094ECCC  4B 9F 83 C5 */	bl PSVECAdd
/* 8094ECD0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8094ECD4  4B 6C EF E9 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8094ECD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8094ECDC  41 82 00 80 */	beq lbl_8094ED5C
/* 8094ECE0  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 8094ECE4  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 8094ECE8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8094ECEC  38 61 00 14 */	addi r3, r1, 0x14
/* 8094ECF0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8094ECF4  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 8094ECF8  4B 91 7E 3D */	bl __mi__4cXyzCFRC3Vec
/* 8094ECFC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8094ED00  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8094ED04  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8094ED08  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8094ED0C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8094ED10  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8094ED14  EC 21 00 72 */	fmuls f1, f1, f1
/* 8094ED18  EC 00 00 32 */	fmuls f0, f0, f0
/* 8094ED1C  EC 41 00 2A */	fadds f2, f1, f0
/* 8094ED20  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094ED24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8094ED28  40 81 00 0C */	ble lbl_8094ED34
/* 8094ED2C  FC 00 10 34 */	frsqrte f0, f2
/* 8094ED30  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8094ED34:
/* 8094ED34  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8094ED38  4B 91 89 3D */	bl cM_atan2s__Fff
/* 8094ED3C  7C 03 00 D0 */	neg r0, r3
/* 8094ED40  B0 1B 0A 04 */	sth r0, 0xa04(r27)
/* 8094ED44  A8 1B 0A 04 */	lha r0, 0xa04(r27)
/* 8094ED48  2C 00 00 00 */	cmpwi r0, 0
/* 8094ED4C  40 81 00 18 */	ble lbl_8094ED64
/* 8094ED50  38 00 00 00 */	li r0, 0
/* 8094ED54  B0 1B 0A 04 */	sth r0, 0xa04(r27)
/* 8094ED58  48 00 00 0C */	b lbl_8094ED64
lbl_8094ED5C:
/* 8094ED5C  38 00 00 00 */	li r0, 0
/* 8094ED60  B0 1B 0A 04 */	sth r0, 0xa04(r27)
lbl_8094ED64:
/* 8094ED64  7F C3 F3 78 */	mr r3, r30
/* 8094ED68  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8094ED6C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8094ED70  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8094ED74  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8094ED78  39 61 00 70 */	addi r11, r1, 0x70
/* 8094ED7C  4B A1 34 A5 */	bl _restgpr_27
/* 8094ED80  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8094ED84  7C 08 03 A6 */	mtlr r0
/* 8094ED88  38 21 00 90 */	addi r1, r1, 0x90
/* 8094ED8C  4E 80 00 20 */	blr 
