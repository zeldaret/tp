lbl_8001C5B0:
/* 8001C5B0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8001C5B4  7C 08 02 A6 */	mflr r0
/* 8001C5B8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8001C5BC  39 61 00 50 */	addi r11, r1, 0x50
/* 8001C5C0  48 34 5B FD */	bl _savegpr_21
/* 8001C5C4  7C 76 1B 78 */	mr r22, r3
/* 8001C5C8  7C 9E 23 78 */	mr r30, r4
/* 8001C5CC  7C B7 2B 78 */	mr r23, r5
/* 8001C5D0  7C D8 33 78 */	mr r24, r6
/* 8001C5D4  7C F9 3B 78 */	mr r25, r7
/* 8001C5D8  7D 1A 43 78 */	mr r26, r8
/* 8001C5DC  7D 3B 4B 78 */	mr r27, r9
/* 8001C5E0  7D 5D 53 78 */	mr r29, r10
/* 8001C5E4  82 A1 00 58 */	lwz r21, 0x58(r1)
/* 8001C5E8  83 81 00 5C */	lwz r28, 0x5c(r1)
/* 8001C5EC  2C 1E 00 FF */	cmpwi r30, 0xff
/* 8001C5F0  40 82 00 0C */	bne lbl_8001C5FC
/* 8001C5F4  38 60 00 00 */	li r3, 0
/* 8001C5F8  48 00 02 60 */	b lbl_8001C858
lbl_8001C5FC:
/* 8001C5FC  7F C3 F3 78 */	mr r3, r30
/* 8001C600  48 07 F1 C5 */	bl check_itemno__Fi
/* 8001C604  56 A4 C1 0E */	rlwinm r4, r21, 0x18, 4, 7
/* 8001C608  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8001C60C  53 A3 44 2E */	rlwimi r3, r29, 8, 0x10, 0x17
/* 8001C610  64 60 00 FF */	oris r0, r3, 0xff
/* 8001C614  7C 9D 03 78 */	or r29, r4, r0
/* 8001C618  28 1A 00 00 */	cmplwi r26, 0
/* 8001C61C  41 82 00 24 */	beq lbl_8001C640
/* 8001C620  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 8001C624  48 07 F1 59 */	bl isHeart__FUc
/* 8001C628  2C 03 00 00 */	cmpwi r3, 0
/* 8001C62C  41 82 00 14 */	beq lbl_8001C640
/* 8001C630  C0 22 82 30 */	lfs f1, lit_5808(r2)
/* 8001C634  C0 1A 00 00 */	lfs f0, 0(r26)
/* 8001C638  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001C63C  D0 1A 00 00 */	stfs f0, 0(r26)
lbl_8001C640:
/* 8001C640  2C 1E 00 20 */	cmpwi r30, 0x20
/* 8001C644  41 82 01 78 */	beq lbl_8001C7BC
/* 8001C648  40 80 00 14 */	bge lbl_8001C65C
/* 8001C64C  2C 1E 00 1E */	cmpwi r30, 0x1e
/* 8001C650  41 82 00 18 */	beq lbl_8001C668
/* 8001C654  40 80 00 74 */	bge lbl_8001C6C8
/* 8001C658  48 00 01 64 */	b lbl_8001C7BC
lbl_8001C65C:
/* 8001C65C  2C 1E 00 23 */	cmpwi r30, 0x23
/* 8001C660  40 80 01 5C */	bge lbl_8001C7BC
/* 8001C664  48 00 00 34 */	b lbl_8001C698
lbl_8001C668:
/* 8001C668  38 00 00 00 */	li r0, 0
/* 8001C66C  90 01 00 08 */	stw r0, 8(r1)
/* 8001C670  38 60 01 3F */	li r3, 0x13f
/* 8001C674  38 80 FF FF */	li r4, -1
/* 8001C678  7E C5 B3 78 */	mr r5, r22
/* 8001C67C  7E E6 BB 78 */	mr r6, r23
/* 8001C680  7F 07 C3 78 */	mr r7, r24
/* 8001C684  7F 28 CB 78 */	mr r8, r25
/* 8001C688  39 20 FF FF */	li r9, -1
/* 8001C68C  39 40 00 00 */	li r10, 0
/* 8001C690  4B FF D7 75 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8001C694  48 00 01 C4 */	b lbl_8001C858
lbl_8001C698:
/* 8001C698  38 00 00 00 */	li r0, 0
/* 8001C69C  90 01 00 08 */	stw r0, 8(r1)
/* 8001C6A0  38 60 02 1B */	li r3, 0x21b
/* 8001C6A4  7F A4 EB 78 */	mr r4, r29
/* 8001C6A8  7E C5 B3 78 */	mr r5, r22
/* 8001C6AC  7E E6 BB 78 */	mr r6, r23
/* 8001C6B0  7F 07 C3 78 */	mr r7, r24
/* 8001C6B4  7F 28 CB 78 */	mr r8, r25
/* 8001C6B8  39 20 FF FF */	li r9, -1
/* 8001C6BC  39 40 00 00 */	li r10, 0
/* 8001C6C0  4B FF D7 45 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8001C6C4  48 00 01 94 */	b lbl_8001C858
lbl_8001C6C8:
/* 8001C6C8  3B C0 00 00 */	li r30, 0
/* 8001C6CC  3B ED 8B E0 */	la r31, Zero__5csXyz(r13) /* 80451160-_SDA_BASE_ */
lbl_8001C6D0:
/* 8001C6D0  28 18 00 00 */	cmplwi r24, 0
/* 8001C6D4  41 82 00 20 */	beq lbl_8001C6F4
/* 8001C6D8  A8 18 00 00 */	lha r0, 0(r24)
/* 8001C6DC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8001C6E0  A8 18 00 02 */	lha r0, 2(r24)
/* 8001C6E4  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8001C6E8  A8 18 00 04 */	lha r0, 4(r24)
/* 8001C6EC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8001C6F0  48 00 00 1C */	b lbl_8001C70C
lbl_8001C6F4:
/* 8001C6F4  A8 0D 8B E0 */	lha r0, Zero__5csXyz(r13)
/* 8001C6F8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8001C6FC  A8 1F 00 02 */	lha r0, 2(r31)
/* 8001C700  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8001C704  A8 1F 00 04 */	lha r0, 4(r31)
/* 8001C708  B0 01 00 14 */	sth r0, 0x14(r1)
lbl_8001C70C:
/* 8001C70C  38 00 00 FF */	li r0, 0xff
/* 8001C710  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8001C714  C0 22 82 34 */	lfs f1, lit_5809(r2)
/* 8001C718  48 24 B2 75 */	bl cM_rndFX__Ff
/* 8001C71C  FC 00 08 1E */	fctiwz f0, f1
/* 8001C720  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8001C724  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8001C728  A8 01 00 12 */	lha r0, 0x12(r1)
/* 8001C72C  7C 00 1A 14 */	add r0, r0, r3
/* 8001C730  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8001C734  38 00 00 00 */	li r0, 0
/* 8001C738  90 01 00 08 */	stw r0, 8(r1)
/* 8001C73C  38 60 02 18 */	li r3, 0x218
/* 8001C740  7F A4 EB 78 */	mr r4, r29
/* 8001C744  7E C5 B3 78 */	mr r5, r22
/* 8001C748  7E E6 BB 78 */	mr r6, r23
/* 8001C74C  38 E1 00 10 */	addi r7, r1, 0x10
/* 8001C750  7F 28 CB 78 */	mr r8, r25
/* 8001C754  39 20 FF FF */	li r9, -1
/* 8001C758  7F 8A E3 78 */	mr r10, r28
/* 8001C75C  4B FF D6 A9 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8001C760  7C 75 1B 79 */	or. r21, r3, r3
/* 8001C764  41 82 00 4C */	beq lbl_8001C7B0
/* 8001C768  28 1A 00 00 */	cmplwi r26, 0
/* 8001C76C  41 82 00 20 */	beq lbl_8001C78C
/* 8001C770  C0 22 82 3C */	lfs f1, lit_5811(r2)
/* 8001C774  48 24 B2 19 */	bl cM_rndFX__Ff
/* 8001C778  C0 02 82 38 */	lfs f0, lit_5810(r2)
/* 8001C77C  EC 20 08 2A */	fadds f1, f0, f1
/* 8001C780  C0 1A 00 00 */	lfs f0, 0(r26)
/* 8001C784  EC 00 00 72 */	fmuls f0, f0, f1
/* 8001C788  D0 15 05 2C */	stfs f0, 0x52c(r21)
lbl_8001C78C:
/* 8001C78C  28 1B 00 00 */	cmplwi r27, 0
/* 8001C790  41 82 00 20 */	beq lbl_8001C7B0
/* 8001C794  C0 22 82 40 */	lfs f1, lit_5812(r2)
/* 8001C798  48 24 B1 F5 */	bl cM_rndFX__Ff
/* 8001C79C  C0 02 82 38 */	lfs f0, lit_5810(r2)
/* 8001C7A0  EC 20 08 2A */	fadds f1, f0, f1
/* 8001C7A4  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8001C7A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8001C7AC  D0 15 04 FC */	stfs f0, 0x4fc(r21)
lbl_8001C7B0:
/* 8001C7B0  3B DE 00 01 */	addi r30, r30, 1
/* 8001C7B4  2C 1E 00 02 */	cmpwi r30, 2
/* 8001C7B8  41 80 FF 18 */	blt lbl_8001C6D0
lbl_8001C7BC:
/* 8001C7BC  28 18 00 00 */	cmplwi r24, 0
/* 8001C7C0  41 82 00 20 */	beq lbl_8001C7E0
/* 8001C7C4  A8 18 00 00 */	lha r0, 0(r24)
/* 8001C7C8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8001C7CC  A8 18 00 02 */	lha r0, 2(r24)
/* 8001C7D0  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8001C7D4  A8 18 00 04 */	lha r0, 4(r24)
/* 8001C7D8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8001C7DC  48 00 00 20 */	b lbl_8001C7FC
lbl_8001C7E0:
/* 8001C7E0  A8 0D 8B E0 */	lha r0, Zero__5csXyz(r13)
/* 8001C7E4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8001C7E8  38 6D 8B E0 */	la r3, Zero__5csXyz(r13) /* 80451160-_SDA_BASE_ */
/* 8001C7EC  A8 03 00 02 */	lha r0, 2(r3)
/* 8001C7F0  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8001C7F4  A8 03 00 04 */	lha r0, 4(r3)
/* 8001C7F8  B0 01 00 14 */	sth r0, 0x14(r1)
lbl_8001C7FC:
/* 8001C7FC  38 00 00 FF */	li r0, 0xff
/* 8001C800  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8001C804  38 00 00 00 */	li r0, 0
/* 8001C808  90 01 00 08 */	stw r0, 8(r1)
/* 8001C80C  38 60 02 18 */	li r3, 0x218
/* 8001C810  7F A4 EB 78 */	mr r4, r29
/* 8001C814  7E C5 B3 78 */	mr r5, r22
/* 8001C818  7E E6 BB 78 */	mr r6, r23
/* 8001C81C  38 E1 00 10 */	addi r7, r1, 0x10
/* 8001C820  7F 28 CB 78 */	mr r8, r25
/* 8001C824  39 20 FF FF */	li r9, -1
/* 8001C828  7F 8A E3 78 */	mr r10, r28
/* 8001C82C  4B FF D5 D9 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8001C830  28 03 00 00 */	cmplwi r3, 0
/* 8001C834  41 82 00 24 */	beq lbl_8001C858
/* 8001C838  28 1A 00 00 */	cmplwi r26, 0
/* 8001C83C  41 82 00 0C */	beq lbl_8001C848
/* 8001C840  C0 1A 00 00 */	lfs f0, 0(r26)
/* 8001C844  D0 03 05 2C */	stfs f0, 0x52c(r3)
lbl_8001C848:
/* 8001C848  28 1B 00 00 */	cmplwi r27, 0
/* 8001C84C  41 82 00 0C */	beq lbl_8001C858
/* 8001C850  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8001C854  D0 03 04 FC */	stfs f0, 0x4fc(r3)
lbl_8001C858:
/* 8001C858  39 61 00 50 */	addi r11, r1, 0x50
/* 8001C85C  48 34 59 AD */	bl _restgpr_21
/* 8001C860  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8001C864  7C 08 03 A6 */	mtlr r0
/* 8001C868  38 21 00 50 */	addi r1, r1, 0x50
/* 8001C86C  4E 80 00 20 */	blr 
