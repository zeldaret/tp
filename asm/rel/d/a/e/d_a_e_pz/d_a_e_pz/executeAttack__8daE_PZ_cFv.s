lbl_8075C6AC:
/* 8075C6AC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8075C6B0  7C 08 02 A6 */	mflr r0
/* 8075C6B4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8075C6B8  39 61 00 70 */	addi r11, r1, 0x70
/* 8075C6BC  4B C0 5B 18 */	b _savegpr_27
/* 8075C6C0  7C 7E 1B 78 */	mr r30, r3
/* 8075C6C4  3C 60 80 76 */	lis r3, lit_3906@ha
/* 8075C6C8  3B E3 14 FC */	addi r31, r3, lit_3906@l
/* 8075C6CC  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 8075C6D0  2C 00 00 01 */	cmpwi r0, 1
/* 8075C6D4  41 82 00 A8 */	beq lbl_8075C77C
/* 8075C6D8  40 80 00 10 */	bge lbl_8075C6E8
/* 8075C6DC  2C 00 00 00 */	cmpwi r0, 0
/* 8075C6E0  40 80 00 14 */	bge lbl_8075C6F4
/* 8075C6E4  48 00 03 F0 */	b lbl_8075CAD4
lbl_8075C6E8:
/* 8075C6E8  2C 00 00 03 */	cmpwi r0, 3
/* 8075C6EC  40 80 03 E8 */	bge lbl_8075CAD4
/* 8075C6F0  48 00 02 18 */	b lbl_8075C908
lbl_8075C6F4:
/* 8075C6F4  4B B0 B1 78 */	b cM_rnd__Fv
/* 8075C6F8  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 8075C6FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075C700  40 80 00 2C */	bge lbl_8075C72C
/* 8075C704  88 1E 07 D4 */	lbz r0, 0x7d4(r30)
/* 8075C708  28 00 00 00 */	cmplwi r0, 0
/* 8075C70C  41 82 00 20 */	beq lbl_8075C72C
/* 8075C710  7F C3 F3 78 */	mr r3, r30
/* 8075C714  38 80 00 0A */	li r4, 0xa
/* 8075C718  38 A0 00 00 */	li r5, 0
/* 8075C71C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8075C720  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8075C724  4B FF C0 DD */	bl setBck__8daE_PZ_cFiUcff
/* 8075C728  48 00 00 44 */	b lbl_8075C76C
lbl_8075C72C:
/* 8075C72C  7F C3 F3 78 */	mr r3, r30
/* 8075C730  38 80 00 0B */	li r4, 0xb
/* 8075C734  38 A0 00 00 */	li r5, 0
/* 8075C738  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8075C73C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8075C740  4B FF C0 C1 */	bl setBck__8daE_PZ_cFiUcff
/* 8075C744  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703EC@ha */
/* 8075C748  38 03 03 EC */	addi r0, r3, 0x03EC /* 0x000703EC@l */
/* 8075C74C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8075C750  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 8075C754  38 81 00 24 */	addi r4, r1, 0x24
/* 8075C758  38 A0 FF FF */	li r5, -1
/* 8075C75C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 8075C760  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8075C764  7D 89 03 A6 */	mtctr r12
/* 8075C768  4E 80 04 21 */	bctrl 
lbl_8075C76C:
/* 8075C76C  80 7E 06 84 */	lwz r3, 0x684(r30)
/* 8075C770  38 03 00 01 */	addi r0, r3, 1
/* 8075C774  90 1E 06 84 */	stw r0, 0x684(r30)
/* 8075C778  48 00 03 5C */	b lbl_8075CAD4
lbl_8075C77C:
/* 8075C77C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8075C780  38 80 00 01 */	li r4, 1
/* 8075C784  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8075C788  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8075C78C  40 82 00 18 */	bne lbl_8075C7A4
/* 8075C790  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8075C794  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8075C798  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8075C79C  41 82 00 08 */	beq lbl_8075C7A4
/* 8075C7A0  38 80 00 00 */	li r4, 0
lbl_8075C7A4:
/* 8075C7A4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8075C7A8  41 82 03 2C */	beq lbl_8075CAD4
/* 8075C7AC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8075C7B0  7C 07 07 74 */	extsb r7, r0
/* 8075C7B4  38 00 00 00 */	li r0, 0
/* 8075C7B8  90 01 00 08 */	stw r0, 8(r1)
/* 8075C7BC  38 60 01 E4 */	li r3, 0x1e4
/* 8075C7C0  28 1E 00 00 */	cmplwi r30, 0
/* 8075C7C4  41 82 00 0C */	beq lbl_8075C7D0
/* 8075C7C8  80 9E 00 04 */	lwz r4, 4(r30)
/* 8075C7CC  48 00 00 08 */	b lbl_8075C7D4
lbl_8075C7D0:
/* 8075C7D0  38 80 FF FF */	li r4, -1
lbl_8075C7D4:
/* 8075C7D4  88 BE 07 D4 */	lbz r5, 0x7d4(r30)
/* 8075C7D8  38 A5 00 14 */	addi r5, r5, 0x14
/* 8075C7DC  38 DE 07 A8 */	addi r6, r30, 0x7a8
/* 8075C7E0  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8075C7E4  39 20 00 00 */	li r9, 0
/* 8075C7E8  39 40 FF FF */	li r10, -1
/* 8075C7EC  4B 8B D7 04 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8075C7F0  90 7E 04 A4 */	stw r3, 0x4a4(r30)
/* 8075C7F4  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 8075C7F8  2C 00 00 0B */	cmpwi r0, 0xb
/* 8075C7FC  40 82 00 C8 */	bne lbl_8075C8C4
/* 8075C800  7F C3 F3 78 */	mr r3, r30
/* 8075C804  38 80 00 0C */	li r4, 0xc
/* 8075C808  38 A0 00 00 */	li r5, 0
/* 8075C80C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8075C810  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8075C814  4B FF BF ED */	bl setBck__8daE_PZ_cFiUcff
/* 8075C818  3B 60 00 00 */	li r27, 0
/* 8075C81C  8B 9E 07 D8 */	lbz r28, 0x7d8(r30)
/* 8075C820  3C 60 80 76 */	lis r3, struct_80761E0C+0x1D@ha
/* 8075C824  3B A3 1E 29 */	addi r29, r3, struct_80761E0C+0x1D@l
/* 8075C828  48 00 00 80 */	b lbl_8075C8A8
lbl_8075C82C:
/* 8075C82C  88 1E 07 D4 */	lbz r0, 0x7d4(r30)
/* 8075C830  28 00 00 01 */	cmplwi r0, 1
/* 8075C834  40 82 00 34 */	bne lbl_8075C868
/* 8075C838  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8075C83C  4B B0 B1 18 */	b cM_rndF__Ff
/* 8075C840  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8075C844  EC 00 08 2A */	fadds f0, f0, f1
/* 8075C848  FC 00 00 1E */	fctiwz f0, f0
/* 8075C84C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8075C850  80 81 00 54 */	lwz r4, 0x54(r1)
/* 8075C854  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8075C858  28 00 00 04 */	cmplwi r0, 4
/* 8075C85C  41 80 00 30 */	blt lbl_8075C88C
/* 8075C860  38 80 00 01 */	li r4, 1
/* 8075C864  48 00 00 28 */	b lbl_8075C88C
lbl_8075C868:
/* 8075C868  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8075C86C  4B B0 B0 E8 */	b cM_rndF__Ff
/* 8075C870  FC 00 08 1E */	fctiwz f0, f1
/* 8075C874  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8075C878  80 81 00 54 */	lwz r4, 0x54(r1)
/* 8075C87C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8075C880  28 00 00 03 */	cmplwi r0, 3
/* 8075C884  41 80 00 08 */	blt lbl_8075C88C
/* 8075C888  3B 80 00 02 */	li r28, 2
lbl_8075C88C:
/* 8075C88C  88 7D 00 00 */	lbz r3, 0(r29)
/* 8075C890  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8075C894  7C 03 00 40 */	cmplw r3, r0
/* 8075C898  3B 7B 00 01 */	addi r27, r27, 1
/* 8075C89C  41 82 00 0C */	beq lbl_8075C8A8
/* 8075C8A0  98 9E 07 D8 */	stb r4, 0x7d8(r30)
/* 8075C8A4  3B 60 00 64 */	li r27, 0x64
lbl_8075C8A8:
/* 8075C8A8  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 8075C8AC  88 1E 07 D8 */	lbz r0, 0x7d8(r30)
/* 8075C8B0  7C 03 00 40 */	cmplw r3, r0
/* 8075C8B4  40 82 00 30 */	bne lbl_8075C8E4
/* 8075C8B8  2C 1B 00 64 */	cmpwi r27, 0x64
/* 8075C8BC  41 80 FF 70 */	blt lbl_8075C82C
/* 8075C8C0  48 00 00 24 */	b lbl_8075C8E4
lbl_8075C8C4:
/* 8075C8C4  38 00 00 05 */	li r0, 5
/* 8075C8C8  98 1E 07 D8 */	stb r0, 0x7d8(r30)
/* 8075C8CC  7F C3 F3 78 */	mr r3, r30
/* 8075C8D0  38 80 00 09 */	li r4, 9
/* 8075C8D4  38 A0 00 00 */	li r5, 0
/* 8075C8D8  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8075C8DC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8075C8E0  4B FF BF 21 */	bl setBck__8daE_PZ_cFiUcff
lbl_8075C8E4:
/* 8075C8E4  88 1E 07 D8 */	lbz r0, 0x7d8(r30)
/* 8075C8E8  28 00 00 05 */	cmplwi r0, 5
/* 8075C8EC  40 81 00 0C */	ble lbl_8075C8F8
/* 8075C8F0  38 00 00 05 */	li r0, 5
/* 8075C8F4  98 1E 07 D8 */	stb r0, 0x7d8(r30)
lbl_8075C8F8:
/* 8075C8F8  80 7E 06 84 */	lwz r3, 0x684(r30)
/* 8075C8FC  38 03 00 01 */	addi r0, r3, 1
/* 8075C900  90 1E 06 84 */	stw r0, 0x684(r30)
/* 8075C904  48 00 01 D0 */	b lbl_8075CAD4
lbl_8075C908:
/* 8075C908  80 9E 06 8C */	lwz r4, 0x68c(r30)
/* 8075C90C  2C 04 00 0C */	cmpwi r4, 0xc
/* 8075C910  40 82 00 20 */	bne lbl_8075C930
/* 8075C914  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8075C918  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8075C91C  FC 00 00 1E */	fctiwz f0, f0
/* 8075C920  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8075C924  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8075C928  2C 00 00 22 */	cmpwi r0, 0x22
/* 8075C92C  41 82 00 28 */	beq lbl_8075C954
lbl_8075C930:
/* 8075C930  2C 04 00 09 */	cmpwi r4, 9
/* 8075C934  40 82 00 48 */	bne lbl_8075C97C
/* 8075C938  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8075C93C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8075C940  FC 00 00 1E */	fctiwz f0, f0
/* 8075C944  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8075C948  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8075C94C  2C 00 00 14 */	cmpwi r0, 0x14
/* 8075C950  40 82 00 2C */	bne lbl_8075C97C
lbl_8075C954:
/* 8075C954  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703ED@ha */
/* 8075C958  38 03 03 ED */	addi r0, r3, 0x03ED /* 0x000703ED@l */
/* 8075C95C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8075C960  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 8075C964  38 81 00 20 */	addi r4, r1, 0x20
/* 8075C968  38 A0 FF FF */	li r5, -1
/* 8075C96C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 8075C970  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8075C974  7D 89 03 A6 */	mtctr r12
/* 8075C978  4E 80 04 21 */	bctrl 
lbl_8075C97C:
/* 8075C97C  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 8075C980  38 81 00 28 */	addi r4, r1, 0x28
/* 8075C984  4B 8B D0 38 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075C988  2C 03 00 00 */	cmpwi r3, 0
/* 8075C98C  41 82 00 E8 */	beq lbl_8075CA74
/* 8075C990  80 81 00 28 */	lwz r4, 0x28(r1)
/* 8075C994  28 04 00 00 */	cmplwi r4, 0
/* 8075C998  41 82 00 DC */	beq lbl_8075CA74
/* 8075C99C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8075C9A0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8075C9A4  FC 00 08 1E */	fctiwz f0, f1
/* 8075C9A8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8075C9AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8075C9B0  2C 00 00 24 */	cmpwi r0, 0x24
/* 8075C9B4  41 82 00 20 */	beq lbl_8075C9D4
/* 8075C9B8  88 7E 07 D8 */	lbz r3, 0x7d8(r30)
/* 8075C9BC  28 03 00 05 */	cmplwi r3, 5
/* 8075C9C0  40 82 00 80 */	bne lbl_8075CA40
/* 8075C9C4  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8075C9C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8075C9CC  2C 00 00 17 */	cmpwi r0, 0x17
/* 8075C9D0  40 82 00 70 */	bne lbl_8075CA40
lbl_8075C9D4:
/* 8075C9D4  38 00 00 01 */	li r0, 1
/* 8075C9D8  90 04 06 84 */	stw r0, 0x684(r4)
/* 8075C9DC  88 1E 07 D8 */	lbz r0, 0x7d8(r30)
/* 8075C9E0  28 00 00 05 */	cmplwi r0, 5
/* 8075C9E4  41 82 00 90 */	beq lbl_8075CA74
/* 8075C9E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075C9EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075C9F0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8075C9F4  38 80 00 00 */	li r4, 0
/* 8075C9F8  90 81 00 08 */	stw r4, 8(r1)
/* 8075C9FC  38 00 FF FF */	li r0, -1
/* 8075CA00  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075CA04  90 81 00 10 */	stw r4, 0x10(r1)
/* 8075CA08  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075CA0C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075CA10  38 80 00 00 */	li r4, 0
/* 8075CA14  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000889D@ha */
/* 8075CA18  38 A5 88 9D */	addi r5, r5, 0x889D /* 0x0000889D@l */
/* 8075CA1C  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 8075CA20  38 C6 04 D0 */	addi r6, r6, 0x4d0
/* 8075CA24  38 E0 00 00 */	li r7, 0
/* 8075CA28  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8075CA2C  39 20 00 00 */	li r9, 0
/* 8075CA30  39 40 00 FF */	li r10, 0xff
/* 8075CA34  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8075CA38  4B 8F 00 58 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075CA3C  48 00 00 38 */	b lbl_8075CA74
lbl_8075CA40:
/* 8075CA40  FC 00 08 1E */	fctiwz f0, f1
/* 8075CA44  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8075CA48  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8075CA4C  2C 00 00 24 */	cmpwi r0, 0x24
/* 8075CA50  40 80 00 24 */	bge lbl_8075CA74
/* 8075CA54  28 03 00 05 */	cmplwi r3, 5
/* 8075CA58  41 82 00 1C */	beq lbl_8075CA74
/* 8075CA5C  C0 1E 07 A8 */	lfs f0, 0x7a8(r30)
/* 8075CA60  D0 04 04 D0 */	stfs f0, 0x4d0(r4)
/* 8075CA64  C0 1E 07 AC */	lfs f0, 0x7ac(r30)
/* 8075CA68  D0 04 04 D4 */	stfs f0, 0x4d4(r4)
/* 8075CA6C  C0 1E 07 B0 */	lfs f0, 0x7b0(r30)
/* 8075CA70  D0 04 04 D8 */	stfs f0, 0x4d8(r4)
lbl_8075CA74:
/* 8075CA74  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8075CA78  38 80 00 01 */	li r4, 1
/* 8075CA7C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8075CA80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8075CA84  40 82 00 18 */	bne lbl_8075CA9C
/* 8075CA88  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8075CA8C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8075CA90  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8075CA94  41 82 00 08 */	beq lbl_8075CA9C
/* 8075CA98  38 80 00 00 */	li r4, 0
lbl_8075CA9C:
/* 8075CA9C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8075CAA0  41 82 00 34 */	beq lbl_8075CAD4
/* 8075CAA4  7F C3 F3 78 */	mr r3, r30
/* 8075CAA8  38 80 00 15 */	li r4, 0x15
/* 8075CAAC  38 A0 00 02 */	li r5, 2
/* 8075CAB0  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8075CAB4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8075CAB8  4B FF BD 49 */	bl setBck__8daE_PZ_cFiUcff
/* 8075CABC  38 00 00 00 */	li r0, 0
/* 8075CAC0  98 1E 07 D3 */	stb r0, 0x7d3(r30)
/* 8075CAC4  7F C3 F3 78 */	mr r3, r30
/* 8075CAC8  38 80 00 02 */	li r4, 2
/* 8075CACC  38 A0 00 0A */	li r5, 0xa
/* 8075CAD0  4B FF BD DD */	bl setActionMode__8daE_PZ_cFii
lbl_8075CAD4:
/* 8075CAD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075CAD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075CADC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8075CAE0  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 8075CAE4  2C 00 00 0B */	cmpwi r0, 0xb
/* 8075CAE8  41 82 00 0C */	beq lbl_8075CAF4
/* 8075CAEC  2C 00 00 0C */	cmpwi r0, 0xc
/* 8075CAF0  40 82 00 1C */	bne lbl_8075CB0C
lbl_8075CAF4:
/* 8075CAF4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8075CAF8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8075CAFC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8075CB00  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 8075CB04  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8075CB08  48 00 00 1C */	b lbl_8075CB24
lbl_8075CB0C:
/* 8075CB0C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8075CB10  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8075CB14  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8075CB18  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8075CB1C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8075CB20  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_8075CB24:
/* 8075CB24  38 61 00 2C */	addi r3, r1, 0x2c
/* 8075CB28  38 81 00 44 */	addi r4, r1, 0x44
/* 8075CB2C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8075CB30  4B B0 A0 04 */	b __mi__4cXyzCFRC3Vec
/* 8075CB34  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8075CB38  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8075CB3C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8075CB40  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8075CB44  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8075CB48  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8075CB4C  38 61 00 38 */	addi r3, r1, 0x38
/* 8075CB50  4B B0 A5 D8 */	b atan2sX_Z__4cXyzCFv
/* 8075CB54  7C 64 07 34 */	extsh r4, r3
/* 8075CB58  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8075CB5C  38 A0 00 04 */	li r5, 4
/* 8075CB60  38 C0 08 00 */	li r6, 0x800
/* 8075CB64  4B B1 3A A4 */	b cLib_addCalcAngleS2__FPssss
/* 8075CB68  39 61 00 70 */	addi r11, r1, 0x70
/* 8075CB6C  4B C0 56 B4 */	b _restgpr_27
/* 8075CB70  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8075CB74  7C 08 03 A6 */	mtlr r0
/* 8075CB78  38 21 00 70 */	addi r1, r1, 0x70
/* 8075CB7C  4E 80 00 20 */	blr 
