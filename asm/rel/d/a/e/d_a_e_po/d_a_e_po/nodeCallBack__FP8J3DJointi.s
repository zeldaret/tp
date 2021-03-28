lbl_8074C70C:
/* 8074C70C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8074C710  7C 08 02 A6 */	mflr r0
/* 8074C714  90 01 00 24 */	stw r0, 0x24(r1)
/* 8074C718  39 61 00 20 */	addi r11, r1, 0x20
/* 8074C71C  4B C1 5A BC */	b _savegpr_28
/* 8074C720  2C 04 00 00 */	cmpwi r4, 0
/* 8074C724  40 82 01 18 */	bne lbl_8074C83C
/* 8074C728  A3 83 00 14 */	lhz r28, 0x14(r3)
/* 8074C72C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8074C730  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8074C734  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8074C738  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 8074C73C  28 1D 00 00 */	cmplwi r29, 0
/* 8074C740  41 82 00 FC */	beq lbl_8074C83C
/* 8074C744  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8074C748  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8074C74C  1F DC 00 30 */	mulli r30, r28, 0x30
/* 8074C750  7C 60 F2 14 */	add r3, r0, r30
/* 8074C754  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8074C758  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8074C75C  80 84 00 00 */	lwz r4, 0(r4)
/* 8074C760  4B BF 9D 50 */	b PSMTXCopy
/* 8074C764  2C 1C 00 11 */	cmpwi r28, 0x11
/* 8074C768  41 80 00 A0 */	blt lbl_8074C808
/* 8074C76C  2C 1C 00 16 */	cmpwi r28, 0x16
/* 8074C770  41 81 00 98 */	bgt lbl_8074C808
/* 8074C774  2C 1C 00 15 */	cmpwi r28, 0x15
/* 8074C778  41 80 00 3C */	blt lbl_8074C7B4
/* 8074C77C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8074C780  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8074C784  80 63 00 00 */	lwz r3, 0(r3)
/* 8074C788  1F 9C 00 06 */	mulli r28, r28, 6
/* 8074C78C  7C 9D E2 14 */	add r4, r29, r28
/* 8074C790  A8 84 07 76 */	lha r4, 0x776(r4)
/* 8074C794  4B 8B FC A0 */	b mDoMtx_YrotM__FPA4_fs
/* 8074C798  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8074C79C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8074C7A0  80 63 00 00 */	lwz r3, 0(r3)
/* 8074C7A4  7C 9D E2 14 */	add r4, r29, r28
/* 8074C7A8  A8 84 07 74 */	lha r4, 0x774(r4)
/* 8074C7AC  4B 8B FD 20 */	b mDoMtx_ZrotM__FPA4_fs
/* 8074C7B0  48 00 00 38 */	b lbl_8074C7E8
lbl_8074C7B4:
/* 8074C7B4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8074C7B8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8074C7BC  80 63 00 00 */	lwz r3, 0(r3)
/* 8074C7C0  1F 9C 00 06 */	mulli r28, r28, 6
/* 8074C7C4  7C 9D E2 14 */	add r4, r29, r28
/* 8074C7C8  A8 84 07 82 */	lha r4, 0x782(r4)
/* 8074C7CC  4B 8B FC 68 */	b mDoMtx_YrotM__FPA4_fs
/* 8074C7D0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8074C7D4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8074C7D8  80 63 00 00 */	lwz r3, 0(r3)
/* 8074C7DC  7C 9D E2 14 */	add r4, r29, r28
/* 8074C7E0  A8 84 07 80 */	lha r4, 0x780(r4)
/* 8074C7E4  4B 8B FC E8 */	b mDoMtx_ZrotM__FPA4_fs
lbl_8074C7E8:
/* 8074C7E8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8074C7EC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8074C7F0  80 63 00 00 */	lwz r3, 0(r3)
/* 8074C7F4  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8074C7F8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8074C7FC  7C 80 F2 14 */	add r4, r0, r30
/* 8074C800  4B BF 9C B0 */	b PSMTXCopy
/* 8074C804  48 00 00 20 */	b lbl_8074C824
lbl_8074C808:
/* 8074C808  2C 1C 00 02 */	cmpwi r28, 2
/* 8074C80C  40 82 00 18 */	bne lbl_8074C824
/* 8074C810  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8074C814  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8074C818  80 63 00 00 */	lwz r3, 0(r3)
/* 8074C81C  A8 9D 08 10 */	lha r4, 0x810(r29)
/* 8074C820  4B 8B FB 7C */	b mDoMtx_XrotM__FPA4_fs
lbl_8074C824:
/* 8074C824  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8074C828  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8074C82C  80 63 00 00 */	lwz r3, 0(r3)
/* 8074C830  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8074C834  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8074C838  4B BF 9C 78 */	b PSMTXCopy
lbl_8074C83C:
/* 8074C83C  38 60 00 01 */	li r3, 1
/* 8074C840  39 61 00 20 */	addi r11, r1, 0x20
/* 8074C844  4B C1 59 E0 */	b _restgpr_28
/* 8074C848  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8074C84C  7C 08 03 A6 */	mtlr r0
/* 8074C850  38 21 00 20 */	addi r1, r1, 0x20
/* 8074C854  4E 80 00 20 */	blr 
