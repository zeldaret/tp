lbl_8052C574:
/* 8052C574  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8052C578  7C 08 02 A6 */	mflr r0
/* 8052C57C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8052C580  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8052C584  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8052C588  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8052C58C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8052C590  7C 7E 1B 78 */	mr r30, r3
/* 8052C594  3C 60 80 53 */	lis r3, lit_3679@ha
/* 8052C598  3B E3 61 68 */	addi r31, r3, lit_3679@l
/* 8052C59C  A8 1E 05 B8 */	lha r0, 0x5b8(r30)
/* 8052C5A0  2C 00 00 01 */	cmpwi r0, 1
/* 8052C5A4  41 82 01 3C */	beq lbl_8052C6E0
/* 8052C5A8  40 80 00 10 */	bge lbl_8052C5B8
/* 8052C5AC  2C 00 00 00 */	cmpwi r0, 0
/* 8052C5B0  40 80 00 14 */	bge lbl_8052C5C4
/* 8052C5B4  48 00 03 C4 */	b lbl_8052C978
lbl_8052C5B8:
/* 8052C5B8  2C 00 00 03 */	cmpwi r0, 3
/* 8052C5BC  40 80 03 BC */	bge lbl_8052C978
/* 8052C5C0  48 00 02 A4 */	b lbl_8052C864
lbl_8052C5C4:
/* 8052C5C4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8052C5C8  4B D3 B3 C4 */	b cM_rndFX__Ff
/* 8052C5CC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8052C5D0  EC 00 08 2A */	fadds f0, f0, f1
/* 8052C5D4  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 8052C5D8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8052C5DC  4B D3 B3 B0 */	b cM_rndFX__Ff
/* 8052C5E0  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8052C5E4  EC 00 08 2A */	fadds f0, f0, f1
/* 8052C5E8  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 8052C5EC  C0 3E 05 EC */	lfs f1, 0x5ec(r30)
/* 8052C5F0  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8052C5F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052C5F8  40 80 00 24 */	bge lbl_8052C61C
/* 8052C5FC  A8 1E 06 28 */	lha r0, 0x628(r30)
/* 8052C600  2C 00 00 00 */	cmpwi r0, 0
/* 8052C604  40 82 00 18 */	bne lbl_8052C61C
/* 8052C608  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 8052C60C  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 8052C610  38 00 00 02 */	li r0, 2
/* 8052C614  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052C618  48 00 00 14 */	b lbl_8052C62C
lbl_8052C61C:
/* 8052C61C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8052C620  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 8052C624  38 00 00 01 */	li r0, 1
/* 8052C628  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
lbl_8052C62C:
/* 8052C62C  7F C3 F3 78 */	mr r3, r30
/* 8052C630  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052C634  4B FF F3 99 */	bl get_ground_y__FP13mg_fish_classP4cXyz
/* 8052C638  D0 3E 05 DC */	stfs f1, 0x5dc(r30)
/* 8052C63C  C0 5E 05 D8 */	lfs f2, 0x5d8(r30)
/* 8052C640  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 8052C644  EC 22 00 28 */	fsubs f1, f2, f0
/* 8052C648  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8052C64C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052C650  40 81 00 0C */	ble lbl_8052C65C
/* 8052C654  EC 02 00 28 */	fsubs f0, f2, f0
/* 8052C658  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
lbl_8052C65C:
/* 8052C65C  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 8052C660  C3 FE 05 DC */	lfs f31, 0x5dc(r30)
/* 8052C664  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8052C668  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052C66C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052C670  40 81 00 64 */	ble lbl_8052C6D4
/* 8052C674  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8052C678  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052C67C  40 80 00 58 */	bge lbl_8052C6D4
/* 8052C680  A8 1E 05 B8 */	lha r0, 0x5b8(r30)
/* 8052C684  2C 00 00 01 */	cmpwi r0, 1
/* 8052C688  40 82 00 28 */	bne lbl_8052C6B0
/* 8052C68C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8052C690  4B D3 B2 FC */	b cM_rndFX__Ff
/* 8052C694  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8052C698  EC 20 08 2A */	fadds f1, f0, f1
/* 8052C69C  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 8052C6A0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8052C6A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8052C6A8  EC 1F 00 2A */	fadds f0, f31, f0
/* 8052C6AC  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
lbl_8052C6B0:
/* 8052C6B0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8052C6B4  4B D3 B2 A0 */	b cM_rndF__Ff
/* 8052C6B8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8052C6BC  EC 00 08 2A */	fadds f0, f0, f1
/* 8052C6C0  FC 00 00 1E */	fctiwz f0, f0
/* 8052C6C4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052C6C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052C6CC  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8052C6D0  48 00 00 10 */	b lbl_8052C6E0
lbl_8052C6D4:
/* 8052C6D4  38 00 00 00 */	li r0, 0
/* 8052C6D8  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052C6DC  48 00 02 9C */	b lbl_8052C978
lbl_8052C6E0:
/* 8052C6E0  38 61 00 28 */	addi r3, r1, 0x28
/* 8052C6E4  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052C6E8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8052C6EC  4B D3 A4 48 */	b __mi__4cXyzCFRC3Vec
/* 8052C6F0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8052C6F4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8052C6F8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8052C6FC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8052C700  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8052C704  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8052C708  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8052C70C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8052C710  40 82 00 44 */	bne lbl_8052C754
/* 8052C714  4B D3 AF 60 */	b cM_atan2s__Fff
/* 8052C718  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 8052C71C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8052C720  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052C724  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8052C728  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052C72C  EC 41 00 2A */	fadds f2, f1, f0
/* 8052C730  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052C734  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052C738  40 81 00 0C */	ble lbl_8052C744
/* 8052C73C  FC 00 10 34 */	frsqrte f0, f2
/* 8052C740  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052C744:
/* 8052C744  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8052C748  4B D3 AF 2C */	b cM_atan2s__Fff
/* 8052C74C  7C 03 00 D0 */	neg r0, r3
/* 8052C750  B0 1E 05 CE */	sth r0, 0x5ce(r30)
lbl_8052C754:
/* 8052C754  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 8052C758  2C 00 00 00 */	cmpwi r0, 0
/* 8052C75C  41 82 00 FC */	beq lbl_8052C858
/* 8052C760  38 61 00 34 */	addi r3, r1, 0x34
/* 8052C764  4B E1 A9 D4 */	b PSVECSquareMag
/* 8052C768  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052C76C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052C770  40 81 00 58 */	ble lbl_8052C7C8
/* 8052C774  FC 00 08 34 */	frsqrte f0, f1
/* 8052C778  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 8052C77C  FC 44 00 32 */	fmul f2, f4, f0
/* 8052C780  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 8052C784  FC 00 00 32 */	fmul f0, f0, f0
/* 8052C788  FC 01 00 32 */	fmul f0, f1, f0
/* 8052C78C  FC 03 00 28 */	fsub f0, f3, f0
/* 8052C790  FC 02 00 32 */	fmul f0, f2, f0
/* 8052C794  FC 44 00 32 */	fmul f2, f4, f0
/* 8052C798  FC 00 00 32 */	fmul f0, f0, f0
/* 8052C79C  FC 01 00 32 */	fmul f0, f1, f0
/* 8052C7A0  FC 03 00 28 */	fsub f0, f3, f0
/* 8052C7A4  FC 02 00 32 */	fmul f0, f2, f0
/* 8052C7A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8052C7AC  FC 00 00 32 */	fmul f0, f0, f0
/* 8052C7B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8052C7B4  FC 03 00 28 */	fsub f0, f3, f0
/* 8052C7B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8052C7BC  FC 21 00 32 */	fmul f1, f1, f0
/* 8052C7C0  FC 20 08 18 */	frsp f1, f1
/* 8052C7C4  48 00 00 88 */	b lbl_8052C84C
lbl_8052C7C8:
/* 8052C7C8  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 8052C7CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052C7D0  40 80 00 10 */	bge lbl_8052C7E0
/* 8052C7D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052C7D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8052C7DC  48 00 00 70 */	b lbl_8052C84C
lbl_8052C7E0:
/* 8052C7E0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8052C7E4  80 81 00 08 */	lwz r4, 8(r1)
/* 8052C7E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052C7EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052C7F0  7C 03 00 00 */	cmpw r3, r0
/* 8052C7F4  41 82 00 14 */	beq lbl_8052C808
/* 8052C7F8  40 80 00 40 */	bge lbl_8052C838
/* 8052C7FC  2C 03 00 00 */	cmpwi r3, 0
/* 8052C800  41 82 00 20 */	beq lbl_8052C820
/* 8052C804  48 00 00 34 */	b lbl_8052C838
lbl_8052C808:
/* 8052C808  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052C80C  41 82 00 0C */	beq lbl_8052C818
/* 8052C810  38 00 00 01 */	li r0, 1
/* 8052C814  48 00 00 28 */	b lbl_8052C83C
lbl_8052C818:
/* 8052C818  38 00 00 02 */	li r0, 2
/* 8052C81C  48 00 00 20 */	b lbl_8052C83C
lbl_8052C820:
/* 8052C820  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052C824  41 82 00 0C */	beq lbl_8052C830
/* 8052C828  38 00 00 05 */	li r0, 5
/* 8052C82C  48 00 00 10 */	b lbl_8052C83C
lbl_8052C830:
/* 8052C830  38 00 00 03 */	li r0, 3
/* 8052C834  48 00 00 08 */	b lbl_8052C83C
lbl_8052C838:
/* 8052C838  38 00 00 04 */	li r0, 4
lbl_8052C83C:
/* 8052C83C  2C 00 00 01 */	cmpwi r0, 1
/* 8052C840  40 82 00 0C */	bne lbl_8052C84C
/* 8052C844  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052C848  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8052C84C:
/* 8052C84C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8052C850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052C854  40 80 01 24 */	bge lbl_8052C978
lbl_8052C858:
/* 8052C858  38 00 00 00 */	li r0, 0
/* 8052C85C  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052C860  48 00 01 18 */	b lbl_8052C978
lbl_8052C864:
/* 8052C864  38 61 00 1C */	addi r3, r1, 0x1c
/* 8052C868  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052C86C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8052C870  4B D3 A2 C4 */	b __mi__4cXyzCFRC3Vec
/* 8052C874  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8052C878  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8052C87C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8052C880  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8052C884  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8052C888  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8052C88C  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8052C890  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8052C894  40 82 00 44 */	bne lbl_8052C8D8
/* 8052C898  4B D3 AD DC */	b cM_atan2s__Fff
/* 8052C89C  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 8052C8A0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8052C8A4  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052C8A8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8052C8AC  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052C8B0  EC 41 00 2A */	fadds f2, f1, f0
/* 8052C8B4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052C8B8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052C8BC  40 81 00 0C */	ble lbl_8052C8C8
/* 8052C8C0  FC 00 10 34 */	frsqrte f0, f2
/* 8052C8C4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052C8C8:
/* 8052C8C8  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8052C8CC  4B D3 AD A8 */	b cM_atan2s__Fff
/* 8052C8D0  7C 03 00 D0 */	neg r0, r3
/* 8052C8D4  B0 1E 05 CE */	sth r0, 0x5ce(r30)
lbl_8052C8D8:
/* 8052C8D8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8052C8DC  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 8052C8E0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8052C8E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8052C8E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052C8EC  40 81 00 8C */	ble lbl_8052C978
/* 8052C8F0  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 8052C8F4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8052C8F8  C0 1E 06 3C */	lfs f0, 0x63c(r30)
/* 8052C8FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8052C900  C0 1E 06 40 */	lfs f0, 0x640(r30)
/* 8052C904  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8052C908  7F C3 F3 78 */	mr r3, r30
/* 8052C90C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8052C910  38 81 00 10 */	addi r4, r1, 0x10
/* 8052C914  4B FF D5 75 */	bl sibuki_set__FP13mg_fish_classf4cXyz
/* 8052C918  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020087@ha */
/* 8052C91C  38 03 00 87 */	addi r0, r3, 0x0087 /* 0x00020087@l */
/* 8052C920  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052C924  38 7E 08 00 */	addi r3, r30, 0x800
/* 8052C928  38 81 00 0C */	addi r4, r1, 0xc
/* 8052C92C  38 A0 00 00 */	li r5, 0
/* 8052C930  38 C0 FF FF */	li r6, -1
/* 8052C934  81 9E 08 00 */	lwz r12, 0x800(r30)
/* 8052C938  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8052C93C  7D 89 03 A6 */	mtctr r12
/* 8052C940  4E 80 04 21 */	bctrl 
/* 8052C944  38 00 20 00 */	li r0, 0x2000
/* 8052C948  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 8052C94C  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 8052C950  38 00 00 00 */	li r0, 0
/* 8052C954  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052C958  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8052C95C  4B D3 AF F8 */	b cM_rndF__Ff
/* 8052C960  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8052C964  EC 00 08 2A */	fadds f0, f0, f1
/* 8052C968  FC 00 00 1E */	fctiwz f0, f0
/* 8052C96C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052C970  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052C974  B0 1E 06 28 */	sth r0, 0x628(r30)
lbl_8052C978:
/* 8052C978  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8052C97C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8052C980  FC 40 08 90 */	fmr f2, f1
/* 8052C984  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8052C988  4B D4 30 B4 */	b cLib_addCalc2__FPffff
/* 8052C98C  38 00 04 00 */	li r0, 0x400
/* 8052C990  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 8052C994  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8052C998  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 8052C99C  38 A0 00 02 */	li r5, 2
/* 8052C9A0  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 8052C9A4  4B D4 3C 64 */	b cLib_addCalcAngleS2__FPssss
/* 8052C9A8  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 8052C9AC  A8 9E 05 CE */	lha r4, 0x5ce(r30)
/* 8052C9B0  38 A0 00 02 */	li r5, 2
/* 8052C9B4  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 8052C9B8  4B D4 3C 50 */	b cLib_addCalcAngleS2__FPssss
/* 8052C9BC  A8 1E 06 32 */	lha r0, 0x632(r30)
/* 8052C9C0  2C 00 00 00 */	cmpwi r0, 0
/* 8052C9C4  40 82 00 BC */	bne lbl_8052CA80
/* 8052C9C8  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 8052C9CC  28 00 00 05 */	cmplwi r0, 5
/* 8052C9D0  40 82 00 B0 */	bne lbl_8052CA80
/* 8052C9D4  C0 3E 05 EC */	lfs f1, 0x5ec(r30)
/* 8052C9D8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8052C9DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052C9E0  40 81 00 A0 */	ble lbl_8052CA80
/* 8052C9E4  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8052C9E8  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8052C9EC  40 82 00 94 */	bne lbl_8052CA80
/* 8052C9F0  3C 60 80 53 */	lis r3, s_sg_sub__FPvPv@ha
/* 8052C9F4  38 63 B4 68 */	addi r3, r3, s_sg_sub__FPvPv@l
/* 8052C9F8  7F C4 F3 78 */	mr r4, r30
/* 8052C9FC  4B AF 49 3C */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052CA00  28 03 00 00 */	cmplwi r3, 0
/* 8052CA04  40 82 00 1C */	bne lbl_8052CA20
/* 8052CA08  3C 60 80 53 */	lis r3, s_bb2_sub__FPvPv@ha
/* 8052CA0C  38 63 B4 1C */	addi r3, r3, s_bb2_sub__FPvPv@l
/* 8052CA10  7F C4 F3 78 */	mr r4, r30
/* 8052CA14  4B AF 49 24 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052CA18  28 03 00 00 */	cmplwi r3, 0
/* 8052CA1C  41 82 00 5C */	beq lbl_8052CA78
lbl_8052CA20:
/* 8052CA20  3C 60 80 53 */	lis r3, s_bb2_sub__FPvPv@ha
/* 8052CA24  38 63 B4 1C */	addi r3, r3, s_bb2_sub__FPvPv@l
/* 8052CA28  7F C4 F3 78 */	mr r4, r30
/* 8052CA2C  4B AF 49 0C */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052CA30  28 03 00 00 */	cmplwi r3, 0
/* 8052CA34  41 82 00 4C */	beq lbl_8052CA80
/* 8052CA38  3C 60 80 53 */	lis r3, s_bb_sub__FPvPv@ha
/* 8052CA3C  38 63 B3 C4 */	addi r3, r3, s_bb_sub__FPvPv@l
/* 8052CA40  7F C4 F3 78 */	mr r4, r30
/* 8052CA44  4B AF 48 F4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052CA48  28 03 00 00 */	cmplwi r3, 0
/* 8052CA4C  40 82 00 34 */	bne lbl_8052CA80
/* 8052CA50  38 60 01 36 */	li r3, 0x136
/* 8052CA54  38 80 00 17 */	li r4, 0x17
/* 8052CA58  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8052CA5C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8052CA60  7C 06 07 74 */	extsb r6, r0
/* 8052CA64  38 E0 00 00 */	li r7, 0
/* 8052CA68  39 00 00 00 */	li r8, 0
/* 8052CA6C  39 20 FF FF */	li r9, -1
/* 8052CA70  4B AE D3 28 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8052CA74  48 00 00 0C */	b lbl_8052CA80
lbl_8052CA78:
/* 8052CA78  7F C3 F3 78 */	mr r3, r30
/* 8052CA7C  4B AE D2 00 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8052CA80:
/* 8052CA80  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8052CA84  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8052CA88  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8052CA8C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8052CA90  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052CA94  7C 08 03 A6 */	mtlr r0
/* 8052CA98  38 21 00 60 */	addi r1, r1, 0x60
/* 8052CA9C  4E 80 00 20 */	blr 
