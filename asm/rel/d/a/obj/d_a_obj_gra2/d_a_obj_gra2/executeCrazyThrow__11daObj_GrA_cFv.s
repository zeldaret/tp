lbl_80C0C690:
/* 80C0C690  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C0C694  7C 08 02 A6 */	mflr r0
/* 80C0C698  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C0C69C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80C0C6A0  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80C0C6A4  7C 7F 1B 78 */	mr r31, r3
/* 80C0C6A8  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C0C6AC  3B C3 FA 7C */	addi r30, r3, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0C6B0  38 61 00 10 */	addi r3, r1, 0x10
/* 80C0C6B4  4B 46 B5 B5 */	bl __ct__11dBgS_LinChkFv
/* 80C0C6B8  88 1F 1F F4 */	lbz r0, 0x1ff4(r31)
/* 80C0C6BC  2C 00 00 01 */	cmpwi r0, 1
/* 80C0C6C0  41 82 01 2C */	beq lbl_80C0C7EC
/* 80C0C6C4  40 80 01 30 */	bge lbl_80C0C7F4
/* 80C0C6C8  2C 00 00 00 */	cmpwi r0, 0
/* 80C0C6CC  40 80 00 08 */	bge lbl_80C0C6D4
/* 80C0C6D0  48 00 01 24 */	b lbl_80C0C7F4
lbl_80C0C6D4:
/* 80C0C6D4  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 80C0C6D8  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80C0C6DC  C8 1E 03 08 */	lfd f0, 0x308(r30)
/* 80C0C6E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0C6E4  40 81 00 14 */	ble lbl_80C0C6F8
/* 80C0C6E8  C0 1E 02 F8 */	lfs f0, 0x2f8(r30)
/* 80C0C6EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C0C6F0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C0C6F4  48 00 00 0C */	b lbl_80C0C700
lbl_80C0C6F8:
/* 80C0C6F8  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0C6FC  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80C0C700:
/* 80C0C700  80 1F 1F F8 */	lwz r0, 0x1ff8(r31)
/* 80C0C704  2C 00 00 00 */	cmpwi r0, 0
/* 80C0C708  40 82 00 50 */	bne lbl_80C0C758
/* 80C0C70C  38 00 00 04 */	li r0, 4
/* 80C0C710  90 1F 1F F0 */	stw r0, 0x1ff0(r31)
/* 80C0C714  C0 1E 03 10 */	lfs f0, 0x310(r30)
/* 80C0C718  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80C0C71C  C0 1E 02 20 */	lfs f0, 0x220(r30)
/* 80C0C720  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C0C724  C0 1E 02 1C */	lfs f0, 0x21c(r30)
/* 80C0C728  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80C0C72C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80C0C730  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C0C734  3C 84 00 01 */	addis r4, r4, 1
/* 80C0C738  38 04 80 00 */	addi r0, r4, -32768
/* 80C0C73C  7C 04 07 34 */	extsh r4, r0
/* 80C0C740  38 A0 00 04 */	li r5, 4
/* 80C0C744  38 C0 10 00 */	li r6, 0x1000
/* 80C0C748  4B 66 3E C1 */	bl cLib_addCalcAngleS2__FPssss
/* 80C0C74C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80C0C750  B0 1F 09 1C */	sth r0, 0x91c(r31)
/* 80C0C754  48 00 00 A0 */	b lbl_80C0C7F4
lbl_80C0C758:
/* 80C0C758  2C 00 00 0A */	cmpwi r0, 0xa
/* 80C0C75C  41 81 00 7C */	bgt lbl_80C0C7D8
/* 80C0C760  40 82 00 64 */	bne lbl_80C0C7C4
/* 80C0C764  88 1F 1F E8 */	lbz r0, 0x1fe8(r31)
/* 80C0C768  7C 00 07 75 */	extsb. r0, r0
/* 80C0C76C  40 82 00 30 */	bne lbl_80C0C79C
/* 80C0C770  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050090@ha */
/* 80C0C774  38 03 00 90 */	addi r0, r3, 0x0090 /* 0x00050090@l */
/* 80C0C778  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C0C77C  38 7F 07 58 */	addi r3, r31, 0x758
/* 80C0C780  38 81 00 0C */	addi r4, r1, 0xc
/* 80C0C784  38 A0 FF FF */	li r5, -1
/* 80C0C788  81 9F 07 58 */	lwz r12, 0x758(r31)
/* 80C0C78C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80C0C790  7D 89 03 A6 */	mtctr r12
/* 80C0C794  4E 80 04 21 */	bctrl 
/* 80C0C798  48 00 00 2C */	b lbl_80C0C7C4
lbl_80C0C79C:
/* 80C0C79C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005008E@ha */
/* 80C0C7A0  38 03 00 8E */	addi r0, r3, 0x008E /* 0x0005008E@l */
/* 80C0C7A4  90 01 00 08 */	stw r0, 8(r1)
/* 80C0C7A8  38 7F 07 58 */	addi r3, r31, 0x758
/* 80C0C7AC  38 81 00 08 */	addi r4, r1, 8
/* 80C0C7B0  38 A0 FF FF */	li r5, -1
/* 80C0C7B4  81 9F 07 58 */	lwz r12, 0x758(r31)
/* 80C0C7B8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80C0C7BC  7D 89 03 A6 */	mtctr r12
/* 80C0C7C0  4E 80 04 21 */	bctrl 
lbl_80C0C7C4:
/* 80C0C7C4  7F E3 FB 78 */	mr r3, r31
/* 80C0C7C8  C0 3E 03 04 */	lfs f1, 0x304(r30)
/* 80C0C7CC  38 80 00 00 */	li r4, 0
/* 80C0C7D0  4B FF F7 65 */	bl calcCatchPos__11daObj_GrA_cFfi
/* 80C0C7D4  48 00 00 20 */	b lbl_80C0C7F4
lbl_80C0C7D8:
/* 80C0C7D8  7F E3 FB 78 */	mr r3, r31
/* 80C0C7DC  C0 3E 03 04 */	lfs f1, 0x304(r30)
/* 80C0C7E0  38 80 00 02 */	li r4, 2
/* 80C0C7E4  4B FF F7 51 */	bl calcCatchPos__11daObj_GrA_cFfi
/* 80C0C7E8  48 00 00 0C */	b lbl_80C0C7F4
lbl_80C0C7EC:
/* 80C0C7EC  7F E3 FB 78 */	mr r3, r31
/* 80C0C7F0  48 00 02 75 */	bl executeCrazyJumping__11daObj_GrA_cFv
lbl_80C0C7F4:
/* 80C0C7F4  A0 1F 0A 48 */	lhz r0, 0xa48(r31)
/* 80C0C7F8  28 00 00 00 */	cmplwi r0, 0
/* 80C0C7FC  41 82 00 2C */	beq lbl_80C0C828
/* 80C0C800  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80C0C804  41 82 00 0C */	beq lbl_80C0C810
/* 80C0C808  7F E3 FB 78 */	mr r3, r31
/* 80C0C80C  48 00 00 41 */	bl initCrazyAttack__11daObj_GrA_cFv
lbl_80C0C810:
/* 80C0C810  38 00 00 00 */	li r0, 0
/* 80C0C814  B0 1F 0A 48 */	sth r0, 0xa48(r31)
/* 80C0C818  38 61 00 10 */	addi r3, r1, 0x10
/* 80C0C81C  38 80 FF FF */	li r4, -1
/* 80C0C820  4B 46 B4 BD */	bl __dt__11dBgS_LinChkFv
/* 80C0C824  48 00 00 10 */	b lbl_80C0C834
lbl_80C0C828:
/* 80C0C828  38 61 00 10 */	addi r3, r1, 0x10
/* 80C0C82C  38 80 FF FF */	li r4, -1
/* 80C0C830  4B 46 B4 AD */	bl __dt__11dBgS_LinChkFv
lbl_80C0C834:
/* 80C0C834  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80C0C838  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80C0C83C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C0C840  7C 08 03 A6 */	mtlr r0
/* 80C0C844  38 21 00 90 */	addi r1, r1, 0x90
/* 80C0C848  4E 80 00 20 */	blr 
